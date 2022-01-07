; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_ironlake_irq_postinstall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_ironlake_irq_postinstall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32, i32, i32, %struct.TYPE_2__, %struct.intel_uncore }
%struct.TYPE_2__ = type { i32 }
%struct.intel_uncore = type { i32 }

@DE_MASTER_IRQ_CONTROL = common dso_local global i32 0, align 4
@DE_GSE_IVB = common dso_local global i32 0, align 4
@DE_PCH_EVENT_IVB = common dso_local global i32 0, align 4
@DE_AUX_CHANNEL_A_IVB = common dso_local global i32 0, align 4
@DE_PIPEC_VBLANK_IVB = common dso_local global i32 0, align 4
@DE_PIPEB_VBLANK_IVB = common dso_local global i32 0, align 4
@DE_PIPEA_VBLANK_IVB = common dso_local global i32 0, align 4
@DE_ERR_INT_IVB = common dso_local global i32 0, align 4
@DE_DP_A_HOTPLUG_IVB = common dso_local global i32 0, align 4
@DE_GSE = common dso_local global i32 0, align 4
@DE_PCH_EVENT = common dso_local global i32 0, align 4
@DE_AUX_CHANNEL_A = common dso_local global i32 0, align 4
@DE_PIPEB_CRC_DONE = common dso_local global i32 0, align 4
@DE_PIPEA_CRC_DONE = common dso_local global i32 0, align 4
@DE_POISON = common dso_local global i32 0, align 4
@DE_PIPEA_VBLANK = common dso_local global i32 0, align 4
@DE_PIPEB_VBLANK = common dso_local global i32 0, align 4
@DE_PCU_EVENT = common dso_local global i32 0, align 4
@DE_PIPEB_FIFO_UNDERRUN = common dso_local global i32 0, align 4
@DE_PIPEA_FIFO_UNDERRUN = common dso_local global i32 0, align 4
@DE_DP_A_HOTPLUG = common dso_local global i32 0, align 4
@EDP_PSR_IIR = common dso_local global i32 0, align 4
@DE_EDP_PSR_INT_HSW = common dso_local global i32 0, align 4
@DE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @ironlake_irq_postinstall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ironlake_irq_postinstall(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.intel_uncore*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %7 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %6, i32 0, i32 4
  store %struct.intel_uncore* %7, %struct.intel_uncore** %3, align 8
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %9 = call i32 @INTEL_GEN(%struct.drm_i915_private* %8)
  %10 = icmp sge i32 %9, 7
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  %12 = load i32, i32* @DE_MASTER_IRQ_CONTROL, align 4
  %13 = load i32, i32* @DE_GSE_IVB, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @DE_PCH_EVENT_IVB, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @DE_AUX_CHANNEL_A_IVB, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @DE_PIPEC_VBLANK_IVB, align 4
  %20 = load i32, i32* @DE_PIPEB_VBLANK_IVB, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @DE_PIPEA_VBLANK_IVB, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @DE_ERR_INT_IVB, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @DE_DP_A_HOTPLUG_IVB, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %5, align 4
  br label %53

28:                                               ; preds = %1
  %29 = load i32, i32* @DE_MASTER_IRQ_CONTROL, align 4
  %30 = load i32, i32* @DE_GSE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @DE_PCH_EVENT, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @DE_AUX_CHANNEL_A, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @DE_PIPEB_CRC_DONE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @DE_PIPEA_CRC_DONE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @DE_POISON, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* @DE_PIPEA_VBLANK, align 4
  %43 = load i32, i32* @DE_PIPEB_VBLANK, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @DE_PCU_EVENT, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @DE_PIPEB_FIFO_UNDERRUN, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @DE_PIPEA_FIFO_UNDERRUN, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @DE_DP_A_HOTPLUG, align 4
  %52 = or i32 %50, %51
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %28, %11
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %55 = call i64 @IS_HASWELL(%struct.drm_i915_private* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %53
  %58 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %59 = load i32, i32* @EDP_PSR_IIR, align 4
  %60 = call i32 @gen3_assert_iir_is_zero(%struct.intel_uncore* %58, i32 %59)
  %61 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %62 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %63 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @intel_psr_irq_control(%struct.drm_i915_private* %61, i32 %65)
  %67 = load i32, i32* @DE_EDP_PSR_INT_HSW, align 4
  %68 = load i32, i32* %4, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %57, %53
  %71 = load i32, i32* %4, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %74 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %76 = call i32 @ibx_irq_pre_postinstall(%struct.drm_i915_private* %75)
  %77 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %78 = load i32, i32* @DE, align 4
  %79 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %80 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* %5, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @GEN3_IRQ_INIT(%struct.intel_uncore* %77, i32 %78, i32 %81, i32 %84)
  %86 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %87 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %86, i32 0, i32 2
  %88 = call i32 @gen5_gt_irq_postinstall(i32* %87)
  %89 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %90 = call i32 @ilk_hpd_detection_setup(%struct.drm_i915_private* %89)
  %91 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %92 = call i32 @ibx_irq_postinstall(%struct.drm_i915_private* %91)
  %93 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %94 = call i64 @IS_IRONLAKE_M(%struct.drm_i915_private* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %70
  %97 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %98 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %97, i32 0, i32 1
  %99 = call i32 @spin_lock_irq(i32* %98)
  %100 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %101 = load i32, i32* @DE_PCU_EVENT, align 4
  %102 = call i32 @ilk_enable_display_irq(%struct.drm_i915_private* %100, i32 %101)
  %103 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %104 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %103, i32 0, i32 1
  %105 = call i32 @spin_unlock_irq(i32* %104)
  br label %106

106:                                              ; preds = %96, %70
  ret void
}

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @gen3_assert_iir_is_zero(%struct.intel_uncore*, i32) #1

declare dso_local i32 @intel_psr_irq_control(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @ibx_irq_pre_postinstall(%struct.drm_i915_private*) #1

declare dso_local i32 @GEN3_IRQ_INIT(%struct.intel_uncore*, i32, i32, i32) #1

declare dso_local i32 @gen5_gt_irq_postinstall(i32*) #1

declare dso_local i32 @ilk_hpd_detection_setup(%struct.drm_i915_private*) #1

declare dso_local i32 @ibx_irq_postinstall(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_IRONLAKE_M(%struct.drm_i915_private*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @ilk_enable_display_irq(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
