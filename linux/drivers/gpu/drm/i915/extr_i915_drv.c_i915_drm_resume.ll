; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_i915_drm_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_i915_drm_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_i915_private = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.drm_i915_private.0*)* }
%struct.drm_i915_private.0 = type opaque
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"failed to re-enable GGTT\0A\00", align 1
@FBINFO_STATE_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @i915_drm_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_drm_resume(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %5)
  store %struct.drm_i915_private* %6, %struct.drm_i915_private** %3, align 8
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %8 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %7, i32 0, i32 0
  %9 = call i32 @disable_rpm_wakeref_asserts(i32* %8)
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %11 = call i32 @intel_sanitize_gt_powersave(%struct.drm_i915_private* %10)
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %13 = call i32 @i915_gem_sanitize(%struct.drm_i915_private* %12)
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %15 = call i32 @i915_ggtt_enable_hw(%struct.drm_i915_private* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %1
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %22 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %26 = call i32 @i915_gem_restore_gtt_mappings(%struct.drm_i915_private* %25)
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %28 = call i32 @i915_gem_restore_fences(%struct.drm_i915_private* %27)
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %30 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %34 = call i32 @intel_csr_ucode_resume(%struct.drm_i915_private* %33)
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %36 = call i32 @i915_restore_state(%struct.drm_i915_private* %35)
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %38 = call i32 @intel_pps_unlock_regs_wa(%struct.drm_i915_private* %37)
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %40 = call i32 @intel_init_pch_refclk(%struct.drm_i915_private* %39)
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %42 = call i32 @intel_runtime_pm_enable_interrupts(%struct.drm_i915_private* %41)
  %43 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %44 = call i32 @drm_mode_config_reset(%struct.drm_device* %43)
  %45 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %46 = call i32 @i915_gem_resume(%struct.drm_i915_private* %45)
  %47 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %48 = call i32 @intel_modeset_init_hw(%struct.drm_device* %47)
  %49 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %50 = call i32 @intel_init_clock_gating(%struct.drm_i915_private* %49)
  %51 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %52 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %51, i32 0, i32 1
  %53 = call i32 @spin_lock_irq(i32* %52)
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %55 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32 (%struct.drm_i915_private.0*)*, i32 (%struct.drm_i915_private.0*)** %56, align 8
  %58 = icmp ne i32 (%struct.drm_i915_private.0*)* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %20
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %61 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32 (%struct.drm_i915_private.0*)*, i32 (%struct.drm_i915_private.0*)** %62, align 8
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %65 = bitcast %struct.drm_i915_private* %64 to %struct.drm_i915_private.0*
  %66 = call i32 %63(%struct.drm_i915_private.0* %65)
  br label %67

67:                                               ; preds = %59, %20
  %68 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %69 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %68, i32 0, i32 1
  %70 = call i32 @spin_unlock_irq(i32* %69)
  %71 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %72 = call i32 @intel_dp_mst_resume(%struct.drm_i915_private* %71)
  %73 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %74 = call i32 @intel_display_resume(%struct.drm_device* %73)
  %75 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %76 = call i32 @drm_kms_helper_poll_enable(%struct.drm_device* %75)
  %77 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %78 = call i32 @intel_hpd_init(%struct.drm_i915_private* %77)
  %79 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %80 = call i32 @intel_opregion_resume(%struct.drm_i915_private* %79)
  %81 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %82 = load i32, i32* @FBINFO_STATE_RUNNING, align 4
  %83 = call i32 @intel_fbdev_set_suspend(%struct.drm_device* %81, i32 %82, i32 0)
  %84 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %85 = call i32 @intel_power_domains_enable(%struct.drm_i915_private* %84)
  %86 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %87 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %86, i32 0, i32 0
  %88 = call i32 @enable_rpm_wakeref_asserts(i32* %87)
  ret i32 0
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @disable_rpm_wakeref_asserts(i32*) #1

declare dso_local i32 @intel_sanitize_gt_powersave(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_gem_sanitize(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_ggtt_enable_hw(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i915_gem_restore_gtt_mappings(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_gem_restore_fences(%struct.drm_i915_private*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @intel_csr_ucode_resume(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_restore_state(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_pps_unlock_regs_wa(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_init_pch_refclk(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_runtime_pm_enable_interrupts(%struct.drm_i915_private*) #1

declare dso_local i32 @drm_mode_config_reset(%struct.drm_device*) #1

declare dso_local i32 @i915_gem_resume(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_modeset_init_hw(%struct.drm_device*) #1

declare dso_local i32 @intel_init_clock_gating(%struct.drm_i915_private*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @intel_dp_mst_resume(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_display_resume(%struct.drm_device*) #1

declare dso_local i32 @drm_kms_helper_poll_enable(%struct.drm_device*) #1

declare dso_local i32 @intel_hpd_init(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_opregion_resume(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_fbdev_set_suspend(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @intel_power_domains_enable(%struct.drm_i915_private*) #1

declare dso_local i32 @enable_rpm_wakeref_asserts(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
