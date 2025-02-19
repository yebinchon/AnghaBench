; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-crystalcove.c_crystalcove_bus_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-crystalcove.c_crystalcove_bus_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.crystalcove_gpio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @crystalcove_bus_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crystalcove_bus_lock(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.crystalcove_gpio*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %4 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %5 = call i32 @irq_data_get_irq_chip_data(%struct.irq_data* %4)
  %6 = call %struct.crystalcove_gpio* @gpiochip_get_data(i32 %5)
  store %struct.crystalcove_gpio* %6, %struct.crystalcove_gpio** %3, align 8
  %7 = load %struct.crystalcove_gpio*, %struct.crystalcove_gpio** %3, align 8
  %8 = getelementptr inbounds %struct.crystalcove_gpio, %struct.crystalcove_gpio* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  ret void
}

declare dso_local %struct.crystalcove_gpio* @gpiochip_get_data(i32) #1

declare dso_local i32 @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @mutex_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
