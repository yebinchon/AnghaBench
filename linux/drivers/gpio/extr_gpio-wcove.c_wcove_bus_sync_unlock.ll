; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-wcove.c_wcove_bus_sync_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-wcove.c_wcove_bus_sync_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.wcove_gpio = type { i32, i32 }

@UPDATE_IRQ_TYPE = common dso_local global i32 0, align 4
@UPDATE_IRQ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @wcove_bus_sync_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wcove_bus_sync_unlock(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca %struct.wcove_gpio*, align 8
  %5 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %6)
  store %struct.gpio_chip* %7, %struct.gpio_chip** %3, align 8
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %9 = call %struct.wcove_gpio* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.wcove_gpio* %9, %struct.wcove_gpio** %4, align 8
  %10 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %11 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.wcove_gpio*, %struct.wcove_gpio** %4, align 8
  %14 = getelementptr inbounds %struct.wcove_gpio, %struct.wcove_gpio* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @UPDATE_IRQ_TYPE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.wcove_gpio*, %struct.wcove_gpio** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @wcove_update_irq_ctrl(%struct.wcove_gpio* %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %1
  %24 = load %struct.wcove_gpio*, %struct.wcove_gpio** %4, align 8
  %25 = getelementptr inbounds %struct.wcove_gpio, %struct.wcove_gpio* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @UPDATE_IRQ_MASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load %struct.wcove_gpio*, %struct.wcove_gpio** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @wcove_update_irq_mask(%struct.wcove_gpio* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %23
  %35 = load %struct.wcove_gpio*, %struct.wcove_gpio** %4, align 8
  %36 = getelementptr inbounds %struct.wcove_gpio, %struct.wcove_gpio* %35, i32 0, i32 0
  store i32 0, i32* %36, align 4
  %37 = load %struct.wcove_gpio*, %struct.wcove_gpio** %4, align 8
  %38 = getelementptr inbounds %struct.wcove_gpio, %struct.wcove_gpio* %37, i32 0, i32 1
  %39 = call i32 @mutex_unlock(i32* %38)
  ret void
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.wcove_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @wcove_update_irq_ctrl(%struct.wcove_gpio*, i32) #1

declare dso_local i32 @wcove_update_irq_mask(%struct.wcove_gpio*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
