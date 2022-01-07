; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_qcom_iommu.c_qcom_iommu_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_qcom_iommu.c_qcom_iommu_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.qcom_iommu_domain = type { i32, %struct.io_pgtable_ops* }
%struct.io_pgtable_ops = type { i32 (%struct.io_pgtable_ops*, i64, i32, i64, i32)* }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iommu_domain*, i64, i32, i64, i32)* @qcom_iommu_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_iommu_map(%struct.iommu_domain* %0, i64 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iommu_domain*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.qcom_iommu_domain*, align 8
  %15 = alloca %struct.io_pgtable_ops*, align 8
  store %struct.iommu_domain* %0, %struct.iommu_domain** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.iommu_domain*, %struct.iommu_domain** %7, align 8
  %17 = call %struct.qcom_iommu_domain* @to_qcom_iommu_domain(%struct.iommu_domain* %16)
  store %struct.qcom_iommu_domain* %17, %struct.qcom_iommu_domain** %14, align 8
  %18 = load %struct.qcom_iommu_domain*, %struct.qcom_iommu_domain** %14, align 8
  %19 = getelementptr inbounds %struct.qcom_iommu_domain, %struct.qcom_iommu_domain* %18, i32 0, i32 1
  %20 = load %struct.io_pgtable_ops*, %struct.io_pgtable_ops** %19, align 8
  store %struct.io_pgtable_ops* %20, %struct.io_pgtable_ops** %15, align 8
  %21 = load %struct.io_pgtable_ops*, %struct.io_pgtable_ops** %15, align 8
  %22 = icmp ne %struct.io_pgtable_ops* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %45

26:                                               ; preds = %5
  %27 = load %struct.qcom_iommu_domain*, %struct.qcom_iommu_domain** %14, align 8
  %28 = getelementptr inbounds %struct.qcom_iommu_domain, %struct.qcom_iommu_domain* %27, i32 0, i32 0
  %29 = load i64, i64* %13, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.io_pgtable_ops*, %struct.io_pgtable_ops** %15, align 8
  %32 = getelementptr inbounds %struct.io_pgtable_ops, %struct.io_pgtable_ops* %31, i32 0, i32 0
  %33 = load i32 (%struct.io_pgtable_ops*, i64, i32, i64, i32)*, i32 (%struct.io_pgtable_ops*, i64, i32, i64, i32)** %32, align 8
  %34 = load %struct.io_pgtable_ops*, %struct.io_pgtable_ops** %15, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i64, i64* %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 %33(%struct.io_pgtable_ops* %34, i64 %35, i32 %36, i64 %37, i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load %struct.qcom_iommu_domain*, %struct.qcom_iommu_domain** %14, align 8
  %41 = getelementptr inbounds %struct.qcom_iommu_domain, %struct.qcom_iommu_domain* %40, i32 0, i32 0
  %42 = load i64, i64* %13, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %26, %23
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local %struct.qcom_iommu_domain* @to_qcom_iommu_domain(%struct.iommu_domain*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
