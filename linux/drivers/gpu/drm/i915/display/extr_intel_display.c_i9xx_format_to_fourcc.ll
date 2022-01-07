; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_format_to_fourcc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_format_to_fourcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DRM_FORMAT_C8 = common dso_local global i32 0, align 4
@DRM_FORMAT_XRGB1555 = common dso_local global i32 0, align 4
@DRM_FORMAT_RGB565 = common dso_local global i32 0, align 4
@DRM_FORMAT_XRGB8888 = common dso_local global i32 0, align 4
@DRM_FORMAT_XBGR8888 = common dso_local global i32 0, align 4
@DRM_FORMAT_XRGB2101010 = common dso_local global i32 0, align 4
@DRM_FORMAT_XBGR2101010 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @i9xx_format_to_fourcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i9xx_format_to_fourcc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %11 [
    i32 134, label %5
    i32 132, label %7
    i32 131, label %9
    i32 130, label %12
    i32 128, label %14
    i32 133, label %16
    i32 129, label %18
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @DRM_FORMAT_C8, align 4
  store i32 %6, i32* %2, align 4
  br label %20

7:                                                ; preds = %1
  %8 = load i32, i32* @DRM_FORMAT_XRGB1555, align 4
  store i32 %8, i32* %2, align 4
  br label %20

9:                                                ; preds = %1
  %10 = load i32, i32* @DRM_FORMAT_RGB565, align 4
  store i32 %10, i32* %2, align 4
  br label %20

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %1, %11
  %13 = load i32, i32* @DRM_FORMAT_XRGB8888, align 4
  store i32 %13, i32* %2, align 4
  br label %20

14:                                               ; preds = %1
  %15 = load i32, i32* @DRM_FORMAT_XBGR8888, align 4
  store i32 %15, i32* %2, align 4
  br label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @DRM_FORMAT_XRGB2101010, align 4
  store i32 %17, i32* %2, align 4
  br label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @DRM_FORMAT_XBGR2101010, align 4
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %18, %16, %14, %12, %9, %7, %5
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
