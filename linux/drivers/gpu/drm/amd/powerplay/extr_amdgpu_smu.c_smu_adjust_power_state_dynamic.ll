; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_adjust_power_state_dynamic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_adjust_power_state_dynamic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i64*, i64, i32, i32, %struct.smu_dpm_context }
%struct.smu_dpm_context = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to change display config!\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to apply clocks adjust rules!\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to notify smc display config!\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to set performance level!\00", align 1
@AMD_DPM_FORCED_LEVEL_MANUAL = common dso_local global i64 0, align 8
@WORKLOAD_POLICY_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu_adjust_power_state_dynamic(%struct.smu_context* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smu_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.smu_dpm_context*, align 8
  store %struct.smu_context* %0, %struct.smu_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %13 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %12, i32 0, i32 4
  store %struct.smu_dpm_context* %13, %struct.smu_dpm_context** %11, align 8
  %14 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %15 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %121

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  %25 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %26 = call i32 @smu_display_config_changed(%struct.smu_context* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %4, align 4
  br label %121

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32, %21
  %34 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %35 = call i32 @smu_apply_clocks_adjust_rules(%struct.smu_context* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %4, align 4
  br label %121

41:                                               ; preds = %33
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %41
  %45 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %46 = call i32 @smu_notify_smc_dispaly_config(%struct.smu_context* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %121

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52, %41
  %54 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %11, align 8
  %55 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %53
  %60 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @smu_asic_set_performance_level(%struct.smu_context* %60, i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %59
  %66 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @smu_default_set_performance_level(%struct.smu_context* %66, i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %4, align 4
  br label %121

74:                                               ; preds = %65
  br label %75

75:                                               ; preds = %74, %59
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %11, align 8
  %78 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %75, %53
  %80 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %11, align 8
  %81 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* @AMD_DPM_FORCED_LEVEL_MANUAL, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %119

86:                                               ; preds = %79
  %87 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %88 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @fls(i32 %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %86
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @WORKLOAD_POLICY_MAX, align 4
  %96 = icmp sle i32 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load i32, i32* %9, align 4
  %99 = sub nsw i32 %98, 1
  br label %101

100:                                              ; preds = %93, %86
  br label %101

101:                                              ; preds = %100, %97
  %102 = phi i32 [ %99, %97 ], [ 0, %100 ]
  store i32 %102, i32* %9, align 4
  %103 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %104 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %103, i32 0, i32 0
  %105 = load i64*, i64** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %10, align 8
  %110 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %111 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %10, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %101
  %116 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %117 = call i32 @smu_set_power_profile_mode(%struct.smu_context* %116, i64* %10, i32 0)
  br label %118

118:                                              ; preds = %115, %101
  br label %119

119:                                              ; preds = %118, %79
  %120 = load i32, i32* %8, align 4
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %119, %71, %49, %38, %29, %18
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32 @smu_display_config_changed(%struct.smu_context*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @smu_apply_clocks_adjust_rules(%struct.smu_context*) #1

declare dso_local i32 @smu_notify_smc_dispaly_config(%struct.smu_context*) #1

declare dso_local i32 @smu_asic_set_performance_level(%struct.smu_context*, i32) #1

declare dso_local i32 @smu_default_set_performance_level(%struct.smu_context*, i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @smu_set_power_profile_mode(%struct.smu_context*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
