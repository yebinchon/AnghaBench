; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_gem.c_rockchip_gem_dma_map_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_gem.c_rockchip_gem_dma_map_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.dma_buf_attachment = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.sg_table = type { i32, i32 }
%struct.rockchip_gem_object = type { %struct.sg_table*, i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"failed to map sg_table to contiguous linear address.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.dma_buf_attachment*, %struct.sg_table*, %struct.rockchip_gem_object*)* @rockchip_gem_dma_map_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_gem_dma_map_sg(%struct.drm_device* %0, %struct.dma_buf_attachment* %1, %struct.sg_table* %2, %struct.rockchip_gem_object* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.dma_buf_attachment*, align 8
  %8 = alloca %struct.sg_table*, align 8
  %9 = alloca %struct.rockchip_gem_object*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store %struct.dma_buf_attachment* %1, %struct.dma_buf_attachment** %7, align 8
  store %struct.sg_table* %2, %struct.sg_table** %8, align 8
  store %struct.rockchip_gem_object* %3, %struct.rockchip_gem_object** %9, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  %15 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  %18 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %21 = call i32 @dma_map_sg(i32 %13, i32 %16, i32 %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %62

27:                                               ; preds = %4
  %28 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i64 @rockchip_sg_get_contiguous_size(%struct.sg_table* %28, i32 %29)
  %31 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %7, align 8
  %32 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %30, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %27
  %38 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %40 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  %43 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  %46 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %49 = call i32 @dma_unmap_sg(i32 %41, i32 %44, i32 %47, i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %62

52:                                               ; preds = %27
  %53 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  %54 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @sg_dma_address(i32 %55)
  %57 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %9, align 8
  %58 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  %60 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %9, align 8
  %61 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %60, i32 0, i32 0
  store %struct.sg_table* %59, %struct.sg_table** %61, align 8
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %52, %37, %24
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @dma_map_sg(i32, i32, i32, i32) #1

declare dso_local i64 @rockchip_sg_get_contiguous_size(%struct.sg_table*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

declare dso_local i32 @sg_dma_address(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
