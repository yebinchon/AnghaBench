; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-s3c24xx.c_s3c24xx_led_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-s3c24xx.c_s3c24xx_led_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.s3c24xx_led_platdata = type { i32, i32, i32, i32 }
%struct.s3c24xx_gpio_led = type { %struct.TYPE_2__, %struct.s3c24xx_led_platdata* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@s3c24xx_led_set = common dso_local global i32 0, align 4
@LED_CORE_SUSPENDRESUME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"S3C24XX_LED\00", align 1
@S3C_GPIO_PULL_NONE = common dso_local global i32 0, align 4
@S3C24XX_LEDF_TRISTATE = common dso_local global i32 0, align 4
@S3C24XX_LEDF_ACTLOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"led_classdev_register failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s3c24xx_led_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_led_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.s3c24xx_led_platdata*, align 8
  %5 = alloca %struct.s3c24xx_gpio_led*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.s3c24xx_led_platdata* @dev_get_platdata(i32* %8)
  store %struct.s3c24xx_led_platdata* %9, %struct.s3c24xx_led_platdata** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.s3c24xx_gpio_led* @devm_kzalloc(i32* %11, i32 24, i32 %12)
  store %struct.s3c24xx_gpio_led* %13, %struct.s3c24xx_gpio_led** %5, align 8
  %14 = load %struct.s3c24xx_gpio_led*, %struct.s3c24xx_gpio_led** %5, align 8
  %15 = icmp ne %struct.s3c24xx_gpio_led* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %99

19:                                               ; preds = %1
  %20 = load i32, i32* @s3c24xx_led_set, align 4
  %21 = load %struct.s3c24xx_gpio_led*, %struct.s3c24xx_gpio_led** %5, align 8
  %22 = getelementptr inbounds %struct.s3c24xx_gpio_led, %struct.s3c24xx_gpio_led* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  store i32 %20, i32* %23, align 4
  %24 = load %struct.s3c24xx_led_platdata*, %struct.s3c24xx_led_platdata** %4, align 8
  %25 = getelementptr inbounds %struct.s3c24xx_led_platdata, %struct.s3c24xx_led_platdata* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.s3c24xx_gpio_led*, %struct.s3c24xx_gpio_led** %5, align 8
  %28 = getelementptr inbounds %struct.s3c24xx_gpio_led, %struct.s3c24xx_gpio_led* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 8
  %30 = load %struct.s3c24xx_led_platdata*, %struct.s3c24xx_led_platdata** %4, align 8
  %31 = getelementptr inbounds %struct.s3c24xx_led_platdata, %struct.s3c24xx_led_platdata* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.s3c24xx_gpio_led*, %struct.s3c24xx_gpio_led** %5, align 8
  %34 = getelementptr inbounds %struct.s3c24xx_gpio_led, %struct.s3c24xx_gpio_led* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* @LED_CORE_SUSPENDRESUME, align 4
  %37 = load %struct.s3c24xx_gpio_led*, %struct.s3c24xx_gpio_led** %5, align 8
  %38 = getelementptr inbounds %struct.s3c24xx_gpio_led, %struct.s3c24xx_gpio_led* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %36
  store i32 %41, i32* %39, align 8
  %42 = load %struct.s3c24xx_led_platdata*, %struct.s3c24xx_led_platdata** %4, align 8
  %43 = load %struct.s3c24xx_gpio_led*, %struct.s3c24xx_gpio_led** %5, align 8
  %44 = getelementptr inbounds %struct.s3c24xx_gpio_led, %struct.s3c24xx_gpio_led* %43, i32 0, i32 1
  store %struct.s3c24xx_led_platdata* %42, %struct.s3c24xx_led_platdata** %44, align 8
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = load %struct.s3c24xx_led_platdata*, %struct.s3c24xx_led_platdata** %4, align 8
  %48 = getelementptr inbounds %struct.s3c24xx_led_platdata, %struct.s3c24xx_led_platdata* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @devm_gpio_request(i32* %46, i32 %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %19
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %2, align 4
  br label %99

55:                                               ; preds = %19
  %56 = load %struct.s3c24xx_led_platdata*, %struct.s3c24xx_led_platdata** %4, align 8
  %57 = getelementptr inbounds %struct.s3c24xx_led_platdata, %struct.s3c24xx_led_platdata* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @S3C_GPIO_PULL_NONE, align 4
  %60 = call i32 @s3c_gpio_setpull(i32 %58, i32 %59)
  %61 = load %struct.s3c24xx_led_platdata*, %struct.s3c24xx_led_platdata** %4, align 8
  %62 = getelementptr inbounds %struct.s3c24xx_led_platdata, %struct.s3c24xx_led_platdata* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @S3C24XX_LEDF_TRISTATE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %55
  %68 = load %struct.s3c24xx_led_platdata*, %struct.s3c24xx_led_platdata** %4, align 8
  %69 = getelementptr inbounds %struct.s3c24xx_led_platdata, %struct.s3c24xx_led_platdata* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @gpio_direction_input(i32 %70)
  br label %85

72:                                               ; preds = %55
  %73 = load %struct.s3c24xx_led_platdata*, %struct.s3c24xx_led_platdata** %4, align 8
  %74 = getelementptr inbounds %struct.s3c24xx_led_platdata, %struct.s3c24xx_led_platdata* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.s3c24xx_led_platdata*, %struct.s3c24xx_led_platdata** %4, align 8
  %77 = getelementptr inbounds %struct.s3c24xx_led_platdata, %struct.s3c24xx_led_platdata* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @S3C24XX_LEDF_ACTLOW, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 1, i32 0
  %84 = call i32 @gpio_direction_output(i32 %75, i32 %83)
  br label %85

85:                                               ; preds = %72, %67
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = load %struct.s3c24xx_gpio_led*, %struct.s3c24xx_gpio_led** %5, align 8
  %89 = getelementptr inbounds %struct.s3c24xx_gpio_led, %struct.s3c24xx_gpio_led* %88, i32 0, i32 0
  %90 = call i32 @devm_led_classdev_register(i32* %87, %struct.TYPE_2__* %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %85
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = call i32 @dev_err(i32* %95, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %97

97:                                               ; preds = %93, %85
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %97, %53, %16
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.s3c24xx_led_platdata* @dev_get_platdata(i32*) #1

declare dso_local %struct.s3c24xx_gpio_led* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_gpio_request(i32*, i32, i8*) #1

declare dso_local i32 @s3c_gpio_setpull(i32, i32) #1

declare dso_local i32 @gpio_direction_input(i32) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @devm_led_classdev_register(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
