; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-crystalcove.c_crystalcove_bus_sync_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-crystalcove.c_crystalcove_bus_sync_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.crystalcove_gpio = type { i32, i32 }

@UPDATE_IRQ_TYPE = common dso_local global i32 0, align 4
@UPDATE_IRQ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @crystalcove_bus_sync_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crystalcove_bus_sync_unlock(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.crystalcove_gpio*, align 8
  %4 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %5 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %6 = call i32 @irq_data_get_irq_chip_data(%struct.irq_data* %5)
  %7 = call %struct.crystalcove_gpio* @gpiochip_get_data(i32 %6)
  store %struct.crystalcove_gpio* %7, %struct.crystalcove_gpio** %3, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %9 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.crystalcove_gpio*, %struct.crystalcove_gpio** %3, align 8
  %12 = getelementptr inbounds %struct.crystalcove_gpio, %struct.crystalcove_gpio* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @UPDATE_IRQ_TYPE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.crystalcove_gpio*, %struct.crystalcove_gpio** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @crystalcove_update_irq_ctrl(%struct.crystalcove_gpio* %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %1
  %22 = load %struct.crystalcove_gpio*, %struct.crystalcove_gpio** %3, align 8
  %23 = getelementptr inbounds %struct.crystalcove_gpio, %struct.crystalcove_gpio* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @UPDATE_IRQ_MASK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load %struct.crystalcove_gpio*, %struct.crystalcove_gpio** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @crystalcove_update_irq_mask(%struct.crystalcove_gpio* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %21
  %33 = load %struct.crystalcove_gpio*, %struct.crystalcove_gpio** %3, align 8
  %34 = getelementptr inbounds %struct.crystalcove_gpio, %struct.crystalcove_gpio* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  %35 = load %struct.crystalcove_gpio*, %struct.crystalcove_gpio** %3, align 8
  %36 = getelementptr inbounds %struct.crystalcove_gpio, %struct.crystalcove_gpio* %35, i32 0, i32 1
  %37 = call i32 @mutex_unlock(i32* %36)
  ret void
}

declare dso_local %struct.crystalcove_gpio* @gpiochip_get_data(i32) #1

declare dso_local i32 @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @crystalcove_update_irq_ctrl(%struct.crystalcove_gpio*, i32) #1

declare dso_local i32 @crystalcove_update_irq_mask(%struct.crystalcove_gpio*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
