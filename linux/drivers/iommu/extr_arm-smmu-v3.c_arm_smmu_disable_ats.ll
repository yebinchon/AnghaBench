; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_disable_ats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_disable_ats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_smmu_master = type { i32, i32, %struct.arm_smmu_domain* }
%struct.arm_smmu_domain = type { i32 }
%struct.arm_smmu_cmdq_ent = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arm_smmu_master*)* @arm_smmu_disable_ats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_smmu_disable_ats(%struct.arm_smmu_master* %0) #0 {
  %2 = alloca %struct.arm_smmu_master*, align 8
  %3 = alloca %struct.arm_smmu_cmdq_ent, align 4
  %4 = alloca %struct.arm_smmu_domain*, align 8
  store %struct.arm_smmu_master* %0, %struct.arm_smmu_master** %2, align 8
  %5 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %2, align 8
  %6 = getelementptr inbounds %struct.arm_smmu_master, %struct.arm_smmu_master* %5, i32 0, i32 2
  %7 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %6, align 8
  store %struct.arm_smmu_domain* %7, %struct.arm_smmu_domain** %4, align 8
  %8 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %2, align 8
  %9 = getelementptr inbounds %struct.arm_smmu_master, %struct.arm_smmu_master* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %26

13:                                               ; preds = %1
  %14 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %2, align 8
  %15 = getelementptr inbounds %struct.arm_smmu_master, %struct.arm_smmu_master* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @to_pci_dev(i32 %16)
  %18 = call i32 @pci_disable_ats(i32 %17)
  %19 = call i32 (...) @wmb()
  %20 = call i32 @arm_smmu_atc_inv_to_cmd(i32 0, i32 0, i32 0, %struct.arm_smmu_cmdq_ent* %3)
  %21 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %2, align 8
  %22 = call i32 @arm_smmu_atc_inv_master(%struct.arm_smmu_master* %21, %struct.arm_smmu_cmdq_ent* %3)
  %23 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %4, align 8
  %24 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %23, i32 0, i32 0
  %25 = call i32 @atomic_dec(i32* %24)
  br label %26

26:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @pci_disable_ats(i32) #1

declare dso_local i32 @to_pci_dev(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @arm_smmu_atc_inv_to_cmd(i32, i32, i32, %struct.arm_smmu_cmdq_ent*) #1

declare dso_local i32 @arm_smmu_atc_inv_master(%struct.arm_smmu_master*, %struct.arm_smmu_cmdq_ent*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
