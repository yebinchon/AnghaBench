; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_qcom_iommu.c_qcom_iommu_tlb_inv_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_qcom_iommu.c_qcom_iommu_tlb_inv_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_fwspec = type { i32, i32* }
%struct.qcom_iommu_ctx = type { i32 }

@ARM_SMMU_CB_S1_TLBIASID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @qcom_iommu_tlb_inv_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_iommu_tlb_inv_context(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.iommu_fwspec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qcom_iommu_ctx*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.iommu_fwspec*
  store %struct.iommu_fwspec* %7, %struct.iommu_fwspec** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %30, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %3, align 8
  %11 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %8
  %15 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %3, align 8
  %16 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %3, align 8
  %17 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.qcom_iommu_ctx* @to_ctx(%struct.iommu_fwspec* %15, i32 %22)
  store %struct.qcom_iommu_ctx* %23, %struct.qcom_iommu_ctx** %5, align 8
  %24 = load %struct.qcom_iommu_ctx*, %struct.qcom_iommu_ctx** %5, align 8
  %25 = load i32, i32* @ARM_SMMU_CB_S1_TLBIASID, align 4
  %26 = load %struct.qcom_iommu_ctx*, %struct.qcom_iommu_ctx** %5, align 8
  %27 = getelementptr inbounds %struct.qcom_iommu_ctx, %struct.qcom_iommu_ctx* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @iommu_writel(%struct.qcom_iommu_ctx* %24, i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %14
  %31 = load i32, i32* %4, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %8

33:                                               ; preds = %8
  %34 = load i8*, i8** %2, align 8
  %35 = call i32 @qcom_iommu_tlb_sync(i8* %34)
  ret void
}

declare dso_local %struct.qcom_iommu_ctx* @to_ctx(%struct.iommu_fwspec*, i32) #1

declare dso_local i32 @iommu_writel(%struct.qcom_iommu_ctx*, i32, i32) #1

declare dso_local i32 @qcom_iommu_tlb_sync(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
