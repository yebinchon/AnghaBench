; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gem.c_tegra_bo_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gem.c_tegra_bo_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bo = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_device = type { i32 }

@DRM_TEGRA_GEM_CREATE_TILED = common dso_local global i64 0, align 8
@TEGRA_BO_TILING_MODE_TILED = common dso_local global i32 0, align 4
@DRM_TEGRA_GEM_CREATE_BOTTOM_UP = common dso_local global i64 0, align 8
@TEGRA_BO_BOTTOM_UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tegra_bo* @tegra_bo_create(%struct.drm_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.tegra_bo*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tegra_bo*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call %struct.tegra_bo* @tegra_bo_alloc_object(%struct.drm_device* %10, i64 %11)
  store %struct.tegra_bo* %12, %struct.tegra_bo** %8, align 8
  %13 = load %struct.tegra_bo*, %struct.tegra_bo** %8, align 8
  %14 = call i64 @IS_ERR(%struct.tegra_bo* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load %struct.tegra_bo*, %struct.tegra_bo** %8, align 8
  store %struct.tegra_bo* %17, %struct.tegra_bo** %4, align 8
  br label %56

18:                                               ; preds = %3
  %19 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %20 = load %struct.tegra_bo*, %struct.tegra_bo** %8, align 8
  %21 = call i32 @tegra_bo_alloc(%struct.drm_device* %19, %struct.tegra_bo* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %48

25:                                               ; preds = %18
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @DRM_TEGRA_GEM_CREATE_TILED, align 8
  %28 = and i64 %26, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i32, i32* @TEGRA_BO_TILING_MODE_TILED, align 4
  %32 = load %struct.tegra_bo*, %struct.tegra_bo** %8, align 8
  %33 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  br label %35

35:                                               ; preds = %30, %25
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @DRM_TEGRA_GEM_CREATE_BOTTOM_UP, align 8
  %38 = and i64 %36, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32, i32* @TEGRA_BO_BOTTOM_UP, align 4
  %42 = load %struct.tegra_bo*, %struct.tegra_bo** %8, align 8
  %43 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %40, %35
  %47 = load %struct.tegra_bo*, %struct.tegra_bo** %8, align 8
  store %struct.tegra_bo* %47, %struct.tegra_bo** %4, align 8
  br label %56

48:                                               ; preds = %24
  %49 = load %struct.tegra_bo*, %struct.tegra_bo** %8, align 8
  %50 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %49, i32 0, i32 0
  %51 = call i32 @drm_gem_object_release(i32* %50)
  %52 = load %struct.tegra_bo*, %struct.tegra_bo** %8, align 8
  %53 = call i32 @kfree(%struct.tegra_bo* %52)
  %54 = load i32, i32* %9, align 4
  %55 = call %struct.tegra_bo* @ERR_PTR(i32 %54)
  store %struct.tegra_bo* %55, %struct.tegra_bo** %4, align 8
  br label %56

56:                                               ; preds = %48, %46, %16
  %57 = load %struct.tegra_bo*, %struct.tegra_bo** %4, align 8
  ret %struct.tegra_bo* %57
}

declare dso_local %struct.tegra_bo* @tegra_bo_alloc_object(%struct.drm_device*, i64) #1

declare dso_local i64 @IS_ERR(%struct.tegra_bo*) #1

declare dso_local i32 @tegra_bo_alloc(%struct.drm_device*, %struct.tegra_bo*) #1

declare dso_local i32 @drm_gem_object_release(i32*) #1

declare dso_local i32 @kfree(%struct.tegra_bo*) #1

declare dso_local %struct.tegra_bo* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
