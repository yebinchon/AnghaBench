; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_lvds.c_psb_intel_lvds_set_backlight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_lvds.c_psb_intel_lvds_set_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BLC_PWM_CTL = common dso_local global i32 0, align 4
@BACKLIGHT_DUTY_CYCLE_MASK = common dso_local global i32 0, align 4
@BACKLIGHT_DUTY_CYCLE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32)* @psb_intel_lvds_set_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psb_intel_lvds_set_backlight(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_psb_private*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 0
  %9 = load %struct.drm_psb_private*, %struct.drm_psb_private** %8, align 8
  store %struct.drm_psb_private* %9, %struct.drm_psb_private** %5, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = call i64 @gma_power_begin(%struct.drm_device* %10, i32 0)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %2
  %14 = load i32, i32* @BLC_PWM_CTL, align 4
  %15 = call i32 @REG_READ(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @BACKLIGHT_DUTY_CYCLE_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @BLC_PWM_CTL, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @BACKLIGHT_DUTY_CYCLE_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = or i32 %21, %24
  %26 = call i32 @REG_WRITE(i32 %20, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @BACKLIGHT_DUTY_CYCLE_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = or i32 %27, %30
  %32 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %33 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %36 = call i32 @gma_power_end(%struct.drm_device* %35)
  br label %53

37:                                               ; preds = %2
  %38 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %39 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @BACKLIGHT_DUTY_CYCLE_MASK, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @BACKLIGHT_DUTY_CYCLE_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = or i32 %45, %48
  %50 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %51 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  br label %53

53:                                               ; preds = %37, %13
  ret void
}

declare dso_local i64 @gma_power_begin(%struct.drm_device*, i32) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @gma_power_end(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
