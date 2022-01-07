; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_drm.c_host1x_client_iommu_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_drm.c_host1x_client_iommu_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_client = type { i32 }
%struct.iommu_group = type { i32 }
%struct.drm_device = type { %struct.tegra_drm* }
%struct.tegra_drm = type { %struct.iommu_group*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @host1x_client_iommu_detach(%struct.host1x_client* %0, %struct.iommu_group* %1) #0 {
  %3 = alloca %struct.host1x_client*, align 8
  %4 = alloca %struct.iommu_group*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.tegra_drm*, align 8
  store %struct.host1x_client* %0, %struct.host1x_client** %3, align 8
  store %struct.iommu_group* %1, %struct.iommu_group** %4, align 8
  %7 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %8 = getelementptr inbounds %struct.host1x_client, %struct.host1x_client* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.drm_device* @dev_get_drvdata(i32 %9)
  store %struct.drm_device* %10, %struct.drm_device** %5, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.tegra_drm*, %struct.tegra_drm** %12, align 8
  store %struct.tegra_drm* %13, %struct.tegra_drm** %6, align 8
  %14 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %15 = icmp ne %struct.iommu_group* %14, null
  br i1 %15, label %16, label %33

16:                                               ; preds = %2
  %17 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %18 = load %struct.tegra_drm*, %struct.tegra_drm** %6, align 8
  %19 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %18, i32 0, i32 0
  %20 = load %struct.iommu_group*, %struct.iommu_group** %19, align 8
  %21 = icmp eq %struct.iommu_group* %17, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load %struct.tegra_drm*, %struct.tegra_drm** %6, align 8
  %24 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %27 = call i32 @iommu_detach_group(i32 %25, %struct.iommu_group* %26)
  %28 = load %struct.tegra_drm*, %struct.tegra_drm** %6, align 8
  %29 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %28, i32 0, i32 0
  store %struct.iommu_group* null, %struct.iommu_group** %29, align 8
  br label %30

30:                                               ; preds = %22, %16
  %31 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %32 = call i32 @iommu_group_put(%struct.iommu_group* %31)
  br label %33

33:                                               ; preds = %30, %2
  ret void
}

declare dso_local %struct.drm_device* @dev_get_drvdata(i32) #1

declare dso_local i32 @iommu_detach_group(i32, %struct.iommu_group*) #1

declare dso_local i32 @iommu_group_put(%struct.iommu_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
