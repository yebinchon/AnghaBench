; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-rcar.c_gpio_rcar_config_interrupt_input_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-rcar.c_gpio_rcar_config_interrupt_input_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_rcar_priv = type { i32, i64 }

@POSNEG = common dso_local global i32 0, align 4
@EDGLEVEL = common dso_local global i32 0, align 4
@BOTHEDGE = common dso_local global i32 0, align 4
@IOINTSEL = common dso_local global i32 0, align 4
@INTCLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_rcar_priv*, i32, i32, i32, i32)* @gpio_rcar_config_interrupt_input_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_rcar_config_interrupt_input_mode(%struct.gpio_rcar_priv* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.gpio_rcar_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.gpio_rcar_priv* %0, %struct.gpio_rcar_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %6, align 8
  %13 = getelementptr inbounds %struct.gpio_rcar_priv, %struct.gpio_rcar_priv* %12, i32 0, i32 0
  %14 = load i64, i64* %11, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %6, align 8
  %17 = load i32, i32* @POSNEG, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @gpio_rcar_modify_bit(%struct.gpio_rcar_priv* %16, i32 %17, i32 %18, i32 %22)
  %24 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %6, align 8
  %25 = load i32, i32* @EDGLEVEL, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @gpio_rcar_modify_bit(%struct.gpio_rcar_priv* %24, i32 %25, i32 %26, i32 %30)
  %32 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %6, align 8
  %33 = getelementptr inbounds %struct.gpio_rcar_priv, %struct.gpio_rcar_priv* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %5
  %37 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %6, align 8
  %38 = load i32, i32* @BOTHEDGE, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @gpio_rcar_modify_bit(%struct.gpio_rcar_priv* %37, i32 %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %36, %5
  %43 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %6, align 8
  %44 = load i32, i32* @IOINTSEL, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @gpio_rcar_modify_bit(%struct.gpio_rcar_priv* %43, i32 %44, i32 %45, i32 1)
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %42
  %50 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %6, align 8
  %51 = load i32, i32* @INTCLR, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @BIT(i32 %52)
  %54 = call i32 @gpio_rcar_write(%struct.gpio_rcar_priv* %50, i32 %51, i32 %53)
  br label %55

55:                                               ; preds = %49, %42
  %56 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %6, align 8
  %57 = getelementptr inbounds %struct.gpio_rcar_priv, %struct.gpio_rcar_priv* %56, i32 0, i32 0
  %58 = load i64, i64* %11, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @gpio_rcar_modify_bit(%struct.gpio_rcar_priv*, i32, i32, i32) #1

declare dso_local i32 @gpio_rcar_write(%struct.gpio_rcar_priv*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
