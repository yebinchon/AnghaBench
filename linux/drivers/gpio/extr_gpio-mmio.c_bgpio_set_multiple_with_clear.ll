; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mmio.c_bgpio_set_multiple_with_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mmio.c_bgpio_set_multiple_with_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32, i32 (i32, i64)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i64*, i64*)* @bgpio_set_multiple_with_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgpio_set_multiple_with_clear(%struct.gpio_chip* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = load i64*, i64** %5, align 8
  %11 = load i64*, i64** %6, align 8
  %12 = call i32 @bgpio_multiple_get_masks(%struct.gpio_chip* %9, i64* %10, i64* %11, i64* %7, i64* %8)
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %17 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %16, i32 0, i32 1
  %18 = load i32 (i32, i64)*, i32 (i32, i64)** %17, align 8
  %19 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %20 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 %18(i32 %21, i64 %22)
  br label %24

24:                                               ; preds = %15, %3
  %25 = load i64, i64* %8, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %29 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %28, i32 0, i32 1
  %30 = load i32 (i32, i64)*, i32 (i32, i64)** %29, align 8
  %31 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %32 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i32 %30(i32 %33, i64 %34)
  br label %36

36:                                               ; preds = %27, %24
  ret void
}

declare dso_local i32 @bgpio_multiple_get_masks(%struct.gpio_chip*, i64*, i64*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
