; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_ilk_color_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_ilk_color_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32, i32, i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc_state*)* @ilk_color_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ilk_color_check(%struct.intel_crtc_state* %0) #0 {
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
  br label %43

11:                                               ; preds = %1
  %12 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %13 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %19 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %17, %11
  %24 = phi i1 [ false, %11 ], [ %22, %17 ]
  %25 = zext i1 %24 to i32
  %26 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %27 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %29 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %28, i32 0, i32 1
  store i32 0, i32* %29, align 4
  %30 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %31 = call i32 @ilk_gamma_mode(%struct.intel_crtc_state* %30)
  %32 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %33 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %35 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %37 = call i32 @intel_color_add_affected_planes(%struct.intel_crtc_state* %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %23
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %43

42:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %40, %9
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @check_luts(%struct.intel_crtc_state*) #1

declare dso_local i32 @ilk_gamma_mode(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_color_add_affected_planes(%struct.intel_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
