; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-renesas-intc-irqpin.c_intc_irqpin_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-renesas-intc-irqpin.c_intc_irqpin_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.intc_irqpin_priv = type { i32 }

@intc_irqpin_sense = common dso_local global i8* null, align 8
@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@INTC_IRQ_SENSE_VALID = common dso_local global i8 0, align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @intc_irqpin_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intc_irqpin_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca %struct.intc_irqpin_priv*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** @intc_irqpin_sense, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %11 = and i32 %9, %10
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %8, i64 %12
  %14 = load i8, i8* %13, align 1
  store i8 %14, i8* %6, align 1
  %15 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %16 = call %struct.intc_irqpin_priv* @irq_data_get_irq_chip_data(%struct.irq_data* %15)
  store %struct.intc_irqpin_priv* %16, %struct.intc_irqpin_priv** %7, align 8
  %17 = load i8, i8* %6, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* @INTC_IRQ_SENSE_VALID, align 1
  %20 = zext i8 %19 to i32
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %37

26:                                               ; preds = %2
  %27 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %7, align 8
  %28 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %29 = call i32 @irqd_to_hwirq(%struct.irq_data* %28)
  %30 = load i8, i8* %6, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, i8* @INTC_IRQ_SENSE_VALID, align 1
  %33 = zext i8 %32 to i32
  %34 = xor i32 %31, %33
  %35 = trunc i32 %34 to i8
  %36 = call i32 @intc_irqpin_set_sense(%struct.intc_irqpin_priv* %27, i32 %29, i8 zeroext %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %26, %23
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.intc_irqpin_priv* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @intc_irqpin_set_sense(%struct.intc_irqpin_priv*, i32, i8 zeroext) #1

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
