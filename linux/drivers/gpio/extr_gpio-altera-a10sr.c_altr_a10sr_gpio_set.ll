; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-altera-a10sr.c_altr_a10sr_gpio_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-altera-a10sr.c_altr_a10sr_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.altr_a10sr_gpio = type { i32 }

@ALTR_A10SR_LED_REG = common dso_local global i32 0, align 4
@ALTR_A10SR_LED_VALID_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @altr_a10sr_gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @altr_a10sr_gpio_set(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.altr_a10sr_gpio*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %9 = call %struct.altr_a10sr_gpio* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.altr_a10sr_gpio* %9, %struct.altr_a10sr_gpio** %7, align 8
  %10 = load %struct.altr_a10sr_gpio*, %struct.altr_a10sr_gpio** %7, align 8
  %11 = getelementptr inbounds %struct.altr_a10sr_gpio, %struct.altr_a10sr_gpio* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ALTR_A10SR_LED_REG, align 4
  %14 = load i64, i64* @ALTR_A10SR_LED_VALID_SHIFT, align 8
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = add nsw i64 %14, %16
  %18 = call i32 @BIT(i64 %17)
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load i64, i64* @ALTR_A10SR_LED_VALID_SHIFT, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = call i32 @BIT(i64 %25)
  br label %28

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %27, %21
  %29 = phi i32 [ %26, %21 ], [ 0, %27 ]
  %30 = call i32 @regmap_update_bits(i32 %12, i32 %13, i32 %18, i32 %29)
  ret void
}

declare dso_local %struct.altr_a10sr_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
