; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_crtc_state_and_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_crtc_state_and_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc_state = type { i32 }
%struct.drm_atomic_state = type { i32 }
%struct.drm_crtc = type { %struct.drm_crtc_state*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EALREADY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_crtc_state* (%struct.drm_atomic_state*, %struct.drm_crtc*)* @vmw_crtc_state_and_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_crtc_state* @vmw_crtc_state_and_lock(%struct.drm_atomic_state* %0, %struct.drm_crtc* %1) #0 {
  %3 = alloca %struct.drm_crtc_state*, align 8
  %4 = alloca %struct.drm_atomic_state*, align 8
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca %struct.drm_crtc_state*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_atomic_state* %0, %struct.drm_atomic_state** %4, align 8
  store %struct.drm_crtc* %1, %struct.drm_crtc** %5, align 8
  %8 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %10 = call %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(%struct.drm_atomic_state* %8, %struct.drm_crtc* %9)
  store %struct.drm_crtc_state* %10, %struct.drm_crtc_state** %6, align 8
  %11 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %12 = icmp ne %struct.drm_crtc_state* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %15 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i32 @lockdep_assert_held(i32* %17)
  br label %40

19:                                               ; preds = %2
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %21 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %20, i32 0, i32 1
  %22 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %23 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @drm_modeset_lock(%struct.TYPE_4__* %21, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %19
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @EALREADY, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  %35 = call %struct.drm_crtc_state* @ERR_PTR(i32 %34)
  store %struct.drm_crtc_state* %35, %struct.drm_crtc_state** %3, align 8
  br label %42

36:                                               ; preds = %28, %19
  %37 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %38 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %37, i32 0, i32 0
  %39 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %38, align 8
  store %struct.drm_crtc_state* %39, %struct.drm_crtc_state** %6, align 8
  br label %40

40:                                               ; preds = %36, %13
  %41 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  store %struct.drm_crtc_state* %41, %struct.drm_crtc_state** %3, align 8
  br label %42

42:                                               ; preds = %40, %33
  %43 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %3, align 8
  ret %struct.drm_crtc_state* %43
}

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(%struct.drm_atomic_state*, %struct.drm_crtc*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @drm_modeset_lock(%struct.TYPE_4__*, i32) #1

declare dso_local %struct.drm_crtc_state* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
