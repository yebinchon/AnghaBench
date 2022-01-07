; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_sanitize_rc6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_sanitize_rc6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_device_info = type { i32, i32, i64 }

@.str = private unnamed_addr constant [22 x i8] c"RC6 disabled by BIOS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*)* @sanitize_rc6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sanitize_rc6(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.intel_device_info*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %5 = call %struct.intel_device_info* @mkwrite_device_info(%struct.drm_i915_private* %4)
  store %struct.intel_device_info* %5, %struct.intel_device_info** %3, align 8
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %7 = call i64 @intel_vgpu_active(%struct.drm_i915_private* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.intel_device_info*, %struct.intel_device_info** %3, align 8
  %11 = getelementptr inbounds %struct.intel_device_info, %struct.intel_device_info* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load %struct.intel_device_info*, %struct.intel_device_info** %3, align 8
  %13 = getelementptr inbounds %struct.intel_device_info, %struct.intel_device_info* %12, i32 0, i32 1
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %9, %1
  %15 = load %struct.intel_device_info*, %struct.intel_device_info** %3, align 8
  %16 = getelementptr inbounds %struct.intel_device_info, %struct.intel_device_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %14
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %21 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %25 = call i32 @bxt_check_bios_rc6_setup(%struct.drm_i915_private* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = call i32 @DRM_INFO(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.intel_device_info*, %struct.intel_device_info** %3, align 8
  %30 = getelementptr inbounds %struct.intel_device_info, %struct.intel_device_info* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  br label %31

31:                                               ; preds = %27, %23, %19, %14
  %32 = load %struct.intel_device_info*, %struct.intel_device_info** %3, align 8
  %33 = getelementptr inbounds %struct.intel_device_info, %struct.intel_device_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %31
  %37 = load %struct.intel_device_info*, %struct.intel_device_info** %3, align 8
  %38 = getelementptr inbounds %struct.intel_device_info, %struct.intel_device_info* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.intel_device_info*, %struct.intel_device_info** %3, align 8
  %43 = getelementptr inbounds %struct.intel_device_info, %struct.intel_device_info* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %41, %36, %31
  %45 = load %struct.intel_device_info*, %struct.intel_device_info** %3, align 8
  %46 = getelementptr inbounds %struct.intel_device_info, %struct.intel_device_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  ret i32 %47
}

declare dso_local %struct.intel_device_info* @mkwrite_device_info(%struct.drm_i915_private*) #1

declare dso_local i64 @intel_vgpu_active(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN9_LP(%struct.drm_i915_private*) #1

declare dso_local i32 @bxt_check_bios_rc6_setup(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_INFO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
