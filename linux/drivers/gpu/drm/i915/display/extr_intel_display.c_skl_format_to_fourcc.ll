; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_skl_format_to_fourcc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_skl_format_to_fourcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DRM_FORMAT_RGB565 = common dso_local global i32 0, align 4
@DRM_FORMAT_NV12 = common dso_local global i32 0, align 4
@DRM_FORMAT_P010 = common dso_local global i32 0, align 4
@DRM_FORMAT_P012 = common dso_local global i32 0, align 4
@DRM_FORMAT_P016 = common dso_local global i32 0, align 4
@DRM_FORMAT_Y210 = common dso_local global i32 0, align 4
@DRM_FORMAT_Y212 = common dso_local global i32 0, align 4
@DRM_FORMAT_Y216 = common dso_local global i32 0, align 4
@DRM_FORMAT_XVYU2101010 = common dso_local global i32 0, align 4
@DRM_FORMAT_XVYU12_16161616 = common dso_local global i32 0, align 4
@DRM_FORMAT_XVYU16161616 = common dso_local global i32 0, align 4
@DRM_FORMAT_ABGR8888 = common dso_local global i32 0, align 4
@DRM_FORMAT_XBGR8888 = common dso_local global i32 0, align 4
@DRM_FORMAT_ARGB8888 = common dso_local global i32 0, align 4
@DRM_FORMAT_XRGB8888 = common dso_local global i32 0, align 4
@DRM_FORMAT_XBGR2101010 = common dso_local global i32 0, align 4
@DRM_FORMAT_XRGB2101010 = common dso_local global i32 0, align 4
@DRM_FORMAT_ABGR16161616F = common dso_local global i32 0, align 4
@DRM_FORMAT_XBGR16161616F = common dso_local global i32 0, align 4
@DRM_FORMAT_ARGB16161616F = common dso_local global i32 0, align 4
@DRM_FORMAT_XRGB16161616F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skl_format_to_fourcc(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %31 [
    i32 137, label %9
    i32 141, label %11
    i32 140, label %13
    i32 139, label %15
    i32 138, label %17
    i32 133, label %19
    i32 132, label %21
    i32 131, label %23
    i32 130, label %25
    i32 129, label %27
    i32 128, label %29
    i32 134, label %32
    i32 135, label %49
    i32 136, label %56
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* @DRM_FORMAT_RGB565, align 4
  store i32 %10, i32* %4, align 4
  br label %73

11:                                               ; preds = %3
  %12 = load i32, i32* @DRM_FORMAT_NV12, align 4
  store i32 %12, i32* %4, align 4
  br label %73

13:                                               ; preds = %3
  %14 = load i32, i32* @DRM_FORMAT_P010, align 4
  store i32 %14, i32* %4, align 4
  br label %73

15:                                               ; preds = %3
  %16 = load i32, i32* @DRM_FORMAT_P012, align 4
  store i32 %16, i32* %4, align 4
  br label %73

17:                                               ; preds = %3
  %18 = load i32, i32* @DRM_FORMAT_P016, align 4
  store i32 %18, i32* %4, align 4
  br label %73

19:                                               ; preds = %3
  %20 = load i32, i32* @DRM_FORMAT_Y210, align 4
  store i32 %20, i32* %4, align 4
  br label %73

21:                                               ; preds = %3
  %22 = load i32, i32* @DRM_FORMAT_Y212, align 4
  store i32 %22, i32* %4, align 4
  br label %73

23:                                               ; preds = %3
  %24 = load i32, i32* @DRM_FORMAT_Y216, align 4
  store i32 %24, i32* %4, align 4
  br label %73

25:                                               ; preds = %3
  %26 = load i32, i32* @DRM_FORMAT_XVYU2101010, align 4
  store i32 %26, i32* %4, align 4
  br label %73

27:                                               ; preds = %3
  %28 = load i32, i32* @DRM_FORMAT_XVYU12_16161616, align 4
  store i32 %28, i32* %4, align 4
  br label %73

29:                                               ; preds = %3
  %30 = load i32, i32* @DRM_FORMAT_XVYU16161616, align 4
  store i32 %30, i32* %4, align 4
  br label %73

31:                                               ; preds = %3
  br label %32

32:                                               ; preds = %3, %31
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @DRM_FORMAT_ABGR8888, align 4
  store i32 %39, i32* %4, align 4
  br label %73

40:                                               ; preds = %35
  %41 = load i32, i32* @DRM_FORMAT_XBGR8888, align 4
  store i32 %41, i32* %4, align 4
  br label %73

42:                                               ; preds = %32
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @DRM_FORMAT_ARGB8888, align 4
  store i32 %46, i32* %4, align 4
  br label %73

47:                                               ; preds = %42
  %48 = load i32, i32* @DRM_FORMAT_XRGB8888, align 4
  store i32 %48, i32* %4, align 4
  br label %73

49:                                               ; preds = %3
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* @DRM_FORMAT_XBGR2101010, align 4
  store i32 %53, i32* %4, align 4
  br label %73

54:                                               ; preds = %49
  %55 = load i32, i32* @DRM_FORMAT_XRGB2101010, align 4
  store i32 %55, i32* %4, align 4
  br label %73

56:                                               ; preds = %3
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* @DRM_FORMAT_ABGR16161616F, align 4
  store i32 %63, i32* %4, align 4
  br label %73

64:                                               ; preds = %59
  %65 = load i32, i32* @DRM_FORMAT_XBGR16161616F, align 4
  store i32 %65, i32* %4, align 4
  br label %73

66:                                               ; preds = %56
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* @DRM_FORMAT_ARGB16161616F, align 4
  store i32 %70, i32* %4, align 4
  br label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @DRM_FORMAT_XRGB16161616F, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %71, %69, %64, %62, %54, %52, %47, %45, %40, %38, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
