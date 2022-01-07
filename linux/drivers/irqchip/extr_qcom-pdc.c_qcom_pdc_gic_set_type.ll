; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_qcom-pdc.c_qcom_pdc_gic_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_qcom-pdc.c_qcom_pdc_gic_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@PDC_EDGE_RISING = common dso_local global i32 0, align 4
@PDC_EDGE_FALLING = common dso_local global i32 0, align 4
@PDC_EDGE_DUAL = common dso_local global i32 0, align 4
@PDC_LEVEL_HIGH = common dso_local global i32 0, align 4
@PDC_LEVEL_LOW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IRQ_i_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @qcom_pdc_gic_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_pdc_gic_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %9 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %22 [
    i32 130, label %12
    i32 131, label %14
    i32 132, label %16
    i32 129, label %18
    i32 128, label %20
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* @PDC_EDGE_RISING, align 4
  store i32 %13, i32* %7, align 4
  br label %26

14:                                               ; preds = %2
  %15 = load i32, i32* @PDC_EDGE_FALLING, align 4
  store i32 %15, i32* %7, align 4
  store i32 130, i32* %5, align 4
  br label %26

16:                                               ; preds = %2
  %17 = load i32, i32* @PDC_EDGE_DUAL, align 4
  store i32 %17, i32* %7, align 4
  store i32 130, i32* %5, align 4
  br label %26

18:                                               ; preds = %2
  %19 = load i32, i32* @PDC_LEVEL_HIGH, align 4
  store i32 %19, i32* %7, align 4
  br label %26

20:                                               ; preds = %2
  %21 = load i32, i32* @PDC_LEVEL_LOW, align 4
  store i32 %21, i32* %7, align 4
  store i32 129, i32* %5, align 4
  br label %26

22:                                               ; preds = %2
  %23 = call i32 @WARN_ON(i32 1)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %34

26:                                               ; preds = %20, %18, %16, %14, %12
  %27 = load i32, i32* @IRQ_i_CFG, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @pdc_reg_write(i32 %27, i32 %28, i32 %29)
  %31 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @irq_chip_set_type_parent(%struct.irq_data* %31, i32 %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %26, %22
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pdc_reg_write(i32, i32, i32) #1

declare dso_local i32 @irq_chip_set_type_parent(%struct.irq_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
