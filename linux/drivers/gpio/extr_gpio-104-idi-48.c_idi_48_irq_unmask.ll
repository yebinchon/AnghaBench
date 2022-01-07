; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-104-idi-48.c_idi_48_irq_unmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-104-idi-48.c_idi_48_irq_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.idi_48_gpio = type { i32*, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @idi_48_irq_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idi_48_irq_unmask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca %struct.idi_48_gpio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %11 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %12 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %11)
  store %struct.gpio_chip* %12, %struct.gpio_chip** %3, align 8
  %13 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %14 = call %struct.idi_48_gpio* @gpiochip_get_data(%struct.gpio_chip* %13)
  store %struct.idi_48_gpio* %14, %struct.idi_48_gpio** %4, align 8
  %15 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %16 = call i32 @irqd_to_hwirq(%struct.irq_data* %15)
  store i32 %16, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %75, %1
  %18 = load i32, i32* %6, align 4
  %19 = icmp ult i32 %18, 48
  br i1 %19, label %20, label %78

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = add i32 %22, 8
  %24 = icmp ult i32 %21, %23
  br i1 %24, label %25, label %74

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = sub i32 %26, %27
  %29 = call i32 @BIT(i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = udiv i32 %30, 8
  store i32 %31, i32* %8, align 4
  %32 = load %struct.idi_48_gpio*, %struct.idi_48_gpio** %4, align 8
  %33 = getelementptr inbounds %struct.idi_48_gpio, %struct.idi_48_gpio* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.idi_48_gpio*, %struct.idi_48_gpio** %4, align 8
  %41 = getelementptr inbounds %struct.idi_48_gpio, %struct.idi_48_gpio* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %39
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %73, label %50

50:                                               ; preds = %25
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @BIT(i32 %51)
  %53 = load %struct.idi_48_gpio*, %struct.idi_48_gpio** %4, align 8
  %54 = getelementptr inbounds %struct.idi_48_gpio, %struct.idi_48_gpio* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load %struct.idi_48_gpio*, %struct.idi_48_gpio** %4, align 8
  %58 = getelementptr inbounds %struct.idi_48_gpio, %struct.idi_48_gpio* %57, i32 0, i32 2
  %59 = load i64, i64* %10, align 8
  %60 = call i32 @raw_spin_lock_irqsave(i32* %58, i64 %59)
  %61 = load %struct.idi_48_gpio*, %struct.idi_48_gpio** %4, align 8
  %62 = getelementptr inbounds %struct.idi_48_gpio, %struct.idi_48_gpio* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.idi_48_gpio*, %struct.idi_48_gpio** %4, align 8
  %65 = getelementptr inbounds %struct.idi_48_gpio, %struct.idi_48_gpio* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 7
  %68 = call i32 @outb(i32 %63, i64 %67)
  %69 = load %struct.idi_48_gpio*, %struct.idi_48_gpio** %4, align 8
  %70 = getelementptr inbounds %struct.idi_48_gpio, %struct.idi_48_gpio* %69, i32 0, i32 2
  %71 = load i64, i64* %10, align 8
  %72 = call i32 @raw_spin_unlock_irqrestore(i32* %70, i64 %71)
  br label %73

73:                                               ; preds = %50, %25
  br label %78

74:                                               ; preds = %20
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %6, align 4
  %77 = add i32 %76, 8
  store i32 %77, i32* %6, align 4
  br label %17

78:                                               ; preds = %73, %17
  ret void
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.idi_48_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
