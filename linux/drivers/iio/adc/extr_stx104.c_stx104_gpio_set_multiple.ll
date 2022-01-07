; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stx104.c_stx104_gpio_set_multiple.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stx104.c_stx104_gpio_set_multiple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.stx104_gpio = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i64*, i64*)* @stx104_gpio_set_multiple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stx104_gpio_set_multiple(%struct.gpio_chip* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.stx104_gpio*, align 8
  %8 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call %struct.stx104_gpio* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.stx104_gpio* %10, %struct.stx104_gpio** %7, align 8
  %11 = load i64*, i64** %5, align 8
  %12 = load i64, i64* %11, align 8
  %13 = and i64 %12, 240
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %54

16:                                               ; preds = %3
  %17 = load i64*, i64** %5, align 8
  %18 = load i64, i64* %17, align 8
  %19 = lshr i64 %18, 4
  store i64 %19, i64* %17, align 8
  %20 = load i64*, i64** %6, align 8
  %21 = load i64, i64* %20, align 8
  %22 = lshr i64 %21, 4
  store i64 %22, i64* %20, align 8
  %23 = load %struct.stx104_gpio*, %struct.stx104_gpio** %7, align 8
  %24 = getelementptr inbounds %struct.stx104_gpio, %struct.stx104_gpio* %23, i32 0, i32 1
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load i64*, i64** %5, align 8
  %28 = load i64, i64* %27, align 8
  %29 = xor i64 %28, -1
  %30 = load %struct.stx104_gpio*, %struct.stx104_gpio** %7, align 8
  %31 = getelementptr inbounds %struct.stx104_gpio, %struct.stx104_gpio* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = and i64 %32, %29
  store i64 %33, i64* %31, align 8
  %34 = load i64*, i64** %5, align 8
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** %6, align 8
  %37 = load i64, i64* %36, align 8
  %38 = and i64 %35, %37
  %39 = load %struct.stx104_gpio*, %struct.stx104_gpio** %7, align 8
  %40 = getelementptr inbounds %struct.stx104_gpio, %struct.stx104_gpio* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = or i64 %41, %38
  store i64 %42, i64* %40, align 8
  %43 = load %struct.stx104_gpio*, %struct.stx104_gpio** %7, align 8
  %44 = getelementptr inbounds %struct.stx104_gpio, %struct.stx104_gpio* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.stx104_gpio*, %struct.stx104_gpio** %7, align 8
  %47 = getelementptr inbounds %struct.stx104_gpio, %struct.stx104_gpio* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @outb(i64 %45, i32 %48)
  %50 = load %struct.stx104_gpio*, %struct.stx104_gpio** %7, align 8
  %51 = getelementptr inbounds %struct.stx104_gpio, %struct.stx104_gpio* %50, i32 0, i32 1
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  br label %54

54:                                               ; preds = %16, %15
  ret void
}

declare dso_local %struct.stx104_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
