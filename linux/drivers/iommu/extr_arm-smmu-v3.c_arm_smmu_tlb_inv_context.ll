; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_tlb_inv_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_tlb_inv_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_smmu_domain = type { i64, %struct.TYPE_8__, %struct.TYPE_6__, %struct.arm_smmu_device* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.arm_smmu_device = type { i32 }
%struct.arm_smmu_cmdq_ent = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64, i32 }

@ARM_SMMU_DOMAIN_S1 = common dso_local global i64 0, align 8
@CMDQ_OP_TLBI_NH_ASID = common dso_local global i32 0, align 4
@CMDQ_OP_TLBI_S12_VMALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @arm_smmu_tlb_inv_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_smmu_tlb_inv_context(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.arm_smmu_domain*, align 8
  %4 = alloca %struct.arm_smmu_device*, align 8
  %5 = alloca %struct.arm_smmu_cmdq_ent, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.arm_smmu_domain*
  store %struct.arm_smmu_domain* %7, %struct.arm_smmu_domain** %3, align 8
  %8 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %3, align 8
  %9 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %8, i32 0, i32 3
  %10 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %9, align 8
  store %struct.arm_smmu_device* %10, %struct.arm_smmu_device** %4, align 8
  %11 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %3, align 8
  %12 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ARM_SMMU_DOMAIN_S1, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load i32, i32* @CMDQ_OP_TLBI_NH_ASID, align 4
  %18 = getelementptr inbounds %struct.arm_smmu_cmdq_ent, %struct.arm_smmu_cmdq_ent* %5, i32 0, i32 1
  store i32 %17, i32* %18, align 8
  %19 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %3, align 8
  %20 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.arm_smmu_cmdq_ent, %struct.arm_smmu_cmdq_ent* %5, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = getelementptr inbounds %struct.arm_smmu_cmdq_ent, %struct.arm_smmu_cmdq_ent* %5, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  br label %37

28:                                               ; preds = %1
  %29 = load i32, i32* @CMDQ_OP_TLBI_S12_VMALL, align 4
  %30 = getelementptr inbounds %struct.arm_smmu_cmdq_ent, %struct.arm_smmu_cmdq_ent* %5, i32 0, i32 1
  store i32 %29, i32* %30, align 8
  %31 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %3, align 8
  %32 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.arm_smmu_cmdq_ent, %struct.arm_smmu_cmdq_ent* %5, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %28, %16
  %38 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %39 = call i32 @arm_smmu_cmdq_issue_cmd(%struct.arm_smmu_device* %38, %struct.arm_smmu_cmdq_ent* %5)
  %40 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %41 = call i32 @arm_smmu_cmdq_issue_sync(%struct.arm_smmu_device* %40)
  %42 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %3, align 8
  %43 = call i32 @arm_smmu_atc_inv_domain(%struct.arm_smmu_domain* %42, i32 0, i32 0, i32 0)
  ret void
}

declare dso_local i32 @arm_smmu_cmdq_issue_cmd(%struct.arm_smmu_device*, %struct.arm_smmu_cmdq_ent*) #1

declare dso_local i32 @arm_smmu_cmdq_issue_sync(%struct.arm_smmu_device*) #1

declare dso_local i32 @arm_smmu_atc_inv_domain(%struct.arm_smmu_domain*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
