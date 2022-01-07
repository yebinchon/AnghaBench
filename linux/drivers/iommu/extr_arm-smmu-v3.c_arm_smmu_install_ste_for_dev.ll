; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_install_ste_for_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_install_ste_for_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_smmu_master = type { i32, i64*, %struct.arm_smmu_device* }
%struct.arm_smmu_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arm_smmu_master*)* @arm_smmu_install_ste_for_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_smmu_install_ste_for_dev(%struct.arm_smmu_master* %0) #0 {
  %2 = alloca %struct.arm_smmu_master*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.arm_smmu_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store %struct.arm_smmu_master* %0, %struct.arm_smmu_master** %2, align 8
  %8 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %2, align 8
  %9 = getelementptr inbounds %struct.arm_smmu_master, %struct.arm_smmu_master* %8, i32 0, i32 2
  %10 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %9, align 8
  store %struct.arm_smmu_device* %10, %struct.arm_smmu_device** %5, align 8
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %57, %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %2, align 8
  %14 = getelementptr inbounds %struct.arm_smmu_master, %struct.arm_smmu_master* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %60

17:                                               ; preds = %11
  %18 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %2, align 8
  %19 = getelementptr inbounds %struct.arm_smmu_master, %struct.arm_smmu_master* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %6, align 8
  %25 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32* @arm_smmu_get_step_for_sid(%struct.arm_smmu_device* %25, i64 %26)
  store i32* %27, i32** %7, align 8
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %44, %17
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %2, align 8
  %34 = getelementptr inbounds %struct.arm_smmu_master, %struct.arm_smmu_master* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %47

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %28

47:                                               ; preds = %42, %28
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %57

52:                                               ; preds = %47
  %53 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %2, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @arm_smmu_write_strtab_ent(%struct.arm_smmu_master* %53, i64 %54, i32* %55)
  br label %57

57:                                               ; preds = %52, %51
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %11

60:                                               ; preds = %11
  ret void
}

declare dso_local i32* @arm_smmu_get_step_for_sid(%struct.arm_smmu_device*, i64) #1

declare dso_local i32 @arm_smmu_write_strtab_ent(%struct.arm_smmu_master*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
