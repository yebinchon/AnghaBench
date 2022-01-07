; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_fb.c_drm_rotation_to_tiler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_fb.c_drm_rotation_to_tiler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DRM_MODE_ROTATE_MASK = common dso_local global i32 0, align 4
@MASK_XY_FLIP = common dso_local global i32 0, align 4
@MASK_X_INVERT = common dso_local global i32 0, align 4
@MASK_Y_INVERT = common dso_local global i32 0, align 4
@DRM_MODE_REFLECT_X = common dso_local global i32 0, align 4
@DRM_MODE_REFLECT_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @drm_rotation_to_tiler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_rotation_to_tiler(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @DRM_MODE_ROTATE_MASK, align 4
  %6 = and i32 %4, %5
  switch i32 %6, label %7 [
    i32 131, label %8
    i32 128, label %9
    i32 130, label %13
    i32 129, label %17
  ]

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %1, %7
  store i32 0, i32* %3, align 4
  br label %21

9:                                                ; preds = %1
  %10 = load i32, i32* @MASK_XY_FLIP, align 4
  %11 = load i32, i32* @MASK_X_INVERT, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %3, align 4
  br label %21

13:                                               ; preds = %1
  %14 = load i32, i32* @MASK_X_INVERT, align 4
  %15 = load i32, i32* @MASK_Y_INVERT, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %3, align 4
  br label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @MASK_XY_FLIP, align 4
  %19 = load i32, i32* @MASK_Y_INVERT, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %13, %9, %8
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @DRM_MODE_REFLECT_X, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @MASK_X_INVERT, align 4
  %28 = load i32, i32* %3, align 4
  %29 = xor i32 %28, %27
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %21
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @DRM_MODE_REFLECT_Y, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @MASK_Y_INVERT, align 4
  %37 = load i32, i32* %3, align 4
  %38 = xor i32 %37, %36
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
