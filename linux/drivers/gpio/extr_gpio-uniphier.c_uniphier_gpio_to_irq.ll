; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-uniphier.c_uniphier_gpio_to_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-uniphier.c_uniphier_gpio_to_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.irq_fwspec = type { i32, i32*, i32 }

@UNIPHIER_GPIO_IRQ_OFFSET = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @uniphier_gpio_to_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_gpio_to_irq(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_fwspec, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @UNIPHIER_GPIO_IRQ_OFFSET, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @ENXIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %33

13:                                               ; preds = %2
  %14 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %15 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @of_node_to_fwnode(i32 %18)
  %20 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %6, i32 0, i32 2
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %6, i32 0, i32 0
  store i32 2, i32* %21, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @UNIPHIER_GPIO_IRQ_OFFSET, align 4
  %24 = sub i32 %22, %23
  %25 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %6, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %29 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %6, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 %28, i32* %31, align 4
  %32 = call i32 @irq_create_fwspec_mapping(%struct.irq_fwspec* %6)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %13, %10
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @of_node_to_fwnode(i32) #1

declare dso_local i32 @irq_create_fwspec_mapping(%struct.irq_fwspec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
