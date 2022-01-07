; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_supports_dsc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_supports_dsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32 }
%struct.intel_crtc_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dp*, %struct.intel_crtc_state*)* @intel_dp_supports_dsc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_supports_dsc(%struct.intel_dp* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_dp*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  store %struct.intel_dp* %0, %struct.intel_dp** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  %6 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %7 = call i32 @intel_dp_is_edp(%struct.intel_dp* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %11 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %29

15:                                               ; preds = %9, %2
  %16 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %17 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %18 = call i64 @intel_dp_source_supports_dsc(%struct.intel_dp* %16, %struct.intel_crtc_state* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %22 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @drm_dp_sink_supports_dsc(i32 %23)
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %20, %15
  %27 = phi i1 [ false, %15 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %26, %14
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @intel_dp_is_edp(%struct.intel_dp*) #1

declare dso_local i64 @intel_dp_source_supports_dsc(%struct.intel_dp*, %struct.intel_crtc_state*) #1

declare dso_local i64 @drm_dp_sink_supports_dsc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
