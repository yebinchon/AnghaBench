; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-bcm6345-l1.c___bcm6345_l1_unmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-bcm6345-l1.c___bcm6345_l1_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i64 }
%struct.bcm6345_l1_chip = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64*, i64 }

@IRQS_PER_WORD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @__bcm6345_l1_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bcm6345_l1_unmask(%struct.irq_data* %0) #0 {
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
  %24 = load %struct.bcm6345_l1_chip*, %struct.bcm6345_l1_chip** %3, align 8
  %25 = getelementptr inbounds %struct.bcm6345_l1_chip, %struct.bcm6345_l1_chip* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %26, i64 %28
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = or i64 %35, %23
  store i64 %36, i64* %34, align 8
  %37 = load %struct.bcm6345_l1_chip*, %struct.bcm6345_l1_chip** %3, align 8
  %38 = getelementptr inbounds %struct.bcm6345_l1_chip, %struct.bcm6345_l1_chip* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %39, i64 %41
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %4, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.bcm6345_l1_chip*, %struct.bcm6345_l1_chip** %3, align 8
  %50 = getelementptr inbounds %struct.bcm6345_l1_chip, %struct.bcm6345_l1_chip* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %51, i64 %53
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.bcm6345_l1_chip*, %struct.bcm6345_l1_chip** %3, align 8
  %59 = load i64, i64* %4, align 8
  %60 = call i64 @reg_enable(%struct.bcm6345_l1_chip* %58, i64 %59)
  %61 = add nsw i64 %57, %60
  %62 = call i32 @__raw_writel(i64 %48, i64 %61)
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
