; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_state_helper.c_drm_atomic_helper_crtc_duplicate_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_state_helper.c_drm_atomic_helper_crtc_duplicate_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc_state = type { i32 }
%struct.drm_crtc = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_crtc_state* @drm_atomic_helper_crtc_duplicate_state(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc_state*, align 8
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  %5 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %6 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.drm_crtc_state* null, %struct.drm_crtc_state** %2, align 8
  br label %25

14:                                               ; preds = %1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.drm_crtc_state* @kmalloc(i32 4, i32 %15)
  store %struct.drm_crtc_state* %16, %struct.drm_crtc_state** %4, align 8
  %17 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %18 = icmp ne %struct.drm_crtc_state* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %21 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %22 = call i32 @__drm_atomic_helper_crtc_duplicate_state(%struct.drm_crtc* %20, %struct.drm_crtc_state* %21)
  br label %23

23:                                               ; preds = %19, %14
  %24 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  store %struct.drm_crtc_state* %24, %struct.drm_crtc_state** %2, align 8
  br label %25

25:                                               ; preds = %23, %13
  %26 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %2, align 8
  ret %struct.drm_crtc_state* %26
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.drm_crtc_state* @kmalloc(i32, i32) #1

declare dso_local i32 @__drm_atomic_helper_crtc_duplicate_state(%struct.drm_crtc*, %struct.drm_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
