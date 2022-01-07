; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_lvds.c_oaktrail_lvds_get_max_backlight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_lvds.c_oaktrail_lvds_get_max_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BLC_PWM_CTL = common dso_local global i32 0, align 4
@BACKLIGHT_MODULATION_FREQ_MASK = common dso_local global i32 0, align 4
@BACKLIGHT_MODULATION_FREQ_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @oaktrail_lvds_get_max_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oaktrail_lvds_get_max_backlight(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_psb_private*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 0
  %7 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  store %struct.drm_psb_private* %7, %struct.drm_psb_private** %3, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %9 = call i64 @gma_power_begin(%struct.drm_device* %8, i32 0)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load i32, i32* @BLC_PWM_CTL, align 4
  %13 = call i32 @REG_READ(i32 %12)
  %14 = load i32, i32* @BACKLIGHT_MODULATION_FREQ_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @BACKLIGHT_MODULATION_FREQ_SHIFT, align 4
  %17 = ashr i32 %15, %16
  %18 = mul nsw i32 %17, 2
  store i32 %18, i32* %4, align 4
  %19 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %20 = call i32 @gma_power_end(%struct.drm_device* %19)
  br label %31

21:                                               ; preds = %1
  %22 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %23 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @BACKLIGHT_MODULATION_FREQ_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @BACKLIGHT_MODULATION_FREQ_SHIFT, align 4
  %29 = ashr i32 %27, %28
  %30 = mul nsw i32 %29, 2
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %21, %11
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i64 @gma_power_begin(%struct.drm_device*, i32) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @gma_power_end(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
