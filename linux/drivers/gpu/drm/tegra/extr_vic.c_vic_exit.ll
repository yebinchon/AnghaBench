; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_vic.c_vic_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_vic.c_vic_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_client = type { i32*, i32, i32 }
%struct.tegra_drm_client = type { i32 }
%struct.iommu_group = type { i32 }
%struct.drm_device = type { %struct.tegra_drm* }
%struct.tegra_drm = type { i32 }
%struct.vic = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.host1x_client*)* @vic_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vic_exit(%struct.host1x_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.host1x_client*, align 8
  %4 = alloca %struct.tegra_drm_client*, align 8
  %5 = alloca %struct.iommu_group*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.tegra_drm*, align 8
  %8 = alloca %struct.vic*, align 8
  %9 = alloca i32, align 4
  store %struct.host1x_client* %0, %struct.host1x_client** %3, align 8
  %10 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %11 = call %struct.tegra_drm_client* @host1x_to_drm_client(%struct.host1x_client* %10)
  store %struct.tegra_drm_client* %11, %struct.tegra_drm_client** %4, align 8
  %12 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %13 = getelementptr inbounds %struct.host1x_client, %struct.host1x_client* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.iommu_group* @iommu_group_get(i32 %14)
  store %struct.iommu_group* %15, %struct.iommu_group** %5, align 8
  %16 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %17 = getelementptr inbounds %struct.host1x_client, %struct.host1x_client* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.drm_device* @dev_get_drvdata(i32 %18)
  store %struct.drm_device* %19, %struct.drm_device** %6, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 0
  %22 = load %struct.tegra_drm*, %struct.tegra_drm** %21, align 8
  store %struct.tegra_drm* %22, %struct.tegra_drm** %7, align 8
  %23 = load %struct.tegra_drm_client*, %struct.tegra_drm_client** %4, align 8
  %24 = call %struct.vic* @to_vic(%struct.tegra_drm_client* %23)
  store %struct.vic* %24, %struct.vic** %8, align 8
  %25 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %26 = load %struct.tegra_drm_client*, %struct.tegra_drm_client** %4, align 8
  %27 = call i32 @tegra_drm_unregister_client(%struct.tegra_drm* %25, %struct.tegra_drm_client* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %2, align 4
  br label %56

32:                                               ; preds = %1
  %33 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %34 = getelementptr inbounds %struct.host1x_client, %struct.host1x_client* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @host1x_syncpt_free(i32 %37)
  %39 = load %struct.vic*, %struct.vic** %8, align 8
  %40 = getelementptr inbounds %struct.vic, %struct.vic* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @host1x_channel_put(i32 %41)
  %43 = load %struct.vic*, %struct.vic** %8, align 8
  %44 = getelementptr inbounds %struct.vic, %struct.vic* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %32
  %48 = load %struct.vic*, %struct.vic** %8, align 8
  %49 = getelementptr inbounds %struct.vic, %struct.vic* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %52 = call i32 @iommu_detach_group(i32* %50, %struct.iommu_group* %51)
  %53 = load %struct.vic*, %struct.vic** %8, align 8
  %54 = getelementptr inbounds %struct.vic, %struct.vic* %53, i32 0, i32 0
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %47, %32
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %30
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.tegra_drm_client* @host1x_to_drm_client(%struct.host1x_client*) #1

declare dso_local %struct.iommu_group* @iommu_group_get(i32) #1

declare dso_local %struct.drm_device* @dev_get_drvdata(i32) #1

declare dso_local %struct.vic* @to_vic(%struct.tegra_drm_client*) #1

declare dso_local i32 @tegra_drm_unregister_client(%struct.tegra_drm*, %struct.tegra_drm_client*) #1

declare dso_local i32 @host1x_syncpt_free(i32) #1

declare dso_local i32 @host1x_channel_put(i32) #1

declare dso_local i32 @iommu_detach_group(i32*, %struct.iommu_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
