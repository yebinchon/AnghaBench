; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_find_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_find_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_domain_info = type { %struct.dmar_domain* }
%struct.dmar_domain = type { i32 }
%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_domain_info* }
%struct.iommu_domain = type { i32 }

@DEFER_DEVICE_DOMAIN_INFO = common dso_local global %struct.device_domain_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dmar_domain* (%struct.device*)* @find_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dmar_domain* @find_domain(%struct.device* %0) #0 {
  %2 = alloca %struct.dmar_domain*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device_domain_info*, align 8
  %5 = alloca %struct.iommu_domain*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.device_domain_info*, %struct.device_domain_info** %8, align 8
  %10 = load %struct.device_domain_info*, %struct.device_domain_info** @DEFER_DEVICE_DOMAIN_INFO, align 8
  %11 = icmp eq %struct.device_domain_info* %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.device_domain_info* null, %struct.device_domain_info** %18, align 8
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = call %struct.iommu_domain* @iommu_get_domain_for_dev(%struct.device* %19)
  store %struct.iommu_domain* %20, %struct.iommu_domain** %5, align 8
  %21 = load %struct.iommu_domain*, %struct.iommu_domain** %5, align 8
  %22 = icmp ne %struct.iommu_domain* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = load %struct.iommu_domain*, %struct.iommu_domain** %5, align 8
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = call i32 @intel_iommu_attach_device(%struct.iommu_domain* %24, %struct.device* %25)
  br label %27

27:                                               ; preds = %23, %15
  br label %28

28:                                               ; preds = %27, %1
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = getelementptr inbounds %struct.device, %struct.device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.device_domain_info*, %struct.device_domain_info** %31, align 8
  store %struct.device_domain_info* %32, %struct.device_domain_info** %4, align 8
  %33 = load %struct.device_domain_info*, %struct.device_domain_info** %4, align 8
  %34 = call i64 @likely(%struct.device_domain_info* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load %struct.device_domain_info*, %struct.device_domain_info** %4, align 8
  %38 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %37, i32 0, i32 0
  %39 = load %struct.dmar_domain*, %struct.dmar_domain** %38, align 8
  store %struct.dmar_domain* %39, %struct.dmar_domain** %2, align 8
  br label %41

40:                                               ; preds = %28
  store %struct.dmar_domain* null, %struct.dmar_domain** %2, align 8
  br label %41

41:                                               ; preds = %40, %36
  %42 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  ret %struct.dmar_domain* %42
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.iommu_domain* @iommu_get_domain_for_dev(%struct.device*) #1

declare dso_local i32 @intel_iommu_attach_device(%struct.iommu_domain*, %struct.device*) #1

declare dso_local i64 @likely(%struct.device_domain_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
