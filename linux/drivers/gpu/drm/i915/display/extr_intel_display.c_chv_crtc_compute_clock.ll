; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_chv_crtc_compute_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_chv_crtc_compute_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_limit = type { i32 }
%struct.intel_crtc = type { i32 }
%struct.intel_crtc_state = type { i32, i32, i32, i32 }

@intel_limits_chv = common dso_local global %struct.intel_limit zeroinitializer, align 4
@.str = private unnamed_addr constant [38 x i8] c"Couldn't find PLL settings for mode!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc*, %struct.intel_crtc_state*)* @chv_crtc_compute_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chv_crtc_compute_clock(%struct.intel_crtc* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_crtc*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_limit*, align 8
  store %struct.intel_crtc* %0, %struct.intel_crtc** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store i32 100000, i32* %6, align 4
  store %struct.intel_limit* @intel_limits_chv, %struct.intel_limit** %7, align 8
  %8 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %9 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %8, i32 0, i32 3
  %10 = call i32 @memset(i32* %9, i32 0, i32 4)
  %11 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %12 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %2
  %16 = load %struct.intel_limit*, %struct.intel_limit** %7, align 8
  %17 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %18 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %19 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %23 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %22, i32 0, i32 0
  %24 = call i32 @chv_find_best_dpll(%struct.intel_limit* %16, %struct.intel_crtc_state* %17, i32 %20, i32 %21, i32* null, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %15
  %27 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %34

30:                                               ; preds = %15, %2
  %31 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %32 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %33 = call i32 @chv_compute_dpll(%struct.intel_crtc* %31, %struct.intel_crtc_state* %32)
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %30, %26
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @chv_find_best_dpll(%struct.intel_limit*, %struct.intel_crtc_state*, i32, i32, i32*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @chv_compute_dpll(%struct.intel_crtc*, %struct.intel_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
