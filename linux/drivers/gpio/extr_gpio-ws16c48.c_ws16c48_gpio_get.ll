; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ws16c48.c_ws16c48_gpio_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ws16c48.c_ws16c48_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.ws16c48_gpio = type { i32*, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @ws16c48_gpio_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ws16c48_gpio_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ws16c48_gpio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %12 = call %struct.ws16c48_gpio* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.ws16c48_gpio* %12, %struct.ws16c48_gpio** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = udiv i32 %13, 8
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = urem i32 %15, 8
  %17 = call i32 @BIT(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.ws16c48_gpio*, %struct.ws16c48_gpio** %6, align 8
  %19 = getelementptr inbounds %struct.ws16c48_gpio, %struct.ws16c48_gpio* %18, i32 0, i32 1
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @raw_spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.ws16c48_gpio*, %struct.ws16c48_gpio** %6, align 8
  %23 = getelementptr inbounds %struct.ws16c48_gpio, %struct.ws16c48_gpio* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %2
  %33 = load %struct.ws16c48_gpio*, %struct.ws16c48_gpio** %6, align 8
  %34 = getelementptr inbounds %struct.ws16c48_gpio, %struct.ws16c48_gpio* %33, i32 0, i32 1
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @raw_spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %58

39:                                               ; preds = %2
  %40 = load %struct.ws16c48_gpio*, %struct.ws16c48_gpio** %6, align 8
  %41 = getelementptr inbounds %struct.ws16c48_gpio, %struct.ws16c48_gpio* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = zext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = call i32 @inb(i64 %45)
  store i32 %46, i32* %10, align 4
  %47 = load %struct.ws16c48_gpio*, %struct.ws16c48_gpio** %6, align 8
  %48 = getelementptr inbounds %struct.ws16c48_gpio, %struct.ws16c48_gpio* %47, i32 0, i32 1
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @raw_spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %8, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %39, %32
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.ws16c48_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
