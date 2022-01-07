; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_atc_inv_master.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_atc_inv_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_smmu_master = type { i32, i32, i32*, i32 }
%struct.arm_smmu_cmdq_ent = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arm_smmu_master*, %struct.arm_smmu_cmdq_ent*)* @arm_smmu_atc_inv_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_smmu_atc_inv_master(%struct.arm_smmu_master* %0, %struct.arm_smmu_cmdq_ent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.arm_smmu_master*, align 8
  %5 = alloca %struct.arm_smmu_cmdq_ent*, align 8
  %6 = alloca i32, align 4
  store %struct.arm_smmu_master* %0, %struct.arm_smmu_master** %4, align 8
  store %struct.arm_smmu_cmdq_ent* %1, %struct.arm_smmu_cmdq_ent** %5, align 8
  %7 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %4, align 8
  %8 = getelementptr inbounds %struct.arm_smmu_master, %struct.arm_smmu_master* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

12:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %35, %12
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %4, align 8
  %16 = getelementptr inbounds %struct.arm_smmu_master, %struct.arm_smmu_master* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %13
  %20 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %4, align 8
  %21 = getelementptr inbounds %struct.arm_smmu_master, %struct.arm_smmu_master* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.arm_smmu_cmdq_ent*, %struct.arm_smmu_cmdq_ent** %5, align 8
  %28 = getelementptr inbounds %struct.arm_smmu_cmdq_ent, %struct.arm_smmu_cmdq_ent* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %4, align 8
  %31 = getelementptr inbounds %struct.arm_smmu_master, %struct.arm_smmu_master* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.arm_smmu_cmdq_ent*, %struct.arm_smmu_cmdq_ent** %5, align 8
  %34 = call i32 @arm_smmu_cmdq_issue_cmd(i32 %32, %struct.arm_smmu_cmdq_ent* %33)
  br label %35

35:                                               ; preds = %19
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %13

38:                                               ; preds = %13
  %39 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %4, align 8
  %40 = getelementptr inbounds %struct.arm_smmu_master, %struct.arm_smmu_master* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @arm_smmu_cmdq_issue_sync(i32 %41)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %38, %11
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @arm_smmu_cmdq_issue_cmd(i32, %struct.arm_smmu_cmdq_ent*) #1

declare dso_local i32 @arm_smmu_cmdq_issue_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
