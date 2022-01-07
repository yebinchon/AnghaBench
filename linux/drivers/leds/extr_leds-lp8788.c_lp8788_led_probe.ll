; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp8788.c_lp8788_led_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp8788.c_lp8788_led_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.lp8788 = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.lp8788_led_platform_data* }
%struct.lp8788_led_platform_data = type { i64 }
%struct.lp8788_led = type { %struct.TYPE_4__, i32, %struct.lp8788* }
%struct.TYPE_4__ = type { i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_BRIGHTNESS = common dso_local global i32 0, align 4
@lp8788_brightness_set = common dso_local global i32 0, align 4
@DEFAULT_LED_NAME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"led init device err: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"led register err: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lp8788_led_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8788_led_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.lp8788*, align 8
  %5 = alloca %struct.lp8788_led_platform_data*, align 8
  %6 = alloca %struct.lp8788_led*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.lp8788* @dev_get_drvdata(i32 %12)
  store %struct.lp8788* %13, %struct.lp8788** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %7, align 8
  %16 = load %struct.device*, %struct.device** %7, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.lp8788_led* @devm_kzalloc(%struct.device* %16, i32 32, i32 %17)
  store %struct.lp8788_led* %18, %struct.lp8788_led** %6, align 8
  %19 = load %struct.lp8788_led*, %struct.lp8788_led** %6, align 8
  %20 = icmp ne %struct.lp8788_led* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %95

24:                                               ; preds = %1
  %25 = load %struct.lp8788*, %struct.lp8788** %4, align 8
  %26 = load %struct.lp8788_led*, %struct.lp8788_led** %6, align 8
  %27 = getelementptr inbounds %struct.lp8788_led, %struct.lp8788_led* %26, i32 0, i32 2
  store %struct.lp8788* %25, %struct.lp8788** %27, align 8
  %28 = load i32, i32* @MAX_BRIGHTNESS, align 4
  %29 = load %struct.lp8788_led*, %struct.lp8788_led** %6, align 8
  %30 = getelementptr inbounds %struct.lp8788_led, %struct.lp8788_led* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @lp8788_brightness_set, align 4
  %33 = load %struct.lp8788_led*, %struct.lp8788_led** %6, align 8
  %34 = getelementptr inbounds %struct.lp8788_led, %struct.lp8788_led* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 8
  %36 = load %struct.lp8788*, %struct.lp8788** %4, align 8
  %37 = getelementptr inbounds %struct.lp8788, %struct.lp8788* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = icmp ne %struct.TYPE_3__* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %24
  %41 = load %struct.lp8788*, %struct.lp8788** %4, align 8
  %42 = getelementptr inbounds %struct.lp8788, %struct.lp8788* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load %struct.lp8788_led_platform_data*, %struct.lp8788_led_platform_data** %44, align 8
  br label %47

46:                                               ; preds = %24
  br label %47

47:                                               ; preds = %46, %40
  %48 = phi %struct.lp8788_led_platform_data* [ %45, %40 ], [ null, %46 ]
  store %struct.lp8788_led_platform_data* %48, %struct.lp8788_led_platform_data** %5, align 8
  %49 = load %struct.lp8788_led_platform_data*, %struct.lp8788_led_platform_data** %5, align 8
  %50 = icmp ne %struct.lp8788_led_platform_data* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load %struct.lp8788_led_platform_data*, %struct.lp8788_led_platform_data** %5, align 8
  %53 = getelementptr inbounds %struct.lp8788_led_platform_data, %struct.lp8788_led_platform_data* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51, %47
  %57 = load i64, i64* @DEFAULT_LED_NAME, align 8
  %58 = load %struct.lp8788_led*, %struct.lp8788_led** %6, align 8
  %59 = getelementptr inbounds %struct.lp8788_led, %struct.lp8788_led* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i64 %57, i64* %60, align 8
  br label %68

61:                                               ; preds = %51
  %62 = load %struct.lp8788_led_platform_data*, %struct.lp8788_led_platform_data** %5, align 8
  %63 = getelementptr inbounds %struct.lp8788_led_platform_data, %struct.lp8788_led_platform_data* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.lp8788_led*, %struct.lp8788_led** %6, align 8
  %66 = getelementptr inbounds %struct.lp8788_led, %struct.lp8788_led* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i64 %64, i64* %67, align 8
  br label %68

68:                                               ; preds = %61, %56
  %69 = load %struct.lp8788_led*, %struct.lp8788_led** %6, align 8
  %70 = getelementptr inbounds %struct.lp8788_led, %struct.lp8788_led* %69, i32 0, i32 1
  %71 = call i32 @mutex_init(i32* %70)
  %72 = load %struct.lp8788_led*, %struct.lp8788_led** %6, align 8
  %73 = load %struct.lp8788_led_platform_data*, %struct.lp8788_led_platform_data** %5, align 8
  %74 = call i32 @lp8788_led_init_device(%struct.lp8788_led* %72, %struct.lp8788_led_platform_data* %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %68
  %78 = load %struct.device*, %struct.device** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @dev_err(%struct.device* %78, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %2, align 4
  br label %95

82:                                               ; preds = %68
  %83 = load %struct.device*, %struct.device** %7, align 8
  %84 = load %struct.lp8788_led*, %struct.lp8788_led** %6, align 8
  %85 = getelementptr inbounds %struct.lp8788_led, %struct.lp8788_led* %84, i32 0, i32 0
  %86 = call i32 @devm_led_classdev_register(%struct.device* %83, %struct.TYPE_4__* %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %82
  %90 = load %struct.device*, %struct.device** %7, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @dev_err(%struct.device* %90, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %2, align 4
  br label %95

94:                                               ; preds = %82
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %94, %89, %77, %21
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.lp8788* @dev_get_drvdata(i32) #1

declare dso_local %struct.lp8788_led* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @lp8788_led_init_device(%struct.lp8788_led*, %struct.lp8788_led_platform_data*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @devm_led_classdev_register(%struct.device*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
