; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-em.c_em_gio_irq_reqres.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-em.c_em_gio_irq_reqres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.em_gio_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"unable to lock HW IRQ %lu for IRQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*)* @em_gio_irq_reqres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_gio_irq_reqres(%struct.irq_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca %struct.em_gio_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %7 = call %struct.em_gio_priv* @irq_data_get_irq_chip_data(%struct.irq_data* %6)
  store %struct.em_gio_priv* %7, %struct.em_gio_priv** %4, align 8
  %8 = load %struct.em_gio_priv*, %struct.em_gio_priv** %4, align 8
  %9 = getelementptr inbounds %struct.em_gio_priv, %struct.em_gio_priv* %8, i32 0, i32 0
  %10 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %11 = call i32 @irqd_to_hwirq(%struct.irq_data* %10)
  %12 = call i32 @gpiochip_lock_as_irq(%struct.TYPE_2__* %9, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.em_gio_priv*, %struct.em_gio_priv** %4, align 8
  %17 = getelementptr inbounds %struct.em_gio_priv, %struct.em_gio_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %21 = call i32 @irqd_to_hwirq(%struct.irq_data* %20)
  %22 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %15
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.em_gio_priv* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @gpiochip_lock_as_irq(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
