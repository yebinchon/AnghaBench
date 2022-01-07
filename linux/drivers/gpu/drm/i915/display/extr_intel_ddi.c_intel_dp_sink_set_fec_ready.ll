; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_dp_sink_set_fec_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_dp_sink_set_fec_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32 }
%struct.intel_crtc_state = type { i32 }

@DP_FEC_CONFIGURATION = common dso_local global i32 0, align 4
@DP_FEC_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to set FEC_READY in the sink\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dp*, %struct.intel_crtc_state*)* @intel_dp_sink_set_fec_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_dp_sink_set_fec_ready(%struct.intel_dp* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_dp*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  store %struct.intel_dp* %0, %struct.intel_dp** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %5 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %6 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %19

10:                                               ; preds = %2
  %11 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %12 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %11, i32 0, i32 0
  %13 = load i32, i32* @DP_FEC_CONFIGURATION, align 4
  %14 = load i32, i32* @DP_FEC_READY, align 4
  %15 = call i64 @drm_dp_dpcd_writeb(i32* %12, i32 %13, i32 %14)
  %16 = icmp sle i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %9, %17, %10
  ret void
}

declare dso_local i64 @drm_dp_dpcd_writeb(i32*, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
