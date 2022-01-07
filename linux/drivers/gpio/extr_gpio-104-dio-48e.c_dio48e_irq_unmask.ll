; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-104-dio-48e.c_dio48e_irq_unmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-104-dio-48e.c_dio48e_irq_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.dio48e_gpio = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @dio48e_irq_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dio48e_irq_unmask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca %struct.dio48e_gpio*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %7)
  store %struct.gpio_chip* %8, %struct.gpio_chip** %3, align 8
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %10 = call %struct.dio48e_gpio* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.dio48e_gpio* %10, %struct.dio48e_gpio** %4, align 8
  %11 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %12 = call i64 @irqd_to_hwirq(%struct.irq_data* %11)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 19
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i64, i64* %5, align 8
  %17 = icmp ne i64 %16, 43
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %59

19:                                               ; preds = %15, %1
  %20 = load %struct.dio48e_gpio*, %struct.dio48e_gpio** %4, align 8
  %21 = getelementptr inbounds %struct.dio48e_gpio, %struct.dio48e_gpio* %20, i32 0, i32 0
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @raw_spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.dio48e_gpio*, %struct.dio48e_gpio** %4, align 8
  %25 = getelementptr inbounds %struct.dio48e_gpio, %struct.dio48e_gpio* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %19
  %29 = load %struct.dio48e_gpio*, %struct.dio48e_gpio** %4, align 8
  %30 = getelementptr inbounds %struct.dio48e_gpio, %struct.dio48e_gpio* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 15
  %33 = call i32 @outb(i32 0, i64 %32)
  %34 = load %struct.dio48e_gpio*, %struct.dio48e_gpio** %4, align 8
  %35 = getelementptr inbounds %struct.dio48e_gpio, %struct.dio48e_gpio* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 11
  %38 = call i32 @outb(i32 0, i64 %37)
  br label %39

39:                                               ; preds = %28, %19
  %40 = load i64, i64* %5, align 8
  %41 = icmp eq i64 %40, 19
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = call i32 @BIT(i32 0)
  %44 = load %struct.dio48e_gpio*, %struct.dio48e_gpio** %4, align 8
  %45 = getelementptr inbounds %struct.dio48e_gpio, %struct.dio48e_gpio* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %54

48:                                               ; preds = %39
  %49 = call i32 @BIT(i32 1)
  %50 = load %struct.dio48e_gpio*, %struct.dio48e_gpio** %4, align 8
  %51 = getelementptr inbounds %struct.dio48e_gpio, %struct.dio48e_gpio* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %48, %42
  %55 = load %struct.dio48e_gpio*, %struct.dio48e_gpio** %4, align 8
  %56 = getelementptr inbounds %struct.dio48e_gpio, %struct.dio48e_gpio* %55, i32 0, i32 0
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @raw_spin_unlock_irqrestore(i32* %56, i64 %57)
  br label %59

59:                                               ; preds = %54, %18
  ret void
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.dio48e_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i64 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
