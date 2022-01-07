; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gr2d.c_gr2d_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gr2d.c_gr2d_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_client = type { i32*, i32 }
%struct.tegra_drm_client = type { i32 }
%struct.drm_device = type { %struct.tegra_drm* }
%struct.tegra_drm = type { i32 }
%struct.gr2d = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.host1x_client*)* @gr2d_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gr2d_exit(%struct.host1x_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.host1x_client*, align 8
  %4 = alloca %struct.tegra_drm_client*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.tegra_drm*, align 8
  %7 = alloca %struct.gr2d*, align 8
  %8 = alloca i32, align 4
  store %struct.host1x_client* %0, %struct.host1x_client** %3, align 8
  %9 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %10 = call %struct.tegra_drm_client* @host1x_to_drm_client(%struct.host1x_client* %9)
  store %struct.tegra_drm_client* %10, %struct.tegra_drm_client** %4, align 8
  %11 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %12 = getelementptr inbounds %struct.host1x_client, %struct.host1x_client* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.drm_device* @dev_get_drvdata(i32 %13)
  store %struct.drm_device* %14, %struct.drm_device** %5, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.tegra_drm*, %struct.tegra_drm** %16, align 8
  store %struct.tegra_drm* %17, %struct.tegra_drm** %6, align 8
  %18 = load %struct.tegra_drm_client*, %struct.tegra_drm_client** %4, align 8
  %19 = call %struct.gr2d* @to_gr2d(%struct.tegra_drm_client* %18)
  store %struct.gr2d* %19, %struct.gr2d** %7, align 8
  %20 = load %struct.tegra_drm*, %struct.tegra_drm** %6, align 8
  %21 = load %struct.tegra_drm_client*, %struct.tegra_drm_client** %4, align 8
  %22 = call i32 @tegra_drm_unregister_client(%struct.tegra_drm* %20, %struct.tegra_drm_client* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %2, align 4
  br label %43

27:                                               ; preds = %1
  %28 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %29 = load %struct.gr2d*, %struct.gr2d** %7, align 8
  %30 = getelementptr inbounds %struct.gr2d, %struct.gr2d* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @host1x_client_iommu_detach(%struct.host1x_client* %28, i32 %31)
  %33 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %34 = getelementptr inbounds %struct.host1x_client, %struct.host1x_client* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @host1x_syncpt_free(i32 %37)
  %39 = load %struct.gr2d*, %struct.gr2d** %7, align 8
  %40 = getelementptr inbounds %struct.gr2d, %struct.gr2d* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @host1x_channel_put(i32 %41)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %27, %25
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.tegra_drm_client* @host1x_to_drm_client(%struct.host1x_client*) #1

declare dso_local %struct.drm_device* @dev_get_drvdata(i32) #1

declare dso_local %struct.gr2d* @to_gr2d(%struct.tegra_drm_client*) #1

declare dso_local i32 @tegra_drm_unregister_client(%struct.tegra_drm*, %struct.tegra_drm_client*) #1

declare dso_local i32 @host1x_client_iommu_detach(%struct.host1x_client*, i32) #1

declare dso_local i32 @host1x_syncpt_free(i32) #1

declare dso_local i32 @host1x_channel_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
