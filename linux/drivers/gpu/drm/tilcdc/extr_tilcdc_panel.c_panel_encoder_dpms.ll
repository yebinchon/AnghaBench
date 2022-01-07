; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_panel.c_panel_encoder_dpms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_panel.c_panel_encoder_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.panel_encoder = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.gpio_desc*, %struct.backlight_device* }
%struct.gpio_desc = type { i32 }
%struct.backlight_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@DRM_MODE_DPMS_ON = common dso_local global i32 0, align 4
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@FB_BLANK_POWERDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, i32)* @panel_encoder_dpms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @panel_encoder_dpms(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.panel_encoder*, align 8
  %6 = alloca %struct.backlight_device*, align 8
  %7 = alloca %struct.gpio_desc*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %9 = call %struct.panel_encoder* @to_panel_encoder(%struct.drm_encoder* %8)
  store %struct.panel_encoder* %9, %struct.panel_encoder** %5, align 8
  %10 = load %struct.panel_encoder*, %struct.panel_encoder** %5, align 8
  %11 = getelementptr inbounds %struct.panel_encoder, %struct.panel_encoder* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load %struct.backlight_device*, %struct.backlight_device** %13, align 8
  store %struct.backlight_device* %14, %struct.backlight_device** %6, align 8
  %15 = load %struct.panel_encoder*, %struct.panel_encoder** %5, align 8
  %16 = getelementptr inbounds %struct.panel_encoder, %struct.panel_encoder* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.gpio_desc*, %struct.gpio_desc** %18, align 8
  store %struct.gpio_desc* %19, %struct.gpio_desc** %7, align 8
  %20 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %21 = icmp ne %struct.backlight_device* %20, null
  br i1 %21, label %22, label %37

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @DRM_MODE_DPMS_ON, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  br label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %33 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %36 = call i32 @backlight_update_status(%struct.backlight_device* %35)
  br label %37

37:                                               ; preds = %30, %2
  %38 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %39 = icmp ne %struct.gpio_desc* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @DRM_MODE_DPMS_ON, align 4
  %44 = icmp eq i32 %42, %43
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  %47 = call i32 @gpiod_set_value_cansleep(%struct.gpio_desc* %41, i32 %46)
  br label %48

48:                                               ; preds = %40, %37
  ret void
}

declare dso_local %struct.panel_encoder* @to_panel_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @backlight_update_status(%struct.backlight_device*) #1

declare dso_local i32 @gpiod_set_value_cansleep(%struct.gpio_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
