; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_get_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_get_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protection_domain = type { i32 }
%struct.device = type { i32 }
%struct.iommu_domain = type { i32 }
%struct.TYPE_2__ = type { i32, %struct.protection_domain* }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.protection_domain* (%struct.device*)* @get_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.protection_domain* @get_domain(%struct.device* %0) #0 {
  %2 = alloca %struct.protection_domain*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.protection_domain*, align 8
  %5 = alloca %struct.iommu_domain*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call i32 @check_device(%struct.device* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.protection_domain* @ERR_PTR(i32 %11)
  store %struct.protection_domain* %12, %struct.protection_domain** %2, align 8
  br label %54

13:                                               ; preds = %1
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = call %struct.TYPE_2__* @get_dev_data(%struct.device* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load %struct.protection_domain*, %struct.protection_domain** %16, align 8
  store %struct.protection_domain* %17, %struct.protection_domain** %4, align 8
  %18 = load %struct.protection_domain*, %struct.protection_domain** %4, align 8
  %19 = icmp eq %struct.protection_domain* %18, null
  br i1 %19, label %20, label %37

20:                                               ; preds = %13
  %21 = load %struct.device*, %struct.device** %3, align 8
  %22 = call %struct.TYPE_2__* @get_dev_data(%struct.device* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %20
  %27 = load %struct.device*, %struct.device** %3, align 8
  %28 = call %struct.TYPE_2__* @get_dev_data(%struct.device* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = load %struct.device*, %struct.device** %3, align 8
  %31 = call %struct.iommu_domain* @iommu_get_domain_for_dev(%struct.device* %30)
  store %struct.iommu_domain* %31, %struct.iommu_domain** %5, align 8
  %32 = load %struct.iommu_domain*, %struct.iommu_domain** %5, align 8
  %33 = call %struct.protection_domain* @to_pdomain(%struct.iommu_domain* %32)
  store %struct.protection_domain* %33, %struct.protection_domain** %4, align 8
  %34 = load %struct.device*, %struct.device** %3, align 8
  %35 = load %struct.protection_domain*, %struct.protection_domain** %4, align 8
  %36 = call i32 @attach_device(%struct.device* %34, %struct.protection_domain* %35)
  br label %37

37:                                               ; preds = %26, %20, %13
  %38 = load %struct.protection_domain*, %struct.protection_domain** %4, align 8
  %39 = icmp eq %struct.protection_domain* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.protection_domain* @ERR_PTR(i32 %42)
  store %struct.protection_domain* %43, %struct.protection_domain** %2, align 8
  br label %54

44:                                               ; preds = %37
  %45 = load %struct.protection_domain*, %struct.protection_domain** %4, align 8
  %46 = call i32 @dma_ops_domain(%struct.protection_domain* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @EBUSY, align 4
  %50 = sub nsw i32 0, %49
  %51 = call %struct.protection_domain* @ERR_PTR(i32 %50)
  store %struct.protection_domain* %51, %struct.protection_domain** %2, align 8
  br label %54

52:                                               ; preds = %44
  %53 = load %struct.protection_domain*, %struct.protection_domain** %4, align 8
  store %struct.protection_domain* %53, %struct.protection_domain** %2, align 8
  br label %54

54:                                               ; preds = %52, %48, %40, %9
  %55 = load %struct.protection_domain*, %struct.protection_domain** %2, align 8
  ret %struct.protection_domain* %55
}

declare dso_local i32 @check_device(%struct.device*) #1

declare dso_local %struct.protection_domain* @ERR_PTR(i32) #1

declare dso_local %struct.TYPE_2__* @get_dev_data(%struct.device*) #1

declare dso_local %struct.iommu_domain* @iommu_get_domain_for_dev(%struct.device*) #1

declare dso_local %struct.protection_domain* @to_pdomain(%struct.iommu_domain*) #1

declare dso_local i32 @attach_device(%struct.device*, %struct.protection_domain*) #1

declare dso_local i32 @dma_ops_domain(%struct.protection_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
