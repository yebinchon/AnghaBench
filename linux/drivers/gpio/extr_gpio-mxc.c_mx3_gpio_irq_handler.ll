; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mxc.c_mx3_gpio_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mxc.c_mx3_gpio_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.mxc_gpio_port = type { i64 }
%struct.irq_chip = type { i32 }

@GPIO_ISR = common dso_local global i64 0, align 8
@GPIO_IMR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @mx3_gpio_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mx3_gpio_irq_handler(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mxc_gpio_port*, align 8
  %5 = alloca %struct.irq_chip*, align 8
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %6 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %7 = call %struct.mxc_gpio_port* @irq_desc_get_handler_data(%struct.irq_desc* %6)
  store %struct.mxc_gpio_port* %7, %struct.mxc_gpio_port** %4, align 8
  %8 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %9 = call %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* %8)
  store %struct.irq_chip* %9, %struct.irq_chip** %5, align 8
  %10 = load %struct.irq_chip*, %struct.irq_chip** %5, align 8
  %11 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %12 = call i32 @chained_irq_enter(%struct.irq_chip* %10, %struct.irq_desc* %11)
  %13 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %4, align 8
  %14 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @GPIO_ISR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl(i64 %17)
  %19 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %4, align 8
  %20 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @GPIO_IMR, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readl(i64 %23)
  %25 = and i32 %18, %24
  store i32 %25, i32* %3, align 4
  %26 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %4, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @mxc_gpio_irq_handler(%struct.mxc_gpio_port* %26, i32 %27)
  %29 = load %struct.irq_chip*, %struct.irq_chip** %5, align 8
  %30 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %31 = call i32 @chained_irq_exit(%struct.irq_chip* %29, %struct.irq_desc* %30)
  ret void
}

declare dso_local %struct.mxc_gpio_port* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc*) #1

declare dso_local i32 @chained_irq_enter(%struct.irq_chip*, %struct.irq_desc*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @mxc_gpio_irq_handler(%struct.mxc_gpio_port*, i32) #1

declare dso_local i32 @chained_irq_exit(%struct.irq_chip*, %struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
