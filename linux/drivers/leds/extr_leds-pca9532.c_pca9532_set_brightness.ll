; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-pca9532.c_pca9532_set_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-pca9532.c_pca9532_set_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }
%struct.pca9532_led = type { i64, i32 }

@LED_OFF = common dso_local global i32 0, align 4
@PCA9532_OFF = common dso_local global i64 0, align 8
@LED_FULL = common dso_local global i32 0, align 4
@PCA9532_ON = common dso_local global i64 0, align 8
@PCA9532_PWM0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*, i32)* @pca9532_set_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pca9532_set_brightness(%struct.led_classdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.led_classdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pca9532_led*, align 8
  store %struct.led_classdev* %0, %struct.led_classdev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %9 = call %struct.pca9532_led* @ldev_to_led(%struct.led_classdev* %8)
  store %struct.pca9532_led* %9, %struct.pca9532_led** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @LED_OFF, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i64, i64* @PCA9532_OFF, align 8
  %15 = load %struct.pca9532_led*, %struct.pca9532_led** %7, align 8
  %16 = getelementptr inbounds %struct.pca9532_led, %struct.pca9532_led* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  br label %40

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @LED_FULL, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i64, i64* @PCA9532_ON, align 8
  %23 = load %struct.pca9532_led*, %struct.pca9532_led** %7, align 8
  %24 = getelementptr inbounds %struct.pca9532_led, %struct.pca9532_led* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  br label %39

25:                                               ; preds = %17
  %26 = load i64, i64* @PCA9532_PWM0, align 8
  %27 = load %struct.pca9532_led*, %struct.pca9532_led** %7, align 8
  %28 = getelementptr inbounds %struct.pca9532_led, %struct.pca9532_led* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.pca9532_led*, %struct.pca9532_led** %7, align 8
  %30 = getelementptr inbounds %struct.pca9532_led, %struct.pca9532_led* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @pca9532_calcpwm(i32 %31, i32 0, i32 0, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %55

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38, %21
  br label %40

40:                                               ; preds = %39, %13
  %41 = load %struct.pca9532_led*, %struct.pca9532_led** %7, align 8
  %42 = getelementptr inbounds %struct.pca9532_led, %struct.pca9532_led* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PCA9532_PWM0, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.pca9532_led*, %struct.pca9532_led** %7, align 8
  %48 = getelementptr inbounds %struct.pca9532_led, %struct.pca9532_led* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @pca9532_setpwm(i32 %49, i32 0)
  br label %51

51:                                               ; preds = %46, %40
  %52 = load %struct.pca9532_led*, %struct.pca9532_led** %7, align 8
  %53 = call i32 @pca9532_setled(%struct.pca9532_led* %52)
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %36
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.pca9532_led* @ldev_to_led(%struct.led_classdev*) #1

declare dso_local i32 @pca9532_calcpwm(i32, i32, i32, i32) #1

declare dso_local i32 @pca9532_setpwm(i32, i32) #1

declare dso_local i32 @pca9532_setled(%struct.pca9532_led*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
