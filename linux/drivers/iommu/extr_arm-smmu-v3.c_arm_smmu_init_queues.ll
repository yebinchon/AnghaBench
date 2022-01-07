; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_init_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_init_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_smmu_device = type { i32, %struct.TYPE_4__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@ARM_SMMU_CMDQ_PROD = common dso_local global i32 0, align 4
@ARM_SMMU_CMDQ_CONS = common dso_local global i32 0, align 4
@CMDQ_ENT_DWORDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"cmdq\00", align 1
@ARM_SMMU_EVTQ_PROD = common dso_local global i32 0, align 4
@ARM_SMMU_EVTQ_CONS = common dso_local global i32 0, align 4
@EVTQ_ENT_DWORDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"evtq\00", align 1
@ARM_SMMU_FEAT_PRI = common dso_local global i32 0, align 4
@ARM_SMMU_PRIQ_PROD = common dso_local global i32 0, align 4
@ARM_SMMU_PRIQ_CONS = common dso_local global i32 0, align 4
@PRIQ_ENT_DWORDS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"priq\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arm_smmu_device*)* @arm_smmu_init_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_smmu_init_queues(%struct.arm_smmu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arm_smmu_device*, align 8
  %4 = alloca i32, align 4
  store %struct.arm_smmu_device* %0, %struct.arm_smmu_device** %3, align 8
  %5 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %6 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %7 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* @ARM_SMMU_CMDQ_PROD, align 4
  %10 = load i32, i32* @ARM_SMMU_CMDQ_CONS, align 4
  %11 = load i32, i32* @CMDQ_ENT_DWORDS, align 4
  %12 = call i32 @arm_smmu_init_one_queue(%struct.arm_smmu_device* %5, i32* %8, i32 %9, i32 %10, i32 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %54

17:                                               ; preds = %1
  %18 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %19 = call i32 @arm_smmu_cmdq_init(%struct.arm_smmu_device* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %54

24:                                               ; preds = %17
  %25 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %26 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %27 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* @ARM_SMMU_EVTQ_PROD, align 4
  %30 = load i32, i32* @ARM_SMMU_EVTQ_CONS, align 4
  %31 = load i32, i32* @EVTQ_ENT_DWORDS, align 4
  %32 = call i32 @arm_smmu_init_one_queue(%struct.arm_smmu_device* %25, i32* %28, i32 %29, i32 %30, i32 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %54

37:                                               ; preds = %24
  %38 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %39 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ARM_SMMU_FEAT_PRI, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %54

45:                                               ; preds = %37
  %46 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %47 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %48 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* @ARM_SMMU_PRIQ_PROD, align 4
  %51 = load i32, i32* @ARM_SMMU_PRIQ_CONS, align 4
  %52 = load i32, i32* @PRIQ_ENT_DWORDS, align 4
  %53 = call i32 @arm_smmu_init_one_queue(%struct.arm_smmu_device* %46, i32* %49, i32 %50, i32 %51, i32 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %45, %44, %35, %22, %15
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @arm_smmu_init_one_queue(%struct.arm_smmu_device*, i32*, i32, i32, i32, i8*) #1

declare dso_local i32 @arm_smmu_cmdq_init(%struct.arm_smmu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
