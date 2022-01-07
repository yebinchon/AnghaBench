; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pcie-idio-24.c_idio_24_gpio_direction_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pcie-idio-24.c_idio_24_gpio_direction_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.idio_24_gpio = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @idio_24_gpio_direction_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idio_24_gpio_direction_input(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.idio_24_gpio*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %10 = call %struct.idio_24_gpio* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.idio_24_gpio* %10, %struct.idio_24_gpio** %5, align 8
  %11 = call i64 @BIT(i32 1)
  store i64 %11, i64* %8, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ugt i32 %12, 47
  br i1 %13, label %14, label %38

14:                                               ; preds = %2
  %15 = load %struct.idio_24_gpio*, %struct.idio_24_gpio** %5, align 8
  %16 = getelementptr inbounds %struct.idio_24_gpio, %struct.idio_24_gpio* %15, i32 0, i32 0
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @raw_spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.idio_24_gpio*, %struct.idio_24_gpio** %5, align 8
  %20 = getelementptr inbounds %struct.idio_24_gpio, %struct.idio_24_gpio* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i64 @ioread8(i32* %22)
  %24 = load i64, i64* %8, align 8
  %25 = xor i64 %24, -1
  %26 = and i64 %23, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.idio_24_gpio*, %struct.idio_24_gpio** %5, align 8
  %30 = getelementptr inbounds %struct.idio_24_gpio, %struct.idio_24_gpio* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @iowrite8(i32 %28, i32* %32)
  %34 = load %struct.idio_24_gpio*, %struct.idio_24_gpio** %5, align 8
  %35 = getelementptr inbounds %struct.idio_24_gpio, %struct.idio_24_gpio* %34, i32 0, i32 0
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @raw_spin_unlock_irqrestore(i32* %35, i64 %36)
  br label %38

38:                                               ; preds = %14, %2
  ret i32 0
}

declare dso_local %struct.idio_24_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @ioread8(i32*) #1

declare dso_local i32 @iowrite8(i32, i32*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
