; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-dln2.c_dln2_gpio_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-dln2.c_dln2_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.dln2_gpio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @dln2_gpio_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dln2_gpio_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dln2_gpio*, align 8
  %7 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %9 = call %struct.dln2_gpio* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.dln2_gpio* %9, %struct.dln2_gpio** %6, align 8
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @dln2_gpio_get_direction(%struct.gpio_chip* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %28

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load %struct.dln2_gpio*, %struct.dln2_gpio** %6, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @dln2_gpio_pin_get_in_val(%struct.dln2_gpio* %21, i32 %22)
  store i32 %23, i32* %3, align 4
  br label %28

24:                                               ; preds = %17
  %25 = load %struct.dln2_gpio*, %struct.dln2_gpio** %6, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @dln2_gpio_pin_get_out_val(%struct.dln2_gpio* %25, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %24, %20, %15
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.dln2_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @dln2_gpio_get_direction(%struct.gpio_chip*, i32) #1

declare dso_local i32 @dln2_gpio_pin_get_in_val(%struct.dln2_gpio*, i32) #1

declare dso_local i32 @dln2_gpio_pin_get_out_val(%struct.dln2_gpio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
