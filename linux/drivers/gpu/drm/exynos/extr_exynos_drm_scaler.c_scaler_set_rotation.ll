; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_scaler.c_scaler_set_rotation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_scaler.c_scaler_set_rotation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scaler_context = type { i32 }

@DRM_MODE_ROTATE_90 = common dso_local global i32 0, align 4
@SCALER_ROT_MODE_90 = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_180 = common dso_local global i32 0, align 4
@SCALER_ROT_MODE_180 = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_270 = common dso_local global i32 0, align 4
@SCALER_ROT_MODE_270 = common dso_local global i32 0, align 4
@DRM_MODE_REFLECT_X = common dso_local global i32 0, align 4
@SCALER_ROT_CFG_FLIP_X_EN = common dso_local global i32 0, align 4
@DRM_MODE_REFLECT_Y = common dso_local global i32 0, align 4
@SCALER_ROT_CFG_FLIP_Y_EN = common dso_local global i32 0, align 4
@SCALER_ROT_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scaler_context*, i32)* @scaler_set_rotation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scaler_set_rotation(%struct.scaler_context* %0, i32 %1) #0 {
  %3 = alloca %struct.scaler_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.scaler_context* %0, %struct.scaler_context** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @DRM_MODE_ROTATE_90, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, i32* @SCALER_ROT_MODE_90, align 4
  %12 = call i32 @SCALER_ROT_CFG_SET_ROTMODE(i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %5, align 4
  br label %37

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @DRM_MODE_ROTATE_180, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i32, i32* @SCALER_ROT_MODE_180, align 4
  %22 = call i32 @SCALER_ROT_CFG_SET_ROTMODE(i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  br label %36

25:                                               ; preds = %15
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @DRM_MODE_ROTATE_270, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i32, i32* @SCALER_ROT_MODE_270, align 4
  %32 = call i32 @SCALER_ROT_CFG_SET_ROTMODE(i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %30, %25
  br label %36

36:                                               ; preds = %35, %20
  br label %37

37:                                               ; preds = %36, %10
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @DRM_MODE_REFLECT_X, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* @SCALER_ROT_CFG_FLIP_X_EN, align 4
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @DRM_MODE_REFLECT_Y, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* @SCALER_ROT_CFG_FLIP_Y_EN, align 4
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %51, %46
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @SCALER_ROT_CFG, align 4
  %58 = call i32 @scaler_write(i32 %56, i32 %57)
  ret void
}

declare dso_local i32 @SCALER_ROT_CFG_SET_ROTMODE(i32) #1

declare dso_local i32 @scaler_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
