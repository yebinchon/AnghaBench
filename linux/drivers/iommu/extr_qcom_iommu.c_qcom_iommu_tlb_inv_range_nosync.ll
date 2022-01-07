; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_qcom_iommu.c_qcom_iommu_tlb_inv_range_nosync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_qcom_iommu.c_qcom_iommu_tlb_inv_range_nosync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_fwspec = type { i32, i32* }
%struct.qcom_iommu_ctx = type { i64 }

@ARM_SMMU_CB_S1_TLBIVAL = common dso_local global i32 0, align 4
@ARM_SMMU_CB_S1_TLBIVA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i32, i8*)* @qcom_iommu_tlb_inv_range_nosync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_iommu_tlb_inv_range_nosync(i64 %0, i64 %1, i64 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.iommu_fwspec*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.qcom_iommu_ctx*, align 8
  %15 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = bitcast i8* %16 to %struct.iommu_fwspec*
  store %struct.iommu_fwspec* %17, %struct.iommu_fwspec** %11, align 8
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @ARM_SMMU_CB_S1_TLBIVAL, align 4
  br label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @ARM_SMMU_CB_S1_TLBIVA, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %65, %24
  %27 = load i32, i32* %12, align 4
  %28 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %11, align 8
  %29 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %68

32:                                               ; preds = %26
  %33 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %11, align 8
  %34 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %11, align 8
  %35 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %12, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.qcom_iommu_ctx* @to_ctx(%struct.iommu_fwspec* %33, i32 %40)
  store %struct.qcom_iommu_ctx* %41, %struct.qcom_iommu_ctx** %14, align 8
  %42 = load i64, i64* %7, align 8
  store i64 %42, i64* %15, align 8
  %43 = load i64, i64* %6, align 8
  %44 = lshr i64 %43, 12
  %45 = shl i64 %44, 12
  store i64 %45, i64* %6, align 8
  %46 = load %struct.qcom_iommu_ctx*, %struct.qcom_iommu_ctx** %14, align 8
  %47 = getelementptr inbounds %struct.qcom_iommu_ctx, %struct.qcom_iommu_ctx* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = or i64 %49, %48
  store i64 %50, i64* %6, align 8
  br label %51

51:                                               ; preds = %59, %32
  %52 = load %struct.qcom_iommu_ctx*, %struct.qcom_iommu_ctx** %14, align 8
  %53 = load i32, i32* %13, align 4
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @iommu_writel(%struct.qcom_iommu_ctx* %52, i32 %53, i64 %54)
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* %6, align 8
  %58 = add i64 %57, %56
  store i64 %58, i64* %6, align 8
  br label %59

59:                                               ; preds = %51
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %15, align 8
  %62 = sub i64 %61, %60
  store i64 %62, i64* %15, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %51, label %64

64:                                               ; preds = %59
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %12, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %12, align 4
  br label %26

68:                                               ; preds = %26
  ret void
}

declare dso_local %struct.qcom_iommu_ctx* @to_ctx(%struct.iommu_fwspec*, i32) #1

declare dso_local i32 @iommu_writel(%struct.qcom_iommu_ctx*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
