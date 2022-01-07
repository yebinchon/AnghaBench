; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp5523.c_show_master_fader_leds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp5523.c_show_master_fader_leds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lp55xx_led = type { %struct.lp55xx_chip* }
%struct.lp55xx_chip = type { i32 }

@LP5523_MAX_LEDS = common dso_local global i32 0, align 4
@LP5523_REG_LED_CTRL_BASE = common dso_local global i64 0, align 8
@LP5523_FADER_MAPPING_MASK = common dso_local global i32 0, align 4
@LP5523_FADER_MAPPING_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_master_fader_leds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_master_fader_leds(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.lp55xx_led*, align 8
  %8 = alloca %struct.lp55xx_chip*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call i32 @to_i2c_client(%struct.device* %13)
  %15 = call %struct.lp55xx_led* @i2c_get_clientdata(i32 %14)
  store %struct.lp55xx_led* %15, %struct.lp55xx_led** %7, align 8
  %16 = load %struct.lp55xx_led*, %struct.lp55xx_led** %7, align 8
  %17 = getelementptr inbounds %struct.lp55xx_led, %struct.lp55xx_led* %16, i32 0, i32 0
  %18 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %17, align 8
  store %struct.lp55xx_chip* %18, %struct.lp55xx_chip** %8, align 8
  store i32 0, i32* %11, align 4
  %19 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %8, align 8
  %20 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %56, %3
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @LP5523_MAX_LEDS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %59

26:                                               ; preds = %22
  %27 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %8, align 8
  %28 = load i64, i64* @LP5523_REG_LED_CTRL_BASE, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  %32 = call i32 @lp55xx_read(%struct.lp55xx_chip* %27, i64 %31, i32* %12)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %66

36:                                               ; preds = %26
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @LP5523_FADER_MAPPING_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @LP5523_FADER_MAPPING_SHIFT, align 4
  %41 = ashr i32 %39, %40
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp sgt i32 %42, 3
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %10, align 4
  br label %66

47:                                               ; preds = %36
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %48, 48
  %50 = trunc i32 %49 to i8
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  store i8 %50, i8* %55, align 1
  br label %56

56:                                               ; preds = %47
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %22

59:                                               ; preds = %22
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8, i8* %60, i64 %63
  store i8 10, i8* %64, align 1
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %59, %44, %35
  %67 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %8, align 8
  %68 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* %10, align 4
  ret i32 %70
}

declare dso_local %struct.lp55xx_led* @i2c_get_clientdata(i32) #1

declare dso_local i32 @to_i2c_client(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lp55xx_read(%struct.lp55xx_chip*, i64, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
