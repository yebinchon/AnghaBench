; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ingenic.c_intc_cascade.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ingenic.c_intc_cascade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ingenic_intc_data = type { i32, i64 }

@CHIP_SIZE = common dso_local global i32 0, align 4
@JZ_REG_INTC_PENDING = common dso_local global i64 0, align 8
@JZ4740_IRQ_BASE = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @intc_cascade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intc_cascade(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ingenic_intc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.ingenic_intc_data* @irq_get_handler_data(i32 %8)
  store %struct.ingenic_intc_data* %9, %struct.ingenic_intc_data** %5, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %41, %2
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.ingenic_intc_data*, %struct.ingenic_intc_data** %5, align 8
  %13 = getelementptr inbounds %struct.ingenic_intc_data, %struct.ingenic_intc_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %44

16:                                               ; preds = %10
  %17 = load %struct.ingenic_intc_data*, %struct.ingenic_intc_data** %5, align 8
  %18 = getelementptr inbounds %struct.ingenic_intc_data, %struct.ingenic_intc_data* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @CHIP_SIZE, align 4
  %22 = mul i32 %20, %21
  %23 = zext i32 %22 to i64
  %24 = add nsw i64 %19, %23
  %25 = load i64, i64* @JZ_REG_INTC_PENDING, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readl(i64 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %16
  br label %41

31:                                               ; preds = %16
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @__fls(i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = mul i32 %34, 32
  %36 = zext i32 %35 to i64
  %37 = add nsw i64 %33, %36
  %38 = load i64, i64* @JZ4740_IRQ_BASE, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @generic_handle_irq(i64 %39)
  br label %41

41:                                               ; preds = %31, %30
  %42 = load i32, i32* %7, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %10

44:                                               ; preds = %10
  %45 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %45
}

declare dso_local %struct.ingenic_intc_data* @irq_get_handler_data(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @generic_handle_irq(i64) #1

declare dso_local i64 @__fls(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
