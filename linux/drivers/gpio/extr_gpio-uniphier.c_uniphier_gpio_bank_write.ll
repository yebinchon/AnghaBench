; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-uniphier.c_uniphier_gpio_bank_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-uniphier.c_uniphier_gpio_bank_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.uniphier_gpio_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32, i32, i32)* @uniphier_gpio_bank_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uniphier_gpio_bank_write(%struct.gpio_chip* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.uniphier_gpio_priv*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %13 = call %struct.uniphier_gpio_priv* @gpiochip_get_data(%struct.gpio_chip* %12)
  store %struct.uniphier_gpio_priv* %13, %struct.uniphier_gpio_priv** %11, align 8
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  br label %27

17:                                               ; preds = %5
  %18 = load %struct.uniphier_gpio_priv*, %struct.uniphier_gpio_priv** %11, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @uniphier_gpio_bank_to_reg(i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @uniphier_gpio_reg_update(%struct.uniphier_gpio_priv* %18, i64 %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %17, %16
  ret void
}

declare dso_local %struct.uniphier_gpio_priv* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @uniphier_gpio_reg_update(%struct.uniphier_gpio_priv*, i64, i32, i32) #1

declare dso_local i64 @uniphier_gpio_bank_to_reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
