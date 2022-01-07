; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-lpc32xx.c_lpc32xx_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-lpc32xx.c_lpc32xx_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.lpc32xx_irq_chip = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"unsupported irq type %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@LPC32XX_INTC_POL = common dso_local global i32 0, align 4
@LPC32XX_INTC_TYPE = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @lpc32xx_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc32xx_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpc32xx_irq_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %12 = call %struct.lpc32xx_irq_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %11)
  store %struct.lpc32xx_irq_chip* %12, %struct.lpc32xx_irq_chip** %6, align 8
  %13 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %14 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @BIT(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %22 [
    i32 130, label %18
    i32 131, label %19
    i32 129, label %20
    i32 128, label %21
  ]

18:                                               ; preds = %2
  store i32 1, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %27

19:                                               ; preds = %2
  store i32 1, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %27

20:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %27

21:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %27

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %75

27:                                               ; preds = %21, %20, %19, %18
  %28 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @irqd_set_trigger_type(%struct.irq_data* %28, i32 %29)
  %31 = load %struct.lpc32xx_irq_chip*, %struct.lpc32xx_irq_chip** %6, align 8
  %32 = load i32, i32* @LPC32XX_INTC_POL, align 4
  %33 = call i32 @lpc32xx_ic_read(%struct.lpc32xx_irq_chip* %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %7, align 4
  br label %45

40:                                               ; preds = %27
  %41 = load i32, i32* %8, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %40, %36
  %46 = load %struct.lpc32xx_irq_chip*, %struct.lpc32xx_irq_chip** %6, align 8
  %47 = load i32, i32* @LPC32XX_INTC_POL, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @lpc32xx_ic_write(%struct.lpc32xx_irq_chip* %46, i32 %47, i32 %48)
  %50 = load %struct.lpc32xx_irq_chip*, %struct.lpc32xx_irq_chip** %6, align 8
  %51 = load i32, i32* @LPC32XX_INTC_TYPE, align 4
  %52 = call i32 @lpc32xx_ic_read(%struct.lpc32xx_irq_chip* %50, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %45
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  %59 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %60 = load i32, i32* @handle_edge_irq, align 4
  %61 = call i32 @irq_set_handler_locked(%struct.irq_data* %59, i32 %60)
  br label %70

62:                                               ; preds = %45
  %63 = load i32, i32* %8, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %7, align 4
  %67 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %68 = load i32, i32* @handle_level_irq, align 4
  %69 = call i32 @irq_set_handler_locked(%struct.irq_data* %67, i32 %68)
  br label %70

70:                                               ; preds = %62, %55
  %71 = load %struct.lpc32xx_irq_chip*, %struct.lpc32xx_irq_chip** %6, align 8
  %72 = load i32, i32* @LPC32XX_INTC_TYPE, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @lpc32xx_ic_write(%struct.lpc32xx_irq_chip* %71, i32 %72, i32 %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %70, %22
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.lpc32xx_irq_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @irqd_set_trigger_type(%struct.irq_data*, i32) #1

declare dso_local i32 @lpc32xx_ic_read(%struct.lpc32xx_irq_chip*, i32) #1

declare dso_local i32 @lpc32xx_ic_write(%struct.lpc32xx_irq_chip*, i32, i32) #1

declare dso_local i32 @irq_set_handler_locked(%struct.irq_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
