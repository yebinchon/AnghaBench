; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-atmel-aic.c_aic_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-atmel-aic.c_aic_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.irq_chip_generic = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @aic_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_chip_generic*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %10 = call %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data* %9)
  store %struct.irq_chip_generic* %10, %struct.irq_chip_generic** %6, align 8
  %11 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %12 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %13 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @AT91_AIC_SMR(i32 %14)
  %16 = call i32 @irq_reg_readl(%struct.irq_chip_generic* %11, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @aic_common_set_type(%struct.irq_data* %17, i32 %18, i32* %7)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %32

24:                                               ; preds = %2
  %25 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %28 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @AT91_AIC_SMR(i32 %29)
  %31 = call i32 @irq_reg_writel(%struct.irq_chip_generic* %25, i32 %26, i32 %30)
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %24, %22
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @irq_reg_readl(%struct.irq_chip_generic*, i32) #1

declare dso_local i32 @AT91_AIC_SMR(i32) #1

declare dso_local i32 @aic_common_set_type(%struct.irq_data*, i32, i32*) #1

declare dso_local i32 @irq_reg_writel(%struct.irq_chip_generic*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
