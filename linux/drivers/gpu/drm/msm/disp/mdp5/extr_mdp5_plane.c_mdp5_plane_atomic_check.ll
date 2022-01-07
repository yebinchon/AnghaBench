; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_plane.c_mdp5_plane_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_plane.c_mdp5_plane_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_crtc* }
%struct.drm_crtc = type { i32 }
%struct.drm_plane_state = type { i32, %struct.drm_crtc* }
%struct.drm_crtc_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_plane_state*)* @mdp5_plane_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdp5_plane_atomic_check(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca %struct.drm_crtc_state*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  %8 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %9 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %8, i32 0, i32 1
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %11 = icmp ne %struct.drm_crtc* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %14 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %13, i32 0, i32 1
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %14, align 8
  br label %22

16:                                               ; preds = %2
  %17 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %18 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %20, align 8
  br label %22

22:                                               ; preds = %16, %12
  %23 = phi %struct.drm_crtc* [ %15, %12 ], [ %21, %16 ]
  store %struct.drm_crtc* %23, %struct.drm_crtc** %6, align 8
  %24 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %25 = icmp ne %struct.drm_crtc* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %46

27:                                               ; preds = %22
  %28 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %29 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %32 = call %struct.drm_crtc_state* @drm_atomic_get_existing_crtc_state(i32 %30, %struct.drm_crtc* %31)
  store %struct.drm_crtc_state* %32, %struct.drm_crtc_state** %7, align 8
  %33 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %34 = icmp ne %struct.drm_crtc_state* %33, null
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @WARN_ON(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %27
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %46

42:                                               ; preds = %27
  %43 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %44 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %45 = call i32 @mdp5_plane_atomic_check_with_state(%struct.drm_crtc_state* %43, %struct.drm_plane_state* %44)
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %39, %26
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_existing_crtc_state(i32, %struct.drm_crtc*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mdp5_plane_atomic_check_with_state(%struct.drm_crtc_state*, %struct.drm_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
