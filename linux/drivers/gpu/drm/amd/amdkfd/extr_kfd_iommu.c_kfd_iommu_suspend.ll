; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_iommu.c_kfd_iommu_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_iommu.c_kfd_iommu_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kfd_iommu_suspend(%struct.kfd_dev* %0) #0 {
  %2 = alloca %struct.kfd_dev*, align 8
  store %struct.kfd_dev* %0, %struct.kfd_dev** %2, align 8
  %3 = load %struct.kfd_dev*, %struct.kfd_dev** %2, align 8
  %4 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %25

10:                                               ; preds = %1
  %11 = load %struct.kfd_dev*, %struct.kfd_dev** %2, align 8
  %12 = call i32 @kfd_unbind_processes_from_device(%struct.kfd_dev* %11)
  %13 = load %struct.kfd_dev*, %struct.kfd_dev** %2, align 8
  %14 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @amd_iommu_set_invalidate_ctx_cb(i32 %15, i32* null)
  %17 = load %struct.kfd_dev*, %struct.kfd_dev** %2, align 8
  %18 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @amd_iommu_set_invalid_ppr_cb(i32 %19, i32* null)
  %21 = load %struct.kfd_dev*, %struct.kfd_dev** %2, align 8
  %22 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @amd_iommu_free_device(i32 %23)
  br label %25

25:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @kfd_unbind_processes_from_device(%struct.kfd_dev*) #1

declare dso_local i32 @amd_iommu_set_invalidate_ctx_cb(i32, i32*) #1

declare dso_local i32 @amd_iommu_set_invalid_ppr_cb(i32, i32*) #1

declare dso_local i32 @amd_iommu_free_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
