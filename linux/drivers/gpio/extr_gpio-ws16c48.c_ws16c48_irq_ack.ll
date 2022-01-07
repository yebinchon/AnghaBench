; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ws16c48.c_ws16c48_irq_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ws16c48.c_ws16c48_irq_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.ws16c48_gpio = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @ws16c48_irq_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ws16c48_irq_ack(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca %struct.ws16c48_gpio*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %10 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %11 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %10)
  store %struct.gpio_chip* %11, %struct.gpio_chip** %3, align 8
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %13 = call %struct.ws16c48_gpio* @gpiochip_get_data(%struct.gpio_chip* %12)
  store %struct.ws16c48_gpio* %13, %struct.ws16c48_gpio** %4, align 8
  %14 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %15 = call i64 @irqd_to_hwirq(%struct.irq_data* %14)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = udiv i64 %16, 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %6, align 4
  %19 = load i64, i64* %5, align 8
  %20 = urem i64 %19, 8
  %21 = call i32 @BIT(i64 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ugt i32 %22, 2
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %73

25:                                               ; preds = %1
  %26 = load %struct.ws16c48_gpio*, %struct.ws16c48_gpio** %4, align 8
  %27 = getelementptr inbounds %struct.ws16c48_gpio, %struct.ws16c48_gpio* %26, i32 0, i32 1
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @raw_spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.ws16c48_gpio*, %struct.ws16c48_gpio** %4, align 8
  %31 = getelementptr inbounds %struct.ws16c48_gpio, %struct.ws16c48_gpio* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = mul i32 8, %33
  %35 = ashr i32 %32, %34
  store i32 %35, i32* %9, align 4
  %36 = load %struct.ws16c48_gpio*, %struct.ws16c48_gpio** %4, align 8
  %37 = getelementptr inbounds %struct.ws16c48_gpio, %struct.ws16c48_gpio* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 7
  %40 = call i32 @outb(i32 128, i64 %39)
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %7, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = load %struct.ws16c48_gpio*, %struct.ws16c48_gpio** %4, align 8
  %46 = getelementptr inbounds %struct.ws16c48_gpio, %struct.ws16c48_gpio* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 8
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = call i32 @outb(i32 %44, i64 %51)
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.ws16c48_gpio*, %struct.ws16c48_gpio** %4, align 8
  %57 = getelementptr inbounds %struct.ws16c48_gpio, %struct.ws16c48_gpio* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 8
  %60 = load i32, i32* %6, align 4
  %61 = zext i32 %60 to i64
  %62 = add nsw i64 %59, %61
  %63 = call i32 @outb(i32 %55, i64 %62)
  %64 = load %struct.ws16c48_gpio*, %struct.ws16c48_gpio** %4, align 8
  %65 = getelementptr inbounds %struct.ws16c48_gpio, %struct.ws16c48_gpio* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 7
  %68 = call i32 @outb(i32 192, i64 %67)
  %69 = load %struct.ws16c48_gpio*, %struct.ws16c48_gpio** %4, align 8
  %70 = getelementptr inbounds %struct.ws16c48_gpio, %struct.ws16c48_gpio* %69, i32 0, i32 1
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @raw_spin_unlock_irqrestore(i32* %70, i64 %71)
  br label %73

73:                                               ; preds = %25, %24
  ret void
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.ws16c48_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i64 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
