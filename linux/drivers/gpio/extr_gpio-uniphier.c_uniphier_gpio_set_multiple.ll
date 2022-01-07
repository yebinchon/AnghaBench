; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-uniphier.c_uniphier_gpio_set_multiple.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-uniphier.c_uniphier_gpio_set_multiple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }

@UNIPHIER_GPIO_LINES_PER_BANK = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i32 0, align 4
@UNIPHIER_GPIO_BANK_MASK = common dso_local global i64 0, align 8
@UNIPHIER_GPIO_PORT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i64*, i64*)* @uniphier_gpio_set_multiple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uniphier_gpio_set_multiple(%struct.gpio_chip* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %51, %3
  %13 = load i32, i32* %11, align 4
  %14 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %15 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %55

18:                                               ; preds = %12
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @UNIPHIER_GPIO_LINES_PER_BANK, align 4
  %21 = sdiv i32 %19, %20
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @BITS_PER_LONG, align 4
  %24 = srem i32 %22, %23
  store i32 %24, i32* %8, align 4
  %25 = load i64*, i64** %5, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i64 @BIT_WORD(i32 %26)
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = lshr i64 %29, %31
  %33 = load i64, i64* @UNIPHIER_GPIO_BANK_MASK, align 8
  %34 = and i64 %32, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %9, align 4
  %36 = load i64*, i64** %6, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i64 @BIT_WORD(i32 %37)
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = zext i32 %41 to i64
  %43 = lshr i64 %40, %42
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %10, align 4
  %45 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @UNIPHIER_GPIO_PORT_DATA, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @uniphier_gpio_bank_write(%struct.gpio_chip* %45, i32 %46, i32 %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %18
  %52 = load i32, i32* @UNIPHIER_GPIO_LINES_PER_BANK, align 4
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %11, align 4
  br label %12

55:                                               ; preds = %12
  ret void
}

declare dso_local i64 @BIT_WORD(i32) #1

declare dso_local i32 @uniphier_gpio_bank_write(%struct.gpio_chip*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
