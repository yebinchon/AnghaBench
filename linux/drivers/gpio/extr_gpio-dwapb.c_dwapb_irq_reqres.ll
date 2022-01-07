; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-dwapb.c_dwapb_irq_reqres.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-dwapb.c_dwapb_irq_reqres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.irq_chip_generic = type { %struct.dwapb_gpio* }
%struct.dwapb_gpio = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.gpio_chip }
%struct.gpio_chip = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"unable to lock HW IRQ %lu for IRQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*)* @dwapb_irq_reqres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwapb_irq_reqres(%struct.irq_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca %struct.irq_chip_generic*, align 8
  %5 = alloca %struct.dwapb_gpio*, align 8
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %9 = call %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data* %8)
  store %struct.irq_chip_generic* %9, %struct.irq_chip_generic** %4, align 8
  %10 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %4, align 8
  %11 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %10, i32 0, i32 0
  %12 = load %struct.dwapb_gpio*, %struct.dwapb_gpio** %11, align 8
  store %struct.dwapb_gpio* %12, %struct.dwapb_gpio** %5, align 8
  %13 = load %struct.dwapb_gpio*, %struct.dwapb_gpio** %5, align 8
  %14 = getelementptr inbounds %struct.dwapb_gpio, %struct.dwapb_gpio* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.gpio_chip* %17, %struct.gpio_chip** %6, align 8
  %18 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %19 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %20 = call i32 @irqd_to_hwirq(%struct.irq_data* %19)
  %21 = call i32 @gpiochip_lock_as_irq(%struct.gpio_chip* %18, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %1
  %25 = load %struct.dwapb_gpio*, %struct.dwapb_gpio** %5, align 8
  %26 = getelementptr inbounds %struct.dwapb_gpio, %struct.dwapb_gpio* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %29 = call i32 @irqd_to_hwirq(%struct.irq_data* %28)
  %30 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %2, align 4
  br label %33

32:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %24
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @gpiochip_lock_as_irq(%struct.gpio_chip*, i32) #1

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
