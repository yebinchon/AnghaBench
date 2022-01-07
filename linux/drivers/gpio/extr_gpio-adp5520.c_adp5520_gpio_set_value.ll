; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-adp5520.c_adp5520_gpio_set_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-adp5520.c_adp5520_gpio_set_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.adp5520_gpio = type { i32*, i32 }

@ADP5520_GPIO_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @adp5520_gpio_set_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adp5520_gpio_set_value(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.adp5520_gpio*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %9 = call %struct.adp5520_gpio* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.adp5520_gpio* %9, %struct.adp5520_gpio** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %3
  %13 = load %struct.adp5520_gpio*, %struct.adp5520_gpio** %7, align 8
  %14 = getelementptr inbounds %struct.adp5520_gpio, %struct.adp5520_gpio* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @ADP5520_GPIO_OUT, align 4
  %17 = load %struct.adp5520_gpio*, %struct.adp5520_gpio** %7, align 8
  %18 = getelementptr inbounds %struct.adp5520_gpio, %struct.adp5520_gpio* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @adp5520_set_bits(i32 %15, i32 %16, i32 %23)
  br label %38

25:                                               ; preds = %3
  %26 = load %struct.adp5520_gpio*, %struct.adp5520_gpio** %7, align 8
  %27 = getelementptr inbounds %struct.adp5520_gpio, %struct.adp5520_gpio* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @ADP5520_GPIO_OUT, align 4
  %30 = load %struct.adp5520_gpio*, %struct.adp5520_gpio** %7, align 8
  %31 = getelementptr inbounds %struct.adp5520_gpio, %struct.adp5520_gpio* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @adp5520_clr_bits(i32 %28, i32 %29, i32 %36)
  br label %38

38:                                               ; preds = %25, %12
  ret void
}

declare dso_local %struct.adp5520_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @adp5520_set_bits(i32, i32, i32) #1

declare dso_local i32 @adp5520_clr_bits(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
