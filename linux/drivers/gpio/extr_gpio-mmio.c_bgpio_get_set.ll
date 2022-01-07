; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mmio.c_bgpio_get_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mmio.c_bgpio_get_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i64, i64 (i32)*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @bgpio_get_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bgpio_get_set(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @bgpio_line2mask(%struct.gpio_chip* %8, i32 %9)
  store i64 %10, i64* %6, align 8
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %12 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %6, align 8
  %15 = and i64 %13, %14
  %16 = icmp ne i64 %15, 0
  %17 = xor i1 %16, true
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %2
  %23 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %24 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %23, i32 0, i32 1
  %25 = load i64 (i32)*, i64 (i32)** %24, align 8
  %26 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %27 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i64 %25(i32 %28)
  %30 = load i64, i64* %6, align 8
  %31 = and i64 %29, %30
  %32 = icmp ne i64 %31, 0
  %33 = xor i1 %32, true
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %50

36:                                               ; preds = %2
  %37 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %38 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %37, i32 0, i32 1
  %39 = load i64 (i32)*, i64 (i32)** %38, align 8
  %40 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %41 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i64 %39(i32 %42)
  %44 = load i64, i64* %6, align 8
  %45 = and i64 %43, %44
  %46 = icmp ne i64 %45, 0
  %47 = xor i1 %46, true
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %36, %22
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @bgpio_line2mask(%struct.gpio_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
