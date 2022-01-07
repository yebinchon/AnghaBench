; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-orisetech-otm8009a.c_otm8009a_backlight_update_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-orisetech-otm8009a.c_otm8009a_backlight_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.otm8009a = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"lcd not ready yet for setting its backlight!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@FB_BLANK_NORMAL = common dso_local global i64 0, align 8
@MIPI_DCS_SET_DISPLAY_BRIGHTNESS = common dso_local global i32 0, align 4
@MIPI_DCS_WRITE_CONTROL_DISPLAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @otm8009a_backlight_update_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @otm8009a_backlight_update_status(%struct.backlight_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca %struct.otm8009a*, align 8
  %5 = alloca [2 x i32], align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %3, align 8
  %6 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %7 = call %struct.otm8009a* @bl_get_data(%struct.backlight_device* %6)
  store %struct.otm8009a* %7, %struct.otm8009a** %4, align 8
  %8 = load %struct.otm8009a*, %struct.otm8009a** %4, align 8
  %9 = getelementptr inbounds %struct.otm8009a, %struct.otm8009a* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ENXIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %47

16:                                               ; preds = %1
  %17 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %18 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FB_BLANK_NORMAL, align 8
  %22 = icmp sle i64 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %16
  %24 = load i32, i32* @MIPI_DCS_SET_DISPLAY_BRIGHTNESS, align 4
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %24, i32* %25, align 4
  %26 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %27 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 %29, i32* %30, align 4
  %31 = load %struct.otm8009a*, %struct.otm8009a** %4, align 8
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %34 = call i32 @ARRAY_SIZE(i32* %33)
  %35 = call i32 @otm8009a_dcs_write_buf_hs(%struct.otm8009a* %31, i32* %32, i32 %34)
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 36, i32* %36, align 4
  br label %39

37:                                               ; preds = %16
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 0, i32* %38, align 4
  br label %39

39:                                               ; preds = %37, %23
  %40 = load i32, i32* @MIPI_DCS_WRITE_CONTROL_DISPLAY, align 4
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %40, i32* %41, align 4
  %42 = load %struct.otm8009a*, %struct.otm8009a** %4, align 8
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %45 = call i32 @ARRAY_SIZE(i32* %44)
  %46 = call i32 @otm8009a_dcs_write_buf_hs(%struct.otm8009a* %42, i32* %43, i32 %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %39, %12
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.otm8009a* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @otm8009a_dcs_write_buf_hs(%struct.otm8009a*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
