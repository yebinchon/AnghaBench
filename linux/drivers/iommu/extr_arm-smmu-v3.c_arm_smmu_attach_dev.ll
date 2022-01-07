; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_attach_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_attach_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.device = type { i32 }
%struct.iommu_fwspec = type { %struct.arm_smmu_master* }
%struct.arm_smmu_master = type { i32, i32, %struct.arm_smmu_domain*, %struct.arm_smmu_device* }
%struct.arm_smmu_domain = type { i64, i32, i32, i32, i32, %struct.arm_smmu_device* }
%struct.arm_smmu_device = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"cannot attach to SMMU %s (upstream of %s)\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ARM_SMMU_DOMAIN_BYPASS = common dso_local global i64 0, align 8
@ARM_SMMU_DOMAIN_S1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iommu_domain*, %struct.device*)* @arm_smmu_attach_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_smmu_attach_dev(%struct.iommu_domain* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iommu_domain*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.iommu_fwspec*, align 8
  %9 = alloca %struct.arm_smmu_device*, align 8
  %10 = alloca %struct.arm_smmu_domain*, align 8
  %11 = alloca %struct.arm_smmu_master*, align 8
  store %struct.iommu_domain* %0, %struct.iommu_domain** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.iommu_fwspec* @dev_iommu_fwspec_get(%struct.device* %12)
  store %struct.iommu_fwspec* %13, %struct.iommu_fwspec** %8, align 8
  %14 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %15 = call %struct.arm_smmu_domain* @to_smmu_domain(%struct.iommu_domain* %14)
  store %struct.arm_smmu_domain* %15, %struct.arm_smmu_domain** %10, align 8
  %16 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %8, align 8
  %17 = icmp ne %struct.iommu_fwspec* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOENT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %119

21:                                               ; preds = %2
  %22 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %8, align 8
  %23 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %22, i32 0, i32 0
  %24 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %23, align 8
  store %struct.arm_smmu_master* %24, %struct.arm_smmu_master** %11, align 8
  %25 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %11, align 8
  %26 = getelementptr inbounds %struct.arm_smmu_master, %struct.arm_smmu_master* %25, i32 0, i32 3
  %27 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %26, align 8
  store %struct.arm_smmu_device* %27, %struct.arm_smmu_device** %9, align 8
  %28 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %11, align 8
  %29 = call i32 @arm_smmu_detach_dev(%struct.arm_smmu_master* %28)
  %30 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %10, align 8
  %31 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %30, i32 0, i32 1
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %10, align 8
  %34 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %33, i32 0, i32 5
  %35 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %34, align 8
  %36 = icmp ne %struct.arm_smmu_device* %35, null
  br i1 %36, label %49, label %37

37:                                               ; preds = %21
  %38 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %9, align 8
  %39 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %10, align 8
  %40 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %39, i32 0, i32 5
  store %struct.arm_smmu_device* %38, %struct.arm_smmu_device** %40, align 8
  %41 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %42 = call i32 @arm_smmu_domain_finalise(%struct.iommu_domain* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %10, align 8
  %47 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %46, i32 0, i32 5
  store %struct.arm_smmu_device* null, %struct.arm_smmu_device** %47, align 8
  br label %114

48:                                               ; preds = %37
  br label %71

49:                                               ; preds = %21
  %50 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %10, align 8
  %51 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %50, i32 0, i32 5
  %52 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %51, align 8
  %53 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %9, align 8
  %54 = icmp ne %struct.arm_smmu_device* %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %49
  %56 = load %struct.device*, %struct.device** %5, align 8
  %57 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %10, align 8
  %58 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %57, i32 0, i32 5
  %59 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %58, align 8
  %60 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dev_name(i32 %61)
  %63 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %9, align 8
  %64 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dev_name(i32 %65)
  %67 = call i32 @dev_err(%struct.device* %56, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %66)
  %68 = load i32, i32* @ENXIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %6, align 4
  br label %114

70:                                               ; preds = %49
  br label %71

71:                                               ; preds = %70, %48
  %72 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %10, align 8
  %73 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %11, align 8
  %74 = getelementptr inbounds %struct.arm_smmu_master, %struct.arm_smmu_master* %73, i32 0, i32 2
  store %struct.arm_smmu_domain* %72, %struct.arm_smmu_domain** %74, align 8
  %75 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %10, align 8
  %76 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @ARM_SMMU_DOMAIN_BYPASS, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %71
  %81 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %11, align 8
  %82 = call i32 @arm_smmu_ats_supported(%struct.arm_smmu_master* %81)
  %83 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %11, align 8
  %84 = getelementptr inbounds %struct.arm_smmu_master, %struct.arm_smmu_master* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %80, %71
  %86 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %10, align 8
  %87 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @ARM_SMMU_DOMAIN_S1, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %85
  %92 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %9, align 8
  %93 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %10, align 8
  %94 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %93, i32 0, i32 4
  %95 = call i32 @arm_smmu_write_ctx_desc(%struct.arm_smmu_device* %92, i32* %94)
  br label %96

96:                                               ; preds = %91, %85
  %97 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %11, align 8
  %98 = call i32 @arm_smmu_install_ste_for_dev(%struct.arm_smmu_master* %97)
  %99 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %10, align 8
  %100 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %99, i32 0, i32 2
  %101 = load i64, i64* %7, align 8
  %102 = call i32 @spin_lock_irqsave(i32* %100, i64 %101)
  %103 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %11, align 8
  %104 = getelementptr inbounds %struct.arm_smmu_master, %struct.arm_smmu_master* %103, i32 0, i32 0
  %105 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %10, align 8
  %106 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %105, i32 0, i32 3
  %107 = call i32 @list_add(i32* %104, i32* %106)
  %108 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %10, align 8
  %109 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %108, i32 0, i32 2
  %110 = load i64, i64* %7, align 8
  %111 = call i32 @spin_unlock_irqrestore(i32* %109, i64 %110)
  %112 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %11, align 8
  %113 = call i32 @arm_smmu_enable_ats(%struct.arm_smmu_master* %112)
  br label %114

114:                                              ; preds = %96, %55, %45
  %115 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %10, align 8
  %116 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %115, i32 0, i32 1
  %117 = call i32 @mutex_unlock(i32* %116)
  %118 = load i32, i32* %6, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %114, %18
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local %struct.iommu_fwspec* @dev_iommu_fwspec_get(%struct.device*) #1

declare dso_local %struct.arm_smmu_domain* @to_smmu_domain(%struct.iommu_domain*) #1

declare dso_local i32 @arm_smmu_detach_dev(%struct.arm_smmu_master*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @arm_smmu_domain_finalise(%struct.iommu_domain*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @arm_smmu_ats_supported(%struct.arm_smmu_master*) #1

declare dso_local i32 @arm_smmu_write_ctx_desc(%struct.arm_smmu_device*, i32*) #1

declare dso_local i32 @arm_smmu_install_ste_for_dev(%struct.arm_smmu_master*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @arm_smmu_enable_ats(%struct.arm_smmu_master*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
