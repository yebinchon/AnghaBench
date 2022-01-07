; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_device_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_device_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.arm_smmu_device = type { i32, i32, i32, i32 }

@ARM_SMMU_MAX_CBS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"removing device with active domains!\0A\00", align 1
@ARM_SMMU_GR0_sCR0 = common dso_local global i32 0, align 4
@sCR0_CLIENTPD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @arm_smmu_device_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_smmu_device_shutdown(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.arm_smmu_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.arm_smmu_device* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.arm_smmu_device* %5, %struct.arm_smmu_device** %3, align 8
  %6 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %7 = icmp ne %struct.arm_smmu_device* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %55

9:                                                ; preds = %1
  %10 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %11 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ARM_SMMU_MAX_CBS, align 4
  %14 = call i32 @bitmap_empty(i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %9
  %17 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %16, %9
  %21 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %22 = call i32 @arm_smmu_rpm_get(%struct.arm_smmu_device* %21)
  %23 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %24 = load i32, i32* @ARM_SMMU_GR0_sCR0, align 4
  %25 = load i32, i32* @sCR0_CLIENTPD, align 4
  %26 = call i32 @arm_smmu_gr0_write(%struct.arm_smmu_device* %23, i32 %24, i32 %25)
  %27 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %28 = call i32 @arm_smmu_rpm_put(%struct.arm_smmu_device* %27)
  %29 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %30 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @pm_runtime_enabled(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %20
  %35 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %36 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pm_runtime_force_suspend(i32 %37)
  br label %47

39:                                               ; preds = %20
  %40 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %41 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %44 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @clk_bulk_disable(i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %39, %34
  %48 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %49 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %52 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @clk_bulk_unprepare(i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %47, %8
  ret void
}

declare dso_local %struct.arm_smmu_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @bitmap_empty(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @arm_smmu_rpm_get(%struct.arm_smmu_device*) #1

declare dso_local i32 @arm_smmu_gr0_write(%struct.arm_smmu_device*, i32, i32) #1

declare dso_local i32 @arm_smmu_rpm_put(%struct.arm_smmu_device*) #1

declare dso_local i64 @pm_runtime_enabled(i32) #1

declare dso_local i32 @pm_runtime_force_suspend(i32) #1

declare dso_local i32 @clk_bulk_disable(i32, i32) #1

declare dso_local i32 @clk_bulk_unprepare(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
