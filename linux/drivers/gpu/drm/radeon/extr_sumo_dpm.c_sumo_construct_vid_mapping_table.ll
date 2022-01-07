; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_construct_vid_mapping_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_construct_vid_mapping_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.sumo_vid_mapping_table = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64, i64 }

@SUMO_MAX_HARDWARE_POWERLEVELS = common dso_local global i64 0, align 8
@SUMO_MAX_NUMBER_VOLTAGES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sumo_construct_vid_mapping_table(%struct.radeon_device* %0, %struct.sumo_vid_mapping_table* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.sumo_vid_mapping_table*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.sumo_vid_mapping_table* %1, %struct.sumo_vid_mapping_table** %5, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  store i64 0, i64* %7, align 8
  br label %9

9:                                                ; preds = %52, %3
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* @SUMO_MAX_HARDWARE_POWERLEVELS, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %55

13:                                               ; preds = %9
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %51

20:                                               ; preds = %13
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.sumo_vid_mapping_table*, %struct.sumo_vid_mapping_table** %5, align 8
  %27 = getelementptr inbounds %struct.sumo_vid_mapping_table, %struct.sumo_vid_mapping_table* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i64 %25, i64* %35, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.sumo_vid_mapping_table*, %struct.sumo_vid_mapping_table** %5, align 8
  %42 = getelementptr inbounds %struct.sumo_vid_mapping_table, %struct.sumo_vid_mapping_table* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i64 %40, i64* %50, align 8
  br label %51

51:                                               ; preds = %20, %13
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %7, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %7, align 8
  br label %9

55:                                               ; preds = %9
  store i64 0, i64* %7, align 8
  br label %56

56:                                               ; preds = %115, %55
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* @SUMO_MAX_NUMBER_VOLTAGES, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %118

60:                                               ; preds = %56
  %61 = load %struct.sumo_vid_mapping_table*, %struct.sumo_vid_mapping_table** %5, align 8
  %62 = getelementptr inbounds %struct.sumo_vid_mapping_table, %struct.sumo_vid_mapping_table* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %114

69:                                               ; preds = %60
  %70 = load i64, i64* %7, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %8, align 8
  br label %72

72:                                               ; preds = %105, %69
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* @SUMO_MAX_NUMBER_VOLTAGES, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %108

76:                                               ; preds = %72
  %77 = load %struct.sumo_vid_mapping_table*, %struct.sumo_vid_mapping_table** %5, align 8
  %78 = getelementptr inbounds %struct.sumo_vid_mapping_table, %struct.sumo_vid_mapping_table* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i64, i64* %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %104

85:                                               ; preds = %76
  %86 = load %struct.sumo_vid_mapping_table*, %struct.sumo_vid_mapping_table** %5, align 8
  %87 = getelementptr inbounds %struct.sumo_vid_mapping_table, %struct.sumo_vid_mapping_table* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i64, i64* %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %89
  %91 = load %struct.sumo_vid_mapping_table*, %struct.sumo_vid_mapping_table** %5, align 8
  %92 = getelementptr inbounds %struct.sumo_vid_mapping_table, %struct.sumo_vid_mapping_table* %91, i32 0, i32 1
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i64, i64* %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %94
  %96 = bitcast %struct.TYPE_4__* %90 to i8*
  %97 = bitcast %struct.TYPE_4__* %95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %96, i8* align 8 %97, i64 16, i1 false)
  %98 = load %struct.sumo_vid_mapping_table*, %struct.sumo_vid_mapping_table** %5, align 8
  %99 = getelementptr inbounds %struct.sumo_vid_mapping_table, %struct.sumo_vid_mapping_table* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i64, i64* %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  store i64 0, i64* %103, align 8
  br label %108

104:                                              ; preds = %76
  br label %105

105:                                              ; preds = %104
  %106 = load i64, i64* %8, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %8, align 8
  br label %72

108:                                              ; preds = %85, %72
  %109 = load i64, i64* %8, align 8
  %110 = load i64, i64* @SUMO_MAX_NUMBER_VOLTAGES, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  br label %118

113:                                              ; preds = %108
  br label %114

114:                                              ; preds = %113, %60
  br label %115

115:                                              ; preds = %114
  %116 = load i64, i64* %7, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %7, align 8
  br label %56

118:                                              ; preds = %112, %56
  %119 = load i64, i64* %7, align 8
  %120 = load %struct.sumo_vid_mapping_table*, %struct.sumo_vid_mapping_table** %5, align 8
  %121 = getelementptr inbounds %struct.sumo_vid_mapping_table, %struct.sumo_vid_mapping_table* %120, i32 0, i32 0
  store i64 %119, i64* %121, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
