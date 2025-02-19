; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_modeset_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_modeset_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.drm_modeset_acquire_ctx = type { i32 }
%struct.drm_atomic_state = type { %struct.drm_modeset_acquire_ctx* }
%struct.drm_crtc_state = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_modeset_acquire_ctx*)* @modeset_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @modeset_pipe(%struct.drm_crtc* %0, %struct.drm_modeset_acquire_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.drm_modeset_acquire_ctx*, align 8
  %6 = alloca %struct.drm_atomic_state*, align 8
  %7 = alloca %struct.drm_crtc_state*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store %struct.drm_modeset_acquire_ctx* %1, %struct.drm_modeset_acquire_ctx** %5, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %10 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.drm_atomic_state* @drm_atomic_state_alloc(i32 %11)
  store %struct.drm_atomic_state* %12, %struct.drm_atomic_state** %6, align 8
  %13 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %14 = icmp ne %struct.drm_atomic_state* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %40

18:                                               ; preds = %2
  %19 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %5, align 8
  %20 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %21 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %20, i32 0, i32 0
  store %struct.drm_modeset_acquire_ctx* %19, %struct.drm_modeset_acquire_ctx** %21, align 8
  %22 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %23 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %24 = call %struct.drm_crtc_state* @drm_atomic_get_crtc_state(%struct.drm_atomic_state* %22, %struct.drm_crtc* %23)
  store %struct.drm_crtc_state* %24, %struct.drm_crtc_state** %7, align 8
  %25 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %26 = call i64 @IS_ERR(%struct.drm_crtc_state* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %30 = call i32 @PTR_ERR(%struct.drm_crtc_state* %29)
  store i32 %30, i32* %8, align 4
  br label %36

31:                                               ; preds = %18
  %32 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %33 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  %34 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %35 = call i32 @drm_atomic_commit(%struct.drm_atomic_state* %34)
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %31, %28
  %37 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %38 = call i32 @drm_atomic_state_put(%struct.drm_atomic_state* %37)
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %36, %15
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.drm_atomic_state* @drm_atomic_state_alloc(i32) #1

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_crtc_state(%struct.drm_atomic_state*, %struct.drm_crtc*) #1

declare dso_local i64 @IS_ERR(%struct.drm_crtc_state*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_crtc_state*) #1

declare dso_local i32 @drm_atomic_commit(%struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_state_put(%struct.drm_atomic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
