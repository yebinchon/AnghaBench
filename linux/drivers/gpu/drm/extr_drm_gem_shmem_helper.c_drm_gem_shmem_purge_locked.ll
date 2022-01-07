; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_shmem_helper.c_drm_gem_shmem_purge_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_shmem_helper.c_drm_gem_shmem_purge_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32, i32, %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.drm_gem_shmem_object = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_gem_shmem_purge_locked(%struct.drm_gem_object* %0) #0 {
  %2 = alloca %struct.drm_gem_object*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_gem_shmem_object*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %2, align 8
  %5 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %6 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %5, i32 0, i32 2
  %7 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  store %struct.drm_device* %7, %struct.drm_device** %3, align 8
  %8 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %9 = call %struct.drm_gem_shmem_object* @to_drm_gem_shmem_obj(%struct.drm_gem_object* %8)
  store %struct.drm_gem_shmem_object* %9, %struct.drm_gem_shmem_object** %4, align 8
  %10 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %4, align 8
  %11 = call i32 @drm_gem_shmem_is_purgeable(%struct.drm_gem_shmem_object* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %17 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %16, i32 0, i32 2
  %18 = load %struct.drm_device*, %struct.drm_device** %17, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %4, align 8
  %22 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %21, i32 0, i32 1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %4, align 8
  %27 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %26, i32 0, i32 1
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %32 = call i32 @dma_unmap_sg(i32 %20, i32 %25, i32 %30, i32 %31)
  %33 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %4, align 8
  %34 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %33, i32 0, i32 1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = call i32 @sg_free_table(%struct.TYPE_8__* %35)
  %37 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %4, align 8
  %38 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %37, i32 0, i32 1
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = call i32 @kfree(%struct.TYPE_8__* %39)
  %41 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %4, align 8
  %42 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %41, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %42, align 8
  %43 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %4, align 8
  %44 = call i32 @drm_gem_shmem_put_pages_locked(%struct.drm_gem_shmem_object* %43)
  %45 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %4, align 8
  %46 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %45, i32 0, i32 0
  store i32 -1, i32* %46, align 8
  %47 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %48 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %47, i32 0, i32 1
  %49 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %50 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @drm_vma_node_unmap(i32* %48, i32 %53)
  %55 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %56 = call i32 @drm_gem_free_mmap_offset(%struct.drm_gem_object* %55)
  %57 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %58 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call %struct.TYPE_7__* @file_inode(i32 %59)
  %61 = call i32 @shmem_truncate_range(%struct.TYPE_7__* %60, i32 0, i32 -1)
  %62 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %63 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call %struct.TYPE_7__* @file_inode(i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @invalidate_mapping_pages(i32 %67, i32 0, i32 -1)
  ret void
}

declare dso_local %struct.drm_gem_shmem_object* @to_drm_gem_shmem_obj(%struct.drm_gem_object*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @drm_gem_shmem_is_purgeable(%struct.drm_gem_shmem_object*) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

declare dso_local i32 @sg_free_table(%struct.TYPE_8__*) #1

declare dso_local i32 @kfree(%struct.TYPE_8__*) #1

declare dso_local i32 @drm_gem_shmem_put_pages_locked(%struct.drm_gem_shmem_object*) #1

declare dso_local i32 @drm_vma_node_unmap(i32*, i32) #1

declare dso_local i32 @drm_gem_free_mmap_offset(%struct.drm_gem_object*) #1

declare dso_local i32 @shmem_truncate_range(%struct.TYPE_7__*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @file_inode(i32) #1

declare dso_local i32 @invalidate_mapping_pages(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
