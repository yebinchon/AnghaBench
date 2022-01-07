; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_crtc.c_is_fullscreen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_crtc.c_is_fullscreen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.drm_plane_state = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc_state*, %struct.drm_plane_state*)* @is_fullscreen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_fullscreen(%struct.drm_crtc_state* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_crtc_state*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  store %struct.drm_crtc_state* %0, %struct.drm_crtc_state** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %5 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %6 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp sle i64 %7, 0
  br i1 %8, label %9, label %40

9:                                                ; preds = %2
  %10 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %11 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp sle i64 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %9
  %15 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %16 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %19 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %17, %20
  %22 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %3, align 8
  %23 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %21, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %14
  %28 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %29 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %32 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %3, align 8
  %36 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %34, %38
  br label %40

40:                                               ; preds = %27, %14, %9, %2
  %41 = phi i1 [ false, %14 ], [ false, %9 ], [ false, %2 ], [ %39, %27 ]
  %42 = zext i1 %41 to i32
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
