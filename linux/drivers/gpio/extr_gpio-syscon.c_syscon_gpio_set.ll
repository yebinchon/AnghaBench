; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-syscon.c_syscon_gpio_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-syscon.c_syscon_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.syscon_gpio_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SYSCON_REG_BITS = common dso_local global i32 0, align 4
@SYSCON_REG_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @syscon_gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @syscon_gpio_set(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
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
  %12 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %7, align 8
  %15 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add i32 %13, %18
  %20 = load i32, i32* %5, align 4
  %21 = add i32 %19, %20
  store i32 %21, i32* %8, align 4
  %22 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %7, align 8
  %23 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @SYSCON_REG_BITS, align 4
  %27 = udiv i32 %25, %26
  %28 = load i32, i32* @SYSCON_REG_SIZE, align 4
  %29 = mul i32 %27, %28
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @SYSCON_REG_BITS, align 4
  %32 = urem i32 %30, %31
  %33 = call i32 @BIT(i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %3
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @SYSCON_REG_BITS, align 4
  %39 = urem i32 %37, %38
  %40 = call i32 @BIT(i32 %39)
  br label %42

41:                                               ; preds = %3
  br label %42

42:                                               ; preds = %41, %36
  %43 = phi i32 [ %40, %36 ], [ 0, %41 ]
  %44 = call i32 @regmap_update_bits(i32 %24, i32 %29, i32 %33, i32 %43)
  ret void
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
