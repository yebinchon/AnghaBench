; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lpc18xx.c_lpc18xx_gpio_pin_ic_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lpc18xx.c_lpc18xx_gpio_pin_ic_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32, %struct.lpc18xx_gpio_pin_ic* }
%struct.lpc18xx_gpio_pin_ic = type { i32 }

@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@LPC18XX_GPIO_PIN_IC_SIENF = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_LOW = common dso_local global i32 0, align 4
@LPC18XX_GPIO_PIN_IC_CIENF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @lpc18xx_gpio_pin_ic_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc18xx_gpio_pin_ic_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpc18xx_gpio_pin_ic*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %7 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %6, i32 0, i32 1
  %8 = load %struct.lpc18xx_gpio_pin_ic*, %struct.lpc18xx_gpio_pin_ic** %7, align 8
  store %struct.lpc18xx_gpio_pin_ic* %8, %struct.lpc18xx_gpio_pin_ic** %5, align 8
  %9 = load %struct.lpc18xx_gpio_pin_ic*, %struct.lpc18xx_gpio_pin_ic** %5, align 8
  %10 = getelementptr inbounds %struct.lpc18xx_gpio_pin_ic, %struct.lpc18xx_gpio_pin_ic* %9, i32 0, i32 0
  %11 = call i32 @raw_spin_lock(i32* %10)
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load %struct.lpc18xx_gpio_pin_ic*, %struct.lpc18xx_gpio_pin_ic** %5, align 8
  %18 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %19 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @lpc18xx_gpio_pin_ic_isel(%struct.lpc18xx_gpio_pin_ic* %17, i32 %20, i32 1)
  %22 = load %struct.lpc18xx_gpio_pin_ic*, %struct.lpc18xx_gpio_pin_ic** %5, align 8
  %23 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %24 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @LPC18XX_GPIO_PIN_IC_SIENF, align 4
  %27 = call i32 @lpc18xx_gpio_pin_ic_set(%struct.lpc18xx_gpio_pin_ic* %22, i32 %25, i32 %26)
  br label %52

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load %struct.lpc18xx_gpio_pin_ic*, %struct.lpc18xx_gpio_pin_ic** %5, align 8
  %35 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %36 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @lpc18xx_gpio_pin_ic_isel(%struct.lpc18xx_gpio_pin_ic* %34, i32 %37, i32 1)
  %39 = load %struct.lpc18xx_gpio_pin_ic*, %struct.lpc18xx_gpio_pin_ic** %5, align 8
  %40 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %41 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @LPC18XX_GPIO_PIN_IC_CIENF, align 4
  %44 = call i32 @lpc18xx_gpio_pin_ic_set(%struct.lpc18xx_gpio_pin_ic* %39, i32 %42, i32 %43)
  br label %51

45:                                               ; preds = %28
  %46 = load %struct.lpc18xx_gpio_pin_ic*, %struct.lpc18xx_gpio_pin_ic** %5, align 8
  %47 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %48 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @lpc18xx_gpio_pin_ic_isel(%struct.lpc18xx_gpio_pin_ic* %46, i32 %49, i32 0)
  br label %51

51:                                               ; preds = %45, %33
  br label %52

52:                                               ; preds = %51, %16
  %53 = load %struct.lpc18xx_gpio_pin_ic*, %struct.lpc18xx_gpio_pin_ic** %5, align 8
  %54 = getelementptr inbounds %struct.lpc18xx_gpio_pin_ic, %struct.lpc18xx_gpio_pin_ic* %53, i32 0, i32 0
  %55 = call i32 @raw_spin_unlock(i32* %54)
  ret i32 0
}

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @lpc18xx_gpio_pin_ic_isel(%struct.lpc18xx_gpio_pin_ic*, i32, i32) #1

declare dso_local i32 @lpc18xx_gpio_pin_ic_set(%struct.lpc18xx_gpio_pin_ic*, i32, i32) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
