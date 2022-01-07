; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pmic-eic-sprd.c_sprd_pmic_eic_toggle_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pmic-eic-sprd.c_sprd_pmic_eic_toggle_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }

@IRQ_TYPE_EDGE_BOTH = common dso_local global i32 0, align 4
@SPRD_PMIC_EIC_IEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"PMIC EIC level was changed.\0A\00", align 1
@SPRD_PMIC_EIC_IE = common dso_local global i32 0, align 4
@SPRD_PMIC_EIC_TRIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @sprd_pmic_eic_toggle_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sprd_pmic_eic_toggle_trigger(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @irq_get_trigger_type(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %56

17:                                               ; preds = %3
  %18 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @sprd_pmic_eic_get(%struct.gpio_chip* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %41, %17
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @SPRD_PMIC_EIC_IEV, align 4
  %28 = call i32 @sprd_pmic_eic_update(%struct.gpio_chip* %25, i32 %26, i32 %27, i32 0)
  br label %34

29:                                               ; preds = %21
  %30 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @SPRD_PMIC_EIC_IEV, align 4
  %33 = call i32 @sprd_pmic_eic_update(%struct.gpio_chip* %30, i32 %31, i32 %32, i32 1)
  br label %34

34:                                               ; preds = %29, %24
  %35 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @sprd_pmic_eic_get(%struct.gpio_chip* %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %43 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_warn(i32 %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %8, align 4
  br label %21

47:                                               ; preds = %34
  %48 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @SPRD_PMIC_EIC_IE, align 4
  %51 = call i32 @sprd_pmic_eic_update(%struct.gpio_chip* %48, i32 %49, i32 %50, i32 1)
  %52 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @SPRD_PMIC_EIC_TRIG, align 4
  %55 = call i32 @sprd_pmic_eic_update(%struct.gpio_chip* %52, i32 %53, i32 %54, i32 1)
  br label %56

56:                                               ; preds = %47, %16
  ret void
}

declare dso_local i32 @irq_get_trigger_type(i32) #1

declare dso_local i32 @sprd_pmic_eic_get(%struct.gpio_chip*, i32) #1

declare dso_local i32 @sprd_pmic_eic_update(%struct.gpio_chip*, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
