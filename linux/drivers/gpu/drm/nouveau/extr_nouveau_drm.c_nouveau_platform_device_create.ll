; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_platform_device_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_platform_device_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nvkm_device_tegra_func = type { i32 }
%struct.platform_device = type { i32 }
%struct.nvkm_device = type { i32 }

@nouveau_config = common dso_local global i32 0, align 4
@nouveau_debug = common dso_local global i32 0, align 4
@driver_platform = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_device* @nouveau_platform_device_create(%struct.nvkm_device_tegra_func* %0, %struct.platform_device* %1, %struct.nvkm_device** %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.nvkm_device_tegra_func*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.nvkm_device**, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca i32, align 4
  store %struct.nvkm_device_tegra_func* %0, %struct.nvkm_device_tegra_func** %5, align 8
  store %struct.platform_device* %1, %struct.platform_device** %6, align 8
  store %struct.nvkm_device** %2, %struct.nvkm_device*** %7, align 8
  %10 = load %struct.nvkm_device_tegra_func*, %struct.nvkm_device_tegra_func** %5, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %12 = load i32, i32* @nouveau_config, align 4
  %13 = load i32, i32* @nouveau_debug, align 4
  %14 = load %struct.nvkm_device**, %struct.nvkm_device*** %7, align 8
  %15 = call i32 @nvkm_device_tegra_new(%struct.nvkm_device_tegra_func* %10, %struct.platform_device* %11, i32 %12, i32 %13, i32 1, i32 1, i64 -1, %struct.nvkm_device** %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %43

19:                                               ; preds = %3
  %20 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call %struct.drm_device* @drm_dev_alloc(i32* @driver_platform, i32* %21)
  store %struct.drm_device* %22, %struct.drm_device** %8, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %24 = call i64 @IS_ERR(%struct.drm_device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %28 = call i32 @PTR_ERR(%struct.drm_device* %27)
  store i32 %28, i32* %9, align 4
  br label %43

29:                                               ; preds = %19
  %30 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %31 = call i32 @nouveau_drm_device_init(%struct.drm_device* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %40

35:                                               ; preds = %29
  %36 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %37 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %38 = call i32 @platform_set_drvdata(%struct.platform_device* %36, %struct.drm_device* %37)
  %39 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %39, %struct.drm_device** %4, align 8
  br label %48

40:                                               ; preds = %34
  %41 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %42 = call i32 @drm_dev_put(%struct.drm_device* %41)
  br label %43

43:                                               ; preds = %40, %26, %18
  %44 = load %struct.nvkm_device**, %struct.nvkm_device*** %7, align 8
  %45 = call i32 @nvkm_device_del(%struct.nvkm_device** %44)
  %46 = load i32, i32* %9, align 4
  %47 = call %struct.drm_device* @ERR_PTR(i32 %46)
  store %struct.drm_device* %47, %struct.drm_device** %4, align 8
  br label %48

48:                                               ; preds = %43, %35
  %49 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  ret %struct.drm_device* %49
}

declare dso_local i32 @nvkm_device_tegra_new(%struct.nvkm_device_tegra_func*, %struct.platform_device*, i32, i32, i32, i32, i64, %struct.nvkm_device**) #1

declare dso_local %struct.drm_device* @drm_dev_alloc(i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.drm_device*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_device*) #1

declare dso_local i32 @nouveau_drm_device_init(%struct.drm_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.drm_device*) #1

declare dso_local i32 @drm_dev_put(%struct.drm_device*) #1

declare dso_local i32 @nvkm_device_del(%struct.nvkm_device**) #1

declare dso_local %struct.drm_device* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
