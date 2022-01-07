; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lpc18xx.c_lpc18xx_gpio_pin_ic_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lpc18xx.c_lpc18xx_gpio_pin_ic_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32, %struct.lpc18xx_gpio_pin_ic* }
%struct.lpc18xx_gpio_pin_ic = type { i32 }

@IRQ_TYPE_LEVEL_MASK = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@LPC18XX_GPIO_PIN_IC_CIENR = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@LPC18XX_GPIO_PIN_IC_CIENF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @lpc18xx_gpio_pin_ic_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpc18xx_gpio_pin_ic_mask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.lpc18xx_gpio_pin_ic*, align 8
  %4 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %5 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %6 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %5, i32 0, i32 1
  %7 = load %struct.lpc18xx_gpio_pin_ic*, %struct.lpc18xx_gpio_pin_ic** %6, align 8
  store %struct.lpc18xx_gpio_pin_ic* %7, %struct.lpc18xx_gpio_pin_ic** %3, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %9 = call i32 @irqd_get_trigger_type(%struct.irq_data* %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.lpc18xx_gpio_pin_ic*, %struct.lpc18xx_gpio_pin_ic** %3, align 8
  %11 = getelementptr inbounds %struct.lpc18xx_gpio_pin_ic, %struct.lpc18xx_gpio_pin_ic* %10, i32 0, i32 0
  %12 = call i32 @raw_spin_lock(i32* %11)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @IRQ_TYPE_LEVEL_MASK, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17, %1
  %23 = load %struct.lpc18xx_gpio_pin_ic*, %struct.lpc18xx_gpio_pin_ic** %3, align 8
  %24 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %25 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @LPC18XX_GPIO_PIN_IC_CIENR, align 4
  %28 = call i32 @lpc18xx_gpio_pin_ic_set(%struct.lpc18xx_gpio_pin_ic* %23, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %22, %17
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.lpc18xx_gpio_pin_ic*, %struct.lpc18xx_gpio_pin_ic** %3, align 8
  %36 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %37 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @LPC18XX_GPIO_PIN_IC_CIENF, align 4
  %40 = call i32 @lpc18xx_gpio_pin_ic_set(%struct.lpc18xx_gpio_pin_ic* %35, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %34, %29
  %42 = load %struct.lpc18xx_gpio_pin_ic*, %struct.lpc18xx_gpio_pin_ic** %3, align 8
  %43 = getelementptr inbounds %struct.lpc18xx_gpio_pin_ic, %struct.lpc18xx_gpio_pin_ic* %42, i32 0, i32 0
  %44 = call i32 @raw_spin_unlock(i32* %43)
  %45 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %46 = call i32 @irq_chip_mask_parent(%struct.irq_data* %45)
  ret void
}

declare dso_local i32 @irqd_get_trigger_type(%struct.irq_data*) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @lpc18xx_gpio_pin_ic_set(%struct.lpc18xx_gpio_pin_ic*, i32, i32) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

declare dso_local i32 @irq_chip_mask_parent(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
