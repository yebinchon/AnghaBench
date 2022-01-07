; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_vbif.c__dpu_vbif_get_ot_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_vbif.c__dpu_vbif_get_ot_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_vbif = type { i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 (%struct.dpu_hw_vbif.0*, i32, i64)* }
%struct.dpu_hw_vbif.0 = type opaque
%struct.TYPE_3__ = type { i64, i64 }
%struct.dpu_vbif_set_ot_params = type { i32, i64 }

@.str = private unnamed_addr constant [27 x i8] c"invalid arguments vbif %d\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"vbif:%d xin:%d ot_lim:%d\0A\00", align 1
@VBIF_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dpu_hw_vbif*, %struct.dpu_vbif_set_ot_params*)* @_dpu_vbif_get_ot_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_dpu_vbif_get_ot_limit(%struct.dpu_hw_vbif* %0, %struct.dpu_vbif_set_ot_params* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.dpu_hw_vbif*, align 8
  %5 = alloca %struct.dpu_vbif_set_ot_params*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.dpu_hw_vbif* %0, %struct.dpu_hw_vbif** %4, align 8
  store %struct.dpu_vbif_set_ot_params* %1, %struct.dpu_vbif_set_ot_params** %5, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %4, align 8
  %9 = icmp ne %struct.dpu_hw_vbif* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %4, align 8
  %12 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %10, %2
  %16 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %4, align 8
  %17 = icmp ne %struct.dpu_hw_vbif* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i64, i64* @EINVAL, align 8
  %21 = sub nsw i64 0, %20
  store i64 %21, i64* %3, align 8
  br label %107

22:                                               ; preds = %10
  %23 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %4, align 8
  %24 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %22
  %30 = load %struct.dpu_vbif_set_ot_params*, %struct.dpu_vbif_set_ot_params** %5, align 8
  %31 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, %struct.dpu_vbif_set_ot_params* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %4, align 8
  %36 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %35, i32 0, i32 2
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %6, align 8
  br label %59

40:                                               ; preds = %29, %22
  %41 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %4, align 8
  %42 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %41, i32 0, i32 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %40
  %48 = load %struct.dpu_vbif_set_ot_params*, %struct.dpu_vbif_set_ot_params** %5, align 8
  %49 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, %struct.dpu_vbif_set_ot_params* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %4, align 8
  %54 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %53, i32 0, i32 2
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %6, align 8
  br label %58

58:                                               ; preds = %52, %47, %40
  br label %59

59:                                               ; preds = %58, %34
  %60 = load i64, i64* %6, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %95

63:                                               ; preds = %59
  %64 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %4, align 8
  %65 = load %struct.dpu_vbif_set_ot_params*, %struct.dpu_vbif_set_ot_params** %5, align 8
  %66 = call i32 @_dpu_vbif_apply_dynamic_ot_limit(%struct.dpu_hw_vbif* %64, i64* %6, %struct.dpu_vbif_set_ot_params* %65)
  %67 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %4, align 8
  %68 = icmp ne %struct.dpu_hw_vbif* %67, null
  br i1 %68, label %69, label %94

69:                                               ; preds = %63
  %70 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %4, align 8
  %71 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64 (%struct.dpu_hw_vbif.0*, i32, i64)*, i64 (%struct.dpu_hw_vbif.0*, i32, i64)** %72, align 8
  %74 = icmp ne i64 (%struct.dpu_hw_vbif.0*, i32, i64)* %73, null
  br i1 %74, label %75, label %94

75:                                               ; preds = %69
  %76 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %4, align 8
  %77 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64 (%struct.dpu_hw_vbif.0*, i32, i64)*, i64 (%struct.dpu_hw_vbif.0*, i32, i64)** %78, align 8
  %80 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %4, align 8
  %81 = bitcast %struct.dpu_hw_vbif* %80 to %struct.dpu_hw_vbif.0*
  %82 = load %struct.dpu_vbif_set_ot_params*, %struct.dpu_vbif_set_ot_params** %5, align 8
  %83 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, %struct.dpu_vbif_set_ot_params* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.dpu_vbif_set_ot_params*, %struct.dpu_vbif_set_ot_params** %5, align 8
  %86 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, %struct.dpu_vbif_set_ot_params* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i64 %79(%struct.dpu_hw_vbif.0* %81, i32 %84, i64 %87)
  store i64 %88, i64* %7, align 8
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* %6, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %75
  store i64 0, i64* %6, align 8
  br label %93

93:                                               ; preds = %92, %75
  br label %94

94:                                               ; preds = %93, %69, %63
  br label %95

95:                                               ; preds = %94, %62
  %96 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %4, align 8
  %97 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @VBIF_0, align 8
  %100 = sub nsw i64 %98, %99
  %101 = load %struct.dpu_vbif_set_ot_params*, %struct.dpu_vbif_set_ot_params** %5, align 8
  %102 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, %struct.dpu_vbif_set_ot_params* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i64, i64* %6, align 8
  %105 = call i32 @DPU_DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %100, i32 %103, i64 %104)
  %106 = load i64, i64* %6, align 8
  store i64 %106, i64* %3, align 8
  br label %107

107:                                              ; preds = %95, %15
  %108 = load i64, i64* %3, align 8
  ret i64 %108
}

declare dso_local i32 @DPU_ERROR(i8*, i32) #1

declare dso_local i32 @_dpu_vbif_apply_dynamic_ot_limit(%struct.dpu_hw_vbif*, i64*, %struct.dpu_vbif_set_ot_params*) #1

declare dso_local i32 @DPU_DEBUG(i8*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
