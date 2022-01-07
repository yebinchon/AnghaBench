; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tps65910.c_tps65910_gpio_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tps65910.c_tps65910_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.tps65910_gpio = type { %struct.tps65910* }
%struct.tps65910 = type { i32 }

@TPS65910_GPIO0 = common dso_local global i32 0, align 4
@GPIO_SET_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @tps65910_gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tps65910_gpio_set(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tps65910_gpio*, align 8
  %8 = alloca %struct.tps65910*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call %struct.tps65910_gpio* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.tps65910_gpio* %10, %struct.tps65910_gpio** %7, align 8
  %11 = load %struct.tps65910_gpio*, %struct.tps65910_gpio** %7, align 8
  %12 = getelementptr inbounds %struct.tps65910_gpio, %struct.tps65910_gpio* %11, i32 0, i32 0
  %13 = load %struct.tps65910*, %struct.tps65910** %12, align 8
  store %struct.tps65910* %13, %struct.tps65910** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct.tps65910*, %struct.tps65910** %8, align 8
  %18 = load i32, i32* @TPS65910_GPIO0, align 4
  %19 = load i32, i32* %5, align 4
  %20 = add i32 %18, %19
  %21 = load i32, i32* @GPIO_SET_MASK, align 4
  %22 = call i32 @tps65910_reg_set_bits(%struct.tps65910* %17, i32 %20, i32 %21)
  br label %30

23:                                               ; preds = %3
  %24 = load %struct.tps65910*, %struct.tps65910** %8, align 8
  %25 = load i32, i32* @TPS65910_GPIO0, align 4
  %26 = load i32, i32* %5, align 4
  %27 = add i32 %25, %26
  %28 = load i32, i32* @GPIO_SET_MASK, align 4
  %29 = call i32 @tps65910_reg_clear_bits(%struct.tps65910* %24, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %23, %16
  ret void
}

declare dso_local %struct.tps65910_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @tps65910_reg_set_bits(%struct.tps65910*, i32, i32) #1

declare dso_local i32 @tps65910_reg_clear_bits(%struct.tps65910*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
