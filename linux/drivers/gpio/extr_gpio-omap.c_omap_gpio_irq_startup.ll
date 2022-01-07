; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-omap.c_omap_gpio_irq_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-omap.c_omap_gpio_irq_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_bank = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*)* @omap_gpio_irq_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_gpio_irq_startup(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.gpio_bank*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = call %struct.gpio_bank* @omap_irq_data_get_bank(%struct.irq_data* %6)
  store %struct.gpio_bank* %7, %struct.gpio_bank** %3, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %9 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.gpio_bank*, %struct.gpio_bank** %3, align 8
  %12 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %11, i32 0, i32 0
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @raw_spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.gpio_bank*, %struct.gpio_bank** %3, align 8
  %16 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @LINE_USED(i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %1
  %22 = load %struct.gpio_bank*, %struct.gpio_bank** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @omap_set_gpio_direction(%struct.gpio_bank* %22, i32 %23, i32 1)
  br label %25

25:                                               ; preds = %21, %1
  %26 = load %struct.gpio_bank*, %struct.gpio_bank** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @omap_enable_gpio_module(%struct.gpio_bank* %26, i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @BIT(i32 %29)
  %31 = load %struct.gpio_bank*, %struct.gpio_bank** %3, align 8
  %32 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.gpio_bank*, %struct.gpio_bank** %3, align 8
  %36 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %35, i32 0, i32 0
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @raw_spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %40 = call i32 @omap_gpio_unmask_irq(%struct.irq_data* %39)
  ret i32 0
}

declare dso_local %struct.gpio_bank* @omap_irq_data_get_bank(%struct.irq_data*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @LINE_USED(i32, i32) #1

declare dso_local i32 @omap_set_gpio_direction(%struct.gpio_bank*, i32, i32) #1

declare dso_local i32 @omap_enable_gpio_module(%struct.gpio_bank*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @omap_gpio_unmask_irq(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
