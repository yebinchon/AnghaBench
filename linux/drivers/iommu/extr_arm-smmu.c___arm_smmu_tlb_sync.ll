; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c___arm_smmu_tlb_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c___arm_smmu_tlb_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_smmu_device = type { i32 }

@QCOM_DUMMY_VAL = common dso_local global i32 0, align 4
@TLB_LOOP_TIMEOUT = common dso_local global i32 0, align 4
@TLB_SPIN_COUNT = common dso_local global i32 0, align 4
@sTLBGSTATUS_GSACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"TLB sync timed out -- SMMU may be deadlocked\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arm_smmu_device*, i32, i32, i32)* @__arm_smmu_tlb_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__arm_smmu_tlb_sync(%struct.arm_smmu_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.arm_smmu_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.arm_smmu_device* %0, %struct.arm_smmu_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @QCOM_DUMMY_VAL, align 4
  %16 = call i32 @arm_smmu_writel(%struct.arm_smmu_device* %12, i32 %13, i32 %14, i32 %15)
  store i32 1, i32* %10, align 4
  br label %17

17:                                               ; preds = %44, %4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @TLB_LOOP_TIMEOUT, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %47

21:                                               ; preds = %17
  %22 = load i32, i32* @TLB_SPIN_COUNT, align 4
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %38, %21
  %24 = load i32, i32* %9, align 4
  %25 = icmp ugt i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %23
  %27 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @arm_smmu_readl(%struct.arm_smmu_device* %27, i32 %28, i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @sTLBGSTATUS_GSACTIVE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %26
  br label %52

36:                                               ; preds = %26
  %37 = call i32 (...) @cpu_relax()
  br label %38

38:                                               ; preds = %36
  %39 = load i32, i32* %9, align 4
  %40 = add i32 %39, -1
  store i32 %40, i32* %9, align 4
  br label %23

41:                                               ; preds = %23
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @udelay(i32 %42)
  br label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %10, align 4
  %46 = mul i32 %45, 2
  store i32 %46, i32* %10, align 4
  br label %17

47:                                               ; preds = %17
  %48 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %5, align 8
  %49 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dev_err_ratelimited(i32 %50, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %47, %35
  ret void
}

declare dso_local i32 @arm_smmu_writel(%struct.arm_smmu_device*, i32, i32, i32) #1

declare dso_local i32 @arm_smmu_readl(%struct.arm_smmu_device*, i32, i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
