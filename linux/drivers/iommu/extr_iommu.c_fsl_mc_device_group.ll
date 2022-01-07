; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_fsl_mc_device_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_fsl_mc_device_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_group = type { i32 }
%struct.device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iommu_group* @fsl_mc_device_group(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.iommu_group*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.device* @fsl_mc_cont_dev(%struct.device* %5)
  store %struct.device* %6, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.iommu_group* @iommu_group_get(%struct.device* %7)
  store %struct.iommu_group* %8, %struct.iommu_group** %4, align 8
  %9 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %10 = icmp ne %struct.iommu_group* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = call %struct.iommu_group* (...) @iommu_group_alloc()
  store %struct.iommu_group* %12, %struct.iommu_group** %4, align 8
  br label %13

13:                                               ; preds = %11, %1
  %14 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  ret %struct.iommu_group* %14
}

declare dso_local %struct.device* @fsl_mc_cont_dev(%struct.device*) #1

declare dso_local %struct.iommu_group* @iommu_group_get(%struct.device*) #1

declare dso_local %struct.iommu_group* @iommu_group_alloc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
