; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_gem.c_rockchip_gem_free_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_gem.c_rockchip_gem_free_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i64, %struct.drm_device* }
%struct.drm_device = type { i32, %struct.rockchip_drm_private* }
%struct.rockchip_drm_private = type { i64 }
%struct.rockchip_gem_object = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rockchip_gem_free_object(%struct.drm_gem_object* %0) #0 {
  %2 = alloca %struct.drm_gem_object*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.rockchip_drm_private*, align 8
  %5 = alloca %struct.rockchip_gem_object*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %2, align 8
  %6 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %7 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %6, i32 0, i32 1
  %8 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  store %struct.drm_device* %8, %struct.drm_device** %3, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 1
  %11 = load %struct.rockchip_drm_private*, %struct.rockchip_drm_private** %10, align 8
  store %struct.rockchip_drm_private* %11, %struct.rockchip_drm_private** %4, align 8
  %12 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %13 = call %struct.rockchip_gem_object* @to_rockchip_obj(%struct.drm_gem_object* %12)
  store %struct.rockchip_gem_object* %13, %struct.rockchip_gem_object** %5, align 8
  %14 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %15 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %1
  %19 = load %struct.rockchip_drm_private*, %struct.rockchip_drm_private** %4, align 8
  %20 = getelementptr inbounds %struct.rockchip_drm_private, %struct.rockchip_drm_private* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %5, align 8
  %25 = call i32 @rockchip_gem_iommu_unmap(%struct.rockchip_gem_object* %24)
  br label %42

26:                                               ; preds = %18
  %27 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %28 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %5, align 8
  %31 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %5, align 8
  %36 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %41 = call i32 @dma_unmap_sg(i32 %29, i32 %34, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %26, %23
  %43 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %44 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %5, align 8
  %45 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = call i32 @drm_prime_gem_destroy(%struct.drm_gem_object* %43, %struct.TYPE_2__* %46)
  br label %51

48:                                               ; preds = %1
  %49 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %5, align 8
  %50 = call i32 @rockchip_gem_free_buf(%struct.rockchip_gem_object* %49)
  br label %51

51:                                               ; preds = %48, %42
  %52 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %5, align 8
  %53 = call i32 @rockchip_gem_release_object(%struct.rockchip_gem_object* %52)
  ret void
}

declare dso_local %struct.rockchip_gem_object* @to_rockchip_obj(%struct.drm_gem_object*) #1

declare dso_local i32 @rockchip_gem_iommu_unmap(%struct.rockchip_gem_object*) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

declare dso_local i32 @drm_prime_gem_destroy(%struct.drm_gem_object*, %struct.TYPE_2__*) #1

declare dso_local i32 @rockchip_gem_free_buf(%struct.rockchip_gem_object*) #1

declare dso_local i32 @rockchip_gem_release_object(%struct.rockchip_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
