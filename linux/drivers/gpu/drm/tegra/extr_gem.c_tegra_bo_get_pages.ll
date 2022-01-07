; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gem.c_tegra_bo_get_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gem.c_tegra_bo_get_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.tegra_bo = type { i32, %struct.TYPE_11__*, %struct.TYPE_12__, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.tegra_bo*)* @tegra_bo_get_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_bo_get_pages(%struct.drm_device* %0, %struct.tegra_bo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.tegra_bo*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.tegra_bo* %1, %struct.tegra_bo** %5, align 8
  %7 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %8 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %7, i32 0, i32 2
  %9 = call %struct.TYPE_11__* @drm_gem_get_pages(%struct.TYPE_12__* %8)
  %10 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %11 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %10, i32 0, i32 1
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %11, align 8
  %12 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %13 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %12, i32 0, i32 1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = call i64 @IS_ERR(%struct.TYPE_11__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %19 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %18, i32 0, i32 1
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = call i32 @PTR_ERR(%struct.TYPE_11__* %20)
  store i32 %21, i32* %3, align 4
  br label %89

22:                                               ; preds = %2
  %23 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %24 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @PAGE_SHIFT, align 4
  %28 = ashr i32 %26, %27
  %29 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %30 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %32 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %31, i32 0, i32 1
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %35 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.TYPE_11__* @drm_prime_pages_to_sg(%struct.TYPE_11__* %33, i32 %36)
  %38 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %39 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %38, i32 0, i32 3
  store %struct.TYPE_11__* %37, %struct.TYPE_11__** %39, align 8
  %40 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %41 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %40, i32 0, i32 3
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = call i64 @IS_ERR(%struct.TYPE_11__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %22
  %46 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %47 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %46, i32 0, i32 3
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = call i32 @PTR_ERR(%struct.TYPE_11__* %48)
  store i32 %49, i32* %6, align 4
  br label %81

50:                                               ; preds = %22
  %51 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %52 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %55 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %54, i32 0, i32 3
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %60 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %59, i32 0, i32 3
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %65 = call i32 @dma_map_sg(i32 %53, i32 %58, i32 %63, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %50
  %69 = load i32, i32* @EFAULT, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %6, align 4
  br label %72

71:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %89

72:                                               ; preds = %68
  %73 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %74 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %73, i32 0, i32 3
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = call i32 @sg_free_table(%struct.TYPE_11__* %75)
  %77 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %78 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %77, i32 0, i32 3
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = call i32 @kfree(%struct.TYPE_11__* %79)
  br label %81

81:                                               ; preds = %72, %45
  %82 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %83 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %82, i32 0, i32 2
  %84 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %85 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %84, i32 0, i32 1
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = call i32 @drm_gem_put_pages(%struct.TYPE_12__* %83, %struct.TYPE_11__* %86, i32 0, i32 0)
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %81, %71, %17
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.TYPE_11__* @drm_gem_get_pages(%struct.TYPE_12__*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_11__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @drm_prime_pages_to_sg(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @dma_map_sg(i32, i32, i32, i32) #1

declare dso_local i32 @sg_free_table(%struct.TYPE_11__*) #1

declare dso_local i32 @kfree(%struct.TYPE_11__*) #1

declare dso_local i32 @drm_gem_put_pages(%struct.TYPE_12__*, %struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
