; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tegra.c_tegra_gpio_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tegra.c_tegra_gpio_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.tegra_gpio_bank = type { i32*, %struct.tegra_gpio_info* }
%struct.tegra_gpio_info = type { i32, i32 }

@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@GPIO_INT_LVL_EDGE_RISING = common dso_local global i32 0, align 4
@GPIO_INT_LVL_EDGE_FALLING = common dso_local global i32 0, align 4
@GPIO_INT_LVL_EDGE_BOTH = common dso_local global i32 0, align 4
@GPIO_INT_LVL_LEVEL_HIGH = common dso_local global i32 0, align 4
@GPIO_INT_LVL_LEVEL_LOW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GPIO_INT_LVL_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"unable to lock Tegra GPIO %u as IRQ\0A\00", align 1
@handle_level_irq = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @tegra_gpio_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_gpio_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tegra_gpio_bank*, align 8
  %10 = alloca %struct.tegra_gpio_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %15 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @GPIO_PORT(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %20 = call %struct.tegra_gpio_bank* @irq_data_get_irq_chip_data(%struct.irq_data* %19)
  store %struct.tegra_gpio_bank* %20, %struct.tegra_gpio_bank** %9, align 8
  %21 = load %struct.tegra_gpio_bank*, %struct.tegra_gpio_bank** %9, align 8
  %22 = getelementptr inbounds %struct.tegra_gpio_bank, %struct.tegra_gpio_bank* %21, i32 0, i32 1
  %23 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %22, align 8
  store %struct.tegra_gpio_info* %23, %struct.tegra_gpio_info** %10, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %26 = and i32 %24, %25
  switch i32 %26, label %37 [
    i32 130, label %27
    i32 131, label %29
    i32 132, label %31
    i32 129, label %33
    i32 128, label %35
  ]

27:                                               ; preds = %2
  %28 = load i32, i32* @GPIO_INT_LVL_EDGE_RISING, align 4
  store i32 %28, i32* %8, align 4
  br label %40

29:                                               ; preds = %2
  %30 = load i32, i32* @GPIO_INT_LVL_EDGE_FALLING, align 4
  store i32 %30, i32* %8, align 4
  br label %40

31:                                               ; preds = %2
  %32 = load i32, i32* @GPIO_INT_LVL_EDGE_BOTH, align 4
  store i32 %32, i32* %8, align 4
  br label %40

33:                                               ; preds = %2
  %34 = load i32, i32* @GPIO_INT_LVL_LEVEL_HIGH, align 4
  store i32 %34, i32* %8, align 4
  br label %40

35:                                               ; preds = %2
  %36 = load i32, i32* @GPIO_INT_LVL_LEVEL_LOW, align 4
  store i32 %36, i32* %8, align 4
  br label %40

37:                                               ; preds = %2
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %124

40:                                               ; preds = %35, %33, %31, %29, %27
  %41 = load %struct.tegra_gpio_bank*, %struct.tegra_gpio_bank** %9, align 8
  %42 = getelementptr inbounds %struct.tegra_gpio_bank, %struct.tegra_gpio_bank* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i64, i64* %11, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  %49 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %10, align 8
  %50 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %10, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @GPIO_INT_LVL(%struct.tegra_gpio_info* %50, i32 %51)
  %53 = call i32 @tegra_gpio_readl(%struct.tegra_gpio_info* %49, i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* @GPIO_INT_LVL_MASK, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @GPIO_BIT(i32 %55)
  %57 = shl i32 %54, %56
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %12, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @GPIO_BIT(i32 %62)
  %64 = shl i32 %61, %63
  %65 = load i32, i32* %12, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %12, align 4
  %67 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %10, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %10, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @GPIO_INT_LVL(%struct.tegra_gpio_info* %69, i32 %70)
  %72 = call i32 @tegra_gpio_writel(%struct.tegra_gpio_info* %67, i32 %68, i32 %71)
  %73 = load %struct.tegra_gpio_bank*, %struct.tegra_gpio_bank** %9, align 8
  %74 = getelementptr inbounds %struct.tegra_gpio_bank, %struct.tegra_gpio_bank* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i64, i64* %11, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  %81 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %10, align 8
  %82 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %10, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @GPIO_MSK_OE(%struct.tegra_gpio_info* %82, i32 %83)
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @tegra_gpio_mask_write(%struct.tegra_gpio_info* %81, i32 %84, i32 %85, i32 0)
  %87 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %10, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @tegra_gpio_enable(%struct.tegra_gpio_info* %87, i32 %88)
  %90 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %10, align 8
  %91 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %90, i32 0, i32 1
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @gpiochip_lock_as_irq(i32* %91, i32 %92)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %40
  %97 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %10, align 8
  %98 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @dev_err(i32 %99, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %100)
  %102 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %10, align 8
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @tegra_gpio_disable(%struct.tegra_gpio_info* %102, i32 %103)
  %105 = load i32, i32* %13, align 4
  store i32 %105, i32* %3, align 4
  br label %124

106:                                              ; preds = %40
  %107 = load i32, i32* %5, align 4
  %108 = and i32 %107, 129
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %112 = load i32, i32* @handle_level_irq, align 4
  %113 = call i32 @irq_set_handler_locked(%struct.irq_data* %111, i32 %112)
  br label %123

114:                                              ; preds = %106
  %115 = load i32, i32* %5, align 4
  %116 = and i32 %115, 131
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %120 = load i32, i32* @handle_edge_irq, align 4
  %121 = call i32 @irq_set_handler_locked(%struct.irq_data* %119, i32 %120)
  br label %122

122:                                              ; preds = %118, %114
  br label %123

123:                                              ; preds = %122, %110
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %123, %96, %37
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @GPIO_PORT(i32) #1

declare dso_local %struct.tegra_gpio_bank* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @tegra_gpio_readl(%struct.tegra_gpio_info*, i32) #1

declare dso_local i32 @GPIO_INT_LVL(%struct.tegra_gpio_info*, i32) #1

declare dso_local i32 @GPIO_BIT(i32) #1

declare dso_local i32 @tegra_gpio_writel(%struct.tegra_gpio_info*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tegra_gpio_mask_write(%struct.tegra_gpio_info*, i32, i32, i32) #1

declare dso_local i32 @GPIO_MSK_OE(%struct.tegra_gpio_info*, i32) #1

declare dso_local i32 @tegra_gpio_enable(%struct.tegra_gpio_info*, i32) #1

declare dso_local i32 @gpiochip_lock_as_irq(i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @tegra_gpio_disable(%struct.tegra_gpio_info*, i32) #1

declare dso_local i32 @irq_set_handler_locked(%struct.irq_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
