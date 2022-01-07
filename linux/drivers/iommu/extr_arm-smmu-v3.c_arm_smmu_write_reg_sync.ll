; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_write_reg_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_write_reg_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_smmu_device = type { i64 }

@ARM_SMMU_POLL_TIMEOUT_US = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arm_smmu_device*, i64, i32, i32)* @arm_smmu_write_reg_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_smmu_write_reg_sync(%struct.arm_smmu_device* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.arm_smmu_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.arm_smmu_device* %0, %struct.arm_smmu_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %5, align 8
  %12 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = zext i32 %14 to i64
  %16 = add nsw i64 %13, %15
  %17 = call i32 @writel_relaxed(i64 %10, i64 %16)
  %18 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %5, align 8
  %19 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* @ARM_SMMU_POLL_TIMEOUT_US, align 4
  %30 = call i32 @readl_relaxed_poll_timeout(i64 %23, i64 %24, i32 %28, i32 1, i32 %29)
  ret i32 %30
}

declare dso_local i32 @writel_relaxed(i64, i64) #1

declare dso_local i32 @readl_relaxed_poll_timeout(i64, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
