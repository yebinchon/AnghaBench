; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_write_s2cr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_write_s2cr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_smmu_device = type { i32, %struct.TYPE_2__*, %struct.arm_smmu_s2cr* }
%struct.TYPE_2__ = type { i64 }
%struct.arm_smmu_s2cr = type { i32, i32, i32 }

@S2CR_TYPE = common dso_local global i32 0, align 4
@S2CR_CBNDX = common dso_local global i32 0, align 4
@S2CR_PRIVCFG = common dso_local global i32 0, align 4
@ARM_SMMU_FEAT_EXIDS = common dso_local global i32 0, align 4
@S2CR_EXIDVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arm_smmu_device*, i32)* @arm_smmu_write_s2cr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_smmu_write_s2cr(%struct.arm_smmu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.arm_smmu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.arm_smmu_s2cr*, align 8
  %6 = alloca i32, align 4
  store %struct.arm_smmu_device* %0, %struct.arm_smmu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %8 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %7, i32 0, i32 2
  %9 = load %struct.arm_smmu_s2cr*, %struct.arm_smmu_s2cr** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.arm_smmu_s2cr, %struct.arm_smmu_s2cr* %9, i64 %11
  store %struct.arm_smmu_s2cr* %12, %struct.arm_smmu_s2cr** %5, align 8
  %13 = load i32, i32* @S2CR_TYPE, align 4
  %14 = load %struct.arm_smmu_s2cr*, %struct.arm_smmu_s2cr** %5, align 8
  %15 = getelementptr inbounds %struct.arm_smmu_s2cr, %struct.arm_smmu_s2cr* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @FIELD_PREP(i32 %13, i32 %16)
  %18 = load i32, i32* @S2CR_CBNDX, align 4
  %19 = load %struct.arm_smmu_s2cr*, %struct.arm_smmu_s2cr** %5, align 8
  %20 = getelementptr inbounds %struct.arm_smmu_s2cr, %struct.arm_smmu_s2cr* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @FIELD_PREP(i32 %18, i32 %21)
  %23 = or i32 %17, %22
  %24 = load i32, i32* @S2CR_PRIVCFG, align 4
  %25 = load %struct.arm_smmu_s2cr*, %struct.arm_smmu_s2cr** %5, align 8
  %26 = getelementptr inbounds %struct.arm_smmu_s2cr, %struct.arm_smmu_s2cr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @FIELD_PREP(i32 %24, i32 %27)
  %29 = or i32 %23, %28
  store i32 %29, i32* %6, align 4
  %30 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %31 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @ARM_SMMU_FEAT_EXIDS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %2
  %37 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %38 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = icmp ne %struct.TYPE_2__* %39, null
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %43 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %41
  %52 = load i32, i32* @S2CR_EXIDVALID, align 4
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %51, %41, %36, %2
  %56 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @ARM_SMMU_GR0_S2CR(i32 %57)
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @arm_smmu_gr0_write(%struct.arm_smmu_device* %56, i32 %58, i32 %59)
  ret void
}

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @arm_smmu_gr0_write(%struct.arm_smmu_device*, i32, i32) #1

declare dso_local i32 @ARM_SMMU_GR0_S2CR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
