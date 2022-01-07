; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_switch_power_profile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_switch_power_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32, i32*, i64*, i32, i32, %struct.smu_dpm_context }
%struct.smu_dpm_context = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@PP_SMC_POWER_PROFILE_CUSTOM = common dso_local global i32 0, align 4
@WORKLOAD_POLICY_MAX = common dso_local global i32 0, align 4
@AMD_DPM_FORCED_LEVEL_MANUAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu_switch_power_profile(%struct.smu_context* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smu_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.smu_dpm_context*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %12 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %11, i32 0, i32 5
  store %struct.smu_dpm_context* %12, %struct.smu_dpm_context** %8, align 8
  %13 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %14 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %116

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @PP_SMC_POWER_PROFILE_CUSTOM, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %116

27:                                               ; preds = %20
  %28 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %29 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %28, i32 0, i32 3
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %70, label %33

33:                                               ; preds = %27
  %34 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %35 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 1, %40
  %42 = xor i32 %41, -1
  %43 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %44 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %48 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @fls(i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %33
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @WORKLOAD_POLICY_MAX, align 4
  %56 = icmp sle i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* %10, align 4
  %59 = sub nsw i32 %58, 1
  br label %61

60:                                               ; preds = %53, %33
  br label %61

61:                                               ; preds = %60, %57
  %62 = phi i32 [ %59, %57 ], [ 0, %60 ]
  store i32 %62, i32* %10, align 4
  %63 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %64 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %63, i32 0, i32 2
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %9, align 8
  br label %103

70:                                               ; preds = %27
  %71 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %72 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 1, %77
  %79 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %80 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %84 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @fls(i32 %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @WORKLOAD_POLICY_MAX, align 4
  %89 = icmp sle i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %70
  %91 = load i32, i32* %10, align 4
  %92 = sub nsw i32 %91, 1
  br label %94

93:                                               ; preds = %70
  br label %94

94:                                               ; preds = %93, %90
  %95 = phi i32 [ %92, %90 ], [ 0, %93 ]
  store i32 %95, i32* %10, align 4
  %96 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %97 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %96, i32 0, i32 2
  %98 = load i64*, i64** %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %9, align 8
  br label %103

103:                                              ; preds = %94, %61
  %104 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %8, align 8
  %105 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @AMD_DPM_FORCED_LEVEL_MANUAL, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  %110 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %111 = call i32 @smu_set_power_profile_mode(%struct.smu_context* %110, i64* %9, i32 0)
  br label %112

112:                                              ; preds = %109, %103
  %113 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %114 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %113, i32 0, i32 3
  %115 = call i32 @mutex_unlock(i32* %114)
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %112, %24, %17
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @smu_set_power_profile_mode(%struct.smu_context*, i64*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
