; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-altera.c_altera_gpio_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-altera.c_altera_gpio_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.altera_gpio_chip = type { i32 }

@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@handle_bad_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@handle_simple_irq = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @altera_gpio_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altera_gpio_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.altera_gpio_chip*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %8 = call i32 @irq_data_get_irq_chip_data(%struct.irq_data* %7)
  %9 = call %struct.altera_gpio_chip* @gpiochip_get_data(i32 %8)
  store %struct.altera_gpio_chip* %9, %struct.altera_gpio_chip** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %15 = load i32, i32* @handle_bad_irq, align 4
  %16 = call i32 @irq_set_handler_locked(%struct.irq_data* %14, i32 %15)
  store i32 0, i32* %3, align 4
  br label %42

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.altera_gpio_chip*, %struct.altera_gpio_chip** %6, align 8
  %20 = getelementptr inbounds %struct.altera_gpio_chip, %struct.altera_gpio_chip* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %29 = load i32, i32* @handle_level_irq, align 4
  %30 = call i32 @irq_set_handler_locked(%struct.irq_data* %28, i32 %29)
  br label %35

31:                                               ; preds = %23
  %32 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %33 = load i32, i32* @handle_simple_irq, align 4
  %34 = call i32 @irq_set_handler_locked(%struct.irq_data* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %27
  store i32 0, i32* %3, align 4
  br label %42

36:                                               ; preds = %17
  %37 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %38 = load i32, i32* @handle_bad_irq, align 4
  %39 = call i32 @irq_set_handler_locked(%struct.irq_data* %37, i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %36, %35, %13
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.altera_gpio_chip* @gpiochip_get_data(i32) #1

declare dso_local i32 @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @irq_set_handler_locked(%struct.irq_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
