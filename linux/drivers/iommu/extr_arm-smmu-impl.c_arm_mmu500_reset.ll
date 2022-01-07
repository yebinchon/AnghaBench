; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-impl.c_arm_mmu500_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-impl.c_arm_mmu500_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_smmu_device = type { i32 }

@ARM_SMMU_GR0_ID7 = common dso_local global i32 0, align 4
@ID7_MAJOR = common dso_local global i32 0, align 4
@ARM_SMMU_GR0_sACR = common dso_local global i32 0, align 4
@ARM_MMU500_ACR_CACHE_LOCK = common dso_local global i32 0, align 4
@ARM_MMU500_ACR_SMTNMB_TLBEN = common dso_local global i32 0, align 4
@ARM_MMU500_ACR_S2CRB_TLBEN = common dso_local global i32 0, align 4
@ARM_SMMU_CB_ACTLR = common dso_local global i32 0, align 4
@ARM_MMU500_ACTLR_CPRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arm_smmu_device*)* @arm_mmu500_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_mmu500_reset(%struct.arm_smmu_device* %0) #0 {
  %2 = alloca %struct.arm_smmu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.arm_smmu_device* %0, %struct.arm_smmu_device** %2, align 8
  %6 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %7 = load i32, i32* @ARM_SMMU_GR0_ID7, align 4
  %8 = call i32 @arm_smmu_gr0_read(%struct.arm_smmu_device* %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @ID7_MAJOR, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @FIELD_GET(i32 %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %13 = load i32, i32* @ARM_SMMU_GR0_sACR, align 4
  %14 = call i32 @arm_smmu_gr0_read(%struct.arm_smmu_device* %12, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp sge i32 %15, 2
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load i32, i32* @ARM_MMU500_ACR_CACHE_LOCK, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %17, %1
  %23 = load i32, i32* @ARM_MMU500_ACR_SMTNMB_TLBEN, align 4
  %24 = load i32, i32* @ARM_MMU500_ACR_S2CRB_TLBEN, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %29 = load i32, i32* @ARM_SMMU_GR0_sACR, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @arm_smmu_gr0_write(%struct.arm_smmu_device* %28, i32 %29, i32 %30)
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %52, %22
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %35 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %32
  %39 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @ARM_SMMU_CB_ACTLR, align 4
  %42 = call i32 @arm_smmu_cb_read(%struct.arm_smmu_device* %39, i32 %40, i32 %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* @ARM_MMU500_ACTLR_CPRE, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %3, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %3, align 4
  %47 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @ARM_SMMU_CB_ACTLR, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @arm_smmu_cb_write(%struct.arm_smmu_device* %47, i32 %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %38
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %32

55:                                               ; preds = %32
  ret i32 0
}

declare dso_local i32 @arm_smmu_gr0_read(%struct.arm_smmu_device*, i32) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @arm_smmu_gr0_write(%struct.arm_smmu_device*, i32, i32) #1

declare dso_local i32 @arm_smmu_cb_read(%struct.arm_smmu_device*, i32, i32) #1

declare dso_local i32 @arm_smmu_cb_write(%struct.arm_smmu_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
