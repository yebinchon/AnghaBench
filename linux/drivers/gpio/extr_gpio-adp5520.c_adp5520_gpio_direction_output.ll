; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-adp5520.c_adp5520_gpio_direction_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-adp5520.c_adp5520_gpio_direction_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.adp5520_gpio = type { i32*, i32, i32 }

@ADP5520_GPIO_OUT = common dso_local global i32 0, align 4
@ADP5520_GPIO_CFG_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @adp5520_gpio_direction_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp5520_gpio_direction_output(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.adp5520_gpio*, align 8
  %8 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call %struct.adp5520_gpio* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.adp5520_gpio* %10, %struct.adp5520_gpio** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.adp5520_gpio*, %struct.adp5520_gpio** %7, align 8
  %13 = getelementptr inbounds %struct.adp5520_gpio, %struct.adp5520_gpio* %12, i32 0, i32 2
  %14 = call i32 @set_bit(i32 %11, i32* %13)
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %3
  %18 = load %struct.adp5520_gpio*, %struct.adp5520_gpio** %7, align 8
  %19 = getelementptr inbounds %struct.adp5520_gpio, %struct.adp5520_gpio* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ADP5520_GPIO_OUT, align 4
  %22 = load %struct.adp5520_gpio*, %struct.adp5520_gpio** %7, align 8
  %23 = getelementptr inbounds %struct.adp5520_gpio, %struct.adp5520_gpio* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @adp5520_set_bits(i32 %20, i32 %21, i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  br label %47

32:                                               ; preds = %3
  %33 = load %struct.adp5520_gpio*, %struct.adp5520_gpio** %7, align 8
  %34 = getelementptr inbounds %struct.adp5520_gpio, %struct.adp5520_gpio* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @ADP5520_GPIO_OUT, align 4
  %37 = load %struct.adp5520_gpio*, %struct.adp5520_gpio** %7, align 8
  %38 = getelementptr inbounds %struct.adp5520_gpio, %struct.adp5520_gpio* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @adp5520_clr_bits(i32 %35, i32 %36, i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %32, %17
  %48 = load %struct.adp5520_gpio*, %struct.adp5520_gpio** %7, align 8
  %49 = getelementptr inbounds %struct.adp5520_gpio, %struct.adp5520_gpio* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @ADP5520_GPIO_CFG_2, align 4
  %52 = load %struct.adp5520_gpio*, %struct.adp5520_gpio** %7, align 8
  %53 = getelementptr inbounds %struct.adp5520_gpio, %struct.adp5520_gpio* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @adp5520_set_bits(i32 %50, i32 %51, i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  ret i32 %62
}

declare dso_local %struct.adp5520_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @adp5520_set_bits(i32, i32, i32) #1

declare dso_local i32 @adp5520_clr_bits(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
