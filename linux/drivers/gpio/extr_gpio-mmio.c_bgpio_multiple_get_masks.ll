; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mmio.c_bgpio_multiple_get_masks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mmio.c_bgpio_multiple_get_masks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i64*, i64*, i64*, i64*)* @bgpio_multiple_get_masks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgpio_multiple_get_masks(%struct.gpio_chip* %0, i64* %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %12 = load i64*, i64** %9, align 8
  store i64 0, i64* %12, align 8
  %13 = load i64*, i64** %10, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %51, %5
  %15 = load i32, i32* %11, align 4
  %16 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %17 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %54

20:                                               ; preds = %14
  %21 = load i64*, i64** %7, align 8
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %54

25:                                               ; preds = %20
  %26 = load i32, i32* %11, align 4
  %27 = load i64*, i64** %7, align 8
  %28 = call i64 @__test_and_clear_bit(i32 %26, i64* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %25
  %31 = load i32, i32* %11, align 4
  %32 = load i64*, i64** %8, align 8
  %33 = call i64 @test_bit(i32 %31, i64* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i64 @bgpio_line2mask(%struct.gpio_chip* %36, i32 %37)
  %39 = load i64*, i64** %9, align 8
  %40 = load i64, i64* %39, align 8
  %41 = or i64 %40, %38
  store i64 %41, i64* %39, align 8
  br label %49

42:                                               ; preds = %30
  %43 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i64 @bgpio_line2mask(%struct.gpio_chip* %43, i32 %44)
  %46 = load i64*, i64** %10, align 8
  %47 = load i64, i64* %46, align 8
  %48 = or i64 %47, %45
  store i64 %48, i64* %46, align 8
  br label %49

49:                                               ; preds = %42, %35
  br label %50

50:                                               ; preds = %49, %25
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  br label %14

54:                                               ; preds = %24, %14
  ret void
}

declare dso_local i64 @__test_and_clear_bit(i32, i64*) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i64 @bgpio_line2mask(%struct.gpio_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
