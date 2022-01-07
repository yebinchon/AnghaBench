; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-omap.c_omap_gpio_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-omap.c_omap_gpio_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.gpio_bank = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32)* @omap_gpio_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_gpio_free(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_bank*, align 8
  %6 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %8 = call %struct.gpio_bank* @gpiochip_get_data(%struct.gpio_chip* %7)
  store %struct.gpio_bank* %8, %struct.gpio_bank** %5, align 8
  %9 = load %struct.gpio_bank*, %struct.gpio_bank** %5, align 8
  %10 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %9, i32 0, i32 0
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @raw_spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @BIT(i32 %13)
  %15 = xor i32 %14, -1
  %16 = load %struct.gpio_bank*, %struct.gpio_bank** %5, align 8
  %17 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.gpio_bank*, %struct.gpio_bank** %5, align 8
  %21 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @LINE_USED(i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %2
  %27 = load %struct.gpio_bank*, %struct.gpio_bank** %5, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @omap_set_gpio_direction(%struct.gpio_bank* %27, i32 %28, i32 1)
  %30 = load %struct.gpio_bank*, %struct.gpio_bank** %5, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @omap_clear_gpio_debounce(%struct.gpio_bank* %30, i32 %31)
  br label %33

33:                                               ; preds = %26, %2
  %34 = load %struct.gpio_bank*, %struct.gpio_bank** %5, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @omap_disable_gpio_module(%struct.gpio_bank* %34, i32 %35)
  %37 = load %struct.gpio_bank*, %struct.gpio_bank** %5, align 8
  %38 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %37, i32 0, i32 0
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @raw_spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %42 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pm_runtime_put(i32 %43)
  ret void
}

declare dso_local %struct.gpio_bank* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @LINE_USED(i32, i32) #1

declare dso_local i32 @omap_set_gpio_direction(%struct.gpio_bank*, i32, i32) #1

declare dso_local i32 @omap_clear_gpio_debounce(%struct.gpio_bank*, i32) #1

declare dso_local i32 @omap_disable_gpio_module(%struct.gpio_bank*, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
