; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pmic-eic-sprd.c_sprd_pmic_eic_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pmic-eic-sprd.c_sprd_pmic_eic_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.sprd_pmic_eic = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i64, i32)* @sprd_pmic_eic_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sprd_pmic_eic_update(%struct.gpio_chip* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sprd_pmic_eic*, align 8
  %10 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %12 = call %struct.sprd_pmic_eic* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.sprd_pmic_eic* %12, %struct.sprd_pmic_eic** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @SPRD_PMIC_EIC_BIT(i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load %struct.sprd_pmic_eic*, %struct.sprd_pmic_eic** %9, align 8
  %16 = getelementptr inbounds %struct.sprd_pmic_eic, %struct.sprd_pmic_eic* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.sprd_pmic_eic*, %struct.sprd_pmic_eic** %9, align 8
  %19 = getelementptr inbounds %struct.sprd_pmic_eic, %struct.sprd_pmic_eic* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = add nsw i64 %20, %21
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @BIT(i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %10, align 4
  %27 = shl i32 %25, %26
  %28 = call i32 @regmap_update_bits(i32 %17, i64 %22, i32 %24, i32 %27)
  ret void
}

declare dso_local %struct.sprd_pmic_eic* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @SPRD_PMIC_EIC_BIT(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
