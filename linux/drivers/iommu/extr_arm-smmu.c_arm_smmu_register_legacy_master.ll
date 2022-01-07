; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_register_legacy_master.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_register_legacy_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.arm_smmu_device = type { i32 }
%struct.device_node = type { i32 }
%struct.of_phandle_iterator = type { i32, i32*, %struct.device_node* }

@.str = private unnamed_addr constant [17 x i8] c"#stream-id-cells\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@arm_smmu_driver = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@__find_legacy_master_phandle = common dso_local global i32 0, align 4
@__arm_smmu_get_pci_sid = common dso_local global i32 0, align 4
@arm_smmu_ops = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.arm_smmu_device**)* @arm_smmu_register_legacy_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_smmu_register_legacy_master(%struct.device* %0, %struct.arm_smmu_device** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.arm_smmu_device**, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.of_phandle_iterator, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.arm_smmu_device** %1, %struct.arm_smmu_device*** %5, align 8
  %13 = bitcast %struct.of_phandle_iterator* %8 to i8*
  store i8* %13, i8** %9, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call %struct.device_node* @dev_get_dev_node(%struct.device* %14)
  store %struct.device_node* %15, %struct.device_node** %7, align 8
  %16 = load %struct.device_node*, %struct.device_node** %7, align 8
  %17 = icmp ne %struct.device_node* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.device_node*, %struct.device_node** %7, align 8
  %20 = call i32 @of_find_property(%struct.device_node* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* null)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %18, %2
  %23 = load %struct.device_node*, %struct.device_node** %7, align 8
  %24 = call i32 @of_node_put(%struct.device_node* %23)
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %94

27:                                               ; preds = %18
  %28 = load %struct.device_node*, %struct.device_node** %7, align 8
  %29 = getelementptr inbounds %struct.of_phandle_iterator, %struct.of_phandle_iterator* %8, i32 0, i32 2
  store %struct.device_node* %28, %struct.device_node** %29, align 8
  %30 = load i32, i32* @__find_legacy_master_phandle, align 4
  %31 = call i32 @driver_for_each_device(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @arm_smmu_driver, i32 0, i32 0), i32* null, i8** %9, i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i8*, i8** %9, align 8
  %33 = bitcast i8* %32 to %struct.device*
  store %struct.device* %33, %struct.device** %6, align 8
  %34 = load %struct.device_node*, %struct.device_node** %7, align 8
  %35 = call i32 @of_node_put(%struct.device_node* %34)
  %36 = load i32, i32* %12, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %27
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %94

41:                                               ; preds = %27
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %3, align 4
  br label %94

46:                                               ; preds = %41
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = call i64 @dev_is_pci(%struct.device* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = call i32 @to_pci_dev(%struct.device* %51)
  %53 = load i32, i32* @__arm_smmu_get_pci_sid, align 4
  %54 = call i32 @pci_for_each_dma_alias(i32 %52, i32 %53, i32* %11)
  %55 = getelementptr inbounds %struct.of_phandle_iterator, %struct.of_phandle_iterator* %8, i32 0, i32 1
  store i32* %11, i32** %55, align 8
  %56 = getelementptr inbounds %struct.of_phandle_iterator, %struct.of_phandle_iterator* %8, i32 0, i32 0
  store i32 1, i32* %56, align 8
  br label %57

57:                                               ; preds = %50, %46
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = load %struct.device*, %struct.device** %6, align 8
  %60 = getelementptr inbounds %struct.device, %struct.device* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = call i32 @iommu_fwspec_init(%struct.device* %58, i32* %62, i32* @arm_smmu_ops)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %3, align 4
  br label %94

68:                                               ; preds = %57
  %69 = getelementptr inbounds %struct.of_phandle_iterator, %struct.of_phandle_iterator* %8, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call i32* @kcalloc(i32 %70, i32 4, i32 %71)
  store i32* %72, i32** %10, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %68
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %94

78:                                               ; preds = %68
  %79 = load %struct.device*, %struct.device** %6, align 8
  %80 = call %struct.arm_smmu_device* @dev_get_drvdata(%struct.device* %79)
  %81 = load %struct.arm_smmu_device**, %struct.arm_smmu_device*** %5, align 8
  store %struct.arm_smmu_device* %80, %struct.arm_smmu_device** %81, align 8
  %82 = load i32*, i32** %10, align 8
  %83 = getelementptr inbounds %struct.of_phandle_iterator, %struct.of_phandle_iterator* %8, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @of_phandle_iterator_args(%struct.of_phandle_iterator* %8, i32* %82, i32 %84)
  %86 = load %struct.device*, %struct.device** %4, align 8
  %87 = load i32*, i32** %10, align 8
  %88 = getelementptr inbounds %struct.of_phandle_iterator, %struct.of_phandle_iterator* %8, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @iommu_fwspec_add_ids(%struct.device* %86, i32* %87, i32 %89)
  store i32 %90, i32* %12, align 4
  %91 = load i32*, i32** %10, align 8
  %92 = call i32 @kfree(i32* %91)
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %78, %75, %66, %44, %38, %22
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.device_node* @dev_get_dev_node(%struct.device*) #1

declare dso_local i32 @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @driver_for_each_device(i32*, i32*, i8**, i32) #1

declare dso_local i64 @dev_is_pci(%struct.device*) #1

declare dso_local i32 @pci_for_each_dma_alias(i32, i32, i32*) #1

declare dso_local i32 @to_pci_dev(%struct.device*) #1

declare dso_local i32 @iommu_fwspec_init(%struct.device*, i32*, i32*) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local %struct.arm_smmu_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @of_phandle_iterator_args(%struct.of_phandle_iterator*, i32*, i32) #1

declare dso_local i32 @iommu_fwspec_add_ids(%struct.device*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
