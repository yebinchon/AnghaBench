; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_psr.c_intel_psr_enable_sink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_psr.c_intel_psr_enable_sink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@DP_PSR_ENABLE = common dso_local global i32 0, align 4
@DP_RECEIVER_ALPM_CONFIG = common dso_local global i32 0, align 4
@DP_ALPM_ENABLE = common dso_local global i32 0, align 4
@DP_PSR_ENABLE_PSR2 = common dso_local global i32 0, align 4
@DP_PSR_IRQ_HPD_WITH_CRC_ERRORS = common dso_local global i32 0, align 4
@DP_PSR_MAIN_LINK_ACTIVE = common dso_local global i32 0, align 4
@DP_PSR_CRC_VERIFICATION = common dso_local global i32 0, align 4
@DP_PSR_EN_CFG = common dso_local global i32 0, align 4
@DP_SET_POWER = common dso_local global i32 0, align 4
@DP_SET_POWER_D0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dp*)* @intel_psr_enable_sink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_psr_enable_sink(%struct.intel_dp* %0) #0 {
  %2 = alloca %struct.intel_dp*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %2, align 8
  %5 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %6 = call %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp* %5)
  store %struct.drm_i915_private* %6, %struct.drm_i915_private** %3, align 8
  %7 = load i32, i32* @DP_PSR_ENABLE, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %9 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %15 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %14, i32 0, i32 0
  %16 = load i32, i32* @DP_RECEIVER_ALPM_CONFIG, align 4
  %17 = load i32, i32* @DP_ALPM_ENABLE, align 4
  %18 = call i32 @drm_dp_dpcd_writeb(i32* %15, i32 %16, i32 %17)
  %19 = load i32, i32* @DP_PSR_ENABLE_PSR2, align 4
  %20 = load i32, i32* @DP_PSR_IRQ_HPD_WITH_CRC_ERRORS, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %4, align 4
  br label %43

24:                                               ; preds = %1
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %26 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32, i32* @DP_PSR_MAIN_LINK_ACTIVE, align 4
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %30, %24
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %36 = call i32 @INTEL_GEN(%struct.drm_i915_private* %35)
  %37 = icmp sge i32 %36, 8
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* @DP_PSR_CRC_VERIFICATION, align 4
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %38, %34
  br label %43

43:                                               ; preds = %42, %13
  %44 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %45 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %44, i32 0, i32 0
  %46 = load i32, i32* @DP_PSR_EN_CFG, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @drm_dp_dpcd_writeb(i32* %45, i32 %46, i32 %47)
  %49 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %50 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %49, i32 0, i32 0
  %51 = load i32, i32* @DP_SET_POWER, align 4
  %52 = load i32, i32* @DP_SET_POWER_D0, align 4
  %53 = call i32 @drm_dp_dpcd_writeb(i32* %50, i32 %51, i32 %52)
  ret void
}

declare dso_local %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp*) #1

declare dso_local i32 @drm_dp_dpcd_writeb(i32*, i32, i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
