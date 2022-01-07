; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-bcm7038-l1.c___bcm7038_l1_unmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-bcm7038-l1.c___bcm7038_l1_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i64 }
%struct.bcm7038_l1_chip = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64*, i64 }

@IRQS_PER_WORD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*, i32)* @__bcm7038_l1_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bcm7038_l1_unmask(%struct.irq_data* %0, i32 %1) #0 {
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
  %22 = xor i64 %21, -1
  %23 = load %struct.bcm7038_l1_chip*, %struct.bcm7038_l1_chip** %5, align 8
  %24 = getelementptr inbounds %struct.bcm7038_l1_chip, %struct.bcm7038_l1_chip* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %25, i64 %27
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = and i64 %34, %22
  store i64 %35, i64* %33, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.bcm7038_l1_chip*, %struct.bcm7038_l1_chip** %5, align 8
  %38 = getelementptr inbounds %struct.bcm7038_l1_chip, %struct.bcm7038_l1_chip* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %39, i64 %41
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.bcm7038_l1_chip*, %struct.bcm7038_l1_chip** %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i64 @reg_mask_clr(%struct.bcm7038_l1_chip* %46, i64 %47)
  %49 = add nsw i64 %45, %48
  %50 = call i32 @l1_writel(i64 %36, i64 %49)
  ret void
}

declare dso_local %struct.bcm7038_l1_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i64 @BIT(i64) #1

declare dso_local i32 @l1_writel(i64, i64) #1

declare dso_local i64 @reg_mask_clr(%struct.bcm7038_l1_chip*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
