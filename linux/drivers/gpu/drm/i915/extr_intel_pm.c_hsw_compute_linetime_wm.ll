; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_hsw_compute_linetime_wm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_hsw_compute_linetime_wm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.drm_display_mode, i32 }
%struct.drm_display_mode = type { i64, i32 }
%struct.intel_atomic_state = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc_state*)* @hsw_compute_linetime_wm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsw_compute_linetime_wm(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_crtc_state*, align 8
  %4 = alloca %struct.intel_atomic_state*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %3, align 8
  %8 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %9 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.intel_atomic_state* @to_intel_atomic_state(i32 %11)
  store %struct.intel_atomic_state* %12, %struct.intel_atomic_state** %4, align 8
  %13 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %14 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store %struct.drm_display_mode* %15, %struct.drm_display_mode** %5, align 8
  %16 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %17 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %68

22:                                               ; preds = %1
  %23 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %24 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %68

31:                                               ; preds = %22
  %32 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %4, align 8
  %33 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i64 @WARN_ON(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %68

42:                                               ; preds = %31
  %43 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %44 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 %45, 1000
  %47 = mul nsw i32 %46, 8
  %48 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %49 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @DIV_ROUND_CLOSEST(i32 %47, i64 %50)
  store i32 %51, i32* %6, align 4
  %52 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %53 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = mul nsw i32 %54, 1000
  %56 = mul nsw i32 %55, 8
  %57 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %4, align 8
  %58 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @DIV_ROUND_CLOSEST(i32 %56, i64 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @PIPE_WM_LINETIME_IPS_LINETIME(i32 %63)
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @PIPE_WM_LINETIME_TIME(i32 %65)
  %67 = or i32 %64, %66
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %42, %41, %30, %21
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.intel_atomic_state* @to_intel_atomic_state(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i64) #1

declare dso_local i32 @PIPE_WM_LINETIME_IPS_LINETIME(i32) #1

declare dso_local i32 @PIPE_WM_LINETIME_TIME(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
