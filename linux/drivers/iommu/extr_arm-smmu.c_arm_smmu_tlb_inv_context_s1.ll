; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_tlb_inv_context_s1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_tlb_inv_context_s1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_smmu_domain = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ARM_SMMU_CB_S1_TLBIASID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @arm_smmu_tlb_inv_context_s1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_smmu_tlb_inv_context_s1(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.arm_smmu_domain*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.arm_smmu_domain*
  store %struct.arm_smmu_domain* %5, %struct.arm_smmu_domain** %3, align 8
  %6 = call i32 (...) @wmb()
  %7 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %3, align 8
  %8 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %3, align 8
  %11 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ARM_SMMU_CB_S1_TLBIASID, align 4
  %15 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %3, align 8
  %16 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @arm_smmu_cb_write(i32 %9, i32 %13, i32 %14, i32 %18)
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 @arm_smmu_tlb_sync_context(i8* %20)
  ret void
}

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @arm_smmu_cb_write(i32, i32, i32, i32) #1

declare dso_local i32 @arm_smmu_tlb_sync_context(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
