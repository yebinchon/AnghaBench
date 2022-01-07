; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_vop.c_vop_plane_atomic_async_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_vop.c_vop_plane_atomic_async_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.drm_crtc_state* }
%struct.drm_crtc_state = type { i32 }
%struct.drm_plane_state = type { %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { %struct.drm_plane* }
%struct.vop_win = type { %struct.vop_win_data* }
%struct.vop_win_data = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@DRM_PLANE_HELPER_NO_SCALING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_plane_state*)* @vop_plane_atomic_async_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vop_plane_atomic_async_check(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.vop_win*, align 8
  %7 = alloca %struct.vop_win_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_crtc_state*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  %11 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %12 = call %struct.vop_win* @to_vop_win(%struct.drm_plane* %11)
  store %struct.vop_win* %12, %struct.vop_win** %6, align 8
  %13 = load %struct.vop_win*, %struct.vop_win** %6, align 8
  %14 = getelementptr inbounds %struct.vop_win, %struct.vop_win* %13, i32 0, i32 0
  %15 = load %struct.vop_win_data*, %struct.vop_win_data** %14, align 8
  store %struct.vop_win_data* %15, %struct.vop_win_data** %7, align 8
  %16 = load %struct.vop_win_data*, %struct.vop_win_data** %7, align 8
  %17 = getelementptr inbounds %struct.vop_win_data, %struct.vop_win_data* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = call i32 @FRAC_16_16(i32 1, i32 8)
  br label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @DRM_PLANE_HELPER_NO_SCALING, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %8, align 4
  %28 = load %struct.vop_win_data*, %struct.vop_win_data** %7, align 8
  %29 = getelementptr inbounds %struct.vop_win_data, %struct.vop_win_data* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = call i32 @FRAC_16_16(i32 8, i32 1)
  br label %38

36:                                               ; preds = %26
  %37 = load i32, i32* @DRM_PLANE_HELPER_NO_SCALING, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  store i32 %39, i32* %9, align 4
  %40 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %41 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %42 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load %struct.drm_plane*, %struct.drm_plane** %44, align 8
  %46 = icmp ne %struct.drm_plane* %40, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %95

50:                                               ; preds = %38
  %51 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %52 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = icmp ne %struct.TYPE_7__* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %95

58:                                               ; preds = %50
  %59 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %60 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %58
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %95

68:                                               ; preds = %58
  %69 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %70 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %75 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %78 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %77, i32 0, i32 0
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = call %struct.drm_crtc_state* @drm_atomic_get_existing_crtc_state(i64 %76, %struct.TYPE_8__* %79)
  store %struct.drm_crtc_state* %80, %struct.drm_crtc_state** %10, align 8
  br label %87

81:                                               ; preds = %68
  %82 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %83 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %82, i32 0, i32 1
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %85, align 8
  store %struct.drm_crtc_state* %86, %struct.drm_crtc_state** %10, align 8
  br label %87

87:                                               ; preds = %81, %73
  %88 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %89 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %88, i32 0, i32 0
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %10, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @drm_atomic_helper_check_plane_state(%struct.TYPE_7__* %90, %struct.drm_crtc_state* %91, i32 %92, i32 %93, i32 1, i32 1)
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %87, %65, %55, %47
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.vop_win* @to_vop_win(%struct.drm_plane*) #1

declare dso_local i32 @FRAC_16_16(i32, i32) #1

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_existing_crtc_state(i64, %struct.TYPE_8__*) #1

declare dso_local i32 @drm_atomic_helper_check_plane_state(%struct.TYPE_7__*, %struct.drm_crtc_state*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
