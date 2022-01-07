; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_lvds.c_psb_lvds_pwm_set_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_lvds.c_psb_lvds_pwm_set_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i64 }
%struct.drm_psb_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@BRIGHTNESS_MAX_LEVEL = common dso_local global i32 0, align 4
@BLC_POLARITY_INVERSE = common dso_local global i64 0, align 8
@PSB_BACKLIGHT_PWM_POLARITY_BIT_CLEAR = common dso_local global i32 0, align 4
@BLC_PWM_CTL = common dso_local global i32 0, align 4
@PSB_BACKLIGHT_PWM_CTL_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Backlight lvds set brightness %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32)* @psb_lvds_pwm_set_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psb_lvds_pwm_set_brightness(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_psb_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.drm_psb_private*
  store %struct.drm_psb_private* %11, %struct.drm_psb_private** %5, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %13 = call i32 @psb_intel_lvds_get_max_backlight(%struct.drm_device* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %6, align 4
  %20 = mul nsw i32 %18, %19
  %21 = load i32, i32* @BRIGHTNESS_MAX_LEVEL, align 4
  %22 = sdiv i32 %20, %21
  store i32 %22, i32* %7, align 4
  %23 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %24 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @BLC_POLARITY_INVERSE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sub nsw i32 %31, %32
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %30, %2
  %35 = load i32, i32* @PSB_BACKLIGHT_PWM_POLARITY_BIT_CLEAR, align 4
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* @BLC_PWM_CTL, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @PSB_BACKLIGHT_PWM_CTL_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @REG_WRITE(i32 %38, i32 %43)
  %45 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %46 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @PSB_BACKLIGHT_PWM_CTL_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @dev_info(i32 %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %52)
  ret i32 0
}

declare dso_local i32 @psb_intel_lvds_get_max_backlight(%struct.drm_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
