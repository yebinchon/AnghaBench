; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mvebu-sei.c_mvebu_sei_mask_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mvebu-sei.c_mvebu_sei_mask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.mvebu_sei = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @mvebu_sei_mask_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvebu_sei_mask_irq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.mvebu_sei*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = call %struct.mvebu_sei* @irq_data_get_irq_chip_data(%struct.irq_data* %7)
  store %struct.mvebu_sei* %8, %struct.mvebu_sei** %3, align 8
  %9 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %10 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @SEI_IRQ_REG_IDX(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.mvebu_sei*, %struct.mvebu_sei** %3, align 8
  %14 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %13, i32 0, i32 0
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @raw_spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.mvebu_sei*, %struct.mvebu_sei** %3, align 8
  %18 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @GICP_SEMR(i32 %20)
  %22 = add nsw i64 %19, %21
  %23 = call i32 @readl_relaxed(i64 %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %25 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @SEI_IRQ_REG_BIT(i32 %26)
  %28 = call i32 @BIT(i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.mvebu_sei*, %struct.mvebu_sei** %3, align 8
  %33 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @GICP_SEMR(i32 %35)
  %37 = add nsw i64 %34, %36
  %38 = call i32 @writel_relaxed(i32 %31, i64 %37)
  %39 = load %struct.mvebu_sei*, %struct.mvebu_sei** %3, align 8
  %40 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %39, i32 0, i32 0
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @raw_spin_unlock_irqrestore(i32* %40, i64 %41)
  ret void
}

declare dso_local %struct.mvebu_sei* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @SEI_IRQ_REG_IDX(i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i64 @GICP_SEMR(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @SEI_IRQ_REG_BIT(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
