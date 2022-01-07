; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pl061.c_pl061_direction_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pl061.c_pl061_direction_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.pl061 = type { i32, i64 }

@GPIODIR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @pl061_direction_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl061_direction_output(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pl061*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %11 = call %struct.pl061* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.pl061* %11, %struct.pl061** %7, align 8
  %12 = load %struct.pl061*, %struct.pl061** %7, align 8
  %13 = getelementptr inbounds %struct.pl061, %struct.pl061* %12, i32 0, i32 0
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @raw_spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %5, align 4
  %22 = shl i32 %20, %21
  %23 = load %struct.pl061*, %struct.pl061** %7, align 8
  %24 = getelementptr inbounds %struct.pl061, %struct.pl061* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = add i32 %26, 2
  %28 = call zeroext i8 @BIT(i32 %27)
  %29 = zext i8 %28 to i64
  %30 = add nsw i64 %25, %29
  %31 = call i32 @writeb(i32 %22, i64 %30)
  %32 = load %struct.pl061*, %struct.pl061** %7, align 8
  %33 = getelementptr inbounds %struct.pl061, %struct.pl061* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @GPIODIR, align 8
  %36 = add nsw i64 %34, %35
  %37 = call zeroext i8 @readb(i64 %36)
  store i8 %37, i8* %9, align 1
  %38 = load i32, i32* %5, align 4
  %39 = call zeroext i8 @BIT(i32 %38)
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* %9, align 1
  %42 = zext i8 %41 to i32
  %43 = or i32 %42, %40
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %9, align 1
  %45 = load i8, i8* %9, align 1
  %46 = zext i8 %45 to i32
  %47 = load %struct.pl061*, %struct.pl061** %7, align 8
  %48 = getelementptr inbounds %struct.pl061, %struct.pl061* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @GPIODIR, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writeb(i32 %46, i64 %51)
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* %5, align 4
  %59 = shl i32 %57, %58
  %60 = load %struct.pl061*, %struct.pl061** %7, align 8
  %61 = getelementptr inbounds %struct.pl061, %struct.pl061* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = add i32 %63, 2
  %65 = call zeroext i8 @BIT(i32 %64)
  %66 = zext i8 %65 to i64
  %67 = add nsw i64 %62, %66
  %68 = call i32 @writeb(i32 %59, i64 %67)
  %69 = load %struct.pl061*, %struct.pl061** %7, align 8
  %70 = getelementptr inbounds %struct.pl061, %struct.pl061* %69, i32 0, i32 0
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @raw_spin_unlock_irqrestore(i32* %70, i64 %71)
  ret i32 0
}

declare dso_local %struct.pl061* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local zeroext i8 @BIT(i32) #1

declare dso_local zeroext i8 @readb(i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
