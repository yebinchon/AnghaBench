; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-zynq.c_zynq_gpio_irqhandler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-zynq.c_zynq_gpio_irqhandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.zynq_gpio = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.irq_chip = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @zynq_gpio_irqhandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zynq_gpio_irqhandler(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.zynq_gpio*, align 8
  %7 = alloca %struct.irq_chip*, align 8
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %8 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %9 = call i32 @irq_desc_get_handler_data(%struct.irq_desc* %8)
  %10 = call %struct.zynq_gpio* @gpiochip_get_data(i32 %9)
  store %struct.zynq_gpio* %10, %struct.zynq_gpio** %6, align 8
  %11 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %12 = call %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* %11)
  store %struct.irq_chip* %12, %struct.irq_chip** %7, align 8
  %13 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %14 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %15 = call i32 @chained_irq_enter(%struct.irq_chip* %13, %struct.irq_desc* %14)
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %46, %1
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.zynq_gpio*, %struct.zynq_gpio** %6, align 8
  %19 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ult i32 %17, %22
  br i1 %23, label %24, label %49

24:                                               ; preds = %16
  %25 = load %struct.zynq_gpio*, %struct.zynq_gpio** %6, align 8
  %26 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @ZYNQ_GPIO_INTSTS_OFFSET(i32 %28)
  %30 = add nsw i64 %27, %29
  %31 = call i32 @readl_relaxed(i64 %30)
  store i32 %31, i32* %3, align 4
  %32 = load %struct.zynq_gpio*, %struct.zynq_gpio** %6, align 8
  %33 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @ZYNQ_GPIO_INTMASK_OFFSET(i32 %35)
  %37 = add nsw i64 %34, %36
  %38 = call i32 @readl_relaxed(i64 %37)
  store i32 %38, i32* %4, align 4
  %39 = load %struct.zynq_gpio*, %struct.zynq_gpio** %6, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %4, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = call i32 @zynq_gpio_handle_bank_irq(%struct.zynq_gpio* %39, i32 %40, i32 %44)
  br label %46

46:                                               ; preds = %24
  %47 = load i32, i32* %5, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %16

49:                                               ; preds = %16
  %50 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %51 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %52 = call i32 @chained_irq_exit(%struct.irq_chip* %50, %struct.irq_desc* %51)
  ret void
}

declare dso_local %struct.zynq_gpio* @gpiochip_get_data(i32) #1

declare dso_local i32 @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc*) #1

declare dso_local i32 @chained_irq_enter(%struct.irq_chip*, %struct.irq_desc*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i64 @ZYNQ_GPIO_INTSTS_OFFSET(i32) #1

declare dso_local i64 @ZYNQ_GPIO_INTMASK_OFFSET(i32) #1

declare dso_local i32 @zynq_gpio_handle_bank_irq(%struct.zynq_gpio*, i32, i32) #1

declare dso_local i32 @chained_irq_exit(%struct.irq_chip*, %struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
