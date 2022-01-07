; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_plane.c_exynos_drm_plane_check_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_plane.c_exynos_drm_plane_check_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_plane_config = type { i32 }
%struct.exynos_drm_plane_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i32, %struct.drm_device* }
%struct.drm_device = type { i32 }

@EXYNOS_DRM_PLANE_CAP_TILE = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unsupported pixel format modifier\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_drm_plane_config*, %struct.exynos_drm_plane_state*)* @exynos_drm_plane_check_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_drm_plane_check_format(%struct.exynos_drm_plane_config* %0, %struct.exynos_drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.exynos_drm_plane_config*, align 8
  %5 = alloca %struct.exynos_drm_plane_state*, align 8
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca %struct.drm_device*, align 8
  store %struct.exynos_drm_plane_config* %0, %struct.exynos_drm_plane_config** %4, align 8
  store %struct.exynos_drm_plane_state* %1, %struct.exynos_drm_plane_state** %5, align 8
  %8 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %9 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  store %struct.drm_framebuffer* %11, %struct.drm_framebuffer** %6, align 8
  %12 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %13 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %12, i32 0, i32 1
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %7, align 8
  %15 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %16 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %30 [
    i32 128, label %18
    i32 129, label %29
  ]

18:                                               ; preds = %2
  %19 = load %struct.exynos_drm_plane_config*, %struct.exynos_drm_plane_config** %4, align 8
  %20 = getelementptr inbounds %struct.exynos_drm_plane_config, %struct.exynos_drm_plane_config* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @EXYNOS_DRM_PLANE_CAP_TILE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @ENOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %38

28:                                               ; preds = %18
  br label %37

29:                                               ; preds = %2
  br label %37

30:                                               ; preds = %2
  %31 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %32 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @DRM_DEV_ERROR(i32 %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ENOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %38

37:                                               ; preds = %29, %28
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %30, %25
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
