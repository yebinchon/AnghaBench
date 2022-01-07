; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pmic-eic-sprd.c_sprd_pmic_eic_set_debounce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pmic-eic-sprd.c_sprd_pmic_eic_set_debounce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.sprd_pmic_eic = type { i32, i32 }

@SPRD_PMIC_EIC_CTRL0 = common dso_local global i32 0, align 4
@SPRD_PMIC_EIC_DBNC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @sprd_pmic_eic_set_debounce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_pmic_eic_set_debounce(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sprd_pmic_eic*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %13 = call %struct.sprd_pmic_eic* @gpiochip_get_data(%struct.gpio_chip* %12)
  store %struct.sprd_pmic_eic* %13, %struct.sprd_pmic_eic** %8, align 8
  %14 = load i32, i32* @SPRD_PMIC_EIC_CTRL0, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @SPRD_PMIC_EIC_BIT(i32 %15)
  %17 = mul nsw i32 %16, 4
  %18 = add i32 %14, %17
  store i32 %18, i32* %9, align 4
  %19 = load %struct.sprd_pmic_eic*, %struct.sprd_pmic_eic** %8, align 8
  %20 = getelementptr inbounds %struct.sprd_pmic_eic, %struct.sprd_pmic_eic* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sprd_pmic_eic*, %struct.sprd_pmic_eic** %8, align 8
  %23 = getelementptr inbounds %struct.sprd_pmic_eic, %struct.sprd_pmic_eic* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %9, align 4
  %26 = add i32 %24, %25
  %27 = call i32 @regmap_read(i32 %21, i32 %26, i32* %10)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %4, align 4
  br label %53

32:                                               ; preds = %3
  %33 = load i32, i32* @SPRD_PMIC_EIC_DBNC_MASK, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %10, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %7, align 4
  %38 = udiv i32 %37, 1000
  %39 = load i32, i32* @SPRD_PMIC_EIC_DBNC_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* %10, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %10, align 4
  %43 = load %struct.sprd_pmic_eic*, %struct.sprd_pmic_eic** %8, align 8
  %44 = getelementptr inbounds %struct.sprd_pmic_eic, %struct.sprd_pmic_eic* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sprd_pmic_eic*, %struct.sprd_pmic_eic** %8, align 8
  %47 = getelementptr inbounds %struct.sprd_pmic_eic, %struct.sprd_pmic_eic* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %9, align 4
  %50 = add i32 %48, %49
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @regmap_write(i32 %45, i32 %50, i32 %51)
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %32, %30
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.sprd_pmic_eic* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @SPRD_PMIC_EIC_BIT(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
