; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_gem.c_rockchip_gem_iommu_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_gem.c_rockchip_gem_iommu_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_gem_object = type { i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.rockchip_drm_private* }
%struct.rockchip_drm_private = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@IOMMU_READ = common dso_local global i32 0, align 4
@IOMMU_WRITE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"out of I/O virtual memory: %zd\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"failed to map buffer: size=%zd request_size=%zd\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_gem_object*)* @rockchip_gem_iommu_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_gem_iommu_map(%struct.rockchip_gem_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rockchip_gem_object*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.rockchip_drm_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rockchip_gem_object* %0, %struct.rockchip_gem_object** %3, align 8
  %8 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %3, align 8
  %9 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %4, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.rockchip_drm_private*, %struct.rockchip_drm_private** %13, align 8
  store %struct.rockchip_drm_private* %14, %struct.rockchip_drm_private** %5, align 8
  %15 = load i32, i32* @IOMMU_READ, align 4
  %16 = load i32, i32* @IOMMU_WRITE, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.rockchip_drm_private*, %struct.rockchip_drm_private** %5, align 8
  %19 = getelementptr inbounds %struct.rockchip_drm_private, %struct.rockchip_drm_private* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.rockchip_drm_private*, %struct.rockchip_drm_private** %5, align 8
  %22 = getelementptr inbounds %struct.rockchip_drm_private, %struct.rockchip_drm_private* %21, i32 0, i32 2
  %23 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %3, align 8
  %24 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %23, i32 0, i32 1
  %25 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %3, align 8
  %26 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = call i32 @drm_mm_insert_node_generic(i32* %22, %struct.TYPE_7__* %24, i32 %28, i32 %29, i32 0, i32 0)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.rockchip_drm_private*, %struct.rockchip_drm_private** %5, align 8
  %32 = getelementptr inbounds %struct.rockchip_drm_private, %struct.rockchip_drm_private* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %1
  %37 = load i32, i32* %7, align 4
  %38 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %2, align 4
  br label %95

40:                                               ; preds = %1
  %41 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %3, align 8
  %42 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %3, align 8
  %46 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  %47 = load %struct.rockchip_drm_private*, %struct.rockchip_drm_private** %5, align 8
  %48 = getelementptr inbounds %struct.rockchip_drm_private, %struct.rockchip_drm_private* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %3, align 8
  %51 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %3, align 8
  %54 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %53, i32 0, i32 3
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %3, align 8
  %59 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %58, i32 0, i32 3
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @iommu_map_sg(i32 %49, i32 %52, i32 %57, i32 %62, i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %3, align 8
  %67 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %65, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %40
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %3, align 8
  %74 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %76)
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %7, align 4
  br label %84

80:                                               ; preds = %40
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %3, align 8
  %83 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  store i32 0, i32* %2, align 4
  br label %95

84:                                               ; preds = %71
  %85 = load %struct.rockchip_drm_private*, %struct.rockchip_drm_private** %5, align 8
  %86 = getelementptr inbounds %struct.rockchip_drm_private, %struct.rockchip_drm_private* %85, i32 0, i32 0
  %87 = call i32 @mutex_lock(i32* %86)
  %88 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %3, align 8
  %89 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %88, i32 0, i32 1
  %90 = call i32 @drm_mm_remove_node(%struct.TYPE_7__* %89)
  %91 = load %struct.rockchip_drm_private*, %struct.rockchip_drm_private** %5, align 8
  %92 = getelementptr inbounds %struct.rockchip_drm_private, %struct.rockchip_drm_private* %91, i32 0, i32 0
  %93 = call i32 @mutex_unlock(i32* %92)
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %84, %80, %36
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drm_mm_insert_node_generic(i32*, %struct.TYPE_7__*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, ...) #1

declare dso_local i32 @iommu_map_sg(i32, i32, i32, i32, i32) #1

declare dso_local i32 @drm_mm_remove_node(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
