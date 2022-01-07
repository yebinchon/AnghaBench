; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_gem.c_rockchip_gem_prime_import_sg_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_gem.c_rockchip_gem_prime_import_sg_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.drm_device = type { %struct.rockchip_drm_private* }
%struct.rockchip_drm_private = type { i64 }
%struct.dma_buf_attachment = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sg_table = type { i32 }
%struct.rockchip_gem_object = type { %struct.drm_gem_object }

@.str = private unnamed_addr constant [31 x i8] c"failed to import sg table: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_gem_object* @rockchip_gem_prime_import_sg_table(%struct.drm_device* %0, %struct.dma_buf_attachment* %1, %struct.sg_table* %2) #0 {
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.dma_buf_attachment*, align 8
  %7 = alloca %struct.sg_table*, align 8
  %8 = alloca %struct.rockchip_drm_private*, align 8
  %9 = alloca %struct.rockchip_gem_object*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.dma_buf_attachment* %1, %struct.dma_buf_attachment** %6, align 8
  store %struct.sg_table* %2, %struct.sg_table** %7, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.rockchip_drm_private*, %struct.rockchip_drm_private** %12, align 8
  store %struct.rockchip_drm_private* %13, %struct.rockchip_drm_private** %8, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %16 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.rockchip_gem_object* @rockchip_gem_alloc_object(%struct.drm_device* %14, i32 %19)
  store %struct.rockchip_gem_object* %20, %struct.rockchip_gem_object** %9, align 8
  %21 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %9, align 8
  %22 = call i64 @IS_ERR(%struct.rockchip_gem_object* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %9, align 8
  %26 = call %struct.drm_gem_object* @ERR_CAST(%struct.rockchip_gem_object* %25)
  store %struct.drm_gem_object* %26, %struct.drm_gem_object** %4, align 8
  br label %58

27:                                               ; preds = %3
  %28 = load %struct.rockchip_drm_private*, %struct.rockchip_drm_private** %8, align 8
  %29 = getelementptr inbounds %struct.rockchip_drm_private, %struct.rockchip_drm_private* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %34 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %35 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %36 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %9, align 8
  %37 = call i32 @rockchip_gem_iommu_map_sg(%struct.drm_device* %33, %struct.dma_buf_attachment* %34, %struct.sg_table* %35, %struct.rockchip_gem_object* %36)
  store i32 %37, i32* %10, align 4
  br label %44

38:                                               ; preds = %27
  %39 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %40 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %41 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %42 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %9, align 8
  %43 = call i32 @rockchip_gem_dma_map_sg(%struct.drm_device* %39, %struct.dma_buf_attachment* %40, %struct.sg_table* %41, %struct.rockchip_gem_object* %42)
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %38, %32
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %53

50:                                               ; preds = %44
  %51 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %9, align 8
  %52 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %51, i32 0, i32 0
  store %struct.drm_gem_object* %52, %struct.drm_gem_object** %4, align 8
  br label %58

53:                                               ; preds = %47
  %54 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %9, align 8
  %55 = call i32 @rockchip_gem_release_object(%struct.rockchip_gem_object* %54)
  %56 = load i32, i32* %10, align 4
  %57 = call %struct.drm_gem_object* @ERR_PTR(i32 %56)
  store %struct.drm_gem_object* %57, %struct.drm_gem_object** %4, align 8
  br label %58

58:                                               ; preds = %53, %50, %24
  %59 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  ret %struct.drm_gem_object* %59
}

declare dso_local %struct.rockchip_gem_object* @rockchip_gem_alloc_object(%struct.drm_device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.rockchip_gem_object*) #1

declare dso_local %struct.drm_gem_object* @ERR_CAST(%struct.rockchip_gem_object*) #1

declare dso_local i32 @rockchip_gem_iommu_map_sg(%struct.drm_device*, %struct.dma_buf_attachment*, %struct.sg_table*, %struct.rockchip_gem_object*) #1

declare dso_local i32 @rockchip_gem_dma_map_sg(%struct.drm_device*, %struct.dma_buf_attachment*, %struct.sg_table*, %struct.rockchip_gem_object*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @rockchip_gem_release_object(%struct.rockchip_gem_object*) #1

declare dso_local %struct.drm_gem_object* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
