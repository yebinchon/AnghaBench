; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_qcom_iommu.c_to_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_qcom_iommu.c_to_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_iommu_ctx = type { i32 }
%struct.iommu_fwspec = type { i32 }
%struct.qcom_iommu_dev = type { %struct.qcom_iommu_ctx** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qcom_iommu_ctx* (%struct.iommu_fwspec*, i32)* @to_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qcom_iommu_ctx* @to_ctx(%struct.iommu_fwspec* %0, i32 %1) #0 {
  %3 = alloca %struct.qcom_iommu_ctx*, align 8
  %4 = alloca %struct.iommu_fwspec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qcom_iommu_dev*, align 8
  store %struct.iommu_fwspec* %0, %struct.iommu_fwspec** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %4, align 8
  %8 = call %struct.qcom_iommu_dev* @to_iommu(%struct.iommu_fwspec* %7)
  store %struct.qcom_iommu_dev* %8, %struct.qcom_iommu_dev** %6, align 8
  %9 = load %struct.qcom_iommu_dev*, %struct.qcom_iommu_dev** %6, align 8
  %10 = icmp ne %struct.qcom_iommu_dev* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.qcom_iommu_ctx* null, %struct.qcom_iommu_ctx** %3, align 8
  br label %21

12:                                               ; preds = %2
  %13 = load %struct.qcom_iommu_dev*, %struct.qcom_iommu_dev** %6, align 8
  %14 = getelementptr inbounds %struct.qcom_iommu_dev, %struct.qcom_iommu_dev* %13, i32 0, i32 0
  %15 = load %struct.qcom_iommu_ctx**, %struct.qcom_iommu_ctx*** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sub i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.qcom_iommu_ctx*, %struct.qcom_iommu_ctx** %15, i64 %18
  %20 = load %struct.qcom_iommu_ctx*, %struct.qcom_iommu_ctx** %19, align 8
  store %struct.qcom_iommu_ctx* %20, %struct.qcom_iommu_ctx** %3, align 8
  br label %21

21:                                               ; preds = %12, %11
  %22 = load %struct.qcom_iommu_ctx*, %struct.qcom_iommu_ctx** %3, align 8
  ret %struct.qcom_iommu_ctx* %22
}

declare dso_local %struct.qcom_iommu_dev* @to_iommu(%struct.iommu_fwspec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
