; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-regulator.c_regulator_led_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-regulator.c_regulator_led_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.led_regulator_platform_data = type { i64, i64 }
%struct.regulator_led = type { i32, %struct.TYPE_3__, i32, %struct.regulator* }
%struct.TYPE_3__ = type { i64, i64, i64, i32, i32 (%struct.TYPE_3__*, i64)* }
%struct.regulator = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"no platform data\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"vled\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Cannot get vcc for %s\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Invalid default brightness %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@LED_CORE_SUSPENDRESUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @regulator_led_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regulator_led_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.led_regulator_platform_data*, align 8
  %5 = alloca %struct.regulator_led*, align 8
  %6 = alloca %struct.regulator*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.led_regulator_platform_data* @dev_get_platdata(i32* %9)
  store %struct.led_regulator_platform_data* %10, %struct.led_regulator_platform_data** %4, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.led_regulator_platform_data*, %struct.led_regulator_platform_data** %4, align 8
  %12 = icmp eq %struct.led_regulator_platform_data* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 (i32*, i8*, ...) @dev_err(i32* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %125

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call %struct.regulator* @devm_regulator_get_exclusive(i32* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store %struct.regulator* %22, %struct.regulator** %6, align 8
  %23 = load %struct.regulator*, %struct.regulator** %6, align 8
  %24 = call i64 @IS_ERR(%struct.regulator* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load %struct.led_regulator_platform_data*, %struct.led_regulator_platform_data** %4, align 8
  %30 = getelementptr inbounds %struct.led_regulator_platform_data, %struct.led_regulator_platform_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 (i32*, i8*, ...) @dev_err(i32* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %31)
  %33 = load %struct.regulator*, %struct.regulator** %6, align 8
  %34 = call i32 @PTR_ERR(%struct.regulator* %33)
  store i32 %34, i32* %2, align 4
  br label %125

35:                                               ; preds = %19
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.regulator_led* @devm_kzalloc(i32* %37, i32 64, i32 %38)
  store %struct.regulator_led* %39, %struct.regulator_led** %5, align 8
  %40 = load %struct.regulator_led*, %struct.regulator_led** %5, align 8
  %41 = icmp eq %struct.regulator_led* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %125

45:                                               ; preds = %35
  %46 = load %struct.regulator*, %struct.regulator** %6, align 8
  %47 = call i64 @led_regulator_get_max_brightness(%struct.regulator* %46)
  %48 = load %struct.regulator_led*, %struct.regulator_led** %5, align 8
  %49 = getelementptr inbounds %struct.regulator_led, %struct.regulator_led* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i64 %47, i64* %50, align 8
  %51 = load %struct.led_regulator_platform_data*, %struct.led_regulator_platform_data** %4, align 8
  %52 = getelementptr inbounds %struct.led_regulator_platform_data, %struct.led_regulator_platform_data* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.regulator_led*, %struct.regulator_led** %5, align 8
  %55 = getelementptr inbounds %struct.regulator_led, %struct.regulator_led* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %53, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %45
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = load %struct.led_regulator_platform_data*, %struct.led_regulator_platform_data** %4, align 8
  %63 = getelementptr inbounds %struct.led_regulator_platform_data, %struct.led_regulator_platform_data* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 (i32*, i8*, ...) @dev_err(i32* %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %125

68:                                               ; preds = %45
  %69 = load %struct.regulator_led*, %struct.regulator_led** %5, align 8
  %70 = getelementptr inbounds %struct.regulator_led, %struct.regulator_led* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 4
  store i32 (%struct.TYPE_3__*, i64)* @regulator_led_brightness_set, i32 (%struct.TYPE_3__*, i64)** %71, align 8
  %72 = load %struct.led_regulator_platform_data*, %struct.led_regulator_platform_data** %4, align 8
  %73 = getelementptr inbounds %struct.led_regulator_platform_data, %struct.led_regulator_platform_data* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.regulator_led*, %struct.regulator_led** %5, align 8
  %76 = getelementptr inbounds %struct.regulator_led, %struct.regulator_led* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  store i64 %74, i64* %77, align 8
  %78 = load i32, i32* @LED_CORE_SUSPENDRESUME, align 4
  %79 = load %struct.regulator_led*, %struct.regulator_led** %5, align 8
  %80 = getelementptr inbounds %struct.regulator_led, %struct.regulator_led* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %78
  store i32 %83, i32* %81, align 8
  %84 = load %struct.regulator*, %struct.regulator** %6, align 8
  %85 = load %struct.regulator_led*, %struct.regulator_led** %5, align 8
  %86 = getelementptr inbounds %struct.regulator_led, %struct.regulator_led* %85, i32 0, i32 3
  store %struct.regulator* %84, %struct.regulator** %86, align 8
  %87 = load %struct.regulator_led*, %struct.regulator_led** %5, align 8
  %88 = getelementptr inbounds %struct.regulator_led, %struct.regulator_led* %87, i32 0, i32 3
  %89 = load %struct.regulator*, %struct.regulator** %88, align 8
  %90 = call i64 @regulator_is_enabled(%struct.regulator* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %68
  %93 = load %struct.regulator_led*, %struct.regulator_led** %5, align 8
  %94 = getelementptr inbounds %struct.regulator_led, %struct.regulator_led* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  br label %95

95:                                               ; preds = %92, %68
  %96 = load %struct.regulator_led*, %struct.regulator_led** %5, align 8
  %97 = getelementptr inbounds %struct.regulator_led, %struct.regulator_led* %96, i32 0, i32 2
  %98 = call i32 @mutex_init(i32* %97)
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = load %struct.regulator_led*, %struct.regulator_led** %5, align 8
  %101 = call i32 @platform_set_drvdata(%struct.platform_device* %99, %struct.regulator_led* %100)
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = load %struct.regulator_led*, %struct.regulator_led** %5, align 8
  %105 = getelementptr inbounds %struct.regulator_led, %struct.regulator_led* %104, i32 0, i32 1
  %106 = call i32 @led_classdev_register(i32* %103, %struct.TYPE_3__* %105)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %95
  %110 = load i32, i32* %7, align 4
  store i32 %110, i32* %2, align 4
  br label %125

111:                                              ; preds = %95
  %112 = load %struct.led_regulator_platform_data*, %struct.led_regulator_platform_data** %4, align 8
  %113 = getelementptr inbounds %struct.led_regulator_platform_data, %struct.led_regulator_platform_data* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.regulator_led*, %struct.regulator_led** %5, align 8
  %116 = getelementptr inbounds %struct.regulator_led, %struct.regulator_led* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 2
  store i64 %114, i64* %117, align 8
  %118 = load %struct.regulator_led*, %struct.regulator_led** %5, align 8
  %119 = getelementptr inbounds %struct.regulator_led, %struct.regulator_led* %118, i32 0, i32 1
  %120 = load %struct.regulator_led*, %struct.regulator_led** %5, align 8
  %121 = getelementptr inbounds %struct.regulator_led, %struct.regulator_led* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @regulator_led_brightness_set(%struct.TYPE_3__* %119, i64 %123)
  store i32 0, i32* %2, align 4
  br label %125

125:                                              ; preds = %111, %109, %59, %42, %26, %13
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local %struct.led_regulator_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.regulator* @devm_regulator_get_exclusive(i32*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.regulator*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator*) #1

declare dso_local %struct.regulator_led* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i64 @led_regulator_get_max_brightness(%struct.regulator*) #1

declare dso_local i32 @regulator_led_brightness_set(%struct.TYPE_3__*, i64) #1

declare dso_local i64 @regulator_is_enabled(%struct.regulator*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.regulator_led*) #1

declare dso_local i32 @led_classdev_register(i32*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
