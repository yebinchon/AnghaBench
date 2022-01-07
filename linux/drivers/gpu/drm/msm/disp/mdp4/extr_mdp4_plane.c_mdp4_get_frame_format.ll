; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_plane.c_mdp4_get_frame_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_plane.c_mdp4_get_frame_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@DRM_FORMAT_MOD_SAMSUNG_64_32_TILE = common dso_local global i64 0, align 8
@DRM_FORMAT_NV12 = common dso_local global i64 0, align 8
@FRAME_TILE_YCBCR_420 = common dso_local global i32 0, align 4
@FRAME_LINEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_framebuffer*)* @mdp4_get_frame_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdp4_get_frame_format(%struct.drm_framebuffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_framebuffer*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_framebuffer* %0, %struct.drm_framebuffer** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %6 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @DRM_FORMAT_MOD_SAMSUNG_64_32_TILE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  br label %11

11:                                               ; preds = %10, %1
  %12 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %13 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @DRM_FORMAT_NV12, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %11
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @FRAME_TILE_YCBCR_420, align 4
  store i32 %23, i32* %2, align 4
  br label %26

24:                                               ; preds = %19, %11
  %25 = load i32, i32* @FRAME_LINEAR, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
