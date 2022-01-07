; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_platform.c_nouveau_platform_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_platform.c_nouveau_platform_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.nvkm_device_tegra_func = type { i32 }
%struct.nvkm_device = type { i32 }
%struct.drm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @nouveau_platform_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_platform_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.nvkm_device_tegra_func*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.nvkm_device* null, %struct.nvkm_device** %5, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.nvkm_device_tegra_func* @of_device_get_match_data(i32* %9)
  store %struct.nvkm_device_tegra_func* %10, %struct.nvkm_device_tegra_func** %4, align 8
  %11 = load %struct.nvkm_device_tegra_func*, %struct.nvkm_device_tegra_func** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = call %struct.drm_device* @nouveau_platform_device_create(%struct.nvkm_device_tegra_func* %11, %struct.platform_device* %12, %struct.nvkm_device** %5)
  store %struct.drm_device* %13, %struct.drm_device** %6, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %15 = call i64 @IS_ERR(%struct.drm_device* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %19 = call i32 @PTR_ERR(%struct.drm_device* %18)
  store i32 %19, i32* %2, align 4
  br label %30

20:                                               ; preds = %1
  %21 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %22 = call i32 @drm_dev_register(%struct.drm_device* %21, i32 0)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %27 = call i32 @drm_dev_put(%struct.drm_device* %26)
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %2, align 4
  br label %30

29:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %25, %17
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.nvkm_device_tegra_func* @of_device_get_match_data(i32*) #1

declare dso_local %struct.drm_device* @nouveau_platform_device_create(%struct.nvkm_device_tegra_func*, %struct.platform_device*, %struct.nvkm_device**) #1

declare dso_local i64 @IS_ERR(%struct.drm_device*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_device*) #1

declare dso_local i32 @drm_dev_register(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_dev_put(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
