; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-thunderx.c_thunderx_gpio_get_direction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-thunderx.c_thunderx_gpio_get_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.thunderx_gpio = type { i64 }

@GPIO_BIT_CFG_TX_OE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @thunderx_gpio_get_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thunderx_gpio_get_direction(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.thunderx_gpio*, align 8
  %7 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %9 = call %struct.thunderx_gpio* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.thunderx_gpio* %9, %struct.thunderx_gpio** %6, align 8
  %10 = load %struct.thunderx_gpio*, %struct.thunderx_gpio** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @thunderx_gpio_is_gpio_nowarn(%struct.thunderx_gpio* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %29

15:                                               ; preds = %2
  %16 = load %struct.thunderx_gpio*, %struct.thunderx_gpio** %6, align 8
  %17 = getelementptr inbounds %struct.thunderx_gpio, %struct.thunderx_gpio* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @bit_cfg_reg(i32 %19)
  %21 = add nsw i64 %18, %20
  %22 = call i32 @readq(i64 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @GPIO_BIT_CFG_TX_OE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %15, %14
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.thunderx_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @thunderx_gpio_is_gpio_nowarn(%struct.thunderx_gpio*, i32) #1

declare dso_local i32 @readq(i64) #1

declare dso_local i64 @bit_cfg_reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
