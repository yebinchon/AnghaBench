; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_simple_kms_helper.c_drm_simple_kms_crtc_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_simple_kms_helper.c_drm_simple_kms_crtc_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.drm_crtc_state = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_crtc_state*)* @drm_simple_kms_crtc_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_simple_kms_crtc_check(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.drm_crtc_state*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %5, align 8
  %7 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %8 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %11 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @drm_plane_mask(i32 %12)
  %14 = and i32 %9, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %17 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %29

23:                                               ; preds = %2
  %24 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %25 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %28 = call i32 @drm_atomic_add_affected_planes(i32 %26, %struct.drm_crtc* %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %23, %20
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @drm_plane_mask(i32) #1

declare dso_local i32 @drm_atomic_add_affected_planes(i32, %struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
