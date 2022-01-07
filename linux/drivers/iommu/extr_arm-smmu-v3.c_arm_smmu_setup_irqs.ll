; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_setup_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_setup_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_smmu_device = type { i32, i32, i32 }

@IRQ_CTRL_EVTQ_IRQEN = common dso_local global i32 0, align 4
@IRQ_CTRL_GERROR_IRQEN = common dso_local global i32 0, align 4
@ARM_SMMU_IRQ_CTRL = common dso_local global i32 0, align 4
@ARM_SMMU_IRQ_CTRLACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failed to disable irqs\0A\00", align 1
@arm_smmu_combined_irq_handler = common dso_local global i32 0, align 4
@arm_smmu_combined_irq_thread = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"arm-smmu-v3-combined-irq\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to enable combined irq\0A\00", align 1
@ARM_SMMU_FEAT_PRI = common dso_local global i32 0, align 4
@IRQ_CTRL_PRIQ_IRQEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"failed to enable irqs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arm_smmu_device*)* @arm_smmu_setup_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_smmu_setup_irqs(%struct.arm_smmu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arm_smmu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.arm_smmu_device* %0, %struct.arm_smmu_device** %3, align 8
  %7 = load i32, i32* @IRQ_CTRL_EVTQ_IRQEN, align 4
  %8 = load i32, i32* @IRQ_CTRL_GERROR_IRQEN, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %6, align 4
  %10 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %11 = load i32, i32* @ARM_SMMU_IRQ_CTRL, align 4
  %12 = load i32, i32* @ARM_SMMU_IRQ_CTRLACK, align 4
  %13 = call i32 @arm_smmu_write_reg_sync(%struct.arm_smmu_device* %10, i32 0, i32 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %18 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %74

22:                                               ; preds = %1
  %23 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %24 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %22
  %29 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %30 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @arm_smmu_combined_irq_handler, align 4
  %34 = load i32, i32* @arm_smmu_combined_irq_thread, align 4
  %35 = load i32, i32* @IRQF_ONESHOT, align 4
  %36 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %37 = call i32 @devm_request_threaded_irq(i32 %31, i32 %32, i32 %33, i32 %34, i32 %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct.arm_smmu_device* %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %28
  %41 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %42 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_warn(i32 %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %40, %28
  br label %49

46:                                               ; preds = %22
  %47 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %48 = call i32 @arm_smmu_setup_unique_irqs(%struct.arm_smmu_device* %47)
  br label %49

49:                                               ; preds = %46, %45
  %50 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %51 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ARM_SMMU_FEAT_PRI, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32, i32* @IRQ_CTRL_PRIQ_IRQEN, align 4
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %56, %49
  %61 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @ARM_SMMU_IRQ_CTRL, align 4
  %64 = load i32, i32* @ARM_SMMU_IRQ_CTRLACK, align 4
  %65 = call i32 @arm_smmu_write_reg_sync(%struct.arm_smmu_device* %61, i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %60
  %69 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %70 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dev_warn(i32 %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %73

73:                                               ; preds = %68, %60
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %16
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @arm_smmu_write_reg_sync(%struct.arm_smmu_device*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @devm_request_threaded_irq(i32, i32, i32, i32, i32, i8*, %struct.arm_smmu_device*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @arm_smmu_setup_unique_irqs(%struct.arm_smmu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
