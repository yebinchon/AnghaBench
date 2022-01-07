; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_sgpio-aspeed.c_aspeed_sgpio_setup_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_sgpio-aspeed.c_aspeed_sgpio_setup_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_sgpio_bank = type { i32 }
%struct.aspeed_sgpio = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.gpio_irq_chip }
%struct.gpio_irq_chip = type { i32*, i32, %struct.aspeed_sgpio*, i32, i32, i32, i32* }
%struct.platform_device = type { i32 }

@aspeed_sgpio_banks = common dso_local global %struct.aspeed_sgpio_bank* null, align 8
@reg_irq_enable = common dso_local global i32 0, align 4
@reg_irq_status = common dso_local global i32 0, align 4
@aspeed_sgpio_irqchip = common dso_local global i32 0, align 4
@handle_bad_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@aspeed_sgpio_irq_handler = common dso_local global i32 0, align 4
@reg_irq_type0 = common dso_local global i32 0, align 4
@reg_irq_type1 = common dso_local global i32 0, align 4
@reg_irq_type2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aspeed_sgpio*, %struct.platform_device*)* @aspeed_sgpio_setup_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_sgpio_setup_irqs(%struct.aspeed_sgpio* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aspeed_sgpio*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.aspeed_sgpio_bank*, align 8
  %9 = alloca %struct.gpio_irq_chip*, align 8
  store %struct.aspeed_sgpio* %0, %struct.aspeed_sgpio** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %11 = call i32 @platform_get_irq(%struct.platform_device* %10, i32 0)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %101

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.aspeed_sgpio*, %struct.aspeed_sgpio** %4, align 8
  %19 = getelementptr inbounds %struct.aspeed_sgpio, %struct.aspeed_sgpio* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %40, %16
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.aspeed_sgpio_bank*, %struct.aspeed_sgpio_bank** @aspeed_sgpio_banks, align 8
  %23 = call i32 @ARRAY_SIZE(%struct.aspeed_sgpio_bank* %22)
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %20
  %26 = load %struct.aspeed_sgpio_bank*, %struct.aspeed_sgpio_bank** @aspeed_sgpio_banks, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.aspeed_sgpio_bank, %struct.aspeed_sgpio_bank* %26, i64 %28
  store %struct.aspeed_sgpio_bank* %29, %struct.aspeed_sgpio_bank** %8, align 8
  %30 = load %struct.aspeed_sgpio*, %struct.aspeed_sgpio** %4, align 8
  %31 = load %struct.aspeed_sgpio_bank*, %struct.aspeed_sgpio_bank** %8, align 8
  %32 = load i32, i32* @reg_irq_enable, align 4
  %33 = call i32 @bank_reg(%struct.aspeed_sgpio* %30, %struct.aspeed_sgpio_bank* %31, i32 %32)
  %34 = call i32 @iowrite32(i32 0, i32 %33)
  %35 = load %struct.aspeed_sgpio*, %struct.aspeed_sgpio** %4, align 8
  %36 = load %struct.aspeed_sgpio_bank*, %struct.aspeed_sgpio_bank** %8, align 8
  %37 = load i32, i32* @reg_irq_status, align 4
  %38 = call i32 @bank_reg(%struct.aspeed_sgpio* %35, %struct.aspeed_sgpio_bank* %36, i32 %37)
  %39 = call i32 @iowrite32(i32 -1, i32 %38)
  br label %40

40:                                               ; preds = %25
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %20

43:                                               ; preds = %20
  %44 = load %struct.aspeed_sgpio*, %struct.aspeed_sgpio** %4, align 8
  %45 = getelementptr inbounds %struct.aspeed_sgpio, %struct.aspeed_sgpio* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store %struct.gpio_irq_chip* %46, %struct.gpio_irq_chip** %9, align 8
  %47 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %9, align 8
  %48 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %47, i32 0, i32 6
  store i32* @aspeed_sgpio_irqchip, i32** %48, align 8
  %49 = load i32, i32* @handle_bad_irq, align 4
  %50 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %9, align 8
  %51 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %53 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %9, align 8
  %54 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @aspeed_sgpio_irq_handler, align 4
  %56 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %9, align 8
  %57 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load %struct.aspeed_sgpio*, %struct.aspeed_sgpio** %4, align 8
  %59 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %9, align 8
  %60 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %59, i32 0, i32 2
  store %struct.aspeed_sgpio* %58, %struct.aspeed_sgpio** %60, align 8
  %61 = load %struct.aspeed_sgpio*, %struct.aspeed_sgpio** %4, align 8
  %62 = getelementptr inbounds %struct.aspeed_sgpio, %struct.aspeed_sgpio* %61, i32 0, i32 0
  %63 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %9, align 8
  %64 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %63, i32 0, i32 0
  store i32* %62, i32** %64, align 8
  %65 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %9, align 8
  %66 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %65, i32 0, i32 1
  store i32 1, i32* %66, align 8
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %97, %43
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.aspeed_sgpio_bank*, %struct.aspeed_sgpio_bank** @aspeed_sgpio_banks, align 8
  %70 = call i32 @ARRAY_SIZE(%struct.aspeed_sgpio_bank* %69)
  %71 = icmp slt i32 %68, %70
  br i1 %71, label %72, label %100

72:                                               ; preds = %67
  %73 = load %struct.aspeed_sgpio_bank*, %struct.aspeed_sgpio_bank** @aspeed_sgpio_banks, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.aspeed_sgpio_bank, %struct.aspeed_sgpio_bank* %73, i64 %75
  store %struct.aspeed_sgpio_bank* %76, %struct.aspeed_sgpio_bank** %8, align 8
  %77 = load %struct.aspeed_sgpio*, %struct.aspeed_sgpio** %4, align 8
  %78 = load %struct.aspeed_sgpio_bank*, %struct.aspeed_sgpio_bank** %8, align 8
  %79 = load i32, i32* @reg_irq_type0, align 4
  %80 = call i32 @bank_reg(%struct.aspeed_sgpio* %77, %struct.aspeed_sgpio_bank* %78, i32 %79)
  %81 = call i32 @iowrite32(i32 0, i32 %80)
  %82 = load %struct.aspeed_sgpio*, %struct.aspeed_sgpio** %4, align 8
  %83 = load %struct.aspeed_sgpio_bank*, %struct.aspeed_sgpio_bank** %8, align 8
  %84 = load i32, i32* @reg_irq_type1, align 4
  %85 = call i32 @bank_reg(%struct.aspeed_sgpio* %82, %struct.aspeed_sgpio_bank* %83, i32 %84)
  %86 = call i32 @iowrite32(i32 0, i32 %85)
  %87 = load %struct.aspeed_sgpio*, %struct.aspeed_sgpio** %4, align 8
  %88 = load %struct.aspeed_sgpio_bank*, %struct.aspeed_sgpio_bank** %8, align 8
  %89 = load i32, i32* @reg_irq_type2, align 4
  %90 = call i32 @bank_reg(%struct.aspeed_sgpio* %87, %struct.aspeed_sgpio_bank* %88, i32 %89)
  %91 = call i32 @iowrite32(i32 -1, i32 %90)
  %92 = load %struct.aspeed_sgpio*, %struct.aspeed_sgpio** %4, align 8
  %93 = load %struct.aspeed_sgpio_bank*, %struct.aspeed_sgpio_bank** %8, align 8
  %94 = load i32, i32* @reg_irq_enable, align 4
  %95 = call i32 @bank_reg(%struct.aspeed_sgpio* %92, %struct.aspeed_sgpio_bank* %93, i32 %94)
  %96 = call i32 @iowrite32(i32 -1, i32 %95)
  br label %97

97:                                               ; preds = %72
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %67

100:                                              ; preds = %67
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %100, %14
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.aspeed_sgpio_bank*) #1

declare dso_local i32 @iowrite32(i32, i32) #1

declare dso_local i32 @bank_reg(%struct.aspeed_sgpio*, %struct.aspeed_sgpio_bank*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
