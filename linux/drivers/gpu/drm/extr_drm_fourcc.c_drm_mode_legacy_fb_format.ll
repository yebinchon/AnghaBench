; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fourcc.c_drm_mode_legacy_fb_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fourcc.c_drm_mode_legacy_fb_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DRM_FORMAT_INVALID = common dso_local global i32 0, align 4
@DRM_FORMAT_C8 = common dso_local global i32 0, align 4
@DRM_FORMAT_XRGB1555 = common dso_local global i32 0, align 4
@DRM_FORMAT_RGB565 = common dso_local global i32 0, align 4
@DRM_FORMAT_RGB888 = common dso_local global i32 0, align 4
@DRM_FORMAT_XRGB8888 = common dso_local global i32 0, align 4
@DRM_FORMAT_XRGB2101010 = common dso_local global i32 0, align 4
@DRM_FORMAT_ARGB8888 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mode_legacy_fb_format(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @DRM_FORMAT_INVALID, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  switch i32 %7, label %38 [
    i32 8, label %8
    i32 16, label %14
    i32 24, label %22
    i32 32, label %28
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 8
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load i32, i32* @DRM_FORMAT_C8, align 4
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %11, %8
  br label %39

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %20 [
    i32 15, label %16
    i32 16, label %18
  ]

16:                                               ; preds = %14
  %17 = load i32, i32* @DRM_FORMAT_XRGB1555, align 4
  store i32 %17, i32* %5, align 4
  br label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @DRM_FORMAT_RGB565, align 4
  store i32 %19, i32* %5, align 4
  br label %21

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20, %18, %16
  br label %39

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 24
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @DRM_FORMAT_RGB888, align 4
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %25, %22
  br label %39

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  switch i32 %29, label %36 [
    i32 24, label %30
    i32 30, label %32
    i32 32, label %34
  ]

30:                                               ; preds = %28
  %31 = load i32, i32* @DRM_FORMAT_XRGB8888, align 4
  store i32 %31, i32* %5, align 4
  br label %37

32:                                               ; preds = %28
  %33 = load i32, i32* @DRM_FORMAT_XRGB2101010, align 4
  store i32 %33, i32* %5, align 4
  br label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @DRM_FORMAT_ARGB8888, align 4
  store i32 %35, i32* %5, align 4
  br label %37

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %34, %32, %30
  br label %39

38:                                               ; preds = %2
  br label %39

39:                                               ; preds = %38, %37, %27, %21, %13
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
