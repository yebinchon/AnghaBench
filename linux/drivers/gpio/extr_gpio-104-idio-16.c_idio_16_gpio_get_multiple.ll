; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-104-idio-16.c_idio_16_gpio_get_multiple.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-104-idio-16.c_idio_16_gpio_get_multiple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.idio_16_gpio = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i64*, i64*)* @idio_16_gpio_get_multiple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idio_16_gpio_get_multiple(%struct.gpio_chip* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.idio_16_gpio*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %9 = call %struct.idio_16_gpio* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.idio_16_gpio* %9, %struct.idio_16_gpio** %7, align 8
  %10 = load i64*, i64** %6, align 8
  store i64 0, i64* %10, align 8
  %11 = load i64*, i64** %5, align 8
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @GENMASK(i32 23, i32 16)
  %14 = and i64 %12, %13
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %7, align 8
  %18 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 1
  %21 = call i64 @inb(i64 %20)
  %22 = shl i64 %21, 16
  %23 = load i64*, i64** %6, align 8
  %24 = load i64, i64* %23, align 8
  %25 = or i64 %24, %22
  store i64 %25, i64* %23, align 8
  br label %26

26:                                               ; preds = %16, %3
  %27 = load i64*, i64** %5, align 8
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @GENMASK(i32 31, i32 24)
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %7, align 8
  %34 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 5
  %37 = call i64 @inb(i64 %36)
  %38 = shl i64 %37, 24
  %39 = load i64*, i64** %6, align 8
  %40 = load i64, i64* %39, align 8
  %41 = or i64 %40, %38
  store i64 %41, i64* %39, align 8
  br label %42

42:                                               ; preds = %32, %26
  ret i32 0
}

declare dso_local %struct.idio_16_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i64 @GENMASK(i32, i32) #1

declare dso_local i64 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
