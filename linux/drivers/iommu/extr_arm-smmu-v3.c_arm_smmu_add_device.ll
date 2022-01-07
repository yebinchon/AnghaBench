; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.arm_smmu_device = type { i32, i32 }
%struct.arm_smmu_master = type { i32, i32*, %struct.arm_smmu_device*, %struct.device* }
%struct.iommu_fwspec = type { i32, %struct.arm_smmu_master*, i32*, i32, i32* }
%struct.iommu_group = type { i32 }

@arm_smmu_ops = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@ARM_SMMU_FEAT_2_LVL_STRTAB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @arm_smmu_add_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_smmu_add_device(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.arm_smmu_device*, align 8
  %7 = alloca %struct.arm_smmu_master*, align 8
  %8 = alloca %struct.iommu_fwspec*, align 8
  %9 = alloca %struct.iommu_group*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call %struct.iommu_fwspec* @dev_iommu_fwspec_get(%struct.device* %11)
  store %struct.iommu_fwspec* %12, %struct.iommu_fwspec** %8, align 8
  %13 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %8, align 8
  %14 = icmp ne %struct.iommu_fwspec* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %8, align 8
  %17 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, @arm_smmu_ops
  br i1 %19, label %20, label %23

20:                                               ; preds = %15, %1
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %132

23:                                               ; preds = %15
  %24 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %8, align 8
  %25 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %24, i32 0, i32 1
  %26 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %25, align 8
  %27 = call i64 @WARN_ON_ONCE(%struct.arm_smmu_master* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %8, align 8
  %31 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %30, i32 0, i32 1
  %32 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %31, align 8
  store %struct.arm_smmu_master* %32, %struct.arm_smmu_master** %7, align 8
  %33 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %7, align 8
  %34 = getelementptr inbounds %struct.arm_smmu_master, %struct.arm_smmu_master* %33, i32 0, i32 2
  %35 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %34, align 8
  store %struct.arm_smmu_device* %35, %struct.arm_smmu_device** %6, align 8
  br label %74

36:                                               ; preds = %23
  %37 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %8, align 8
  %38 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.arm_smmu_device* @arm_smmu_get_by_fwnode(i32 %39)
  store %struct.arm_smmu_device* %40, %struct.arm_smmu_device** %6, align 8
  %41 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %42 = icmp ne %struct.arm_smmu_device* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %132

46:                                               ; preds = %36
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.arm_smmu_master* @kzalloc(i32 32, i32 %47)
  store %struct.arm_smmu_master* %48, %struct.arm_smmu_master** %7, align 8
  %49 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %7, align 8
  %50 = icmp ne %struct.arm_smmu_master* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %132

54:                                               ; preds = %46
  %55 = load %struct.device*, %struct.device** %3, align 8
  %56 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %7, align 8
  %57 = getelementptr inbounds %struct.arm_smmu_master, %struct.arm_smmu_master* %56, i32 0, i32 3
  store %struct.device* %55, %struct.device** %57, align 8
  %58 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %59 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %7, align 8
  %60 = getelementptr inbounds %struct.arm_smmu_master, %struct.arm_smmu_master* %59, i32 0, i32 2
  store %struct.arm_smmu_device* %58, %struct.arm_smmu_device** %60, align 8
  %61 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %8, align 8
  %62 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %7, align 8
  %65 = getelementptr inbounds %struct.arm_smmu_master, %struct.arm_smmu_master* %64, i32 0, i32 1
  store i32* %63, i32** %65, align 8
  %66 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %8, align 8
  %67 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %7, align 8
  %70 = getelementptr inbounds %struct.arm_smmu_master, %struct.arm_smmu_master* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %7, align 8
  %72 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %8, align 8
  %73 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %72, i32 0, i32 1
  store %struct.arm_smmu_master* %71, %struct.arm_smmu_master** %73, align 8
  br label %74

74:                                               ; preds = %54, %29
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %113, %74
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %7, align 8
  %78 = getelementptr inbounds %struct.arm_smmu_master, %struct.arm_smmu_master* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %116

81:                                               ; preds = %75
  %82 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %7, align 8
  %83 = getelementptr inbounds %struct.arm_smmu_master, %struct.arm_smmu_master* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %10, align 4
  %89 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @arm_smmu_sid_in_range(%struct.arm_smmu_device* %89, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %81
  %94 = load i32, i32* @ERANGE, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %132

96:                                               ; preds = %81
  %97 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %98 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @ARM_SMMU_FEAT_2_LVL_STRTAB, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %96
  %104 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @arm_smmu_init_l2_strtab(%struct.arm_smmu_device* %104, i32 %105)
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load i32, i32* %5, align 4
  store i32 %110, i32* %2, align 4
  br label %132

111:                                              ; preds = %103
  br label %112

112:                                              ; preds = %111, %96
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %4, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %4, align 4
  br label %75

116:                                              ; preds = %75
  %117 = load %struct.device*, %struct.device** %3, align 8
  %118 = call %struct.iommu_group* @iommu_group_get_for_dev(%struct.device* %117)
  store %struct.iommu_group* %118, %struct.iommu_group** %9, align 8
  %119 = load %struct.iommu_group*, %struct.iommu_group** %9, align 8
  %120 = call i32 @IS_ERR(%struct.iommu_group* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %129, label %122

122:                                              ; preds = %116
  %123 = load %struct.iommu_group*, %struct.iommu_group** %9, align 8
  %124 = call i32 @iommu_group_put(%struct.iommu_group* %123)
  %125 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %126 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %125, i32 0, i32 1
  %127 = load %struct.device*, %struct.device** %3, align 8
  %128 = call i32 @iommu_device_link(i32* %126, %struct.device* %127)
  br label %129

129:                                              ; preds = %122, %116
  %130 = load %struct.iommu_group*, %struct.iommu_group** %9, align 8
  %131 = call i32 @PTR_ERR_OR_ZERO(%struct.iommu_group* %130)
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %129, %109, %93, %51, %43, %20
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local %struct.iommu_fwspec* @dev_iommu_fwspec_get(%struct.device*) #1

declare dso_local i64 @WARN_ON_ONCE(%struct.arm_smmu_master*) #1

declare dso_local %struct.arm_smmu_device* @arm_smmu_get_by_fwnode(i32) #1

declare dso_local %struct.arm_smmu_master* @kzalloc(i32, i32) #1

declare dso_local i32 @arm_smmu_sid_in_range(%struct.arm_smmu_device*, i32) #1

declare dso_local i32 @arm_smmu_init_l2_strtab(%struct.arm_smmu_device*, i32) #1

declare dso_local %struct.iommu_group* @iommu_group_get_for_dev(%struct.device*) #1

declare dso_local i32 @IS_ERR(%struct.iommu_group*) #1

declare dso_local i32 @iommu_group_put(%struct.iommu_group*) #1

declare dso_local i32 @iommu_device_link(i32*, %struct.device*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.iommu_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
