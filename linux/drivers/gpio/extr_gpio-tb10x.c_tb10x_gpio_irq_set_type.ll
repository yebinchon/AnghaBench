; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tb10x.c_tb10x_gpio_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tb10x.c_tb10x_gpio_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@IRQF_TRIGGER_MASK = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_BOTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Only (both) edge triggered interrupts supported.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IRQ_SET_MASK_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @tb10x_gpio_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb10x_gpio_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @IRQF_TRIGGER_MASK, align 4
  %8 = and i32 %6, %7
  %9 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %20

15:                                               ; preds = %2
  %16 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @irqd_set_trigger_type(%struct.irq_data* %16, i32 %17)
  %19 = load i32, i32* @IRQ_SET_MASK_OK, align 4
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %15, %11
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @irqd_set_trigger_type(%struct.irq_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
