; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_dmar.c_dmar_msi_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_dmar.c_dmar_msi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msi_msg = type { i8*, i8*, i8* }
%struct.intel_iommu = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmar_msi_read(i32 %0, %struct.msi_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msi_msg*, align 8
  %5 = alloca %struct.intel_iommu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.msi_msg* %1, %struct.msi_msg** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.intel_iommu* @irq_get_handler_data(i32 %8)
  store %struct.intel_iommu* %9, %struct.intel_iommu** %5, align 8
  %10 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @dmar_msi_reg(%struct.intel_iommu* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %14 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %13, i32 0, i32 1
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @raw_spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %18 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %19, %20
  %22 = add nsw i32 %21, 4
  %23 = call i8* @readl(i32 %22)
  %24 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %25 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %27 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %28, %29
  %31 = add nsw i32 %30, 8
  %32 = call i8* @readl(i32 %31)
  %33 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %34 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %36 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %37, %38
  %40 = add nsw i32 %39, 12
  %41 = call i8* @readl(i32 %40)
  %42 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %43 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %45 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %44, i32 0, i32 1
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @raw_spin_unlock_irqrestore(i32* %45, i64 %46)
  ret void
}

declare dso_local %struct.intel_iommu* @irq_get_handler_data(i32) #1

declare dso_local i32 @dmar_msi_reg(%struct.intel_iommu*, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @readl(i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
