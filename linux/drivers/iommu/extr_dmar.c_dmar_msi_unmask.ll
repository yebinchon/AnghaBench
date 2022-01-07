; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_dmar.c_dmar_msi_unmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_dmar.c_dmar_msi_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.intel_iommu = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmar_msi_unmask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.intel_iommu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = call %struct.intel_iommu* @irq_data_get_irq_handler_data(%struct.irq_data* %6)
  store %struct.intel_iommu* %7, %struct.intel_iommu** %3, align 8
  %8 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %9 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %10 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @dmar_msi_reg(%struct.intel_iommu* %8, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %14 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %13, i32 0, i32 1
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @raw_spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %18 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %19, %20
  %22 = call i32 @writel(i32 0, i32 %21)
  %23 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %24 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %25, %26
  %28 = call i32 @readl(i32 %27)
  %29 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %30 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %29, i32 0, i32 1
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @raw_spin_unlock_irqrestore(i32* %30, i64 %31)
  ret void
}

declare dso_local %struct.intel_iommu* @irq_data_get_irq_handler_data(%struct.irq_data*) #1

declare dso_local i32 @dmar_msi_reg(%struct.intel_iommu*, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
