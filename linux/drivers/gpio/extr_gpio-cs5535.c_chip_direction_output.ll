; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-cs5535.c_chip_direction_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-cs5535.c_chip_direction_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.cs5535_gpio_chip = type { i32 }

@GPIO_INPUT_ENABLE = common dso_local global i32 0, align 4
@GPIO_OUTPUT_ENABLE = common dso_local global i32 0, align 4
@GPIO_OUTPUT_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @chip_direction_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chip_direction_output(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cs5535_gpio_chip*, align 8
  %8 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call %struct.cs5535_gpio_chip* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.cs5535_gpio_chip* %10, %struct.cs5535_gpio_chip** %7, align 8
  %11 = load %struct.cs5535_gpio_chip*, %struct.cs5535_gpio_chip** %7, align 8
  %12 = getelementptr inbounds %struct.cs5535_gpio_chip, %struct.cs5535_gpio_chip* %11, i32 0, i32 0
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.cs5535_gpio_chip*, %struct.cs5535_gpio_chip** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @GPIO_INPUT_ENABLE, align 4
  %18 = call i32 @__cs5535_gpio_set(%struct.cs5535_gpio_chip* %15, i32 %16, i32 %17)
  %19 = load %struct.cs5535_gpio_chip*, %struct.cs5535_gpio_chip** %7, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @GPIO_OUTPUT_ENABLE, align 4
  %22 = call i32 @__cs5535_gpio_set(%struct.cs5535_gpio_chip* %19, i32 %20, i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load %struct.cs5535_gpio_chip*, %struct.cs5535_gpio_chip** %7, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @GPIO_OUTPUT_VAL, align 4
  %29 = call i32 @__cs5535_gpio_set(%struct.cs5535_gpio_chip* %26, i32 %27, i32 %28)
  br label %35

30:                                               ; preds = %3
  %31 = load %struct.cs5535_gpio_chip*, %struct.cs5535_gpio_chip** %7, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @GPIO_OUTPUT_VAL, align 4
  %34 = call i32 @__cs5535_gpio_clear(%struct.cs5535_gpio_chip* %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.cs5535_gpio_chip*, %struct.cs5535_gpio_chip** %7, align 8
  %37 = getelementptr inbounds %struct.cs5535_gpio_chip, %struct.cs5535_gpio_chip* %36, i32 0, i32 0
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  ret i32 0
}

declare dso_local %struct.cs5535_gpio_chip* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__cs5535_gpio_set(%struct.cs5535_gpio_chip*, i32, i32) #1

declare dso_local i32 @__cs5535_gpio_clear(%struct.cs5535_gpio_chip*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
