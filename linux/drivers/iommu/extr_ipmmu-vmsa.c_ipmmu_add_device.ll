; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_ipmmu-vmsa.c_ipmmu_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_ipmmu-vmsa.c_ipmmu_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ipmmu_vmsa_device = type { i32 }
%struct.iommu_group = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@CONFIG_ARM = common dso_local global i32 0, align 4
@CONFIG_IOMMU_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @ipmmu_add_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmmu_add_device(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ipmmu_vmsa_device*, align 8
  %5 = alloca %struct.iommu_group*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.ipmmu_vmsa_device* @to_ipmmu(%struct.device* %7)
  store %struct.ipmmu_vmsa_device* %8, %struct.ipmmu_vmsa_device** %4, align 8
  %9 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %4, align 8
  %10 = icmp ne %struct.ipmmu_vmsa_device* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %47

14:                                               ; preds = %1
  %15 = load i32, i32* @CONFIG_ARM, align 4
  %16 = call i64 @IS_ENABLED(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = load i32, i32* @CONFIG_IOMMU_DMA, align 4
  %20 = call i64 @IS_ENABLED(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = load %struct.device*, %struct.device** %3, align 8
  %24 = call i32 @ipmmu_init_arm_mapping(%struct.device* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %47

29:                                               ; preds = %22
  br label %42

30:                                               ; preds = %18, %14
  %31 = load %struct.device*, %struct.device** %3, align 8
  %32 = call %struct.iommu_group* @iommu_group_get_for_dev(%struct.device* %31)
  store %struct.iommu_group* %32, %struct.iommu_group** %5, align 8
  %33 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %34 = call i64 @IS_ERR(%struct.iommu_group* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %38 = call i32 @PTR_ERR(%struct.iommu_group* %37)
  store i32 %38, i32* %2, align 4
  br label %47

39:                                               ; preds = %30
  %40 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %41 = call i32 @iommu_group_put(%struct.iommu_group* %40)
  br label %42

42:                                               ; preds = %39, %29
  %43 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %4, align 8
  %44 = getelementptr inbounds %struct.ipmmu_vmsa_device, %struct.ipmmu_vmsa_device* %43, i32 0, i32 0
  %45 = load %struct.device*, %struct.device** %3, align 8
  %46 = call i32 @iommu_device_link(i32* %44, %struct.device* %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %42, %36, %27, %11
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.ipmmu_vmsa_device* @to_ipmmu(%struct.device*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @ipmmu_init_arm_mapping(%struct.device*) #1

declare dso_local %struct.iommu_group* @iommu_group_get_for_dev(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.iommu_group*) #1

declare dso_local i32 @PTR_ERR(%struct.iommu_group*) #1

declare dso_local i32 @iommu_group_put(%struct.iommu_group*) #1

declare dso_local i32 @iommu_device_link(i32*, %struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
