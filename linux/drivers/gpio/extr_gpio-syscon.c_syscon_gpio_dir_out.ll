; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-syscon.c_syscon_gpio_dir_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-syscon.c_syscon_gpio_dir_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { {}* }
%struct.syscon_gpio_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@GPIO_SYSCON_FEAT_DIR = common dso_local global i32 0, align 4
@SYSCON_REG_BITS = common dso_local global i32 0, align 4
@SYSCON_REG_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @syscon_gpio_dir_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @syscon_gpio_dir_out(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.syscon_gpio_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call %struct.syscon_gpio_priv* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.syscon_gpio_priv* %10, %struct.syscon_gpio_priv** %7, align 8
  %11 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %7, align 8
  %12 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @GPIO_SYSCON_FEAT_DIR, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %48

19:                                               ; preds = %3
  %20 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %7, align 8
  %21 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %7, align 8
  %24 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add i32 %22, %27
  %29 = load i32, i32* %5, align 4
  %30 = add i32 %28, %29
  store i32 %30, i32* %8, align 4
  %31 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %7, align 8
  %32 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @SYSCON_REG_BITS, align 4
  %36 = udiv i32 %34, %35
  %37 = load i32, i32* @SYSCON_REG_SIZE, align 4
  %38 = mul i32 %36, %37
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @SYSCON_REG_BITS, align 4
  %41 = urem i32 %39, %40
  %42 = call i32 @BIT(i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @SYSCON_REG_BITS, align 4
  %45 = urem i32 %43, %44
  %46 = call i32 @BIT(i32 %45)
  %47 = call i32 @regmap_update_bits(i32 %33, i32 %38, i32 %42, i32 %46)
  br label %48

48:                                               ; preds = %19, %3
  %49 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %50 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %49, i32 0, i32 0
  %51 = bitcast {}** %50 to i32 (%struct.gpio_chip*, i32, i32)**
  %52 = load i32 (%struct.gpio_chip*, i32, i32)*, i32 (%struct.gpio_chip*, i32, i32)** %51, align 8
  %53 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 %52(%struct.gpio_chip* %53, i32 %54, i32 %55)
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
