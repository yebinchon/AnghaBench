; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-dwapb.c_dwapb_gpio_set_debounce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-dwapb.c_dwapb_gpio_set_debounce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.dwapb_gpio_port = type { %struct.dwapb_gpio* }
%struct.dwapb_gpio = type { i32 }

@GPIO_PORTA_DEBOUNCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @dwapb_gpio_set_debounce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwapb_gpio_set_debounce(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dwapb_gpio_port*, align 8
  %8 = alloca %struct.dwapb_gpio*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %13 = call %struct.dwapb_gpio_port* @gpiochip_get_data(%struct.gpio_chip* %12)
  store %struct.dwapb_gpio_port* %13, %struct.dwapb_gpio_port** %7, align 8
  %14 = load %struct.dwapb_gpio_port*, %struct.dwapb_gpio_port** %7, align 8
  %15 = getelementptr inbounds %struct.dwapb_gpio_port, %struct.dwapb_gpio_port* %14, i32 0, i32 0
  %16 = load %struct.dwapb_gpio*, %struct.dwapb_gpio** %15, align 8
  store %struct.dwapb_gpio* %16, %struct.dwapb_gpio** %8, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @BIT(i32 %17)
  store i64 %18, i64* %11, align 8
  %19 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %20 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %19, i32 0, i32 0
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.dwapb_gpio*, %struct.dwapb_gpio** %8, align 8
  %24 = load i32, i32* @GPIO_PORTA_DEBOUNCE, align 4
  %25 = call i64 @dwapb_read(%struct.dwapb_gpio* %23, i32 %24)
  store i64 %25, i64* %10, align 8
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %3
  %29 = load %struct.dwapb_gpio*, %struct.dwapb_gpio** %8, align 8
  %30 = load i32, i32* @GPIO_PORTA_DEBOUNCE, align 4
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* %11, align 8
  %33 = or i64 %31, %32
  %34 = call i32 @dwapb_write(%struct.dwapb_gpio* %29, i32 %30, i64 %33)
  br label %43

35:                                               ; preds = %3
  %36 = load %struct.dwapb_gpio*, %struct.dwapb_gpio** %8, align 8
  %37 = load i32, i32* @GPIO_PORTA_DEBOUNCE, align 4
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %11, align 8
  %40 = xor i64 %39, -1
  %41 = and i64 %38, %40
  %42 = call i32 @dwapb_write(%struct.dwapb_gpio* %36, i32 %37, i64 %41)
  br label %43

43:                                               ; preds = %35, %28
  %44 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %45 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %44, i32 0, i32 0
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  ret i32 0
}

declare dso_local %struct.dwapb_gpio_port* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @dwapb_read(%struct.dwapb_gpio*, i32) #1

declare dso_local i32 @dwapb_write(%struct.dwapb_gpio*, i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
