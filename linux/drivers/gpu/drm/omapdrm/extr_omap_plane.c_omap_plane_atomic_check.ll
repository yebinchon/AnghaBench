; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_plane.c_omap_plane_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_plane.c_omap_plane_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_plane_state = type { i64, i64, i64, i64, i64, i32, i32, i32 }
%struct.drm_crtc_state = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_plane_state*)* @omap_plane_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_plane_atomic_check(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.drm_crtc_state*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  %7 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %8 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %104

12:                                               ; preds = %2
  %13 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %14 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %104

22:                                               ; preds = %12
  %23 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %24 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %27 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.drm_crtc_state* @drm_atomic_get_existing_crtc_state(i32 %25, i32 %28)
  store %struct.drm_crtc_state* %29, %struct.drm_crtc_state** %6, align 8
  %30 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %31 = icmp ne %struct.drm_crtc_state* %30, null
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @WARN_ON(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %104

37:                                               ; preds = %22
  %38 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %39 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %104

43:                                               ; preds = %37
  %44 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %45 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %50 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48, %43
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %104

56:                                               ; preds = %48
  %57 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %58 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %61 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %59, %62
  %64 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %65 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp sgt i64 %63, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %56
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %104

72:                                               ; preds = %56
  %73 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %74 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %77 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %75, %78
  %80 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %81 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp sgt i64 %79, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %72
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %104

88:                                               ; preds = %72
  %89 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %90 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @DRM_MODE_ROTATE_0, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %88
  %95 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %96 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @omap_framebuffer_supports_rotation(i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %94
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %104

103:                                              ; preds = %94, %88
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %100, %85, %69, %53, %42, %36, %21, %11
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_existing_crtc_state(i32, i32) #1

declare dso_local i32 @omap_framebuffer_supports_rotation(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
