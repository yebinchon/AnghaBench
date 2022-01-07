; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_plane.c_zx_vl_plane_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_plane.c_zx_vl_plane_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_plane_state = type { %struct.drm_crtc*, i32, %struct.drm_framebuffer* }
%struct.drm_crtc = type { i32 }
%struct.drm_framebuffer = type { i32 }
%struct.drm_crtc_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_plane_state*)* @zx_vl_plane_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_vl_plane_atomic_check(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_crtc_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  %11 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %12 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %11, i32 0, i32 2
  %13 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  store %struct.drm_framebuffer* %13, %struct.drm_framebuffer** %6, align 8
  %14 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %15 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %14, i32 0, i32 0
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %15, align 8
  store %struct.drm_crtc* %16, %struct.drm_crtc** %7, align 8
  %17 = call i32 @FRAC_16_16(i32 1, i32 8)
  store i32 %17, i32* %9, align 4
  %18 = call i32 @FRAC_16_16(i32 8, i32 1)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %20 = icmp ne %struct.drm_crtc* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %23 = icmp ne %struct.drm_framebuffer* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %2
  store i32 0, i32* %3, align 4
  br label %60

25:                                               ; preds = %21
  %26 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %27 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %30 = call %struct.drm_crtc_state* @drm_atomic_get_existing_crtc_state(i32 %28, %struct.drm_crtc* %29)
  store %struct.drm_crtc_state* %30, %struct.drm_crtc_state** %8, align 8
  %31 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %8, align 8
  %32 = icmp ne %struct.drm_crtc_state* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @WARN_ON(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %25
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %60

40:                                               ; preds = %25
  %41 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %8, align 8
  %42 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %60

46:                                               ; preds = %40
  %47 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %48 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %47, i32 0, i32 0
  %49 = load %struct.drm_crtc*, %struct.drm_crtc** %48, align 8
  %50 = icmp ne %struct.drm_crtc* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %60

54:                                               ; preds = %46
  %55 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %56 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @drm_atomic_helper_check_plane_state(%struct.drm_plane_state* %55, %struct.drm_crtc_state* %56, i32 %57, i32 %58, i32 1, i32 1)
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %54, %51, %45, %37, %24
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @FRAC_16_16(i32, i32) #1

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_existing_crtc_state(i32, %struct.drm_crtc*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @drm_atomic_helper_check_plane_state(%struct.drm_plane_state*, %struct.drm_crtc_state*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
