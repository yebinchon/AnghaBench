; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_i915_driver_early_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_i915_driver_early_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@PM_QOS_CPU_DMA_LATENCY = common dso_local global i32 0, align 4
@PM_QOS_DEFAULT_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*)* @i915_driver_early_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_driver_early_probe(%struct.drm_i915_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %6 = call i64 @i915_inject_probe_failure(%struct.drm_i915_private* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %120

11:                                               ; preds = %1
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %13 = call i32 @intel_device_info_subplatform_init(%struct.drm_i915_private* %12)
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %15 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %14, i32 0, i32 13
  %16 = call i32 @intel_uncore_mmio_debug_init_early(i32* %15)
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %18 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %17, i32 0, i32 12
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %20 = call i32 @intel_uncore_init_early(i32* %18, %struct.drm_i915_private* %19)
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %22 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %21, i32 0, i32 11
  %23 = call i32 @spin_lock_init(i32* %22)
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %25 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %24, i32 0, i32 10
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = call i32 @spin_lock_init(i32* %26)
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %29 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %28, i32 0, i32 9
  %30 = call i32 @mutex_init(i32* %29)
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %32 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %31, i32 0, i32 8
  %33 = call i32 @mutex_init(i32* %32)
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %35 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %34, i32 0, i32 7
  %36 = load i32, i32* @PM_QOS_CPU_DMA_LATENCY, align 4
  %37 = load i32, i32* @PM_QOS_DEFAULT_VALUE, align 4
  %38 = call i32 @pm_qos_add_request(i32* %35, i32 %36, i32 %37)
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %40 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %39, i32 0, i32 6
  %41 = call i32 @mutex_init(i32* %40)
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %43 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = call i32 @mutex_init(i32* %44)
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %47 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %46, i32 0, i32 4
  %48 = call i32 @mutex_init(i32* %47)
  %49 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %50 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %49, i32 0, i32 3
  %51 = call i32 @mutex_init(i32* %50)
  %52 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %53 = call i32 @i915_memcpy_init_early(%struct.drm_i915_private* %52)
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %55 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %54, i32 0, i32 2
  %56 = call i32 @intel_runtime_pm_init_early(i32* %55)
  %57 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %58 = call i32 @i915_workqueues_init(%struct.drm_i915_private* %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %11
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %120

63:                                               ; preds = %11
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %65 = call i32 @vlv_alloc_s0ix_state(%struct.drm_i915_private* %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %116

69:                                               ; preds = %63
  %70 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %71 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %70, i32 0, i32 1
  %72 = call i32 @intel_wopcm_init_early(i32* %71)
  %73 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %74 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %73, i32 0, i32 0
  %75 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %76 = call i32 @intel_gt_init_early(i32* %74, %struct.drm_i915_private* %75)
  %77 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %78 = call i32 @i915_gem_init_early(%struct.drm_i915_private* %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %69
  br label %110

82:                                               ; preds = %69
  %83 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %84 = call i32 @intel_detect_pch(%struct.drm_i915_private* %83)
  %85 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %86 = call i32 @intel_pm_setup(%struct.drm_i915_private* %85)
  %87 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %88 = call i32 @intel_init_dpio(%struct.drm_i915_private* %87)
  %89 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %90 = call i32 @intel_power_domains_init(%struct.drm_i915_private* %89)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %82
  br label %107

94:                                               ; preds = %82
  %95 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %96 = call i32 @intel_irq_init(%struct.drm_i915_private* %95)
  %97 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %98 = call i32 @intel_init_display_hooks(%struct.drm_i915_private* %97)
  %99 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %100 = call i32 @intel_init_clock_gating_hooks(%struct.drm_i915_private* %99)
  %101 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %102 = call i32 @intel_init_audio_hooks(%struct.drm_i915_private* %101)
  %103 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %104 = call i32 @intel_display_crc_init(%struct.drm_i915_private* %103)
  %105 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %106 = call i32 @intel_detect_preproduction_hw(%struct.drm_i915_private* %105)
  store i32 0, i32* %2, align 4
  br label %120

107:                                              ; preds = %93
  %108 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %109 = call i32 @i915_gem_cleanup_early(%struct.drm_i915_private* %108)
  br label %110

110:                                              ; preds = %107, %81
  %111 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %112 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %111, i32 0, i32 0
  %113 = call i32 @intel_gt_driver_late_release(i32* %112)
  %114 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %115 = call i32 @vlv_free_s0ix_state(%struct.drm_i915_private* %114)
  br label %116

116:                                              ; preds = %110, %68
  %117 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %118 = call i32 @i915_workqueues_cleanup(%struct.drm_i915_private* %117)
  %119 = load i32, i32* %4, align 4
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %116, %94, %61, %8
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i64 @i915_inject_probe_failure(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_device_info_subplatform_init(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_uncore_mmio_debug_init_early(i32*) #1

declare dso_local i32 @intel_uncore_init_early(i32*, %struct.drm_i915_private*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @pm_qos_add_request(i32*, i32, i32) #1

declare dso_local i32 @i915_memcpy_init_early(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_runtime_pm_init_early(i32*) #1

declare dso_local i32 @i915_workqueues_init(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_alloc_s0ix_state(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_wopcm_init_early(i32*) #1

declare dso_local i32 @intel_gt_init_early(i32*, %struct.drm_i915_private*) #1

declare dso_local i32 @i915_gem_init_early(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_detect_pch(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_pm_setup(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_init_dpio(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_power_domains_init(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_irq_init(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_init_display_hooks(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_init_clock_gating_hooks(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_init_audio_hooks(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_display_crc_init(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_detect_preproduction_hw(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_gem_cleanup_early(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_gt_driver_late_release(i32*) #1

declare dso_local i32 @vlv_free_s0ix_state(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_workqueues_cleanup(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
