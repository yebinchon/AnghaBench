; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-xlp.c_xlp_gpio_set_irq_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-xlp.c_xlp_gpio_set_irq_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.xlp_gpio_priv = type { i32, i32 }

@XLP_GPIO_IRQ_TYPE_EDGE = common dso_local global i32 0, align 4
@XLP_GPIO_IRQ_POL_HIGH = common dso_local global i32 0, align 4
@XLP_GPIO_IRQ_POL_LOW = common dso_local global i32 0, align 4
@XLP_GPIO_IRQ_TYPE_LVL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @xlp_gpio_set_irq_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlp_gpio_set_irq_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca %struct.xlp_gpio_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %11 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %10)
  store %struct.gpio_chip* %11, %struct.gpio_chip** %6, align 8
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %13 = call %struct.xlp_gpio_priv* @gpiochip_get_data(%struct.gpio_chip* %12)
  store %struct.xlp_gpio_priv* %13, %struct.xlp_gpio_priv** %7, align 8
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %27 [
    i32 130, label %15
    i32 131, label %18
    i32 129, label %21
    i32 128, label %24
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* @XLP_GPIO_IRQ_TYPE_EDGE, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* @XLP_GPIO_IRQ_POL_HIGH, align 4
  store i32 %17, i32* %8, align 4
  br label %30

18:                                               ; preds = %2
  %19 = load i32, i32* @XLP_GPIO_IRQ_TYPE_EDGE, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @XLP_GPIO_IRQ_POL_LOW, align 4
  store i32 %20, i32* %8, align 4
  br label %30

21:                                               ; preds = %2
  %22 = load i32, i32* @XLP_GPIO_IRQ_TYPE_LVL, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* @XLP_GPIO_IRQ_POL_HIGH, align 4
  store i32 %23, i32* %8, align 4
  br label %30

24:                                               ; preds = %2
  %25 = load i32, i32* @XLP_GPIO_IRQ_TYPE_LVL, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @XLP_GPIO_IRQ_POL_LOW, align 4
  store i32 %26, i32* %8, align 4
  br label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %47

30:                                               ; preds = %24, %21, %18, %15
  %31 = load %struct.xlp_gpio_priv*, %struct.xlp_gpio_priv** %7, align 8
  %32 = getelementptr inbounds %struct.xlp_gpio_priv, %struct.xlp_gpio_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %35 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @xlp_gpio_set_reg(i32 %33, i32 %36, i32 %37)
  %39 = load %struct.xlp_gpio_priv*, %struct.xlp_gpio_priv** %7, align 8
  %40 = getelementptr inbounds %struct.xlp_gpio_priv, %struct.xlp_gpio_priv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %43 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @xlp_gpio_set_reg(i32 %41, i32 %44, i32 %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %30, %27
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.xlp_gpio_priv* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @xlp_gpio_set_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
