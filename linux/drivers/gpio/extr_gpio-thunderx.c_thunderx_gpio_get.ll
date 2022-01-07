; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-thunderx.c_thunderx_gpio_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-thunderx.c_thunderx_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.thunderx_gpio = type { i32, i64 }

@GPIO_2ND_BANK = common dso_local global i32 0, align 4
@GPIO_RX_DAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @thunderx_gpio_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thunderx_gpio_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.thunderx_gpio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %12 = call %struct.thunderx_gpio* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.thunderx_gpio* %12, %struct.thunderx_gpio** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = udiv i32 %13, 64
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = urem i32 %15, 64
  store i32 %16, i32* %8, align 4
  %17 = load %struct.thunderx_gpio*, %struct.thunderx_gpio** %6, align 8
  %18 = getelementptr inbounds %struct.thunderx_gpio, %struct.thunderx_gpio* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @GPIO_2ND_BANK, align 4
  %22 = mul nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %19, %23
  %25 = load i64, i64* @GPIO_RX_DAT, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i64 @readq(i64 %26)
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @BIT_ULL(i32 %29)
  %31 = and i64 %28, %30
  store i64 %31, i64* %10, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.thunderx_gpio*, %struct.thunderx_gpio** %6, align 8
  %34 = getelementptr inbounds %struct.thunderx_gpio, %struct.thunderx_gpio* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @test_bit(i32 %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %2
  %39 = load i64, i64* %10, align 8
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %3, align 4
  br label %46

42:                                               ; preds = %2
  %43 = load i64, i64* %10, align 8
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %38
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.thunderx_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i64 @readq(i64) #1

declare dso_local i64 @BIT_ULL(i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
