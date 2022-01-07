; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_crtc_init_scalers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_crtc_init_scalers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_crtc_state = type { %struct.intel_crtc_scaler_state }
%struct.intel_crtc_scaler_state = type { i32, %struct.intel_scaler* }
%struct.intel_scaler = type { i64, i64 }
%struct.drm_i915_private = type { i32 }
%struct.TYPE_4__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc*, %struct.intel_crtc_state*)* @intel_crtc_init_scalers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_crtc_init_scalers(%struct.intel_crtc* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.intel_crtc_scaler_state*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.intel_scaler*, align 8
  store %struct.intel_crtc* %0, %struct.intel_crtc** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %9 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %10 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %9, i32 0, i32 0
  store %struct.intel_crtc_scaler_state* %10, %struct.intel_crtc_scaler_state** %5, align 8
  %11 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %12 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.drm_i915_private* @to_i915(i32 %14)
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %6, align 8
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %17 = call %struct.TYPE_4__* @RUNTIME_INFO(%struct.drm_i915_private* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %21 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %26 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %28 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %2
  br label %56

32:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %50, %32
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %36 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %33
  %40 = load %struct.intel_crtc_scaler_state*, %struct.intel_crtc_scaler_state** %5, align 8
  %41 = getelementptr inbounds %struct.intel_crtc_scaler_state, %struct.intel_crtc_scaler_state* %40, i32 0, i32 1
  %42 = load %struct.intel_scaler*, %struct.intel_scaler** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.intel_scaler, %struct.intel_scaler* %42, i64 %44
  store %struct.intel_scaler* %45, %struct.intel_scaler** %8, align 8
  %46 = load %struct.intel_scaler*, %struct.intel_scaler** %8, align 8
  %47 = getelementptr inbounds %struct.intel_scaler, %struct.intel_scaler* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.intel_scaler*, %struct.intel_scaler** %8, align 8
  %49 = getelementptr inbounds %struct.intel_scaler, %struct.intel_scaler* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %39
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %33

53:                                               ; preds = %33
  %54 = load %struct.intel_crtc_scaler_state*, %struct.intel_crtc_scaler_state** %5, align 8
  %55 = getelementptr inbounds %struct.intel_crtc_scaler_state, %struct.intel_crtc_scaler_state* %54, i32 0, i32 0
  store i32 -1, i32* %55, align 8
  br label %56

56:                                               ; preds = %53, %31
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.TYPE_4__* @RUNTIME_INFO(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
