; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-syscon.c_rockchip_gpio_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-syscon.c_rockchip_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.syscon_gpio_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SYSCON_REG_BITS = common dso_local global i32 0, align 4
@SYSCON_REG_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"gpio write failed ret(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @rockchip_gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rockchip_gpio_set(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.syscon_gpio_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %13 = call %struct.syscon_gpio_priv* @gpiochip_get_data(%struct.gpio_chip* %12)
  store %struct.syscon_gpio_priv* %13, %struct.syscon_gpio_priv** %7, align 8
  %14 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %7, align 8
  %15 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %7, align 8
  %18 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add i32 %16, %21
  %23 = load i32, i32* %5, align 4
  %24 = add i32 %22, %23
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @SYSCON_REG_BITS, align 4
  %27 = urem i32 %25, %26
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @BIT(i32 %31)
  br label %34

33:                                               ; preds = %3
  br label %34

34:                                               ; preds = %33, %30
  %35 = phi i32 [ %32, %30 ], [ 0, %33 ]
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 16
  %38 = call i32 @BIT(i32 %37)
  %39 = or i32 %35, %38
  store i32 %39, i32* %10, align 4
  %40 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %7, align 8
  %41 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @SYSCON_REG_BITS, align 4
  %45 = udiv i32 %43, %44
  %46 = load i32, i32* @SYSCON_REG_SIZE, align 4
  %47 = mul i32 %45, %46
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @regmap_write(i32 %42, i32 %47, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %34
  %53 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %54 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %52, %34
  ret void
}

declare dso_local %struct.syscon_gpio_priv* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
