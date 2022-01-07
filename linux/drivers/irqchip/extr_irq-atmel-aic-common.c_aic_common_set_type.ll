; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-atmel-aic-common.c_aic_common_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-atmel-aic-common.c_aic_common_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.irq_chip_generic = type { %struct.aic_chip_data* }
%struct.aic_chip_data = type { i32 }

@AT91_AIC_SRCTYPE_HIGH = common dso_local global i32 0, align 4
@AT91_AIC_SRCTYPE_RISING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AT91_AIC_SRCTYPE_LOW = common dso_local global i32 0, align 4
@AT91_AIC_SRCTYPE_FALLING = common dso_local global i32 0, align 4
@AT91_AIC_SRCTYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aic_common_set_type(%struct.irq_data* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.irq_chip_generic*, align 8
  %9 = alloca %struct.aic_chip_data*, align 8
  %10 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %12 = call %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data* %11)
  store %struct.irq_chip_generic* %12, %struct.irq_chip_generic** %8, align 8
  %13 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %8, align 8
  %14 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %13, i32 0, i32 0
  %15 = load %struct.aic_chip_data*, %struct.aic_chip_data** %14, align 8
  store %struct.aic_chip_data* %15, %struct.aic_chip_data** %9, align 8
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %49 [
    i32 129, label %17
    i32 130, label %19
    i32 128, label %21
    i32 131, label %35
  ]

17:                                               ; preds = %3
  %18 = load i32, i32* @AT91_AIC_SRCTYPE_HIGH, align 4
  store i32 %18, i32* %10, align 4
  br label %52

19:                                               ; preds = %3
  %20 = load i32, i32* @AT91_AIC_SRCTYPE_RISING, align 4
  store i32 %20, i32* %10, align 4
  br label %52

21:                                               ; preds = %3
  %22 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %23 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.aic_chip_data*, %struct.aic_chip_data** %9, align 8
  %26 = getelementptr inbounds %struct.aic_chip_data, %struct.aic_chip_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %21
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %62

33:                                               ; preds = %21
  %34 = load i32, i32* @AT91_AIC_SRCTYPE_LOW, align 4
  store i32 %34, i32* %10, align 4
  br label %52

35:                                               ; preds = %3
  %36 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %37 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.aic_chip_data*, %struct.aic_chip_data** %9, align 8
  %40 = getelementptr inbounds %struct.aic_chip_data, %struct.aic_chip_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %35
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %62

47:                                               ; preds = %35
  %48 = load i32, i32* @AT91_AIC_SRCTYPE_FALLING, align 4
  store i32 %48, i32* %10, align 4
  br label %52

49:                                               ; preds = %3
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %62

52:                                               ; preds = %47, %33, %19, %17
  %53 = load i32, i32* @AT91_AIC_SRCTYPE, align 4
  %54 = xor i32 %53, -1
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %54
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %58
  store i32 %61, i32* %59, align 4
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %52, %49, %44, %30
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
