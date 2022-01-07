; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_find_sme.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_find_sme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_smmu_device = type { i32, %struct.arm_smmu_smr* }
%struct.arm_smmu_smr = type { i32, i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arm_smmu_device*, i32, i32)* @arm_smmu_find_sme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_smmu_find_sme(%struct.arm_smmu_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.arm_smmu_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.arm_smmu_smr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.arm_smmu_device* %0, %struct.arm_smmu_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %5, align 8
  %12 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %11, i32 0, i32 1
  %13 = load %struct.arm_smmu_smr*, %struct.arm_smmu_smr** %12, align 8
  store %struct.arm_smmu_smr* %13, %struct.arm_smmu_smr** %8, align 8
  %14 = load i32, i32* @ENOSPC, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %10, align 4
  %16 = load %struct.arm_smmu_smr*, %struct.arm_smmu_smr** %8, align 8
  %17 = icmp ne %struct.arm_smmu_smr* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %4, align 4
  br label %101

20:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %96, %20
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %5, align 8
  %24 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %99

27:                                               ; preds = %21
  %28 = load %struct.arm_smmu_smr*, %struct.arm_smmu_smr** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.arm_smmu_smr, %struct.arm_smmu_smr* %28, i64 %30
  %32 = getelementptr inbounds %struct.arm_smmu_smr, %struct.arm_smmu_smr* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %38, %35
  br label %96

41:                                               ; preds = %27
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.arm_smmu_smr*, %struct.arm_smmu_smr** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.arm_smmu_smr, %struct.arm_smmu_smr* %43, i64 %45
  %47 = getelementptr inbounds %struct.arm_smmu_smr, %struct.arm_smmu_smr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %42, %48
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %72

52:                                               ; preds = %41
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.arm_smmu_smr*, %struct.arm_smmu_smr** %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.arm_smmu_smr, %struct.arm_smmu_smr* %54, i64 %56
  %58 = getelementptr inbounds %struct.arm_smmu_smr, %struct.arm_smmu_smr* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = xor i32 %53, %59
  %61 = load %struct.arm_smmu_smr*, %struct.arm_smmu_smr** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.arm_smmu_smr, %struct.arm_smmu_smr* %61, i64 %63
  %65 = getelementptr inbounds %struct.arm_smmu_smr, %struct.arm_smmu_smr* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = xor i32 %66, -1
  %68 = and i32 %60, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %52
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %4, align 4
  br label %101

72:                                               ; preds = %52, %41
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.arm_smmu_smr*, %struct.arm_smmu_smr** %8, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.arm_smmu_smr, %struct.arm_smmu_smr* %74, i64 %76
  %78 = getelementptr inbounds %struct.arm_smmu_smr, %struct.arm_smmu_smr* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = xor i32 %73, %79
  %81 = load %struct.arm_smmu_smr*, %struct.arm_smmu_smr** %8, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.arm_smmu_smr, %struct.arm_smmu_smr* %81, i64 %83
  %85 = getelementptr inbounds %struct.arm_smmu_smr, %struct.arm_smmu_smr* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %7, align 4
  %88 = or i32 %86, %87
  %89 = xor i32 %88, -1
  %90 = and i32 %80, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %72
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %101

95:                                               ; preds = %72
  br label %96

96:                                               ; preds = %95, %40
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %21

99:                                               ; preds = %21
  %100 = load i32, i32* %10, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %99, %92, %70, %18
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
