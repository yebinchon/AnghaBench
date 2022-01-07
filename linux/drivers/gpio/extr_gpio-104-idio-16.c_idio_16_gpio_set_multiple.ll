; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-104-idio-16.c_idio_16_gpio_set_multiple.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-104-idio-16.c_idio_16_gpio_set_multiple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.idio_16_gpio = type { i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i64*, i64*)* @idio_16_gpio_set_multiple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idio_16_gpio_set_multiple(%struct.gpio_chip* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.idio_16_gpio*, align 8
  %8 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call %struct.idio_16_gpio* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.idio_16_gpio* %10, %struct.idio_16_gpio** %7, align 8
  %11 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %7, align 8
  %12 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %11, i32 0, i32 1
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @raw_spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load i64*, i64** %5, align 8
  %16 = load i64, i64* %15, align 8
  %17 = xor i64 %16, -1
  %18 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %7, align 8
  %19 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = and i64 %20, %17
  store i64 %21, i64* %19, align 8
  %22 = load i64*, i64** %5, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load i64*, i64** %6, align 8
  %25 = load i64, i64* %24, align 8
  %26 = and i64 %23, %25
  %27 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %7, align 8
  %28 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = or i64 %29, %26
  store i64 %30, i64* %28, align 8
  %31 = load i64*, i64** %5, align 8
  %32 = load i64, i64* %31, align 8
  %33 = and i64 %32, 255
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %3
  %36 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %7, align 8
  %37 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %7, align 8
  %41 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @outb(i32 %39, i64 %42)
  br label %44

44:                                               ; preds = %35, %3
  %45 = load i64*, i64** %5, align 8
  %46 = load i64, i64* %45, align 8
  %47 = lshr i64 %46, 8
  %48 = and i64 %47, 255
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %7, align 8
  %52 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = lshr i64 %53, 8
  %55 = trunc i64 %54 to i32
  %56 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %7, align 8
  %57 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 4
  %60 = call i32 @outb(i32 %55, i64 %59)
  br label %61

61:                                               ; preds = %50, %44
  %62 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %7, align 8
  %63 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %62, i32 0, i32 1
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @raw_spin_unlock_irqrestore(i32* %63, i64 %64)
  ret void
}

declare dso_local %struct.idio_16_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
