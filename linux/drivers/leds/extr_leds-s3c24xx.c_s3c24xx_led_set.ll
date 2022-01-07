; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-s3c24xx.c_s3c24xx_led_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-s3c24xx.c_s3c24xx_led_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }
%struct.s3c24xx_gpio_led = type { %struct.s3c24xx_led_platdata* }
%struct.s3c24xx_led_platdata = type { i32, i32 }

@S3C24XX_LEDF_ACTLOW = common dso_local global i32 0, align 4
@S3C24XX_LEDF_TRISTATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.led_classdev*, i32)* @s3c24xx_led_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c24xx_led_set(%struct.led_classdev* %0, i32 %1) #0 {
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.s3c24xx_gpio_led*, align 8
  %6 = alloca %struct.s3c24xx_led_platdata*, align 8
  %7 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %9 = call %struct.s3c24xx_gpio_led* @to_gpio(%struct.led_classdev* %8)
  store %struct.s3c24xx_gpio_led* %9, %struct.s3c24xx_gpio_led** %5, align 8
  %10 = load %struct.s3c24xx_gpio_led*, %struct.s3c24xx_gpio_led** %5, align 8
  %11 = getelementptr inbounds %struct.s3c24xx_gpio_led, %struct.s3c24xx_gpio_led* %10, i32 0, i32 0
  %12 = load %struct.s3c24xx_led_platdata*, %struct.s3c24xx_led_platdata** %11, align 8
  store %struct.s3c24xx_led_platdata* %12, %struct.s3c24xx_led_platdata** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 1, i32 0
  %17 = load %struct.s3c24xx_led_platdata*, %struct.s3c24xx_led_platdata** %6, align 8
  %18 = getelementptr inbounds %struct.s3c24xx_led_platdata, %struct.s3c24xx_led_platdata* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @S3C24XX_LEDF_ACTLOW, align 4
  %21 = and i32 %19, %20
  %22 = xor i32 %16, %21
  store i32 %22, i32* %7, align 4
  %23 = load %struct.s3c24xx_led_platdata*, %struct.s3c24xx_led_platdata** %6, align 8
  %24 = getelementptr inbounds %struct.s3c24xx_led_platdata, %struct.s3c24xx_led_platdata* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @gpio_set_value(i32 %25, i32 %26)
  %28 = load %struct.s3c24xx_led_platdata*, %struct.s3c24xx_led_platdata** %6, align 8
  %29 = getelementptr inbounds %struct.s3c24xx_led_platdata, %struct.s3c24xx_led_platdata* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @S3C24XX_LEDF_TRISTATE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %2
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load %struct.s3c24xx_led_platdata*, %struct.s3c24xx_led_platdata** %6, align 8
  %39 = getelementptr inbounds %struct.s3c24xx_led_platdata, %struct.s3c24xx_led_platdata* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @gpio_direction_output(i32 %40, i32 %41)
  br label %48

43:                                               ; preds = %34
  %44 = load %struct.s3c24xx_led_platdata*, %struct.s3c24xx_led_platdata** %6, align 8
  %45 = getelementptr inbounds %struct.s3c24xx_led_platdata, %struct.s3c24xx_led_platdata* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @gpio_direction_input(i32 %46)
  br label %48

48:                                               ; preds = %43, %37
  br label %49

49:                                               ; preds = %48, %2
  ret void
}

declare dso_local %struct.s3c24xx_gpio_led* @to_gpio(%struct.led_classdev*) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @gpio_direction_input(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
