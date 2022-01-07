; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-wcove.c_wcove_irq_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-wcove.c_wcove_irq_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i64 }
%struct.gpio_chip = type { i32 }
%struct.wcove_gpio = type { i32, i32 }

@WCOVE_GPIO_NUM = common dso_local global i64 0, align 8
@CTLI_INTCNT_DIS = common dso_local global i32 0, align 4
@CTLI_INTCNT_BE = common dso_local global i32 0, align 4
@CTLI_INTCNT_PE = common dso_local global i32 0, align 4
@CTLI_INTCNT_NE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UPDATE_IRQ_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @wcove_irq_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcove_irq_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca %struct.wcove_gpio*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %9 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %8)
  store %struct.gpio_chip* %9, %struct.gpio_chip** %6, align 8
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %11 = call %struct.wcove_gpio* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.wcove_gpio* %11, %struct.wcove_gpio** %7, align 8
  %12 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %13 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @WCOVE_GPIO_NUM, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %45

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %36 [
    i32 128, label %20
    i32 131, label %24
    i32 129, label %28
    i32 130, label %32
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* @CTLI_INTCNT_DIS, align 4
  %22 = load %struct.wcove_gpio*, %struct.wcove_gpio** %7, align 8
  %23 = getelementptr inbounds %struct.wcove_gpio, %struct.wcove_gpio* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  br label %39

24:                                               ; preds = %18
  %25 = load i32, i32* @CTLI_INTCNT_BE, align 4
  %26 = load %struct.wcove_gpio*, %struct.wcove_gpio** %7, align 8
  %27 = getelementptr inbounds %struct.wcove_gpio, %struct.wcove_gpio* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  br label %39

28:                                               ; preds = %18
  %29 = load i32, i32* @CTLI_INTCNT_PE, align 4
  %30 = load %struct.wcove_gpio*, %struct.wcove_gpio** %7, align 8
  %31 = getelementptr inbounds %struct.wcove_gpio, %struct.wcove_gpio* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  br label %39

32:                                               ; preds = %18
  %33 = load i32, i32* @CTLI_INTCNT_NE, align 4
  %34 = load %struct.wcove_gpio*, %struct.wcove_gpio** %7, align 8
  %35 = getelementptr inbounds %struct.wcove_gpio, %struct.wcove_gpio* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %39

36:                                               ; preds = %18
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %45

39:                                               ; preds = %32, %28, %24, %20
  %40 = load i32, i32* @UPDATE_IRQ_TYPE, align 4
  %41 = load %struct.wcove_gpio*, %struct.wcove_gpio** %7, align 8
  %42 = getelementptr inbounds %struct.wcove_gpio, %struct.wcove_gpio* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %39, %36, %17
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.wcove_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
