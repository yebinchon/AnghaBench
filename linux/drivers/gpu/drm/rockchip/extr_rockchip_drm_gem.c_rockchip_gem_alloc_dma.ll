; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_gem.c_rockchip_gem_alloc_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_gem.c_rockchip_gem_alloc_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_gem_object = type { i32, i32, i32, %struct.drm_gem_object }
%struct.drm_gem_object = type { i32, %struct.drm_device* }
%struct.drm_device = type { i32 }

@DMA_ATTR_WRITE_COMBINE = common dso_local global i32 0, align 4
@DMA_ATTR_NO_KERNEL_MAPPING = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to allocate %zu byte dma buffer\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_gem_object*, i32)* @rockchip_gem_alloc_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_gem_alloc_dma(%struct.rockchip_gem_object* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rockchip_gem_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_gem_object*, align 8
  %7 = alloca %struct.drm_device*, align 8
  store %struct.rockchip_gem_object* %0, %struct.rockchip_gem_object** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %4, align 8
  %9 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %8, i32 0, i32 3
  store %struct.drm_gem_object* %9, %struct.drm_gem_object** %6, align 8
  %10 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %11 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %10, i32 0, i32 1
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %7, align 8
  %13 = load i32, i32* @DMA_ATTR_WRITE_COMBINE, align 4
  %14 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %4, align 8
  %15 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @DMA_ATTR_NO_KERNEL_MAPPING, align 4
  %20 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %4, align 8
  %21 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %18, %2
  %25 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %26 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %29 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %4, align 8
  %32 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %31, i32 0, i32 2
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %4, align 8
  %35 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dma_alloc_attrs(i32 %27, i32 %30, i32* %32, i32 %33, i32 %36)
  %38 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %4, align 8
  %39 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %4, align 8
  %41 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %24
  %45 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %46 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %52

51:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %44
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @dma_alloc_attrs(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
