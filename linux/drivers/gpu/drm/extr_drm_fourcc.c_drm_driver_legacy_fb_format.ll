; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fourcc.c_drm_driver_legacy_fb_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fourcc.c_drm_driver_legacy_fb_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@DRM_FORMAT_XRGB8888 = common dso_local global i64 0, align 8
@DRM_FORMAT_HOST_XRGB8888 = common dso_local global i64 0, align 8
@DRM_FORMAT_ARGB8888 = common dso_local global i64 0, align 8
@DRM_FORMAT_HOST_ARGB8888 = common dso_local global i64 0, align 8
@DRM_FORMAT_RGB565 = common dso_local global i64 0, align 8
@DRM_FORMAT_HOST_RGB565 = common dso_local global i64 0, align 8
@DRM_FORMAT_XRGB1555 = common dso_local global i64 0, align 8
@DRM_FORMAT_HOST_XRGB1555 = common dso_local global i64 0, align 8
@DRM_FORMAT_XRGB2101010 = common dso_local global i64 0, align 8
@DRM_FORMAT_XBGR2101010 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @drm_driver_legacy_fb_format(%struct.drm_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i64 @drm_mode_legacy_fb_format(i64 %8, i64 %9)
  store i64 %10, i64* %7, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %3
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @DRM_FORMAT_XRGB8888, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i64, i64* @DRM_FORMAT_HOST_XRGB8888, align 8
  store i64 %21, i64* %7, align 8
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @DRM_FORMAT_ARGB8888, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i64, i64* @DRM_FORMAT_HOST_ARGB8888, align 8
  store i64 %27, i64* %7, align 8
  br label %28

28:                                               ; preds = %26, %22
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @DRM_FORMAT_RGB565, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i64, i64* @DRM_FORMAT_HOST_RGB565, align 8
  store i64 %33, i64* %7, align 8
  br label %34

34:                                               ; preds = %32, %28
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @DRM_FORMAT_XRGB1555, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i64, i64* @DRM_FORMAT_HOST_XRGB1555, align 8
  store i64 %39, i64* %7, align 8
  br label %40

40:                                               ; preds = %38, %34
  br label %41

41:                                               ; preds = %40, %3
  %42 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %43 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @DRM_FORMAT_XRGB2101010, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i64, i64* @DRM_FORMAT_XBGR2101010, align 8
  store i64 %52, i64* %7, align 8
  br label %53

53:                                               ; preds = %51, %47, %41
  %54 = load i64, i64* %7, align 8
  ret i64 %54
}

declare dso_local i64 @drm_mode_legacy_fb_format(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
