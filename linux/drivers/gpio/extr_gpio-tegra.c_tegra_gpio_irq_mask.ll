; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tegra.c_tegra_gpio_irq_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tegra.c_tegra_gpio_irq_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.tegra_gpio_bank = type { %struct.tegra_gpio_info* }
%struct.tegra_gpio_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @tegra_gpio_irq_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_gpio_irq_mask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.tegra_gpio_bank*, align 8
  %4 = alloca %struct.tegra_gpio_info*, align 8
  %5 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = call %struct.tegra_gpio_bank* @irq_data_get_irq_chip_data(%struct.irq_data* %6)
  store %struct.tegra_gpio_bank* %7, %struct.tegra_gpio_bank** %3, align 8
  %8 = load %struct.tegra_gpio_bank*, %struct.tegra_gpio_bank** %3, align 8
  %9 = getelementptr inbounds %struct.tegra_gpio_bank, %struct.tegra_gpio_bank* %8, i32 0, i32 0
  %10 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %9, align 8
  store %struct.tegra_gpio_info* %10, %struct.tegra_gpio_info** %4, align 8
  %11 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %12 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %15 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @GPIO_MSK_INT_ENB(%struct.tegra_gpio_info* %15, i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @tegra_gpio_mask_write(%struct.tegra_gpio_info* %14, i32 %17, i32 %18, i32 0)
  ret void
}

declare dso_local %struct.tegra_gpio_bank* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @tegra_gpio_mask_write(%struct.tegra_gpio_info*, i32, i32, i32) #1

declare dso_local i32 @GPIO_MSK_INT_ENB(%struct.tegra_gpio_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
