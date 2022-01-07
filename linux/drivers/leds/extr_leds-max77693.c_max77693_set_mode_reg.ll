; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max77693.c_max77693_set_mode_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max77693.c_max77693_set_mode_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77693_led_device = type { %struct.regmap* }
%struct.regmap = type { i32 }

@FLED1 = common dso_local global i32 0, align 4
@FLED2 = common dso_local global i32 0, align 4
@FLASH_EN_ON = common dso_local global i32 0, align 4
@FLASH_EN_FLASH = common dso_local global i32 0, align 4
@FLASH_EN_TORCH = common dso_local global i32 0, align 4
@MAX77693_LED_REG_FLASH_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77693_led_device*, i32)* @max77693_set_mode_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77693_set_mode_reg(%struct.max77693_led_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max77693_led_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.max77693_led_device* %0, %struct.max77693_led_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.max77693_led_device*, %struct.max77693_led_device** %4, align 8
  %11 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %10, i32 0, i32 0
  %12 = load %struct.regmap*, %struct.regmap** %11, align 8
  store %struct.regmap* %12, %struct.regmap** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* @FLED1, align 4
  store i32 %13, i32* %9, align 4
  br label %14

14:                                               ; preds = %65, %2
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @FLED2, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %68

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @MODE_TORCH(i32 %20)
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load i32, i32* @FLASH_EN_ON, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @TORCH_EN_SHIFT(i32 %26)
  %28 = shl i32 %25, %27
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %24, %18
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @MODE_FLASH(i32 %33)
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load i32, i32* @FLASH_EN_ON, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @FLASH_EN_SHIFT(i32 %39)
  %41 = shl i32 %38, %40
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %64

44:                                               ; preds = %31
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @MODE_FLASH_EXTERNAL(i32 %46)
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %44
  %51 = load i32, i32* @FLASH_EN_FLASH, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @FLASH_EN_SHIFT(i32 %52)
  %54 = shl i32 %51, %53
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* @FLASH_EN_TORCH, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @TORCH_EN_SHIFT(i32 %58)
  %60 = shl i32 %57, %59
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %50, %44
  br label %64

64:                                               ; preds = %63, %37
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %14

68:                                               ; preds = %14
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @FLED1, align 4
  %71 = call i32 @MODE_TORCH(i32 %70)
  %72 = load i32, i32* @FLED2, align 4
  %73 = call i32 @MODE_TORCH(i32 %72)
  %74 = or i32 %71, %73
  %75 = xor i32 %74, -1
  %76 = and i32 %69, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %68
  %79 = load %struct.regmap*, %struct.regmap** %6, align 8
  %80 = load i32, i32* @MAX77693_LED_REG_FLASH_EN, align 4
  %81 = call i32 @regmap_write(%struct.regmap* %79, i32 %80, i32 0)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %3, align 4
  br label %92

86:                                               ; preds = %78
  br label %87

87:                                               ; preds = %86, %68
  %88 = load %struct.regmap*, %struct.regmap** %6, align 8
  %89 = load i32, i32* @MAX77693_LED_REG_FLASH_EN, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @regmap_write(%struct.regmap* %88, i32 %89, i32 %90)
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %87, %84
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @MODE_TORCH(i32) #1

declare dso_local i32 @TORCH_EN_SHIFT(i32) #1

declare dso_local i32 @MODE_FLASH(i32) #1

declare dso_local i32 @FLASH_EN_SHIFT(i32) #1

declare dso_local i32 @MODE_FLASH_EXTERNAL(i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
