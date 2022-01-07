; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lynxpoint.c_lp_gpio_irq_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lynxpoint.c_lp_gpio_irq_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.lp_gpio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@LP_INT_ENABLE = common dso_local global i32 0, align 4
@LP_INT_STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*)* @lp_gpio_irq_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp_gpio_irq_init_hw(%struct.gpio_chip* %0) #0 {
  %2 = alloca %struct.gpio_chip*, align 8
  %3 = alloca %struct.lp_gpio*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %2, align 8
  %6 = load %struct.gpio_chip*, %struct.gpio_chip** %2, align 8
  %7 = call %struct.lp_gpio* @gpiochip_get_data(%struct.gpio_chip* %6)
  store %struct.lp_gpio* %7, %struct.lp_gpio** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %30, %1
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.lp_gpio*, %struct.lp_gpio** %3, align 8
  %11 = getelementptr inbounds %struct.lp_gpio, %struct.lp_gpio* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ult i32 %9, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %8
  %16 = load %struct.lp_gpio*, %struct.lp_gpio** %3, align 8
  %17 = getelementptr inbounds %struct.lp_gpio, %struct.lp_gpio* %16, i32 0, i32 0
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @LP_INT_ENABLE, align 4
  %20 = call i64 @lp_gpio_reg(%struct.TYPE_2__* %17, i32 %18, i32 %19)
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @outl(i32 0, i64 %21)
  %23 = load %struct.lp_gpio*, %struct.lp_gpio** %3, align 8
  %24 = getelementptr inbounds %struct.lp_gpio, %struct.lp_gpio* %23, i32 0, i32 0
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @LP_INT_STAT, align 4
  %27 = call i64 @lp_gpio_reg(%struct.TYPE_2__* %24, i32 %25, i32 %26)
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @outl(i32 -1, i64 %28)
  br label %30

30:                                               ; preds = %15
  %31 = load i32, i32* %5, align 4
  %32 = add i32 %31, 32
  store i32 %32, i32* %5, align 4
  br label %8

33:                                               ; preds = %8
  ret i32 0
}

declare dso_local %struct.lp_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i64 @lp_gpio_reg(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @outl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
