; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-dln2.c_dln2_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-dln2.c_dln2_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.dln2_gpio = type { i32* }

@DLN2_GPIO_EVENT_LVL_HIGH = common dso_local global i32 0, align 4
@DLN2_GPIO_EVENT_LVL_LOW = common dso_local global i32 0, align 4
@DLN2_GPIO_EVENT_CHANGE = common dso_local global i32 0, align 4
@DLN2_GPIO_EVENT_CHANGE_RISING = common dso_local global i32 0, align 4
@DLN2_GPIO_EVENT_CHANGE_FALLING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @dln2_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dln2_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca %struct.dln2_gpio*, align 8
  %8 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %10 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %9)
  store %struct.gpio_chip* %10, %struct.gpio_chip** %6, align 8
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %12 = call %struct.dln2_gpio* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.dln2_gpio* %12, %struct.dln2_gpio** %7, align 8
  %13 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %14 = call i32 @irqd_to_hwirq(%struct.irq_data* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %56 [
    i32 129, label %16
    i32 128, label %24
    i32 132, label %32
    i32 130, label %40
    i32 131, label %48
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* @DLN2_GPIO_EVENT_LVL_HIGH, align 4
  %18 = load %struct.dln2_gpio*, %struct.dln2_gpio** %7, align 8
  %19 = getelementptr inbounds %struct.dln2_gpio, %struct.dln2_gpio* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32 %17, i32* %23, align 4
  br label %59

24:                                               ; preds = %2
  %25 = load i32, i32* @DLN2_GPIO_EVENT_LVL_LOW, align 4
  %26 = load %struct.dln2_gpio*, %struct.dln2_gpio** %7, align 8
  %27 = getelementptr inbounds %struct.dln2_gpio, %struct.dln2_gpio* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 %25, i32* %31, align 4
  br label %59

32:                                               ; preds = %2
  %33 = load i32, i32* @DLN2_GPIO_EVENT_CHANGE, align 4
  %34 = load %struct.dln2_gpio*, %struct.dln2_gpio** %7, align 8
  %35 = getelementptr inbounds %struct.dln2_gpio, %struct.dln2_gpio* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %33, i32* %39, align 4
  br label %59

40:                                               ; preds = %2
  %41 = load i32, i32* @DLN2_GPIO_EVENT_CHANGE_RISING, align 4
  %42 = load %struct.dln2_gpio*, %struct.dln2_gpio** %7, align 8
  %43 = getelementptr inbounds %struct.dln2_gpio, %struct.dln2_gpio* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %41, i32* %47, align 4
  br label %59

48:                                               ; preds = %2
  %49 = load i32, i32* @DLN2_GPIO_EVENT_CHANGE_FALLING, align 4
  %50 = load %struct.dln2_gpio*, %struct.dln2_gpio** %7, align 8
  %51 = getelementptr inbounds %struct.dln2_gpio, %struct.dln2_gpio* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %49, i32* %55, align 4
  br label %59

56:                                               ; preds = %2
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %60

59:                                               ; preds = %48, %40, %32, %24, %16
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %56
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.dln2_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
