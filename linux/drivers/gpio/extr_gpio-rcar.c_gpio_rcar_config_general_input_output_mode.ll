; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-rcar.c_gpio_rcar_config_general_input_output_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-rcar.c_gpio_rcar_config_general_input_output_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.gpio_rcar_priv = type { i32, i64 }

@POSNEG = common dso_local global i32 0, align 4
@IOINTSEL = common dso_local global i32 0, align 4
@INOUTSEL = common dso_local global i32 0, align 4
@OUTDTSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @gpio_rcar_config_general_input_output_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_rcar_config_general_input_output_mode(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gpio_rcar_priv*, align 8
  %8 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call %struct.gpio_rcar_priv* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.gpio_rcar_priv* %10, %struct.gpio_rcar_priv** %7, align 8
  %11 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %7, align 8
  %12 = getelementptr inbounds %struct.gpio_rcar_priv, %struct.gpio_rcar_priv* %11, i32 0, i32 0
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %7, align 8
  %16 = load i32, i32* @POSNEG, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @gpio_rcar_modify_bit(%struct.gpio_rcar_priv* %15, i32 %16, i32 %17, i32 0)
  %19 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %7, align 8
  %20 = load i32, i32* @IOINTSEL, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @gpio_rcar_modify_bit(%struct.gpio_rcar_priv* %19, i32 %20, i32 %21, i32 0)
  %23 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %7, align 8
  %24 = load i32, i32* @INOUTSEL, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @gpio_rcar_modify_bit(%struct.gpio_rcar_priv* %23, i32 %24, i32 %25, i32 %26)
  %28 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %7, align 8
  %29 = getelementptr inbounds %struct.gpio_rcar_priv, %struct.gpio_rcar_priv* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %3
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %7, align 8
  %37 = load i32, i32* @OUTDTSEL, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @gpio_rcar_modify_bit(%struct.gpio_rcar_priv* %36, i32 %37, i32 %38, i32 0)
  br label %40

40:                                               ; preds = %35, %32, %3
  %41 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %7, align 8
  %42 = getelementptr inbounds %struct.gpio_rcar_priv, %struct.gpio_rcar_priv* %41, i32 0, i32 0
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  ret void
}

declare dso_local %struct.gpio_rcar_priv* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @gpio_rcar_modify_bit(%struct.gpio_rcar_priv*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
