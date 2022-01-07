; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_tlb_inv_range_s2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_tlb_inv_range_s2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_smmu_domain = type { %struct.TYPE_2__, %struct.arm_smmu_device* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.arm_smmu_device = type { i32 }

@ARM_SMMU_FEAT_COHERENT_WALK = common dso_local global i32 0, align 4
@ARM_SMMU_CB_S2_TLBIIPAS2L = common dso_local global i32 0, align 4
@ARM_SMMU_CB_S2_TLBIIPAS2 = common dso_local global i32 0, align 4
@ARM_SMMU_CTX_FMT_AARCH64 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i32, i8*)* @arm_smmu_tlb_inv_range_s2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_smmu_tlb_inv_range_s2(i64 %0, i64 %1, i64 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.arm_smmu_domain*, align 8
  %12 = alloca %struct.arm_smmu_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = bitcast i8* %15 to %struct.arm_smmu_domain*
  store %struct.arm_smmu_domain* %16, %struct.arm_smmu_domain** %11, align 8
  %17 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %11, align 8
  %18 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %17, i32 0, i32 1
  %19 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %18, align 8
  store %struct.arm_smmu_device* %19, %struct.arm_smmu_device** %12, align 8
  %20 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %11, align 8
  %21 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %14, align 4
  %24 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %12, align 8
  %25 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ARM_SMMU_FEAT_COHERENT_WALK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %5
  %31 = call i32 (...) @wmb()
  br label %32

32:                                               ; preds = %30, %5
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @ARM_SMMU_CB_S2_TLBIIPAS2L, align 4
  br label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @ARM_SMMU_CB_S2_TLBIIPAS2, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  store i32 %40, i32* %13, align 4
  %41 = load i64, i64* %6, align 8
  %42 = lshr i64 %41, 12
  store i64 %42, i64* %6, align 8
  br label %43

43:                                               ; preds = %67, %39
  %44 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %11, align 8
  %45 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ARM_SMMU_CTX_FMT_AARCH64, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %12, align 8
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @arm_smmu_cb_writeq(%struct.arm_smmu_device* %51, i32 %52, i32 %53, i64 %54)
  br label %62

56:                                               ; preds = %43
  %57 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %12, align 8
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @arm_smmu_cb_write(%struct.arm_smmu_device* %57, i32 %58, i32 %59, i64 %60)
  br label %62

62:                                               ; preds = %56, %50
  %63 = load i64, i64* %8, align 8
  %64 = lshr i64 %63, 12
  %65 = load i64, i64* %6, align 8
  %66 = add i64 %65, %64
  store i64 %66, i64* %6, align 8
  br label %67

67:                                               ; preds = %62
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* %7, align 8
  %70 = sub i64 %69, %68
  store i64 %70, i64* %7, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %43, label %72

72:                                               ; preds = %67
  ret void
}

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @arm_smmu_cb_writeq(%struct.arm_smmu_device*, i32, i32, i64) #1

declare dso_local i32 @arm_smmu_cb_write(%struct.arm_smmu_device*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
