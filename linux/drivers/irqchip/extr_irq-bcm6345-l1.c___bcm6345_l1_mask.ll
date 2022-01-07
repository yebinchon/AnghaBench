; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-bcm6345-l1.c___bcm6345_l1_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-bcm6345-l1.c___bcm6345_l1_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i64 }
%struct.bcm6345_l1_chip = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64*, i64 }

@IRQS_PER_WORD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @__bcm6345_l1_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bcm6345_l1_mask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.bcm6345_l1_chip*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = call %struct.bcm6345_l1_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %7)
  store %struct.bcm6345_l1_chip* %8, %struct.bcm6345_l1_chip** %3, align 8
  %9 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %10 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @IRQS_PER_WORD, align 8
  %13 = udiv i64 %11, %12
  store i64 %13, i64* %4, align 8
  %14 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %15 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IRQS_PER_WORD, align 8
  %18 = urem i64 %16, %17
  %19 = call i64 @BIT(i64 %18)
  store i64 %19, i64* %5, align 8
  %20 = load %struct.bcm6345_l1_chip*, %struct.bcm6345_l1_chip** %3, align 8
  %21 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %22 = call i32 @cpu_for_irq(%struct.bcm6345_l1_chip* %20, %struct.irq_data* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i64, i64* %5, align 8
  %24 = xor i64 %23, -1
  %25 = load %struct.bcm6345_l1_chip*, %struct.bcm6345_l1_chip** %3, align 8
  %26 = getelementptr inbounds %struct.bcm6345_l1_chip, %struct.bcm6345_l1_chip* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %27, i64 %29
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* %4, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = and i64 %36, %24
  store i64 %37, i64* %35, align 8
  %38 = load %struct.bcm6345_l1_chip*, %struct.bcm6345_l1_chip** %3, align 8
  %39 = getelementptr inbounds %struct.bcm6345_l1_chip, %struct.bcm6345_l1_chip* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %40, i64 %42
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* %4, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.bcm6345_l1_chip*, %struct.bcm6345_l1_chip** %3, align 8
  %51 = getelementptr inbounds %struct.bcm6345_l1_chip, %struct.bcm6345_l1_chip* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %52, i64 %54
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.bcm6345_l1_chip*, %struct.bcm6345_l1_chip** %3, align 8
  %60 = load i64, i64* %4, align 8
  %61 = call i64 @reg_enable(%struct.bcm6345_l1_chip* %59, i64 %60)
  %62 = add nsw i64 %58, %61
  %63 = call i32 @__raw_writel(i64 %49, i64 %62)
  ret void
}

declare dso_local %struct.bcm6345_l1_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i64 @BIT(i64) #1

declare dso_local i32 @cpu_for_irq(%struct.bcm6345_l1_chip*, %struct.irq_data*) #1

declare dso_local i32 @__raw_writel(i64, i64) #1

declare dso_local i64 @reg_enable(%struct.bcm6345_l1_chip*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
