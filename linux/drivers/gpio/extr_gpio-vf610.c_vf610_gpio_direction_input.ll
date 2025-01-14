; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-vf610.c_vf610_gpio_direction_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-vf610.c_vf610_gpio_direction_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.vf610_gpio_port = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@GPIO_PDDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @vf610_gpio_direction_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vf610_gpio_direction_input(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vf610_gpio_port*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %9 = call %struct.vf610_gpio_port* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.vf610_gpio_port* %9, %struct.vf610_gpio_port** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @BIT(i32 %10)
  store i64 %11, i64* %6, align 8
  %12 = load %struct.vf610_gpio_port*, %struct.vf610_gpio_port** %5, align 8
  %13 = getelementptr inbounds %struct.vf610_gpio_port, %struct.vf610_gpio_port* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %41

16:                                               ; preds = %2
  %17 = load %struct.vf610_gpio_port*, %struct.vf610_gpio_port** %5, align 8
  %18 = getelementptr inbounds %struct.vf610_gpio_port, %struct.vf610_gpio_port* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %16
  %24 = load %struct.vf610_gpio_port*, %struct.vf610_gpio_port** %5, align 8
  %25 = getelementptr inbounds %struct.vf610_gpio_port, %struct.vf610_gpio_port* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @GPIO_PDDR, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i64 @vf610_gpio_readl(i64 %28)
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %6, align 8
  %31 = xor i64 %30, -1
  %32 = load i64, i64* %7, align 8
  %33 = and i64 %32, %31
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.vf610_gpio_port*, %struct.vf610_gpio_port** %5, align 8
  %36 = getelementptr inbounds %struct.vf610_gpio_port, %struct.vf610_gpio_port* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @GPIO_PDDR, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @vf610_gpio_writel(i64 %34, i64 %39)
  br label %41

41:                                               ; preds = %23, %16, %2
  %42 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %43 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %4, align 4
  %46 = add i32 %44, %45
  %47 = call i32 @pinctrl_gpio_direction_input(i32 %46)
  ret i32 %47
}

declare dso_local %struct.vf610_gpio_port* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i64 @vf610_gpio_readl(i64) #1

declare dso_local i32 @vf610_gpio_writel(i64, i64) #1

declare dso_local i32 @pinctrl_gpio_direction_input(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
