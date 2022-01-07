; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-bcm7038-l1.c___bcm7038_l1_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-bcm7038-l1.c___bcm7038_l1_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i64 }
%struct.bcm7038_l1_chip = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64*, i64 }

@IRQS_PER_WORD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*, i32)* @__bcm7038_l1_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bcm7038_l1_mask(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcm7038_l1_chip*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %9 = call %struct.bcm7038_l1_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %8)
  store %struct.bcm7038_l1_chip* %9, %struct.bcm7038_l1_chip** %5, align 8
  %10 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %11 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IRQS_PER_WORD, align 8
  %14 = udiv i64 %12, %13
  store i64 %14, i64* %6, align 8
  %15 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %16 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IRQS_PER_WORD, align 8
  %19 = urem i64 %17, %18
  %20 = call i64 @BIT(i64 %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.bcm7038_l1_chip*, %struct.bcm7038_l1_chip** %5, align 8
  %23 = getelementptr inbounds %struct.bcm7038_l1_chip, %struct.bcm7038_l1_chip* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %24, i64 %26
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = or i64 %33, %21
  store i64 %34, i64* %32, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.bcm7038_l1_chip*, %struct.bcm7038_l1_chip** %5, align 8
  %37 = getelementptr inbounds %struct.bcm7038_l1_chip, %struct.bcm7038_l1_chip* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %38, i64 %40
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.bcm7038_l1_chip*, %struct.bcm7038_l1_chip** %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i64 @reg_mask_set(%struct.bcm7038_l1_chip* %45, i64 %46)
  %48 = add nsw i64 %44, %47
  %49 = call i32 @l1_writel(i64 %35, i64 %48)
  ret void
}

declare dso_local %struct.bcm7038_l1_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i64 @BIT(i64) #1

declare dso_local i32 @l1_writel(i64, i64) #1

declare dso_local i64 @reg_mask_set(%struct.bcm7038_l1_chip*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
