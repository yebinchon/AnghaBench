; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_vbif.c__dpu_vbif_apply_dynamic_ot_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_vbif.c__dpu_vbif_apply_dynamic_ot_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_vbif = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.dpu_vbif_dynamic_ot_tbl, %struct.dpu_vbif_dynamic_ot_tbl }
%struct.dpu_vbif_dynamic_ot_tbl = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.dpu_vbif_set_ot_params = type { i32, i32, i32, i32, i64, i32 }

@DPU_VBIF_QOS_OTLIM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"vbif:%d xin:%d w:%d h:%d fps:%d pps:%llu ot:%u\0A\00", align 1
@VBIF_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_hw_vbif*, i64*, %struct.dpu_vbif_set_ot_params*)* @_dpu_vbif_apply_dynamic_ot_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dpu_vbif_apply_dynamic_ot_limit(%struct.dpu_hw_vbif* %0, i64* %1, %struct.dpu_vbif_set_ot_params* %2) #0 {
  %4 = alloca %struct.dpu_hw_vbif*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.dpu_vbif_set_ot_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dpu_vbif_dynamic_ot_tbl*, align 8
  %9 = alloca i64, align 8
  store %struct.dpu_hw_vbif* %0, %struct.dpu_hw_vbif** %4, align 8
  store i64* %1, i64** %5, align 8
  store %struct.dpu_vbif_set_ot_params* %2, %struct.dpu_vbif_set_ot_params** %6, align 8
  %10 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %4, align 8
  %11 = icmp ne %struct.dpu_hw_vbif* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %4, align 8
  %14 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @DPU_VBIF_QOS_OTLIM, align 4
  %19 = call i32 @BIT(i32 %18)
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %12, %3
  br label %110

23:                                               ; preds = %12
  %24 = load %struct.dpu_vbif_set_ot_params*, %struct.dpu_vbif_set_ot_params** %6, align 8
  %25 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, %struct.dpu_vbif_set_ot_params* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %110

29:                                               ; preds = %23
  %30 = load %struct.dpu_vbif_set_ot_params*, %struct.dpu_vbif_set_ot_params** %6, align 8
  %31 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, %struct.dpu_vbif_set_ot_params* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %7, align 4
  %33 = load %struct.dpu_vbif_set_ot_params*, %struct.dpu_vbif_set_ot_params** %6, align 8
  %34 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, %struct.dpu_vbif_set_ot_params* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = mul nsw i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load %struct.dpu_vbif_set_ot_params*, %struct.dpu_vbif_set_ot_params** %6, align 8
  %39 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, %struct.dpu_vbif_set_ot_params* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = mul nsw i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load %struct.dpu_vbif_set_ot_params*, %struct.dpu_vbif_set_ot_params** %6, align 8
  %44 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, %struct.dpu_vbif_set_ot_params* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %29
  %48 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %4, align 8
  %49 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  br label %57

52:                                               ; preds = %29
  %53 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %4, align 8
  %54 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  br label %57

57:                                               ; preds = %52, %47
  %58 = phi %struct.dpu_vbif_dynamic_ot_tbl* [ %51, %47 ], [ %56, %52 ]
  store %struct.dpu_vbif_dynamic_ot_tbl* %58, %struct.dpu_vbif_dynamic_ot_tbl** %8, align 8
  store i64 0, i64* %9, align 8
  br label %59

59:                                               ; preds = %85, %57
  %60 = load i64, i64* %9, align 8
  %61 = load %struct.dpu_vbif_dynamic_ot_tbl*, %struct.dpu_vbif_dynamic_ot_tbl** %8, align 8
  %62 = getelementptr inbounds %struct.dpu_vbif_dynamic_ot_tbl, %struct.dpu_vbif_dynamic_ot_tbl* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ult i64 %60, %63
  br i1 %64, label %65, label %88

65:                                               ; preds = %59
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.dpu_vbif_dynamic_ot_tbl*, %struct.dpu_vbif_dynamic_ot_tbl** %8, align 8
  %68 = getelementptr inbounds %struct.dpu_vbif_dynamic_ot_tbl, %struct.dpu_vbif_dynamic_ot_tbl* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i64, i64* %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = icmp sle i32 %66, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %65
  %76 = load %struct.dpu_vbif_dynamic_ot_tbl*, %struct.dpu_vbif_dynamic_ot_tbl** %8, align 8
  %77 = getelementptr inbounds %struct.dpu_vbif_dynamic_ot_tbl, %struct.dpu_vbif_dynamic_ot_tbl* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = load i64, i64* %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64*, i64** %5, align 8
  store i64 %82, i64* %83, align 8
  br label %88

84:                                               ; preds = %65
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %9, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %9, align 8
  br label %59

88:                                               ; preds = %75, %59
  %89 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %4, align 8
  %90 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @VBIF_0, align 8
  %93 = sub nsw i64 %91, %92
  %94 = load %struct.dpu_vbif_set_ot_params*, %struct.dpu_vbif_set_ot_params** %6, align 8
  %95 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, %struct.dpu_vbif_set_ot_params* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.dpu_vbif_set_ot_params*, %struct.dpu_vbif_set_ot_params** %6, align 8
  %98 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, %struct.dpu_vbif_set_ot_params* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.dpu_vbif_set_ot_params*, %struct.dpu_vbif_set_ot_params** %6, align 8
  %101 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, %struct.dpu_vbif_set_ot_params* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.dpu_vbif_set_ot_params*, %struct.dpu_vbif_set_ot_params** %6, align 8
  %104 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, %struct.dpu_vbif_set_ot_params* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load i64*, i64** %5, align 8
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @DPU_DEBUG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %93, i32 %96, i32 %99, i32 %102, i32 %105, i32 %106, i64 %108)
  br label %110

110:                                              ; preds = %88, %28, %22
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @DPU_DEBUG(i8*, i64, i32, i32, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
