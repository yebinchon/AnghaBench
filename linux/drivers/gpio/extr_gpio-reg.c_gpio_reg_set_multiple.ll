; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-reg.c_gpio_reg_set_multiple.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-reg.c_gpio_reg_set_multiple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.gpio_reg = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i64*, i64*)* @gpio_reg_set_multiple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_reg_set_multiple(%struct.gpio_chip* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.gpio_reg*, align 8
  %8 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call %struct.gpio_reg* @to_gpio_reg(%struct.gpio_chip* %9)
  store %struct.gpio_reg* %10, %struct.gpio_reg** %7, align 8
  %11 = load %struct.gpio_reg*, %struct.gpio_reg** %7, align 8
  %12 = getelementptr inbounds %struct.gpio_reg, %struct.gpio_reg* %11, i32 0, i32 1
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.gpio_reg*, %struct.gpio_reg** %7, align 8
  %16 = getelementptr inbounds %struct.gpio_reg, %struct.gpio_reg* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64*, i64** %5, align 8
  %19 = load i64, i64* %18, align 8
  %20 = xor i64 %19, -1
  %21 = and i64 %17, %20
  %22 = load i64*, i64** %6, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load i64*, i64** %5, align 8
  %25 = load i64, i64* %24, align 8
  %26 = and i64 %23, %25
  %27 = or i64 %21, %26
  %28 = load %struct.gpio_reg*, %struct.gpio_reg** %7, align 8
  %29 = getelementptr inbounds %struct.gpio_reg, %struct.gpio_reg* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.gpio_reg*, %struct.gpio_reg** %7, align 8
  %31 = getelementptr inbounds %struct.gpio_reg, %struct.gpio_reg* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.gpio_reg*, %struct.gpio_reg** %7, align 8
  %34 = getelementptr inbounds %struct.gpio_reg, %struct.gpio_reg* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @writel_relaxed(i64 %32, i32 %35)
  %37 = load %struct.gpio_reg*, %struct.gpio_reg** %7, align 8
  %38 = getelementptr inbounds %struct.gpio_reg, %struct.gpio_reg* %37, i32 0, i32 1
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  ret void
}

declare dso_local %struct.gpio_reg* @to_gpio_reg(%struct.gpio_chip*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel_relaxed(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
