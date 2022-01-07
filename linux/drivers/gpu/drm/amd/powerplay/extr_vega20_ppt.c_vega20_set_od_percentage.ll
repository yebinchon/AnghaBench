; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_set_od_percentage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_set_od_percentage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32, %struct.TYPE_6__, %struct.smu_dpm_context }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.smu_dpm_context = type { i32, %struct.vega20_dpm_table*, %struct.vega20_dpm_table* }
%struct.vega20_dpm_table = type { %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table }
%struct.vega20_single_dpm_table = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@SMU_FEATURE_DPM_GFXCLK_BIT = common dso_local global i32 0, align 4
@PPCLK_GFXCLK = common dso_local global i32 0, align 4
@OD8_SETTING_GFXCLK_FMAX = common dso_local global i32 0, align 4
@SMU_FEATURE_DPM_UCLK_BIT = common dso_local global i32 0, align 4
@PPCLK_UCLK = common dso_local global i32 0, align 4
@OD8_SETTING_UCLK_FMAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"[Setoverdrive] failed to set od clk!\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"[Setoverdrive] failed to refresh dpm table!\0A\00", align 1
@AMD_PP_TASK_READJUST_POWER_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i32, i32)* @vega20_set_od_percentage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega20_set_od_percentage(%struct.smu_context* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.smu_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.smu_dpm_context*, align 8
  %8 = alloca %struct.vega20_dpm_table*, align 8
  %9 = alloca %struct.vega20_dpm_table*, align 8
  %10 = alloca %struct.vega20_single_dpm_table*, align 8
  %11 = alloca %struct.vega20_single_dpm_table*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %17 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %18 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %17, i32 0, i32 2
  store %struct.smu_dpm_context* %18, %struct.smu_dpm_context** %7, align 8
  store %struct.vega20_dpm_table* null, %struct.vega20_dpm_table** %8, align 8
  store %struct.vega20_dpm_table* null, %struct.vega20_dpm_table** %9, align 8
  store i32 0, i32* %14, align 4
  %19 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %20 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %7, align 8
  %23 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %22, i32 0, i32 2
  %24 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %23, align 8
  store %struct.vega20_dpm_table* %24, %struct.vega20_dpm_table** %8, align 8
  %25 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %7, align 8
  %26 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %25, i32 0, i32 1
  %27 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %26, align 8
  store %struct.vega20_dpm_table* %27, %struct.vega20_dpm_table** %9, align 8
  %28 = load i32, i32* %5, align 4
  switch i32 %28, label %49 [
    i32 128, label %29
    i32 129, label %39
  ]

29:                                               ; preds = %3
  %30 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %8, align 8
  %31 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %30, i32 0, i32 1
  store %struct.vega20_single_dpm_table* %31, %struct.vega20_single_dpm_table** %10, align 8
  %32 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %9, align 8
  %33 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %32, i32 0, i32 1
  store %struct.vega20_single_dpm_table* %33, %struct.vega20_single_dpm_table** %11, align 8
  %34 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %35 = load i32, i32* @SMU_FEATURE_DPM_GFXCLK_BIT, align 4
  %36 = call i32 @smu_feature_is_enabled(%struct.smu_context* %34, i32 %35)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* @PPCLK_GFXCLK, align 4
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* @OD8_SETTING_GFXCLK_FMAX, align 4
  store i32 %38, i32* %13, align 4
  br label %52

39:                                               ; preds = %3
  %40 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %8, align 8
  %41 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %40, i32 0, i32 0
  store %struct.vega20_single_dpm_table* %41, %struct.vega20_single_dpm_table** %10, align 8
  %42 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %9, align 8
  %43 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %42, i32 0, i32 0
  store %struct.vega20_single_dpm_table* %43, %struct.vega20_single_dpm_table** %11, align 8
  %44 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %45 = load i32, i32* @SMU_FEATURE_DPM_UCLK_BIT, align 4
  %46 = call i32 @smu_feature_is_enabled(%struct.smu_context* %44, i32 %45)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* @PPCLK_UCLK, align 4
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* @OD8_SETTING_UCLK_FMAX, align 4
  store i32 %48, i32* %13, align 4
  br label %52

49:                                               ; preds = %3
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %14, align 4
  br label %52

52:                                               ; preds = %49, %39, %29
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %127

56:                                               ; preds = %52
  %57 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %11, align 8
  %58 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %11, align 8
  %61 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %6, align 4
  %69 = mul nsw i32 %67, %68
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = sdiv i32 %70, 100
  store i32 %71, i32* %12, align 4
  %72 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %11, align 8
  %73 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %11, align 8
  %76 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %12, align 4
  %85 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @vega20_update_od8_settings(%struct.smu_context* %85, i32 %86, i32 %87)
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %56
  %92 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %127

93:                                               ; preds = %56
  %94 = load i32, i32* %15, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %93
  %97 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %98 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %10, align 8
  %99 = load i32, i32* %16, align 4
  %100 = call i32 @vega20_set_single_dpm_table(%struct.smu_context* %97, %struct.vega20_single_dpm_table* %98, i32 %99)
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %14, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %127

105:                                              ; preds = %96
  br label %120

106:                                              ; preds = %93
  %107 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %10, align 8
  %108 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %107, i32 0, i32 0
  store i32 1, i32* %108, align 8
  %109 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %110 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = sdiv i32 %113, 100
  %115 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %10, align 8
  %116 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %115, i32 0, i32 1
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  store i32 %114, i32* %119, align 4
  br label %120

120:                                              ; preds = %106, %105
  %121 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %122 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %7, align 8
  %123 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @AMD_PP_TASK_READJUST_POWER_STATE, align 4
  %126 = call i32 @smu_handle_task(%struct.smu_context* %121, i32 %124, i32 %125)
  store i32 %126, i32* %14, align 4
  br label %127

127:                                              ; preds = %120, %103, %91, %55
  %128 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %129 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %128, i32 0, i32 0
  %130 = call i32 @mutex_unlock(i32* %129)
  %131 = load i32, i32* %14, align 4
  ret i32 %131
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @smu_feature_is_enabled(%struct.smu_context*, i32) #1

declare dso_local i32 @vega20_update_od8_settings(%struct.smu_context*, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @vega20_set_single_dpm_table(%struct.smu_context*, %struct.vega20_single_dpm_table*, i32) #1

declare dso_local i32 @smu_handle_task(%struct.smu_context*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
