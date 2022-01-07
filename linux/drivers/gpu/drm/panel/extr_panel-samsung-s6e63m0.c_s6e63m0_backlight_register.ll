; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e63m0.c_s6e63m0_backlight_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e63m0.c_s6e63m0_backlight_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s6e63m0 = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.backlight_properties = type { i32, i32, i32 }

@MAX_BRIGHTNESS = common dso_local global i32 0, align 4
@BACKLIGHT_RAW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"panel\00", align 1
@s6e63m0_backlight_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"error registering backlight device (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s6e63m0*)* @s6e63m0_backlight_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s6e63m0_backlight_register(%struct.s6e63m0* %0) #0 {
  %2 = alloca %struct.s6e63m0*, align 8
  %3 = alloca %struct.backlight_properties, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.s6e63m0* %0, %struct.s6e63m0** %2, align 8
  %6 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %3, i32 0, i32 0
  %7 = load i32, i32* @MAX_BRIGHTNESS, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %3, i32 0, i32 1
  %9 = load i32, i32* @MAX_BRIGHTNESS, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %3, i32 0, i32 2
  %11 = load i32, i32* @BACKLIGHT_RAW, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.s6e63m0*, %struct.s6e63m0** %2, align 8
  %13 = getelementptr inbounds %struct.s6e63m0, %struct.s6e63m0* %12, i32 0, i32 1
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %4, align 8
  store i32 0, i32* %5, align 4
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load %struct.s6e63m0*, %struct.s6e63m0** %2, align 8
  %18 = call i32 @devm_backlight_device_register(%struct.device* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.device* %16, %struct.s6e63m0* %17, i32* @s6e63m0_backlight_ops, %struct.backlight_properties* %3)
  %19 = load %struct.s6e63m0*, %struct.s6e63m0** %2, align 8
  %20 = getelementptr inbounds %struct.s6e63m0, %struct.s6e63m0* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.s6e63m0*, %struct.s6e63m0** %2, align 8
  %22 = getelementptr inbounds %struct.s6e63m0, %struct.s6e63m0* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @IS_ERR(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %1
  %27 = load %struct.s6e63m0*, %struct.s6e63m0** %2, align 8
  %28 = getelementptr inbounds %struct.s6e63m0, %struct.s6e63m0* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @PTR_ERR(i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @DRM_DEV_ERROR(%struct.device* %31, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %26, %1
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @devm_backlight_device_register(%struct.device*, i8*, %struct.device*, %struct.s6e63m0*, i32*, %struct.backlight_properties*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
