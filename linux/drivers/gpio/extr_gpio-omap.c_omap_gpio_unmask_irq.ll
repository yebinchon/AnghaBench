; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-omap.c_omap_gpio_unmask_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-omap.c_omap_gpio_unmask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_bank = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @omap_gpio_unmask_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_gpio_unmask_irq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.gpio_bank*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = call %struct.gpio_bank* @omap_irq_data_get_bank(%struct.irq_data* %7)
  store %struct.gpio_bank* %8, %struct.gpio_bank** %3, align 8
  %9 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %10 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %13 = call i32 @irqd_get_trigger_type(%struct.irq_data* %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.gpio_bank*, %struct.gpio_bank** %3, align 8
  %15 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %14, i32 0, i32 0
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @raw_spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.gpio_bank*, %struct.gpio_bank** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @omap_set_gpio_irqenable(%struct.gpio_bank* %18, i32 %19, i32 1)
  %21 = load %struct.gpio_bank*, %struct.gpio_bank** %3, align 8
  %22 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %1
  %28 = load %struct.gpio_bank*, %struct.gpio_bank** %3, align 8
  %29 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %27
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %37 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load %struct.gpio_bank*, %struct.gpio_bank** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @omap_clear_gpio_irqstatus(%struct.gpio_bank* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %34, %27, %1
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.gpio_bank*, %struct.gpio_bank** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @omap_set_gpio_triggering(%struct.gpio_bank* %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %45
  %54 = load %struct.gpio_bank*, %struct.gpio_bank** %3, align 8
  %55 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %54, i32 0, i32 0
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @raw_spin_unlock_irqrestore(i32* %55, i64 %56)
  ret void
}

declare dso_local %struct.gpio_bank* @omap_irq_data_get_bank(%struct.irq_data*) #1

declare dso_local i32 @irqd_get_trigger_type(%struct.irq_data*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @omap_set_gpio_irqenable(%struct.gpio_bank*, i32, i32) #1

declare dso_local i32 @omap_clear_gpio_irqstatus(%struct.gpio_bank*, i32) #1

declare dso_local i32 @omap_set_gpio_triggering(%struct.gpio_bank*, i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
