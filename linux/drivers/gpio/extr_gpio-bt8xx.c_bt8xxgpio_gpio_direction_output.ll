; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-bt8xx.c_bt8xxgpio_gpio_direction_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-bt8xx.c_bt8xxgpio_gpio_direction_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.bt8xxgpio = type { i32 }

@BT848_GPIO_OUT_EN = common dso_local global i32 0, align 4
@BT848_GPIO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @bt8xxgpio_gpio_direction_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt8xxgpio_gpio_direction_output(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bt8xxgpio*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %12 = call %struct.bt8xxgpio* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.bt8xxgpio* %12, %struct.bt8xxgpio** %7, align 8
  %13 = load %struct.bt8xxgpio*, %struct.bt8xxgpio** %7, align 8
  %14 = getelementptr inbounds %struct.bt8xxgpio, %struct.bt8xxgpio* %13, i32 0, i32 0
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load i32, i32* @BT848_GPIO_OUT_EN, align 4
  %18 = call i32 @bgread(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = shl i32 1, %19
  %21 = load i32, i32* %9, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @BT848_GPIO_OUT_EN, align 4
  %25 = call i32 @bgwrite(i32 %23, i32 %24)
  %26 = load i32, i32* @BT848_GPIO_DATA, align 4
  %27 = call i32 @bgread(i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %3
  %31 = load i32, i32* %5, align 4
  %32 = shl i32 1, %31
  %33 = load i32, i32* %10, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %10, align 4
  br label %41

35:                                               ; preds = %3
  %36 = load i32, i32* %5, align 4
  %37 = shl i32 1, %36
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %35, %30
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @BT848_GPIO_DATA, align 4
  %44 = call i32 @bgwrite(i32 %42, i32 %43)
  %45 = load %struct.bt8xxgpio*, %struct.bt8xxgpio** %7, align 8
  %46 = getelementptr inbounds %struct.bt8xxgpio, %struct.bt8xxgpio* %45, i32 0, i32 0
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  ret i32 0
}

declare dso_local %struct.bt8xxgpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bgread(i32) #1

declare dso_local i32 @bgwrite(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
