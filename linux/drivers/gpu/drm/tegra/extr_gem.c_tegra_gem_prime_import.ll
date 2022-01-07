; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gem.c_tegra_gem_prime_import.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gem.c_tegra_gem_prime_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.dma_buf = type { %struct.drm_gem_object*, i32* }
%struct.tegra_bo = type { %struct.drm_gem_object }

@tegra_gem_prime_dmabuf_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_gem_object* @tegra_gem_prime_import(%struct.drm_device* %0, %struct.dma_buf* %1) #0 {
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.dma_buf*, align 8
  %6 = alloca %struct.tegra_bo*, align 8
  %7 = alloca %struct.drm_gem_object*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.dma_buf* %1, %struct.dma_buf** %5, align 8
  %8 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %9 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, @tegra_gem_prime_dmabuf_ops
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %14 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %13, i32 0, i32 0
  %15 = load %struct.drm_gem_object*, %struct.drm_gem_object** %14, align 8
  store %struct.drm_gem_object* %15, %struct.drm_gem_object** %7, align 8
  %16 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  %17 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %16, i32 0, i32 0
  %18 = load %struct.drm_device*, %struct.drm_device** %17, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %20 = icmp eq %struct.drm_device* %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %12
  %22 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  %23 = call i32 @drm_gem_object_get(%struct.drm_gem_object* %22)
  %24 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  store %struct.drm_gem_object* %24, %struct.drm_gem_object** %3, align 8
  br label %39

25:                                               ; preds = %12
  br label %26

26:                                               ; preds = %25, %2
  %27 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %28 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %29 = call %struct.tegra_bo* @tegra_bo_import(%struct.drm_device* %27, %struct.dma_buf* %28)
  store %struct.tegra_bo* %29, %struct.tegra_bo** %6, align 8
  %30 = load %struct.tegra_bo*, %struct.tegra_bo** %6, align 8
  %31 = call i64 @IS_ERR(%struct.tegra_bo* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.tegra_bo*, %struct.tegra_bo** %6, align 8
  %35 = call %struct.drm_gem_object* @ERR_CAST(%struct.tegra_bo* %34)
  store %struct.drm_gem_object* %35, %struct.drm_gem_object** %3, align 8
  br label %39

36:                                               ; preds = %26
  %37 = load %struct.tegra_bo*, %struct.tegra_bo** %6, align 8
  %38 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %37, i32 0, i32 0
  store %struct.drm_gem_object* %38, %struct.drm_gem_object** %3, align 8
  br label %39

39:                                               ; preds = %36, %33, %21
  %40 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  ret %struct.drm_gem_object* %40
}

declare dso_local i32 @drm_gem_object_get(%struct.drm_gem_object*) #1

declare dso_local %struct.tegra_bo* @tegra_bo_import(%struct.drm_device*, %struct.dma_buf*) #1

declare dso_local i64 @IS_ERR(%struct.tegra_bo*) #1

declare dso_local %struct.drm_gem_object* @ERR_CAST(%struct.tegra_bo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
