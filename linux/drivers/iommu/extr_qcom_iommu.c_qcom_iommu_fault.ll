; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_qcom_iommu.c_qcom_iommu_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_qcom_iommu.c_qcom_iommu_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_iommu_ctx = type { i32, i32, i32 }

@ARM_SMMU_CB_FSR = common dso_local global i32 0, align 4
@FSR_FAULT = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@ARM_SMMU_CB_FSYNR0 = common dso_local global i32 0, align 4
@ARM_SMMU_CB_FAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"Unhandled context fault: fsr=0x%x, iova=0x%016llx, fsynr=0x%x, cb=%d\0A\00", align 1
@ARM_SMMU_CB_RESUME = common dso_local global i32 0, align 4
@RESUME_TERMINATE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @qcom_iommu_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_iommu_fault(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.qcom_iommu_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.qcom_iommu_ctx*
  store %struct.qcom_iommu_ctx* %11, %struct.qcom_iommu_ctx** %6, align 8
  %12 = load %struct.qcom_iommu_ctx*, %struct.qcom_iommu_ctx** %6, align 8
  %13 = load i32, i32* @ARM_SMMU_CB_FSR, align 4
  %14 = call i32 @iommu_readl(%struct.qcom_iommu_ctx* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @FSR_FAULT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @IRQ_NONE, align 4
  store i32 %20, i32* %3, align 4
  br label %58

21:                                               ; preds = %2
  %22 = load %struct.qcom_iommu_ctx*, %struct.qcom_iommu_ctx** %6, align 8
  %23 = load i32, i32* @ARM_SMMU_CB_FSYNR0, align 4
  %24 = call i32 @iommu_readl(%struct.qcom_iommu_ctx* %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.qcom_iommu_ctx*, %struct.qcom_iommu_ctx** %6, align 8
  %26 = load i32, i32* @ARM_SMMU_CB_FAR, align 4
  %27 = call i32 @iommu_readq(%struct.qcom_iommu_ctx* %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.qcom_iommu_ctx*, %struct.qcom_iommu_ctx** %6, align 8
  %29 = getelementptr inbounds %struct.qcom_iommu_ctx, %struct.qcom_iommu_ctx* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.qcom_iommu_ctx*, %struct.qcom_iommu_ctx** %6, align 8
  %32 = getelementptr inbounds %struct.qcom_iommu_ctx, %struct.qcom_iommu_ctx* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @report_iommu_fault(i32 %30, i32 %33, i32 %34, i32 0)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %21
  %38 = load %struct.qcom_iommu_ctx*, %struct.qcom_iommu_ctx** %6, align 8
  %39 = getelementptr inbounds %struct.qcom_iommu_ctx, %struct.qcom_iommu_ctx* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.qcom_iommu_ctx*, %struct.qcom_iommu_ctx** %6, align 8
  %45 = getelementptr inbounds %struct.qcom_iommu_ctx, %struct.qcom_iommu_ctx* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_err_ratelimited(i32 %40, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42, i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %37, %21
  %49 = load %struct.qcom_iommu_ctx*, %struct.qcom_iommu_ctx** %6, align 8
  %50 = load i32, i32* @ARM_SMMU_CB_FSR, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @iommu_writel(%struct.qcom_iommu_ctx* %49, i32 %50, i32 %51)
  %53 = load %struct.qcom_iommu_ctx*, %struct.qcom_iommu_ctx** %6, align 8
  %54 = load i32, i32* @ARM_SMMU_CB_RESUME, align 4
  %55 = load i32, i32* @RESUME_TERMINATE, align 4
  %56 = call i32 @iommu_writel(%struct.qcom_iommu_ctx* %53, i32 %54, i32 %55)
  %57 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %48, %19
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @iommu_readl(%struct.qcom_iommu_ctx*, i32) #1

declare dso_local i32 @iommu_readq(%struct.qcom_iommu_ctx*, i32) #1

declare dso_local i32 @report_iommu_fault(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @iommu_writel(%struct.qcom_iommu_ctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
