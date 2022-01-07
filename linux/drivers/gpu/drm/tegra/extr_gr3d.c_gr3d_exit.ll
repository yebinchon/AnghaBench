; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gr3d.c_gr3d_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gr3d.c_gr3d_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_client = type { i32*, i32 }
%struct.tegra_drm_client = type { i32 }
%struct.drm_device = type { i32 }
%struct.gr3d = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.host1x_client*)* @gr3d_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gr3d_exit(%struct.host1x_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.host1x_client*, align 8
  %4 = alloca %struct.tegra_drm_client*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.gr3d*, align 8
  %7 = alloca i32, align 4
  store %struct.host1x_client* %0, %struct.host1x_client** %3, align 8
  %8 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %9 = call %struct.tegra_drm_client* @host1x_to_drm_client(%struct.host1x_client* %8)
  store %struct.tegra_drm_client* %9, %struct.tegra_drm_client** %4, align 8
  %10 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %11 = getelementptr inbounds %struct.host1x_client, %struct.host1x_client* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.drm_device* @dev_get_drvdata(i32 %12)
  store %struct.drm_device* %13, %struct.drm_device** %5, align 8
  %14 = load %struct.tegra_drm_client*, %struct.tegra_drm_client** %4, align 8
  %15 = call %struct.gr3d* @to_gr3d(%struct.tegra_drm_client* %14)
  store %struct.gr3d* %15, %struct.gr3d** %6, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.tegra_drm_client*, %struct.tegra_drm_client** %4, align 8
  %20 = call i32 @tegra_drm_unregister_client(i32 %18, %struct.tegra_drm_client* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %2, align 4
  br label %41

25:                                               ; preds = %1
  %26 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %27 = load %struct.gr3d*, %struct.gr3d** %6, align 8
  %28 = getelementptr inbounds %struct.gr3d, %struct.gr3d* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @host1x_client_iommu_detach(%struct.host1x_client* %26, i32 %29)
  %31 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %32 = getelementptr inbounds %struct.host1x_client, %struct.host1x_client* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @host1x_syncpt_free(i32 %35)
  %37 = load %struct.gr3d*, %struct.gr3d** %6, align 8
  %38 = getelementptr inbounds %struct.gr3d, %struct.gr3d* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @host1x_channel_put(i32 %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %25, %23
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.tegra_drm_client* @host1x_to_drm_client(%struct.host1x_client*) #1

declare dso_local %struct.drm_device* @dev_get_drvdata(i32) #1

declare dso_local %struct.gr3d* @to_gr3d(%struct.tegra_drm_client*) #1

declare dso_local i32 @tegra_drm_unregister_client(i32, %struct.tegra_drm_client*) #1

declare dso_local i32 @host1x_client_iommu_detach(%struct.host1x_client*, i32) #1

declare dso_local i32 @host1x_syncpt_free(i32) #1

declare dso_local i32 @host1x_channel_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
