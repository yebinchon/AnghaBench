; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-uniphier-aidet.c_uniphier_aidet_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-uniphier-aidet.c_uniphier_aidet_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32, %struct.uniphier_aidet_priv* }
%struct.uniphier_aidet_priv = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @uniphier_aidet_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_aidet_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uniphier_aidet_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %9 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %8, i32 0, i32 1
  %10 = load %struct.uniphier_aidet_priv*, %struct.uniphier_aidet_priv** %9, align 8
  store %struct.uniphier_aidet_priv* %10, %struct.uniphier_aidet_priv** %6, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %15 [
    i32 130, label %12
    i32 129, label %12
    i32 131, label %13
    i32 128, label %14
  ]

12:                                               ; preds = %2, %2
  store i32 0, i32* %7, align 4
  br label %18

13:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  store i32 130, i32* %5, align 4
  br label %18

14:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  store i32 129, i32* %5, align 4
  br label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %28

18:                                               ; preds = %14, %13, %12
  %19 = load %struct.uniphier_aidet_priv*, %struct.uniphier_aidet_priv** %6, align 8
  %20 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %21 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @uniphier_aidet_detconf_update(%struct.uniphier_aidet_priv* %19, i32 %22, i32 %23)
  %25 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @irq_chip_set_type_parent(%struct.irq_data* %25, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %18, %15
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @uniphier_aidet_detconf_update(%struct.uniphier_aidet_priv*, i32, i32) #1

declare dso_local i32 @irq_chip_set_type_parent(%struct.irq_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
