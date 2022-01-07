; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-omap.c_omap_gpio_irq_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-omap.c_omap_gpio_irq_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_bank = type { i32, i32, i32 }

@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @omap_gpio_irq_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_gpio_irq_shutdown(%struct.irq_data* %0) #0 {
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
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @BIT(i32 %15)
  %17 = xor i32 %16, -1
  %18 = load %struct.gpio_bank*, %struct.gpio_bank** %3, align 8
  %19 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.gpio_bank*, %struct.gpio_bank** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %25 = call i32 @omap_set_gpio_triggering(%struct.gpio_bank* %22, i32 %23, i32 %24)
  %26 = load %struct.gpio_bank*, %struct.gpio_bank** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @omap_clear_gpio_irqstatus(%struct.gpio_bank* %26, i32 %27)
  %29 = load %struct.gpio_bank*, %struct.gpio_bank** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @omap_set_gpio_irqenable(%struct.gpio_bank* %29, i32 %30, i32 0)
  %32 = load %struct.gpio_bank*, %struct.gpio_bank** %3, align 8
  %33 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @LINE_USED(i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %1
  %39 = load %struct.gpio_bank*, %struct.gpio_bank** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @omap_clear_gpio_debounce(%struct.gpio_bank* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %1
  %43 = load %struct.gpio_bank*, %struct.gpio_bank** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @omap_disable_gpio_module(%struct.gpio_bank* %43, i32 %44)
  %46 = load %struct.gpio_bank*, %struct.gpio_bank** %3, align 8
  %47 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %46, i32 0, i32 0
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @raw_spin_unlock_irqrestore(i32* %47, i64 %48)
  ret void
}

declare dso_local %struct.gpio_bank* @omap_irq_data_get_bank(%struct.irq_data*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @omap_set_gpio_triggering(%struct.gpio_bank*, i32, i32) #1

declare dso_local i32 @omap_clear_gpio_irqstatus(%struct.gpio_bank*, i32) #1

declare dso_local i32 @omap_set_gpio_irqenable(%struct.gpio_bank*, i32, i32) #1

declare dso_local i32 @LINE_USED(i32, i32) #1

declare dso_local i32 @omap_clear_gpio_debounce(%struct.gpio_bank*, i32) #1

declare dso_local i32 @omap_disable_gpio_module(%struct.gpio_bank*, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
