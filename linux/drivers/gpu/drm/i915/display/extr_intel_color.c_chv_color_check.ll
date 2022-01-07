; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_chv_color_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_chv_color_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32, i32, i32, i32 }

@GAMMA_MODE_MODE_8BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc_state*)* @chv_color_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chv_color_check(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_crtc_state*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %3, align 8
  %5 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %6 = call i32 @check_luts(%struct.intel_crtc_state* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %40

11:                                               ; preds = %1
  %12 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %13 = call i64 @crtc_state_is_legacy_gamma(%struct.intel_crtc_state* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %17 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %15, %11
  %22 = phi i1 [ false, %11 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %25 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @GAMMA_MODE_MODE_8BIT, align 4
  %27 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %28 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %30 = call i32 @chv_cgm_mode(%struct.intel_crtc_state* %29)
  %31 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %32 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %34 = call i32 @intel_color_add_affected_planes(%struct.intel_crtc_state* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %21
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %40

39:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %37, %9
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @check_luts(%struct.intel_crtc_state*) #1

declare dso_local i64 @crtc_state_is_legacy_gamma(%struct.intel_crtc_state*) #1

declare dso_local i32 @chv_cgm_mode(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_color_add_affected_planes(%struct.intel_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
