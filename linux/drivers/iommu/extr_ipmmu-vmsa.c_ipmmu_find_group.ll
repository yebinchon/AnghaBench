; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_ipmmu-vmsa.c_ipmmu_find_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_ipmmu-vmsa.c_ipmmu_find_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_group = type { i32 }
%struct.device = type { i32 }
%struct.ipmmu_vmsa_device = type { %struct.iommu_group* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iommu_group* (%struct.device*)* @ipmmu_find_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iommu_group* @ipmmu_find_group(%struct.device* %0) #0 {
  %2 = alloca %struct.iommu_group*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ipmmu_vmsa_device*, align 8
  %5 = alloca %struct.iommu_group*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.ipmmu_vmsa_device* @to_ipmmu(%struct.device* %6)
  store %struct.ipmmu_vmsa_device* %7, %struct.ipmmu_vmsa_device** %4, align 8
  %8 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %4, align 8
  %9 = getelementptr inbounds %struct.ipmmu_vmsa_device, %struct.ipmmu_vmsa_device* %8, i32 0, i32 0
  %10 = load %struct.iommu_group*, %struct.iommu_group** %9, align 8
  %11 = icmp ne %struct.iommu_group* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %4, align 8
  %14 = getelementptr inbounds %struct.ipmmu_vmsa_device, %struct.ipmmu_vmsa_device* %13, i32 0, i32 0
  %15 = load %struct.iommu_group*, %struct.iommu_group** %14, align 8
  %16 = call %struct.iommu_group* @iommu_group_ref_get(%struct.iommu_group* %15)
  store %struct.iommu_group* %16, %struct.iommu_group** %2, align 8
  br label %28

17:                                               ; preds = %1
  %18 = call %struct.iommu_group* (...) @iommu_group_alloc()
  store %struct.iommu_group* %18, %struct.iommu_group** %5, align 8
  %19 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %20 = call i32 @IS_ERR(%struct.iommu_group* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %24 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %4, align 8
  %25 = getelementptr inbounds %struct.ipmmu_vmsa_device, %struct.ipmmu_vmsa_device* %24, i32 0, i32 0
  store %struct.iommu_group* %23, %struct.iommu_group** %25, align 8
  br label %26

26:                                               ; preds = %22, %17
  %27 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  store %struct.iommu_group* %27, %struct.iommu_group** %2, align 8
  br label %28

28:                                               ; preds = %26, %12
  %29 = load %struct.iommu_group*, %struct.iommu_group** %2, align 8
  ret %struct.iommu_group* %29
}

declare dso_local %struct.ipmmu_vmsa_device* @to_ipmmu(%struct.device*) #1

declare dso_local %struct.iommu_group* @iommu_group_ref_get(%struct.iommu_group*) #1

declare dso_local %struct.iommu_group* @iommu_group_alloc(...) #1

declare dso_local i32 @IS_ERR(%struct.iommu_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
