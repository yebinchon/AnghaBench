; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-rcar.c_gpio_rcar_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-rcar.c_gpio_rcar_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.gpio_rcar_priv = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"sense irq = %d, type = %d\0A\00", align 1
@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @gpio_rcar_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_rcar_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca %struct.gpio_rcar_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %10 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %9)
  store %struct.gpio_chip* %10, %struct.gpio_chip** %6, align 8
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %12 = call %struct.gpio_rcar_priv* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.gpio_rcar_priv* %12, %struct.gpio_rcar_priv** %7, align 8
  %13 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %14 = call i32 @irqd_to_hwirq(%struct.irq_data* %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %7, align 8
  %16 = getelementptr inbounds %struct.gpio_rcar_priv, %struct.gpio_rcar_priv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @dev_dbg(i32 %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %23 = and i32 %21, %22
  switch i32 %23, label %52 [
    i32 129, label %24
    i32 128, label %28
    i32 130, label %32
    i32 131, label %36
    i32 132, label %40
  ]

24:                                               ; preds = %2
  %25 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @gpio_rcar_config_interrupt_input_mode(%struct.gpio_rcar_priv* %25, i32 %26, i32 1, i32 1, i32 0)
  br label %55

28:                                               ; preds = %2
  %29 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @gpio_rcar_config_interrupt_input_mode(%struct.gpio_rcar_priv* %29, i32 %30, i32 0, i32 1, i32 0)
  br label %55

32:                                               ; preds = %2
  %33 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @gpio_rcar_config_interrupt_input_mode(%struct.gpio_rcar_priv* %33, i32 %34, i32 1, i32 0, i32 0)
  br label %55

36:                                               ; preds = %2
  %37 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @gpio_rcar_config_interrupt_input_mode(%struct.gpio_rcar_priv* %37, i32 %38, i32 0, i32 0, i32 0)
  br label %55

40:                                               ; preds = %2
  %41 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %7, align 8
  %42 = getelementptr inbounds %struct.gpio_rcar_priv, %struct.gpio_rcar_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %56

48:                                               ; preds = %40
  %49 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @gpio_rcar_config_interrupt_input_mode(%struct.gpio_rcar_priv* %49, i32 %50, i32 1, i32 0, i32 1)
  br label %55

52:                                               ; preds = %2
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %56

55:                                               ; preds = %48, %36, %32, %28, %24
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %52, %45
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.gpio_rcar_priv* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @gpio_rcar_config_interrupt_input_mode(%struct.gpio_rcar_priv*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
