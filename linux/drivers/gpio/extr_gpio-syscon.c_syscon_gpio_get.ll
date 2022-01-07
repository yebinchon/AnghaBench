; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-syscon.c_syscon_gpio_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-syscon.c_syscon_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.syscon_gpio_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SYSCON_REG_BITS = common dso_local global i32 0, align 4
@SYSCON_REG_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @syscon_gpio_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @syscon_gpio_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.syscon_gpio_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %11 = call %struct.syscon_gpio_priv* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.syscon_gpio_priv* %11, %struct.syscon_gpio_priv** %6, align 8
  %12 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %6, align 8
  %13 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %6, align 8
  %16 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add i32 %14, %19
  %21 = load i32, i32* %5, align 4
  %22 = add i32 %20, %21
  store i32 %22, i32* %8, align 4
  %23 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %6, align 8
  %24 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @SYSCON_REG_BITS, align 4
  %28 = udiv i32 %26, %27
  %29 = load i32, i32* @SYSCON_REG_SIZE, align 4
  %30 = mul i32 %28, %29
  %31 = call i32 @regmap_read(i32 %25, i32 %30, i32* %7)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %3, align 4
  br label %47

36:                                               ; preds = %2
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @SYSCON_REG_BITS, align 4
  %40 = urem i32 %38, %39
  %41 = call i32 @BIT(i32 %40)
  %42 = and i32 %37, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %36, %34
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.syscon_gpio_priv* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
