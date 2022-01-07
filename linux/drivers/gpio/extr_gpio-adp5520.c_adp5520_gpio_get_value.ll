; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-adp5520.c_adp5520_gpio_get_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-adp5520.c_adp5520_gpio_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.adp5520_gpio = type { i32*, i32, i32 }

@ADP5520_GPIO_OUT = common dso_local global i32 0, align 4
@ADP5520_GPIO_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @adp5520_gpio_get_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp5520_gpio_get_value(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.adp5520_gpio*, align 8
  %6 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %8 = call %struct.adp5520_gpio* @gpiochip_get_data(%struct.gpio_chip* %7)
  store %struct.adp5520_gpio* %8, %struct.adp5520_gpio** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.adp5520_gpio*, %struct.adp5520_gpio** %5, align 8
  %11 = getelementptr inbounds %struct.adp5520_gpio, %struct.adp5520_gpio* %10, i32 0, i32 2
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.adp5520_gpio*, %struct.adp5520_gpio** %5, align 8
  %16 = getelementptr inbounds %struct.adp5520_gpio, %struct.adp5520_gpio* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @ADP5520_GPIO_OUT, align 4
  %19 = call i32 @adp5520_read(i32 %17, i32 %18, i32* %6)
  br label %26

20:                                               ; preds = %2
  %21 = load %struct.adp5520_gpio*, %struct.adp5520_gpio** %5, align 8
  %22 = getelementptr inbounds %struct.adp5520_gpio, %struct.adp5520_gpio* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ADP5520_GPIO_IN, align 4
  %25 = call i32 @adp5520_read(i32 %23, i32 %24, i32* %6)
  br label %26

26:                                               ; preds = %20, %14
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.adp5520_gpio*, %struct.adp5520_gpio** %5, align 8
  %29 = getelementptr inbounds %struct.adp5520_gpio, %struct.adp5520_gpio* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %27, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  ret i32 %39
}

declare dso_local %struct.adp5520_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @adp5520_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
