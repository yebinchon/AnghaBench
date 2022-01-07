; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_skl_get_aux_send_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_skl_get_aux_send_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32 }
%struct.intel_digital_port = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@DP_AUX_CH_CTL_SEND_BUSY = common dso_local global i32 0, align 4
@DP_AUX_CH_CTL_DONE = common dso_local global i32 0, align 4
@DP_AUX_CH_CTL_INTERRUPT = common dso_local global i32 0, align 4
@DP_AUX_CH_CTL_TIME_OUT_ERROR = common dso_local global i32 0, align 4
@DP_AUX_CH_CTL_TIME_OUT_MAX = common dso_local global i32 0, align 4
@DP_AUX_CH_CTL_RECEIVE_ERROR = common dso_local global i32 0, align 4
@DP_AUX_CH_CTL_MESSAGE_SIZE_SHIFT = common dso_local global i32 0, align 4
@TC_PORT_TBT_ALT = common dso_local global i64 0, align 8
@DP_AUX_CH_CTL_TBT_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dp*, i32, i32)* @skl_get_aux_send_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_get_aux_send_ctl(%struct.intel_dp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.intel_dp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_digital_port*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %12 = call %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp* %11)
  store %struct.intel_digital_port* %12, %struct.intel_digital_port** %7, align 8
  %13 = load %struct.intel_digital_port*, %struct.intel_digital_port** %7, align 8
  %14 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.drm_i915_private* @to_i915(i32 %17)
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %8, align 8
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %20 = load %struct.intel_digital_port*, %struct.intel_digital_port** %7, align 8
  %21 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @intel_port_to_phy(%struct.drm_i915_private* %19, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @DP_AUX_CH_CTL_SEND_BUSY, align 4
  %26 = load i32, i32* @DP_AUX_CH_CTL_DONE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @DP_AUX_CH_CTL_INTERRUPT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @DP_AUX_CH_CTL_TIME_OUT_ERROR, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @DP_AUX_CH_CTL_TIME_OUT_MAX, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @DP_AUX_CH_CTL_RECEIVE_ERROR, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @DP_AUX_CH_CTL_MESSAGE_SIZE_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = or i32 %35, %38
  %40 = call i32 @DP_AUX_CH_CTL_FW_SYNC_PULSE_SKL(i32 32)
  %41 = or i32 %39, %40
  %42 = call i32 @DP_AUX_CH_CTL_SYNC_PULSE_SKL(i32 32)
  %43 = or i32 %41, %42
  store i32 %43, i32* %10, align 4
  %44 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i64 @intel_phy_is_tc(%struct.drm_i915_private* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %3
  %49 = load %struct.intel_digital_port*, %struct.intel_digital_port** %7, align 8
  %50 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @TC_PORT_TBT_ALT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i32, i32* @DP_AUX_CH_CTL_TBT_IO, align 4
  %56 = load i32, i32* %10, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %54, %48, %3
  %59 = load i32, i32* %10, align 4
  ret i32 %59
}

declare dso_local %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp*) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @intel_port_to_phy(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @DP_AUX_CH_CTL_FW_SYNC_PULSE_SKL(i32) #1

declare dso_local i32 @DP_AUX_CH_CTL_SYNC_PULSE_SKL(i32) #1

declare dso_local i64 @intel_phy_is_tc(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
