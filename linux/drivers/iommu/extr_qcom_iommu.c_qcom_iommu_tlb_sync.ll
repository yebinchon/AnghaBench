; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_qcom_iommu.c_qcom_iommu_tlb_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_qcom_iommu.c_qcom_iommu_tlb_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_fwspec = type { i32, i32* }
%struct.qcom_iommu_ctx = type { i32, i64 }

@ARM_SMMU_CB_TLBSYNC = common dso_local global i32 0, align 4
@ARM_SMMU_CB_TLBSTATUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"timeout waiting for TLB SYNC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @qcom_iommu_tlb_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_iommu_tlb_sync(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.iommu_fwspec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qcom_iommu_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.iommu_fwspec*
  store %struct.iommu_fwspec* %9, %struct.iommu_fwspec** %3, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %48, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %3, align 8
  %13 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %51

16:                                               ; preds = %10
  %17 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %3, align 8
  %18 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %3, align 8
  %19 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.qcom_iommu_ctx* @to_ctx(%struct.iommu_fwspec* %17, i32 %24)
  store %struct.qcom_iommu_ctx* %25, %struct.qcom_iommu_ctx** %5, align 8
  %26 = load %struct.qcom_iommu_ctx*, %struct.qcom_iommu_ctx** %5, align 8
  %27 = load i32, i32* @ARM_SMMU_CB_TLBSYNC, align 4
  %28 = call i32 @iommu_writel(%struct.qcom_iommu_ctx* %26, i32 %27, i32 0)
  %29 = load %struct.qcom_iommu_ctx*, %struct.qcom_iommu_ctx** %5, align 8
  %30 = getelementptr inbounds %struct.qcom_iommu_ctx, %struct.qcom_iommu_ctx* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ARM_SMMU_CB_TLBSTATUS, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @readl_poll_timeout(i64 %33, i32 %34, i32 %38, i32 0, i32 5000000)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %16
  %43 = load %struct.qcom_iommu_ctx*, %struct.qcom_iommu_ctx** %5, align 8
  %44 = getelementptr inbounds %struct.qcom_iommu_ctx, %struct.qcom_iommu_ctx* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %42, %16
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %4, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %10

51:                                               ; preds = %10
  ret void
}

declare dso_local %struct.qcom_iommu_ctx* @to_ctx(%struct.iommu_fwspec*, i32) #1

declare dso_local i32 @iommu_writel(%struct.qcom_iommu_ctx*, i32, i32) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
