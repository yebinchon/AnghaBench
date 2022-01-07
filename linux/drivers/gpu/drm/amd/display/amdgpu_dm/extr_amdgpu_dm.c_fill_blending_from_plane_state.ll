; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_fill_blending_from_plane_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_fill_blending_from_plane_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane_state = type { i64, i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@DRM_PLANE_TYPE_OVERLAY = common dso_local global i64 0, align 8
@DRM_MODE_BLEND_PREMULTI = common dso_local global i64 0, align 8
@fill_blending_from_plane_state.alpha_formats = internal constant [3 x i64] [i64 129, i64 128, i64 130], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane_state*, i32*, i32*, i32*)* @fill_blending_from_plane_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_blending_from_plane_state(%struct.drm_plane_state* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.drm_plane_state* %0, %struct.drm_plane_state** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32*, i32** %6, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %7, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32*, i32** %8, align 8
  store i32 255, i32* %13, align 4
  %14 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %15 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %14, i32 0, i32 3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DRM_PLANE_TYPE_OVERLAY, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %66

22:                                               ; preds = %4
  %23 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %24 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DRM_MODE_BLEND_PREMULTI, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %54

28:                                               ; preds = %22
  %29 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %30 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %29, i32 0, i32 2
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %50, %28
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @ARRAY_SIZE(i64* getelementptr inbounds ([3 x i64], [3 x i64]* @fill_blending_from_plane_state.alpha_formats, i64 0, i64 0))
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = load i64, i64* %9, align 8
  %42 = load i32, i32* %10, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds [3 x i64], [3 x i64]* @fill_blending_from_plane_state.alpha_formats, i64 0, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %41, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32*, i32** %6, align 8
  store i32 1, i32* %48, align 4
  br label %53

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %10, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %36

53:                                               ; preds = %47, %36
  br label %54

54:                                               ; preds = %53, %22
  %55 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %56 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %57, 65535
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load i32*, i32** %7, align 8
  store i32 1, i32* %60, align 4
  %61 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %62 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = ashr i32 %63, 8
  %65 = load i32*, i32** %8, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %21, %59, %54
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
