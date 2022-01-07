; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mmio.c_bgpio_get_multiple_be.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mmio.c_bgpio_get_multiple_be.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32, i64 (i32)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i64*, i64*)* @bgpio_get_multiple_be to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bgpio_get_multiple_be(%struct.gpio_chip* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  store i64 0, i64* %7, align 8
  %10 = load i64*, i64** %5, align 8
  %11 = load i64, i64* %10, align 8
  %12 = xor i64 %11, -1
  %13 = load i64*, i64** %6, align 8
  %14 = load i64, i64* %13, align 8
  %15 = and i64 %14, %12
  store i64 %15, i64* %13, align 8
  store i32 -1, i32* %9, align 4
  br label %16

16:                                               ; preds = %28, %3
  %17 = load i64*, i64** %5, align 8
  %18 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %19 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %9, align 4
  %22 = add nsw i32 %21, 1
  %23 = call i32 @find_next_bit(i64* %17, i32 %20, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %25 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %16
  %29 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i64 @bgpio_line2mask(%struct.gpio_chip* %29, i32 %30)
  %32 = load i64, i64* %7, align 8
  %33 = or i64 %32, %31
  store i64 %33, i64* %7, align 8
  br label %16

34:                                               ; preds = %16
  %35 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %36 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %35, i32 0, i32 1
  %37 = load i64 (i32)*, i64 (i32)** %36, align 8
  %38 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %39 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i64 %37(i32 %40)
  %42 = load i64, i64* %7, align 8
  %43 = and i64 %41, %42
  store i64 %43, i64* %8, align 8
  store i32 -1, i32* %9, align 4
  br label %44

44:                                               ; preds = %55, %34
  %45 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %46 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  %50 = call i32 @find_next_bit(i64* %8, i32 %47, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %52 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %44
  %56 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i64 @bgpio_line2mask(%struct.gpio_chip* %56, i32 %57)
  %59 = load i64*, i64** %6, align 8
  %60 = load i64, i64* %59, align 8
  %61 = or i64 %60, %58
  store i64 %61, i64* %59, align 8
  br label %44

62:                                               ; preds = %44
  ret i32 0
}

declare dso_local i32 @find_next_bit(i64*, i32, i32) #1

declare dso_local i64 @bgpio_line2mask(%struct.gpio_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
