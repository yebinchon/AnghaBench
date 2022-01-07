; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_detach_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_detach_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.device = type { i32 }
%struct.iommu_group = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iommu_detach_device(%struct.iommu_domain* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.iommu_domain*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.iommu_group*, align 8
  store %struct.iommu_domain* %0, %struct.iommu_domain** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %6 = load %struct.device*, %struct.device** %4, align 8
  %7 = call %struct.iommu_group* @iommu_group_get(%struct.device* %6)
  store %struct.iommu_group* %7, %struct.iommu_group** %5, align 8
  %8 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %9 = icmp ne %struct.iommu_group* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %30

11:                                               ; preds = %2
  %12 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %13 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %16 = call i32 @iommu_group_device_count(%struct.iommu_group* %15)
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = call i32 @WARN_ON(i32 1)
  br label %24

20:                                               ; preds = %11
  %21 = load %struct.iommu_domain*, %struct.iommu_domain** %3, align 8
  %22 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %23 = call i32 @__iommu_detach_group(%struct.iommu_domain* %21, %struct.iommu_group* %22)
  br label %24

24:                                               ; preds = %20, %18
  %25 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %26 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %29 = call i32 @iommu_group_put(%struct.iommu_group* %28)
  br label %30

30:                                               ; preds = %24, %10
  ret void
}

declare dso_local %struct.iommu_group* @iommu_group_get(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iommu_group_device_count(%struct.iommu_group*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @__iommu_detach_group(%struct.iommu_domain*, %struct.iommu_group*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iommu_group_put(%struct.iommu_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
