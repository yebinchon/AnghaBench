; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lynxpoint.c_lp_gpio_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lynxpoint.c_lp_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.lp_gpio = type { i32 }

@LP_CONFIG1 = common dso_local global i32 0, align 4
@OUT_LVL_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @lp_gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lp_gpio_set(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lp_gpio*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %11 = call %struct.lp_gpio* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.lp_gpio* %11, %struct.lp_gpio** %7, align 8
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @LP_CONFIG1, align 4
  %15 = call i64 @lp_gpio_reg(%struct.gpio_chip* %12, i32 %13, i32 %14)
  store i64 %15, i64* %8, align 8
  %16 = load %struct.lp_gpio*, %struct.lp_gpio** %7, align 8
  %17 = getelementptr inbounds %struct.lp_gpio, %struct.lp_gpio* %16, i32 0, i32 0
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @inl(i64 %23)
  %25 = load i32, i32* @OUT_LVL_BIT, align 4
  %26 = or i32 %24, %25
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @outl(i32 %26, i64 %27)
  br label %37

29:                                               ; preds = %3
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @inl(i64 %30)
  %32 = load i32, i32* @OUT_LVL_BIT, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @outl(i32 %34, i64 %35)
  br label %37

37:                                               ; preds = %29, %22
  %38 = load %struct.lp_gpio*, %struct.lp_gpio** %7, align 8
  %39 = getelementptr inbounds %struct.lp_gpio, %struct.lp_gpio* %38, i32 0, i32 0
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  ret void
}

declare dso_local %struct.lp_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i64 @lp_gpio_reg(%struct.gpio_chip*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
