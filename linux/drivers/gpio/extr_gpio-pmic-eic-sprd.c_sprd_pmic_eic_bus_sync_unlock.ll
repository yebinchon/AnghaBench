; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pmic-eic-sprd.c_sprd_pmic_eic_bus_sync_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pmic-eic-sprd.c_sprd_pmic_eic_bus_sync_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.sprd_pmic_eic = type { i32*, i32 }

@IRQ_TYPE_EDGE_BOTH = common dso_local global i32 0, align 4
@SPRD_PMIC_EIC_IEV = common dso_local global i32 0, align 4
@REG_IEV = common dso_local global i64 0, align 8
@SPRD_PMIC_EIC_IE = common dso_local global i32 0, align 4
@REG_IE = common dso_local global i64 0, align 8
@SPRD_PMIC_EIC_TRIG = common dso_local global i32 0, align 4
@REG_TRIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @sprd_pmic_eic_bus_sync_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sprd_pmic_eic_bus_sync_unlock(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca %struct.sprd_pmic_eic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %9 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %8)
  store %struct.gpio_chip* %9, %struct.gpio_chip** %3, align 8
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %11 = call %struct.sprd_pmic_eic* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.sprd_pmic_eic* %11, %struct.sprd_pmic_eic** %4, align 8
  %12 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %13 = call i32 @irqd_get_trigger_type(%struct.irq_data* %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %15 = call i32 @irqd_to_hwirq(%struct.irq_data* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %1
  %21 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @sprd_pmic_eic_get(%struct.gpio_chip* %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @SPRD_PMIC_EIC_IEV, align 4
  %30 = call i32 @sprd_pmic_eic_update(%struct.gpio_chip* %27, i32 %28, i32 %29, i32 0)
  br label %36

31:                                               ; preds = %20
  %32 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @SPRD_PMIC_EIC_IEV, align 4
  %35 = call i32 @sprd_pmic_eic_update(%struct.gpio_chip* %32, i32 %33, i32 %34, i32 1)
  br label %36

36:                                               ; preds = %31, %26
  br label %48

37:                                               ; preds = %1
  %38 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @SPRD_PMIC_EIC_IEV, align 4
  %41 = load %struct.sprd_pmic_eic*, %struct.sprd_pmic_eic** %4, align 8
  %42 = getelementptr inbounds %struct.sprd_pmic_eic, %struct.sprd_pmic_eic* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @REG_IEV, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @sprd_pmic_eic_update(%struct.gpio_chip* %38, i32 %39, i32 %40, i32 %46)
  br label %48

48:                                               ; preds = %37, %36
  %49 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @SPRD_PMIC_EIC_IE, align 4
  %52 = load %struct.sprd_pmic_eic*, %struct.sprd_pmic_eic** %4, align 8
  %53 = getelementptr inbounds %struct.sprd_pmic_eic, %struct.sprd_pmic_eic* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @REG_IE, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @sprd_pmic_eic_update(%struct.gpio_chip* %49, i32 %50, i32 %51, i32 %57)
  %59 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @SPRD_PMIC_EIC_TRIG, align 4
  %62 = load %struct.sprd_pmic_eic*, %struct.sprd_pmic_eic** %4, align 8
  %63 = getelementptr inbounds %struct.sprd_pmic_eic, %struct.sprd_pmic_eic* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @REG_TRIG, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @sprd_pmic_eic_update(%struct.gpio_chip* %59, i32 %60, i32 %61, i32 %67)
  %69 = load %struct.sprd_pmic_eic*, %struct.sprd_pmic_eic** %4, align 8
  %70 = getelementptr inbounds %struct.sprd_pmic_eic, %struct.sprd_pmic_eic* %69, i32 0, i32 1
  %71 = call i32 @mutex_unlock(i32* %70)
  ret void
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.sprd_pmic_eic* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @irqd_get_trigger_type(%struct.irq_data*) #1

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @sprd_pmic_eic_get(%struct.gpio_chip*, i32) #1

declare dso_local i32 @sprd_pmic_eic_update(%struct.gpio_chip*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
