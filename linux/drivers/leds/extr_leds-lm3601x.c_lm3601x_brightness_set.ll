; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3601x.c_lm3601x_brightness_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3601x.c_lm3601x_brightness_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }
%struct.led_classdev_flash = type { i32 }
%struct.lm3601x_led = type { i64, i32, i32 }

@LM3601X_LED_TORCH = common dso_local global i64 0, align 8
@LM3601X_MODE_TORCH = common dso_local global i32 0, align 4
@LM3601X_MODE_IR_DRV = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i32 0, align 4
@LM3601X_ENABLE_REG = common dso_local global i32 0, align 4
@LM3601X_LED_TORCH_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*, i32)* @lm3601x_brightness_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3601x_brightness_set(%struct.led_classdev* %0, i32 %1) #0 {
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.led_classdev_flash*, align 8
  %6 = alloca %struct.lm3601x_led*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %10 = call %struct.led_classdev_flash* @lcdev_to_flcdev(%struct.led_classdev* %9)
  store %struct.led_classdev_flash* %10, %struct.led_classdev_flash** %5, align 8
  %11 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %5, align 8
  %12 = call %struct.lm3601x_led* @fled_cdev_to_led(%struct.led_classdev_flash* %11)
  store %struct.lm3601x_led* %12, %struct.lm3601x_led** %6, align 8
  %13 = load %struct.lm3601x_led*, %struct.lm3601x_led** %6, align 8
  %14 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.lm3601x_led*, %struct.lm3601x_led** %6, align 8
  %17 = call i32 @lm3601x_read_faults(%struct.lm3601x_led* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %63

21:                                               ; preds = %2
  %22 = load %struct.lm3601x_led*, %struct.lm3601x_led** %6, align 8
  %23 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @LM3601X_LED_TORCH, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @LM3601X_MODE_TORCH, align 4
  store i32 %28, i32* %8, align 4
  br label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @LM3601X_MODE_IR_DRV, align 4
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @LED_OFF, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load %struct.lm3601x_led*, %struct.lm3601x_led** %6, align 8
  %37 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @LM3601X_ENABLE_REG, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @LED_OFF, align 4
  %42 = call i32 @regmap_update_bits(i32 %38, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %7, align 4
  br label %63

43:                                               ; preds = %31
  %44 = load %struct.lm3601x_led*, %struct.lm3601x_led** %6, align 8
  %45 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @LM3601X_LED_TORCH_REG, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @regmap_write(i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %63

53:                                               ; preds = %43
  %54 = load %struct.lm3601x_led*, %struct.lm3601x_led** %6, align 8
  %55 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @LM3601X_ENABLE_REG, align 4
  %58 = load i32, i32* @LM3601X_MODE_TORCH, align 4
  %59 = load i32, i32* @LM3601X_MODE_IR_DRV, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @regmap_update_bits(i32 %56, i32 %57, i32 %60, i32 %61)
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %53, %52, %35, %20
  %64 = load %struct.lm3601x_led*, %struct.lm3601x_led** %6, align 8
  %65 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %64, i32 0, i32 1
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local %struct.led_classdev_flash* @lcdev_to_flcdev(%struct.led_classdev*) #1

declare dso_local %struct.lm3601x_led* @fled_cdev_to_led(%struct.led_classdev_flash*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lm3601x_read_faults(%struct.lm3601x_led*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
