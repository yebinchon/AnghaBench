; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3601x.c_lm3601x_strobe_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3601x.c_lm3601x_strobe_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev_flash = type { i32 }
%struct.lm3601x_led = type { i32, i32, i32 }

@LM3601X_CFG_REG = common dso_local global i32 0, align 4
@LM3601X_TIMEOUT_XOVER_US = common dso_local global i32 0, align 4
@LM3601X_UPPER_STEP_US = common dso_local global i32 0, align 4
@LM3601X_LOWER_STEP_US = common dso_local global i32 0, align 4
@LM3601X_TIMEOUT_MASK = common dso_local global i32 0, align 4
@LM3601X_ENABLE_REG = common dso_local global i32 0, align 4
@LM3601X_MODE_TORCH = common dso_local global i32 0, align 4
@LM3601X_MODE_IR_DRV = common dso_local global i32 0, align 4
@LM3601X_MODE_STROBE = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev_flash*, i32)* @lm3601x_strobe_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3601x_strobe_set(%struct.led_classdev_flash* %0, i32 %1) #0 {
  %3 = alloca %struct.led_classdev_flash*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lm3601x_led*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.led_classdev_flash* %0, %struct.led_classdev_flash** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %3, align 8
  %10 = call %struct.lm3601x_led* @fled_cdev_to_led(%struct.led_classdev_flash* %9)
  store %struct.lm3601x_led* %10, %struct.lm3601x_led** %5, align 8
  %11 = load %struct.lm3601x_led*, %struct.lm3601x_led** %5, align 8
  %12 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.lm3601x_led*, %struct.lm3601x_led** %5, align 8
  %15 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @LM3601X_CFG_REG, align 4
  %18 = call i32 @regmap_read(i32 %16, i32 %17, i32* %7)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %80

22:                                               ; preds = %2
  %23 = load %struct.lm3601x_led*, %struct.lm3601x_led** %5, align 8
  %24 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @LM3601X_TIMEOUT_XOVER_US, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.lm3601x_led*, %struct.lm3601x_led** %5, align 8
  %30 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @LM3601X_UPPER_STEP_US, align 4
  %33 = sdiv i32 %31, %32
  %34 = add nsw i32 %33, 7
  store i32 %34, i32* %6, align 4
  br label %42

35:                                               ; preds = %22
  %36 = load %struct.lm3601x_led*, %struct.lm3601x_led** %5, align 8
  %37 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @LM3601X_LOWER_STEP_US, align 4
  %40 = sdiv i32 %38, %39
  %41 = sub nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %35, %28
  %43 = load %struct.lm3601x_led*, %struct.lm3601x_led** %5, align 8
  %44 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = load %struct.lm3601x_led*, %struct.lm3601x_led** %5, align 8
  %50 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @LM3601X_CFG_REG, align 4
  %53 = load i32, i32* @LM3601X_TIMEOUT_MASK, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @regmap_update_bits(i32 %51, i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %48, %42
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load %struct.lm3601x_led*, %struct.lm3601x_led** %5, align 8
  %61 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @LM3601X_ENABLE_REG, align 4
  %64 = load i32, i32* @LM3601X_MODE_TORCH, align 4
  %65 = load i32, i32* @LM3601X_MODE_IR_DRV, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @LM3601X_MODE_STROBE, align 4
  %68 = call i32 @regmap_update_bits(i32 %62, i32 %63, i32 %66, i32 %67)
  store i32 %68, i32* %8, align 4
  br label %77

69:                                               ; preds = %56
  %70 = load %struct.lm3601x_led*, %struct.lm3601x_led** %5, align 8
  %71 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @LM3601X_ENABLE_REG, align 4
  %74 = load i32, i32* @LM3601X_MODE_STROBE, align 4
  %75 = load i32, i32* @LED_OFF, align 4
  %76 = call i32 @regmap_update_bits(i32 %72, i32 %73, i32 %74, i32 %75)
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %69, %59
  %78 = load %struct.lm3601x_led*, %struct.lm3601x_led** %5, align 8
  %79 = call i32 @lm3601x_read_faults(%struct.lm3601x_led* %78)
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %77, %21
  %81 = load %struct.lm3601x_led*, %struct.lm3601x_led** %5, align 8
  %82 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %81, i32 0, i32 1
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i32, i32* %8, align 4
  ret i32 %84
}

declare dso_local %struct.lm3601x_led* @fled_cdev_to_led(%struct.led_classdev_flash*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @lm3601x_read_faults(%struct.lm3601x_led*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
