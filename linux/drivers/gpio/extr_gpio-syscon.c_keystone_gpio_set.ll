; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-syscon.c_keystone_gpio_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-syscon.c_keystone_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.syscon_gpio_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SYSCON_REG_BITS = common dso_local global i32 0, align 4
@SYSCON_REG_SIZE = common dso_local global i32 0, align 4
@KEYSTONE_LOCK_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"gpio write failed ret(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @keystone_gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keystone_gpio_set(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.syscon_gpio_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %11 = call %struct.syscon_gpio_priv* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.syscon_gpio_priv* %11, %struct.syscon_gpio_priv** %7, align 8
  %12 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %7, align 8
  %13 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %7, align 8
  %16 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add i32 %14, %19
  %21 = load i32, i32* %5, align 4
  %22 = add i32 %20, %21
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  br label %56

26:                                               ; preds = %3
  %27 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %7, align 8
  %28 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @SYSCON_REG_BITS, align 4
  %32 = udiv i32 %30, %31
  %33 = load i32, i32* @SYSCON_REG_SIZE, align 4
  %34 = mul i32 %32, %33
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @SYSCON_REG_BITS, align 4
  %37 = urem i32 %35, %36
  %38 = call i32 @BIT(i32 %37)
  %39 = load i32, i32* @KEYSTONE_LOCK_BIT, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @SYSCON_REG_BITS, align 4
  %43 = urem i32 %41, %42
  %44 = call i32 @BIT(i32 %43)
  %45 = load i32, i32* @KEYSTONE_LOCK_BIT, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @regmap_update_bits(i32 %29, i32 %34, i32 %40, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %26
  %51 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %52 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %25, %50, %26
  ret void
}

declare dso_local %struct.syscon_gpio_priv* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
