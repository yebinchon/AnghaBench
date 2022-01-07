; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-xgene-sb.c_xgene_gpio_sb_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-xgene-sb.c_xgene_gpio_sb_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.xgene_gpio_sb = type { i64, i32 }

@GPIO_INT_LEVEL_H = common dso_local global i32 0, align 4
@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@GPIO_INT_LEVEL_L = common dso_local global i32 0, align 4
@MPA_GPIO_SEL_LO = common dso_local global i64 0, align 8
@MPA_GPIO_INT_LVL = common dso_local global i64 0, align 8
@IRQ_TYPE_EDGE_BOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @xgene_gpio_sb_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_gpio_sb_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xgene_gpio_sb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %10 = call %struct.xgene_gpio_sb* @irq_data_get_irq_chip_data(%struct.irq_data* %9)
  store %struct.xgene_gpio_sb* %10, %struct.xgene_gpio_sb** %6, align 8
  %11 = load %struct.xgene_gpio_sb*, %struct.xgene_gpio_sb** %6, align 8
  %12 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %13 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @HWIRQ_TO_GPIO(%struct.xgene_gpio_sb* %11, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @GPIO_INT_LEVEL_H, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %19 = and i32 %17, %18
  switch i32 %19, label %24 [
    i32 130, label %20
    i32 129, label %20
    i32 131, label %22
    i32 128, label %22
  ]

20:                                               ; preds = %2, %2
  %21 = load i32, i32* @GPIO_INT_LEVEL_H, align 4
  store i32 %21, i32* %8, align 4
  br label %25

22:                                               ; preds = %2, %2
  %23 = load i32, i32* @GPIO_INT_LEVEL_L, align 4
  store i32 %23, i32* %8, align 4
  br label %25

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %24, %22, %20
  %26 = load %struct.xgene_gpio_sb*, %struct.xgene_gpio_sb** %6, align 8
  %27 = getelementptr inbounds %struct.xgene_gpio_sb, %struct.xgene_gpio_sb* %26, i32 0, i32 1
  %28 = load %struct.xgene_gpio_sb*, %struct.xgene_gpio_sb** %6, align 8
  %29 = getelementptr inbounds %struct.xgene_gpio_sb, %struct.xgene_gpio_sb* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MPA_GPIO_SEL_LO, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i32, i32* %7, align 4
  %34 = mul nsw i32 %33, 2
  %35 = call i32 @xgene_gpio_set_bit(i32* %27, i64 %32, i32 %34, i32 1)
  %36 = load %struct.xgene_gpio_sb*, %struct.xgene_gpio_sb** %6, align 8
  %37 = getelementptr inbounds %struct.xgene_gpio_sb, %struct.xgene_gpio_sb* %36, i32 0, i32 1
  %38 = load %struct.xgene_gpio_sb*, %struct.xgene_gpio_sb** %6, align 8
  %39 = getelementptr inbounds %struct.xgene_gpio_sb, %struct.xgene_gpio_sb* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MPA_GPIO_INT_LVL, align 8
  %42 = add nsw i64 %40, %41
  %43 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %44 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @xgene_gpio_set_bit(i32* %37, i64 %42, i32 %45, i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %25
  %53 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %54 = call i32 @irq_chip_set_type_parent(%struct.irq_data* %53, i32 130)
  store i32 %54, i32* %3, align 4
  br label %58

55:                                               ; preds = %25
  %56 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %57 = call i32 @irq_chip_set_type_parent(%struct.irq_data* %56, i32 129)
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.xgene_gpio_sb* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @HWIRQ_TO_GPIO(%struct.xgene_gpio_sb*, i32) #1

declare dso_local i32 @xgene_gpio_set_bit(i32*, i64, i32, i32) #1

declare dso_local i32 @irq_chip_set_type_parent(%struct.irq_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
