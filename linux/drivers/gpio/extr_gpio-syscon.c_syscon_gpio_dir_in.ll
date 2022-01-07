; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-syscon.c_syscon_gpio_dir_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-syscon.c_syscon_gpio_dir_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.syscon_gpio_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@GPIO_SYSCON_FEAT_DIR = common dso_local global i32 0, align 4
@SYSCON_REG_BITS = common dso_local global i32 0, align 4
@SYSCON_REG_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @syscon_gpio_dir_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @syscon_gpio_dir_in(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.syscon_gpio_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %8 = call %struct.syscon_gpio_priv* @gpiochip_get_data(%struct.gpio_chip* %7)
  store %struct.syscon_gpio_priv* %8, %struct.syscon_gpio_priv** %5, align 8
  %9 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %5, align 8
  %10 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GPIO_SYSCON_FEAT_DIR, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %2
  %18 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %5, align 8
  %19 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %5, align 8
  %22 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add i32 %20, %25
  %27 = load i32, i32* %4, align 4
  %28 = add i32 %26, %27
  store i32 %28, i32* %6, align 4
  %29 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %5, align 8
  %30 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @SYSCON_REG_BITS, align 4
  %34 = udiv i32 %32, %33
  %35 = load i32, i32* @SYSCON_REG_SIZE, align 4
  %36 = mul i32 %34, %35
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @SYSCON_REG_BITS, align 4
  %39 = urem i32 %37, %38
  %40 = call i32 @BIT(i32 %39)
  %41 = call i32 @regmap_update_bits(i32 %31, i32 %36, i32 %40, i32 0)
  br label %42

42:                                               ; preds = %17, %2
  ret i32 0
}

declare dso_local %struct.syscon_gpio_priv* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
