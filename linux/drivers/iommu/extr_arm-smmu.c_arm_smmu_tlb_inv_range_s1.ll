; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_tlb_inv_range_s1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_tlb_inv_range_s1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_smmu_domain = type { %struct.arm_smmu_cfg, %struct.arm_smmu_device* }
%struct.arm_smmu_cfg = type { i32, i64, i64 }
%struct.arm_smmu_device = type { i32 }

@ARM_SMMU_FEAT_COHERENT_WALK = common dso_local global i32 0, align 4
@ARM_SMMU_CB_S1_TLBIVAL = common dso_local global i32 0, align 4
@ARM_SMMU_CB_S1_TLBIVA = common dso_local global i32 0, align 4
@ARM_SMMU_CTX_FMT_AARCH64 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i32, i8*)* @arm_smmu_tlb_inv_range_s1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_smmu_tlb_inv_range_s1(i64 %0, i64 %1, i64 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.arm_smmu_domain*, align 8
  %12 = alloca %struct.arm_smmu_device*, align 8
  %13 = alloca %struct.arm_smmu_cfg*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = bitcast i8* %16 to %struct.arm_smmu_domain*
  store %struct.arm_smmu_domain* %17, %struct.arm_smmu_domain** %11, align 8
  %18 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %11, align 8
  %19 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %18, i32 0, i32 1
  %20 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %19, align 8
  store %struct.arm_smmu_device* %20, %struct.arm_smmu_device** %12, align 8
  %21 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %11, align 8
  %22 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %21, i32 0, i32 0
  store %struct.arm_smmu_cfg* %22, %struct.arm_smmu_cfg** %13, align 8
  %23 = load %struct.arm_smmu_cfg*, %struct.arm_smmu_cfg** %13, align 8
  %24 = getelementptr inbounds %struct.arm_smmu_cfg, %struct.arm_smmu_cfg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %15, align 4
  %26 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %12, align 8
  %27 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ARM_SMMU_FEAT_COHERENT_WALK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %5
  %33 = call i32 (...) @wmb()
  br label %34

34:                                               ; preds = %32, %5
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @ARM_SMMU_CB_S1_TLBIVAL, align 4
  br label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @ARM_SMMU_CB_S1_TLBIVA, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  store i32 %42, i32* %14, align 4
  %43 = load %struct.arm_smmu_cfg*, %struct.arm_smmu_cfg** %13, align 8
  %44 = getelementptr inbounds %struct.arm_smmu_cfg, %struct.arm_smmu_cfg* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ARM_SMMU_CTX_FMT_AARCH64, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %72

48:                                               ; preds = %41
  %49 = load i64, i64* %6, align 8
  %50 = lshr i64 %49, 12
  %51 = shl i64 %50, 12
  store i64 %51, i64* %6, align 8
  %52 = load %struct.arm_smmu_cfg*, %struct.arm_smmu_cfg** %13, align 8
  %53 = getelementptr inbounds %struct.arm_smmu_cfg, %struct.arm_smmu_cfg* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = or i64 %55, %54
  store i64 %56, i64* %6, align 8
  br label %57

57:                                               ; preds = %66, %48
  %58 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %12, align 8
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @arm_smmu_cb_write(%struct.arm_smmu_device* %58, i32 %59, i32 %60, i64 %61)
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %6, align 8
  %65 = add i64 %64, %63
  store i64 %65, i64* %6, align 8
  br label %66

66:                                               ; preds = %57
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* %7, align 8
  %69 = sub i64 %68, %67
  store i64 %69, i64* %7, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %57, label %71

71:                                               ; preds = %66
  br label %99

72:                                               ; preds = %41
  %73 = load i64, i64* %6, align 8
  %74 = lshr i64 %73, 12
  store i64 %74, i64* %6, align 8
  %75 = load %struct.arm_smmu_cfg*, %struct.arm_smmu_cfg** %13, align 8
  %76 = getelementptr inbounds %struct.arm_smmu_cfg, %struct.arm_smmu_cfg* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = shl i32 %78, 48
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* %6, align 8
  %82 = or i64 %81, %80
  store i64 %82, i64* %6, align 8
  br label %83

83:                                               ; preds = %93, %72
  %84 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %12, align 8
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i64, i64* %6, align 8
  %88 = call i32 @arm_smmu_cb_writeq(%struct.arm_smmu_device* %84, i32 %85, i32 %86, i64 %87)
  %89 = load i64, i64* %8, align 8
  %90 = lshr i64 %89, 12
  %91 = load i64, i64* %6, align 8
  %92 = add i64 %91, %90
  store i64 %92, i64* %6, align 8
  br label %93

93:                                               ; preds = %83
  %94 = load i64, i64* %8, align 8
  %95 = load i64, i64* %7, align 8
  %96 = sub i64 %95, %94
  store i64 %96, i64* %7, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %83, label %98

98:                                               ; preds = %93
  br label %99

99:                                               ; preds = %98, %71
  ret void
}

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @arm_smmu_cb_write(%struct.arm_smmu_device*, i32, i32, i64) #1

declare dso_local i32 @arm_smmu_cb_writeq(%struct.arm_smmu_device*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
