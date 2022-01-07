; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-adp5520.c_adp5520_led_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-adp5520.c_adp5520_led_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adp5520_led = type { i32, i32, %struct.device* }
%struct.device = type { i32 }

@ADP5520_LED_TIME = common dso_local global i32 0, align 4
@ADP5520_FLAG_OFFT_SHIFT = common dso_local global i32 0, align 4
@ADP5520_FLAG_OFFT_MASK = common dso_local global i32 0, align 4
@ADP5520_LED_CONTROL = common dso_local global i32 0, align 4
@ADP5520_LED1_EN = common dso_local global i32 0, align 4
@ADP5520_R3_MODE = common dso_local global i32 0, align 4
@ADP5520_LED2_EN = common dso_local global i32 0, align 4
@ADP5520_C3_MODE = common dso_local global i32 0, align 4
@ADP5520_LED3_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adp5520_led*)* @adp5520_led_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp5520_led_setup(%struct.adp5520_led* %0) #0 {
  %2 = alloca %struct.adp5520_led*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.adp5520_led* %0, %struct.adp5520_led** %2, align 8
  %6 = load %struct.adp5520_led*, %struct.adp5520_led** %2, align 8
  %7 = getelementptr inbounds %struct.adp5520_led, %struct.adp5520_led* %6, i32 0, i32 2
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %3, align 8
  %9 = load %struct.adp5520_led*, %struct.adp5520_led** %2, align 8
  %10 = getelementptr inbounds %struct.adp5520_led, %struct.adp5520_led* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %12 = load %struct.adp5520_led*, %struct.adp5520_led** %2, align 8
  %13 = getelementptr inbounds %struct.adp5520_led, %struct.adp5520_led* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %80 [
    i32 130, label %15
    i32 129, label %32
    i32 128, label %56
  ]

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = load i32, i32* @ADP5520_LED_TIME, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @ADP5520_FLAG_OFFT_SHIFT, align 4
  %20 = ashr i32 %18, %19
  %21 = load i32, i32* @ADP5520_FLAG_OFFT_MASK, align 4
  %22 = and i32 %20, %21
  %23 = call i32 @adp5520_set_bits(%struct.device* %16, i32 %17, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load %struct.device*, %struct.device** %3, align 8
  %27 = load i32, i32* @ADP5520_LED_CONTROL, align 4
  %28 = load i32, i32* @ADP5520_LED1_EN, align 4
  %29 = call i32 @adp5520_set_bits(%struct.device* %26, i32 %27, i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %80

32:                                               ; preds = %1
  %33 = load %struct.device*, %struct.device** %3, align 8
  %34 = load i32, i32* @ADP5520_LED_TIME, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @ADP5520_FLAG_OFFT_SHIFT, align 4
  %37 = ashr i32 %35, %36
  %38 = load i32, i32* @ADP5520_FLAG_OFFT_MASK, align 4
  %39 = and i32 %37, %38
  %40 = shl i32 %39, 2
  %41 = call i32 @adp5520_set_bits(%struct.device* %33, i32 %34, i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  %44 = load %struct.device*, %struct.device** %3, align 8
  %45 = load i32, i32* @ADP5520_LED_CONTROL, align 4
  %46 = load i32, i32* @ADP5520_R3_MODE, align 4
  %47 = call i32 @adp5520_clr_bits(%struct.device* %44, i32 %45, i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %5, align 4
  %50 = load %struct.device*, %struct.device** %3, align 8
  %51 = load i32, i32* @ADP5520_LED_CONTROL, align 4
  %52 = load i32, i32* @ADP5520_LED2_EN, align 4
  %53 = call i32 @adp5520_set_bits(%struct.device* %50, i32 %51, i32 %52)
  %54 = load i32, i32* %5, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %5, align 4
  br label %80

56:                                               ; preds = %1
  %57 = load %struct.device*, %struct.device** %3, align 8
  %58 = load i32, i32* @ADP5520_LED_TIME, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @ADP5520_FLAG_OFFT_SHIFT, align 4
  %61 = ashr i32 %59, %60
  %62 = load i32, i32* @ADP5520_FLAG_OFFT_MASK, align 4
  %63 = and i32 %61, %62
  %64 = shl i32 %63, 4
  %65 = call i32 @adp5520_set_bits(%struct.device* %57, i32 %58, i32 %64)
  %66 = load i32, i32* %5, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %5, align 4
  %68 = load %struct.device*, %struct.device** %3, align 8
  %69 = load i32, i32* @ADP5520_LED_CONTROL, align 4
  %70 = load i32, i32* @ADP5520_C3_MODE, align 4
  %71 = call i32 @adp5520_clr_bits(%struct.device* %68, i32 %69, i32 %70)
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %5, align 4
  %74 = load %struct.device*, %struct.device** %3, align 8
  %75 = load i32, i32* @ADP5520_LED_CONTROL, align 4
  %76 = load i32, i32* @ADP5520_LED3_EN, align 4
  %77 = call i32 @adp5520_set_bits(%struct.device* %74, i32 %75, i32 %76)
  %78 = load i32, i32* %5, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %1, %56, %32, %15
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @adp5520_set_bits(%struct.device*, i32, i32) #1

declare dso_local i32 @adp5520_clr_bits(%struct.device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
