; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_skl_plane_ctl_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_skl_plane_ctl_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLANE_CTL_FORMAT_INDEXED = common dso_local global i32 0, align 4
@PLANE_CTL_FORMAT_RGB_565 = common dso_local global i32 0, align 4
@PLANE_CTL_FORMAT_XRGB_8888 = common dso_local global i32 0, align 4
@PLANE_CTL_ORDER_RGBX = common dso_local global i32 0, align 4
@PLANE_CTL_FORMAT_XRGB_2101010 = common dso_local global i32 0, align 4
@PLANE_CTL_FORMAT_XRGB_16161616F = common dso_local global i32 0, align 4
@PLANE_CTL_FORMAT_YUV422 = common dso_local global i32 0, align 4
@PLANE_CTL_YUV422_YUYV = common dso_local global i32 0, align 4
@PLANE_CTL_YUV422_YVYU = common dso_local global i32 0, align 4
@PLANE_CTL_YUV422_UYVY = common dso_local global i32 0, align 4
@PLANE_CTL_YUV422_VYUY = common dso_local global i32 0, align 4
@PLANE_CTL_FORMAT_NV12 = common dso_local global i32 0, align 4
@PLANE_CTL_FORMAT_P010 = common dso_local global i32 0, align 4
@PLANE_CTL_FORMAT_P012 = common dso_local global i32 0, align 4
@PLANE_CTL_FORMAT_P016 = common dso_local global i32 0, align 4
@PLANE_CTL_FORMAT_Y210 = common dso_local global i32 0, align 4
@PLANE_CTL_FORMAT_Y212 = common dso_local global i32 0, align 4
@PLANE_CTL_FORMAT_Y216 = common dso_local global i32 0, align 4
@PLANE_CTL_FORMAT_Y410 = common dso_local global i32 0, align 4
@PLANE_CTL_FORMAT_Y412 = common dso_local global i32 0, align 4
@PLANE_CTL_FORMAT_Y416 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @skl_plane_ctl_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_plane_ctl_format(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %63 [
    i32 149, label %5
    i32 144, label %7
    i32 139, label %9
    i32 152, label %9
    i32 136, label %13
    i32 150, label %13
    i32 140, label %15
    i32 137, label %19
    i32 141, label %21
    i32 153, label %21
    i32 138, label %25
    i32 151, label %25
    i32 129, label %27
    i32 128, label %31
    i32 143, label %35
    i32 142, label %39
    i32 148, label %43
    i32 147, label %45
    i32 146, label %47
    i32 145, label %49
    i32 132, label %51
    i32 131, label %53
    i32 130, label %55
    i32 133, label %57
    i32 135, label %59
    i32 134, label %61
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @PLANE_CTL_FORMAT_INDEXED, align 4
  store i32 %6, i32* %2, align 4
  br label %67

7:                                                ; preds = %1
  %8 = load i32, i32* @PLANE_CTL_FORMAT_RGB_565, align 4
  store i32 %8, i32* %2, align 4
  br label %67

9:                                                ; preds = %1, %1
  %10 = load i32, i32* @PLANE_CTL_FORMAT_XRGB_8888, align 4
  %11 = load i32, i32* @PLANE_CTL_ORDER_RGBX, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %2, align 4
  br label %67

13:                                               ; preds = %1, %1
  %14 = load i32, i32* @PLANE_CTL_FORMAT_XRGB_8888, align 4
  store i32 %14, i32* %2, align 4
  br label %67

15:                                               ; preds = %1
  %16 = load i32, i32* @PLANE_CTL_FORMAT_XRGB_2101010, align 4
  %17 = load i32, i32* @PLANE_CTL_ORDER_RGBX, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %2, align 4
  br label %67

19:                                               ; preds = %1
  %20 = load i32, i32* @PLANE_CTL_FORMAT_XRGB_2101010, align 4
  store i32 %20, i32* %2, align 4
  br label %67

21:                                               ; preds = %1, %1
  %22 = load i32, i32* @PLANE_CTL_FORMAT_XRGB_16161616F, align 4
  %23 = load i32, i32* @PLANE_CTL_ORDER_RGBX, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %2, align 4
  br label %67

25:                                               ; preds = %1, %1
  %26 = load i32, i32* @PLANE_CTL_FORMAT_XRGB_16161616F, align 4
  store i32 %26, i32* %2, align 4
  br label %67

27:                                               ; preds = %1
  %28 = load i32, i32* @PLANE_CTL_FORMAT_YUV422, align 4
  %29 = load i32, i32* @PLANE_CTL_YUV422_YUYV, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %2, align 4
  br label %67

31:                                               ; preds = %1
  %32 = load i32, i32* @PLANE_CTL_FORMAT_YUV422, align 4
  %33 = load i32, i32* @PLANE_CTL_YUV422_YVYU, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %2, align 4
  br label %67

35:                                               ; preds = %1
  %36 = load i32, i32* @PLANE_CTL_FORMAT_YUV422, align 4
  %37 = load i32, i32* @PLANE_CTL_YUV422_UYVY, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %2, align 4
  br label %67

39:                                               ; preds = %1
  %40 = load i32, i32* @PLANE_CTL_FORMAT_YUV422, align 4
  %41 = load i32, i32* @PLANE_CTL_YUV422_VYUY, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %2, align 4
  br label %67

43:                                               ; preds = %1
  %44 = load i32, i32* @PLANE_CTL_FORMAT_NV12, align 4
  store i32 %44, i32* %2, align 4
  br label %67

45:                                               ; preds = %1
  %46 = load i32, i32* @PLANE_CTL_FORMAT_P010, align 4
  store i32 %46, i32* %2, align 4
  br label %67

47:                                               ; preds = %1
  %48 = load i32, i32* @PLANE_CTL_FORMAT_P012, align 4
  store i32 %48, i32* %2, align 4
  br label %67

49:                                               ; preds = %1
  %50 = load i32, i32* @PLANE_CTL_FORMAT_P016, align 4
  store i32 %50, i32* %2, align 4
  br label %67

51:                                               ; preds = %1
  %52 = load i32, i32* @PLANE_CTL_FORMAT_Y210, align 4
  store i32 %52, i32* %2, align 4
  br label %67

53:                                               ; preds = %1
  %54 = load i32, i32* @PLANE_CTL_FORMAT_Y212, align 4
  store i32 %54, i32* %2, align 4
  br label %67

55:                                               ; preds = %1
  %56 = load i32, i32* @PLANE_CTL_FORMAT_Y216, align 4
  store i32 %56, i32* %2, align 4
  br label %67

57:                                               ; preds = %1
  %58 = load i32, i32* @PLANE_CTL_FORMAT_Y410, align 4
  store i32 %58, i32* %2, align 4
  br label %67

59:                                               ; preds = %1
  %60 = load i32, i32* @PLANE_CTL_FORMAT_Y412, align 4
  store i32 %60, i32* %2, align 4
  br label %67

61:                                               ; preds = %1
  %62 = load i32, i32* @PLANE_CTL_FORMAT_Y416, align 4
  store i32 %62, i32* %2, align 4
  br label %67

63:                                               ; preds = %1
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @MISSING_CASE(i32 %64)
  br label %66

66:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %61, %59, %57, %55, %53, %51, %49, %47, %45, %43, %39, %35, %31, %27, %25, %21, %19, %15, %13, %9, %7, %5
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @MISSING_CASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
