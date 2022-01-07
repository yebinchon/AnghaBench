; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_i915_driver_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_i915_driver_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32, %struct.drm_device }
%struct.drm_device = type { i32 }

@display_ready = common dso_local global i32 0, align 4
@VGT_DRV_DISPLAY_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Failed to register driver for userspace access!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @i915_driver_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_driver_register(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.drm_device*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %5 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %4, i32 0, i32 1
  store %struct.drm_device* %5, %struct.drm_device** %3, align 8
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %7 = call i32 @i915_gem_driver_register(%struct.drm_i915_private* %6)
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %9 = call i32 @i915_pmu_register(%struct.drm_i915_private* %8)
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %11 = call i64 @intel_vgpu_active(%struct.drm_i915_private* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load i32, i32* @display_ready, align 4
  %15 = call i32 @vgtif_reg(i32 %14)
  %16 = load i32, i32* @VGT_DRV_DISPLAY_READY, align 4
  %17 = call i32 @I915_WRITE(i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %20 = call i64 @drm_dev_register(%struct.drm_device* %19, i32 0)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %24 = call i32 @i915_debugfs_register(%struct.drm_i915_private* %23)
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %26 = call i32 @i915_setup_sysfs(%struct.drm_i915_private* %25)
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %28 = call i32 @i915_perf_register(%struct.drm_i915_private* %27)
  br label %31

29:                                               ; preds = %18
  %30 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %22
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %33 = call i64 @HAS_DISPLAY(%struct.drm_i915_private* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %37 = call i32 @intel_opregion_register(%struct.drm_i915_private* %36)
  %38 = call i32 (...) @acpi_video_register()
  br label %39

39:                                               ; preds = %35, %31
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %41 = call i64 @IS_GEN(%struct.drm_i915_private* %40, i32 5)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %45 = call i32 @intel_gpu_ips_init(%struct.drm_i915_private* %44)
  br label %46

46:                                               ; preds = %43, %39
  %47 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %48 = call i32 @intel_audio_init(%struct.drm_i915_private* %47)
  %49 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %50 = call i32 @intel_fbdev_initial_config_async(%struct.drm_device* %49)
  %51 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %52 = call i64 @HAS_DISPLAY(%struct.drm_i915_private* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %56 = call i32 @drm_kms_helper_poll_init(%struct.drm_device* %55)
  br label %57

57:                                               ; preds = %54, %46
  %58 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %59 = call i32 @intel_power_domains_enable(%struct.drm_i915_private* %58)
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %61 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %60, i32 0, i32 0
  %62 = call i32 @intel_runtime_pm_enable(i32* %61)
  ret void
}

declare dso_local i32 @i915_gem_driver_register(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_pmu_register(%struct.drm_i915_private*) #1

declare dso_local i64 @intel_vgpu_active(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @vgtif_reg(i32) #1

declare dso_local i64 @drm_dev_register(%struct.drm_device*, i32) #1

declare dso_local i32 @i915_debugfs_register(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_setup_sysfs(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_perf_register(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i64 @HAS_DISPLAY(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_opregion_register(%struct.drm_i915_private*) #1

declare dso_local i32 @acpi_video_register(...) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_gpu_ips_init(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_audio_init(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_fbdev_initial_config_async(%struct.drm_device*) #1

declare dso_local i32 @drm_kms_helper_poll_init(%struct.drm_device*) #1

declare dso_local i32 @intel_power_domains_enable(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_runtime_pm_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
