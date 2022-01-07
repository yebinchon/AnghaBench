; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max77693.c_max77693_set_flash_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max77693.c_max77693_set_flash_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77693_led_device = type { i64, i32, %struct.regmap* }
%struct.regmap = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@FLASH = common dso_local global i32 0, align 4
@FLED1 = common dso_local global i32 0, align 4
@MAX77693_LED_REG_IFLASH1 = common dso_local global i32 0, align 4
@FLED2 = common dso_local global i32 0, align 4
@MAX77693_LED_REG_IFLASH2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77693_led_device*, i32, i32)* @max77693_set_flash_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77693_set_flash_current(%struct.max77693_led_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.max77693_led_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca i32, align 4
  store %struct.max77693_led_device* %0, %struct.max77693_led_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.max77693_led_device*, %struct.max77693_led_device** %5, align 8
  %14 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %13, i32 0, i32 2
  %15 = load %struct.regmap*, %struct.regmap** %14, align 8
  store %struct.regmap* %15, %struct.regmap** %8, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %12, align 4
  %18 = load %struct.max77693_led_device*, %struct.max77693_led_device** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @FLASH, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.max77693_led_device*, %struct.max77693_led_device** %5, align 8
  %23 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %26 = call i32 @max77693_distribute_currents(%struct.max77693_led_device* %18, i32 %19, i32 %20, i32 %21, i32 %24, i32* %25)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @FLED1, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %3
  %31 = load %struct.max77693_led_device*, %struct.max77693_led_device** %5, align 8
  %32 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %30, %3
  %36 = load i32, i32* @FLED1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @max77693_led_iout_to_reg(i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load %struct.regmap*, %struct.regmap** %8, align 8
  %42 = load i32, i32* @MAX77693_LED_REG_IFLASH1, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @regmap_write(%struct.regmap* %41, i32 %42, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %35
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %4, align 4
  br label %71

49:                                               ; preds = %35
  br label %50

50:                                               ; preds = %49, %30
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @FLED2, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = load %struct.max77693_led_device*, %struct.max77693_led_device** %5, align 8
  %56 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %54, %50
  %60 = load i32, i32* @FLED2, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @max77693_led_iout_to_reg(i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load %struct.regmap*, %struct.regmap** %8, align 8
  %66 = load i32, i32* @MAX77693_LED_REG_IFLASH2, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @regmap_write(%struct.regmap* %65, i32 %66, i32 %67)
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %59, %54
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %47
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @max77693_distribute_currents(%struct.max77693_led_device*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @max77693_led_iout_to_reg(i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
