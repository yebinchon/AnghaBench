; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max77693.c_max77693_get_flash_faults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max77693.c_max77693_get_flash_faults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77693_sub_led = type { i64, i32 }
%struct.max77693_led_device = type { i64, %struct.regmap* }
%struct.regmap = type { i32 }

@FLASH_INT_FLED1_OPEN = common dso_local global i32 0, align 4
@FLASH_INT_FLED2_OPEN = common dso_local global i32 0, align 4
@FLASH_INT_FLED1_SHORT = common dso_local global i32 0, align 4
@FLASH_INT_FLED2_SHORT = common dso_local global i32 0, align 4
@FLED1 = common dso_local global i64 0, align 8
@MAX77693_LED_REG_FLASH_INT = common dso_local global i32 0, align 4
@LED_FAULT_OVER_VOLTAGE = common dso_local global i32 0, align 4
@LED_FAULT_SHORT_CIRCUIT = common dso_local global i32 0, align 4
@FLASH_INT_OVER_CURRENT = common dso_local global i32 0, align 4
@LED_FAULT_OVER_CURRENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77693_sub_led*)* @max77693_get_flash_faults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77693_get_flash_faults(%struct.max77693_sub_led* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.max77693_sub_led*, align 8
  %4 = alloca %struct.max77693_led_device*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.max77693_sub_led* %0, %struct.max77693_sub_led** %3, align 8
  %10 = load %struct.max77693_sub_led*, %struct.max77693_sub_led** %3, align 8
  %11 = call %struct.max77693_led_device* @sub_led_to_led(%struct.max77693_sub_led* %10)
  store %struct.max77693_led_device* %11, %struct.max77693_led_device** %4, align 8
  %12 = load %struct.max77693_led_device*, %struct.max77693_led_device** %4, align 8
  %13 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %12, i32 0, i32 1
  %14 = load %struct.regmap*, %struct.regmap** %13, align 8
  store %struct.regmap* %14, %struct.regmap** %5, align 8
  %15 = load %struct.max77693_sub_led*, %struct.max77693_sub_led** %3, align 8
  %16 = getelementptr inbounds %struct.max77693_sub_led, %struct.max77693_sub_led* %15, i32 0, i32 1
  store i32 0, i32* %16, align 8
  %17 = load %struct.max77693_led_device*, %struct.max77693_led_device** %4, align 8
  %18 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load i32, i32* @FLASH_INT_FLED1_OPEN, align 4
  %23 = load i32, i32* @FLASH_INT_FLED2_OPEN, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @FLASH_INT_FLED1_SHORT, align 4
  %26 = load i32, i32* @FLASH_INT_FLED2_SHORT, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %8, align 4
  br label %51

28:                                               ; preds = %1
  %29 = load %struct.max77693_sub_led*, %struct.max77693_sub_led** %3, align 8
  %30 = getelementptr inbounds %struct.max77693_sub_led, %struct.max77693_sub_led* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @FLED1, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @FLASH_INT_FLED1_OPEN, align 4
  br label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @FLASH_INT_FLED2_OPEN, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  store i32 %39, i32* %7, align 4
  %40 = load %struct.max77693_sub_led*, %struct.max77693_sub_led** %3, align 8
  %41 = getelementptr inbounds %struct.max77693_sub_led, %struct.max77693_sub_led* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @FLED1, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @FLASH_INT_FLED1_SHORT, align 4
  br label %49

47:                                               ; preds = %38
  %48 = load i32, i32* @FLASH_INT_FLED2_SHORT, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %49, %21
  %52 = load %struct.regmap*, %struct.regmap** %5, align 8
  %53 = load i32, i32* @MAX77693_LED_REG_FLASH_INT, align 4
  %54 = call i32 @regmap_read(%struct.regmap* %52, i32 %53, i32* %6)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %2, align 4
  br label %93

59:                                               ; preds = %51
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load i32, i32* @LED_FAULT_OVER_VOLTAGE, align 4
  %66 = load %struct.max77693_sub_led*, %struct.max77693_sub_led** %3, align 8
  %67 = getelementptr inbounds %struct.max77693_sub_led, %struct.max77693_sub_led* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %64, %59
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %8, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load i32, i32* @LED_FAULT_SHORT_CIRCUIT, align 4
  %77 = load %struct.max77693_sub_led*, %struct.max77693_sub_led** %3, align 8
  %78 = getelementptr inbounds %struct.max77693_sub_led, %struct.max77693_sub_led* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %75, %70
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @FLASH_INT_OVER_CURRENT, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load i32, i32* @LED_FAULT_OVER_CURRENT, align 4
  %88 = load %struct.max77693_sub_led*, %struct.max77693_sub_led** %3, align 8
  %89 = getelementptr inbounds %struct.max77693_sub_led, %struct.max77693_sub_led* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %86, %81
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %57
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.max77693_led_device* @sub_led_to_led(%struct.max77693_sub_led*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
