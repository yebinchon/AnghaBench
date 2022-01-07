; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-meson-gpio.c_meson_gpio_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-meson-gpio.c_meson_gpio_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.meson_gpio_irq_controller* }
%struct.meson_gpio_irq_controller = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @meson_gpio_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_gpio_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.meson_gpio_irq_controller*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %10 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.meson_gpio_irq_controller*, %struct.meson_gpio_irq_controller** %12, align 8
  store %struct.meson_gpio_irq_controller* %13, %struct.meson_gpio_irq_controller** %6, align 8
  %14 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %15 = call i32* @irq_data_get_irq_chip_data(%struct.irq_data* %14)
  store i32* %15, i32** %7, align 8
  %16 = load %struct.meson_gpio_irq_controller*, %struct.meson_gpio_irq_controller** %6, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @meson_gpio_irq_type_setup(%struct.meson_gpio_irq_controller* %16, i32 %17, i32* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %29

24:                                               ; preds = %2
  %25 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @meson_gpio_irq_type_output(i32 %26)
  %28 = call i32 @irq_chip_set_type_parent(%struct.irq_data* %25, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %24, %22
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @meson_gpio_irq_type_setup(%struct.meson_gpio_irq_controller*, i32, i32*) #1

declare dso_local i32 @irq_chip_set_type_parent(%struct.irq_data*, i32) #1

declare dso_local i32 @meson_gpio_irq_type_output(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
