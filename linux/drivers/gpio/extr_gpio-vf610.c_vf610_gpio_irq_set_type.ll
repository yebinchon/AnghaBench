; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-vf610.c_vf610_gpio_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-vf610.c_vf610_gpio_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i64 }
%struct.vf610_gpio_port = type { i32* }

@PORT_INT_RISING_EDGE = common dso_local global i32 0, align 4
@PORT_INT_FALLING_EDGE = common dso_local global i32 0, align 4
@PORT_INT_EITHER_EDGE = common dso_local global i32 0, align 4
@PORT_INT_LOGIC_ZERO = common dso_local global i32 0, align 4
@PORT_INT_LOGIC_ONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_MASK = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @vf610_gpio_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vf610_gpio_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vf610_gpio_port*, align 8
  %7 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %9 = call i32 @irq_data_get_irq_chip_data(%struct.irq_data* %8)
  %10 = call %struct.vf610_gpio_port* @gpiochip_get_data(i32 %9)
  store %struct.vf610_gpio_port* %10, %struct.vf610_gpio_port** %6, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %22 [
    i32 130, label %12
    i32 131, label %14
    i32 132, label %16
    i32 128, label %18
    i32 129, label %20
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* @PORT_INT_RISING_EDGE, align 4
  store i32 %13, i32* %7, align 4
  br label %25

14:                                               ; preds = %2
  %15 = load i32, i32* @PORT_INT_FALLING_EDGE, align 4
  store i32 %15, i32* %7, align 4
  br label %25

16:                                               ; preds = %2
  %17 = load i32, i32* @PORT_INT_EITHER_EDGE, align 4
  store i32 %17, i32* %7, align 4
  br label %25

18:                                               ; preds = %2
  %19 = load i32, i32* @PORT_INT_LOGIC_ZERO, align 4
  store i32 %19, i32* %7, align 4
  br label %25

20:                                               ; preds = %2
  %21 = load i32, i32* @PORT_INT_LOGIC_ONE, align 4
  store i32 %21, i32* %7, align 4
  br label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %47

25:                                               ; preds = %20, %18, %16, %14, %12
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.vf610_gpio_port*, %struct.vf610_gpio_port** %6, align 8
  %28 = getelementptr inbounds %struct.vf610_gpio_port, %struct.vf610_gpio_port* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %31 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  store i32 %26, i32* %33, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @IRQ_TYPE_LEVEL_MASK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %25
  %39 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %40 = load i32, i32* @handle_level_irq, align 4
  %41 = call i32 @irq_set_handler_locked(%struct.irq_data* %39, i32 %40)
  br label %46

42:                                               ; preds = %25
  %43 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %44 = load i32, i32* @handle_edge_irq, align 4
  %45 = call i32 @irq_set_handler_locked(%struct.irq_data* %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %38
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %22
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.vf610_gpio_port* @gpiochip_get_data(i32) #1

declare dso_local i32 @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @irq_set_handler_locked(%struct.irq_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
