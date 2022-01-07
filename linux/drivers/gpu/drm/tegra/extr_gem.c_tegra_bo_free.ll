; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gem.c_tegra_bo_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gem.c_tegra_bo_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.tegra_bo = type { i32, i64, %struct.TYPE_5__, %struct.TYPE_4__*, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.tegra_bo*)* @tegra_bo_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_bo_free(%struct.drm_device* %0, %struct.tegra_bo* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.tegra_bo*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.tegra_bo* %1, %struct.tegra_bo** %4, align 8
  %5 = load %struct.tegra_bo*, %struct.tegra_bo** %4, align 8
  %6 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %5, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %39

9:                                                ; preds = %2
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.tegra_bo*, %struct.tegra_bo** %4, align 8
  %14 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %13, i32 0, i32 3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.tegra_bo*, %struct.tegra_bo** %4, align 8
  %19 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %18, i32 0, i32 3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %24 = call i32 @dma_unmap_sg(i32 %12, i32 %17, i32 %22, i32 %23)
  %25 = load %struct.tegra_bo*, %struct.tegra_bo** %4, align 8
  %26 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %25, i32 0, i32 2
  %27 = load %struct.tegra_bo*, %struct.tegra_bo** %4, align 8
  %28 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @drm_gem_put_pages(%struct.TYPE_5__* %26, i64 %29, i32 1, i32 1)
  %31 = load %struct.tegra_bo*, %struct.tegra_bo** %4, align 8
  %32 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %31, i32 0, i32 3
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = call i32 @sg_free_table(%struct.TYPE_4__* %33)
  %35 = load %struct.tegra_bo*, %struct.tegra_bo** %4, align 8
  %36 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %35, i32 0, i32 3
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = call i32 @kfree(%struct.TYPE_4__* %37)
  br label %60

39:                                               ; preds = %2
  %40 = load %struct.tegra_bo*, %struct.tegra_bo** %4, align 8
  %41 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %39
  %45 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %46 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.tegra_bo*, %struct.tegra_bo** %4, align 8
  %49 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.tegra_bo*, %struct.tegra_bo** %4, align 8
  %53 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.tegra_bo*, %struct.tegra_bo** %4, align 8
  %56 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dma_free_wc(i32 %47, i32 %51, i64 %54, i32 %57)
  br label %59

59:                                               ; preds = %44, %39
  br label %60

60:                                               ; preds = %59, %9
  ret void
}

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

declare dso_local i32 @drm_gem_put_pages(%struct.TYPE_5__*, i64, i32, i32) #1

declare dso_local i32 @sg_free_table(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

declare dso_local i32 @dma_free_wc(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
