; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_count_sge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_count_sge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_sge_state = type { i64, %struct.rvt_sge, %struct.rvt_sge* }
%struct.rvt_sge = type { i64, i64, i64, i64, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__**, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }

@RVT_SEGSZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvt_sge_state*, i32)* @qib_count_sge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_count_sge(%struct.rvt_sge_state* %0, i32 %1) #0 {
  %3 = alloca %struct.rvt_sge_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvt_sge*, align 8
  %6 = alloca %struct.rvt_sge, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rvt_sge_state* %0, %struct.rvt_sge_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.rvt_sge_state*, %struct.rvt_sge_state** %3, align 8
  %11 = getelementptr inbounds %struct.rvt_sge_state, %struct.rvt_sge_state* %10, i32 0, i32 2
  %12 = load %struct.rvt_sge*, %struct.rvt_sge** %11, align 8
  store %struct.rvt_sge* %12, %struct.rvt_sge** %5, align 8
  %13 = load %struct.rvt_sge_state*, %struct.rvt_sge_state** %3, align 8
  %14 = getelementptr inbounds %struct.rvt_sge_state, %struct.rvt_sge_state* %13, i32 0, i32 1
  %15 = bitcast %struct.rvt_sge* %6 to i8*
  %16 = bitcast %struct.rvt_sge* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 48, i1 false)
  %17 = load %struct.rvt_sge_state*, %struct.rvt_sge_state** %3, align 8
  %18 = getelementptr inbounds %struct.rvt_sge_state, %struct.rvt_sge_state* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  store i32 1, i32* %8, align 4
  br label %20

20:                                               ; preds = %133, %2
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %137

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @rvt_get_sge_length(%struct.rvt_sge* %6, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %6, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = and i64 %27, 3
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = and i64 %36, 3
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %23
  store i32 0, i32* %8, align 4
  br label %137

40:                                               ; preds = %34, %30
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %6, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, %44
  store i64 %47, i64* %45, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %6, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %51, %49
  store i64 %52, i64* %50, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %6, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %56, %54
  store i64 %57, i64* %55, align 8
  %58 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %6, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %40
  %62 = load i64, i64* %7, align 8
  %63 = add nsw i64 %62, -1
  store i64 %63, i64* %7, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load %struct.rvt_sge*, %struct.rvt_sge** %5, align 8
  %67 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %66, i32 1
  store %struct.rvt_sge* %67, %struct.rvt_sge** %5, align 8
  %68 = bitcast %struct.rvt_sge* %6 to i8*
  %69 = bitcast %struct.rvt_sge* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %69, i64 48, i1 false)
  br label %70

70:                                               ; preds = %65, %61
  br label %133

71:                                               ; preds = %40
  %72 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %6, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %132

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %6, i32 0, i32 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %132

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %6, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %82, align 8
  %85 = load i64, i64* @RVT_SEGSZ, align 8
  %86 = icmp sge i64 %84, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %6, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %88, align 8
  %91 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %6, i32 0, i32 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp sge i64 %90, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  br label %137

97:                                               ; preds = %87
  %98 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %6, i32 0, i32 2
  store i64 0, i64* %98, align 8
  br label %99

99:                                               ; preds = %97, %81
  %100 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %6, i32 0, i32 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %102, align 8
  %104 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %6, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %103, i64 %105
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %6, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %6, i32 0, i32 5
  store i64 %114, i64* %115, align 8
  %116 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %6, i32 0, i32 4
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %118, align 8
  %120 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %6, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %119, i64 %121
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %6, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %6, i32 0, i32 0
  store i64 %130, i64* %131, align 8
  br label %132

132:                                              ; preds = %99, %75, %71
  br label %133

133:                                              ; preds = %132, %70
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %4, align 4
  %136 = sub nsw i32 %135, %134
  store i32 %136, i32* %4, align 4
  br label %20

137:                                              ; preds = %96, %39, %20
  %138 = load i32, i32* %8, align 4
  ret i32 %138
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @rvt_get_sge_length(%struct.rvt_sge*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
