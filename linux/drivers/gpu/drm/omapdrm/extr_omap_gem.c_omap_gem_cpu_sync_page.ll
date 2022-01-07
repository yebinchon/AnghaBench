; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_gem.c_omap_gem_cpu_sync_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_gem.c_omap_gem_cpu_sync_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.omap_gem_object = type { i64* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_gem_cpu_sync_page(%struct.drm_gem_object* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.omap_gem_object*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %8 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %7, i32 0, i32 0
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %5, align 8
  %10 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %11 = call %struct.omap_gem_object* @to_omap_bo(%struct.drm_gem_object* %10)
  store %struct.omap_gem_object* %11, %struct.omap_gem_object** %6, align 8
  %12 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %13 = call i64 @omap_gem_is_cached_coherent(%struct.drm_gem_object* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %45

16:                                               ; preds = %2
  %17 = load %struct.omap_gem_object*, %struct.omap_gem_object** %6, align 8
  %18 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %16
  %26 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.omap_gem_object*, %struct.omap_gem_object** %6, align 8
  %30 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = load i32, i32* @DMA_TO_DEVICE, align 4
  %38 = call i32 @dma_unmap_page(i32 %28, i64 %35, i32 %36, i32 %37)
  %39 = load %struct.omap_gem_object*, %struct.omap_gem_object** %6, align 8
  %40 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %15, %25, %16
  ret void
}

declare dso_local %struct.omap_gem_object* @to_omap_bo(%struct.drm_gem_object*) #1

declare dso_local i64 @omap_gem_is_cached_coherent(%struct.drm_gem_object*) #1

declare dso_local i32 @dma_unmap_page(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
