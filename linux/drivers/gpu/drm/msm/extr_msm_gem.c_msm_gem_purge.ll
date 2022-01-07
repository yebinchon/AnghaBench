; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_msm_gem_purge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_msm_gem_purge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32, i32, i32, %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.msm_gem_object = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@__MSM_MADV_PURGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_gem_purge(%struct.drm_gem_object* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.msm_gem_object*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %8 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %7, i32 0, i32 3
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %5, align 8
  %10 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %11 = call %struct.msm_gem_object* @to_msm_bo(%struct.drm_gem_object* %10)
  store %struct.msm_gem_object* %11, %struct.msm_gem_object** %6, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 1
  %14 = call i32 @mutex_is_locked(i32* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load %struct.msm_gem_object*, %struct.msm_gem_object** %6, align 8
  %20 = call i32 @is_purgeable(%struct.msm_gem_object* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %26 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @WARN_ON(i32 %27)
  %29 = load %struct.msm_gem_object*, %struct.msm_gem_object** %6, align 8
  %30 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %29, i32 0, i32 0
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @mutex_lock_nested(i32* %30, i32 %31)
  %33 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %34 = call i32 @put_iova(%struct.drm_gem_object* %33)
  %35 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %36 = call i32 @msm_gem_vunmap_locked(%struct.drm_gem_object* %35)
  %37 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %38 = call i32 @put_pages(%struct.drm_gem_object* %37)
  %39 = load i32, i32* @__MSM_MADV_PURGED, align 4
  %40 = load %struct.msm_gem_object*, %struct.msm_gem_object** %6, align 8
  %41 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %43 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %42, i32 0, i32 2
  %44 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %45 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @drm_vma_node_unmap(i32* %43, i32 %48)
  %50 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %51 = call i32 @drm_gem_free_mmap_offset(%struct.drm_gem_object* %50)
  %52 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %53 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.TYPE_5__* @file_inode(i32 %54)
  %56 = call i32 @shmem_truncate_range(%struct.TYPE_5__* %55, i32 0, i32 -1)
  %57 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %58 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.TYPE_5__* @file_inode(i32 %59)
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @invalidate_mapping_pages(i32 %62, i32 0, i32 -1)
  %64 = load %struct.msm_gem_object*, %struct.msm_gem_object** %6, align 8
  %65 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  ret void
}

declare dso_local %struct.msm_gem_object* @to_msm_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @is_purgeable(%struct.msm_gem_object*) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @put_iova(%struct.drm_gem_object*) #1

declare dso_local i32 @msm_gem_vunmap_locked(%struct.drm_gem_object*) #1

declare dso_local i32 @put_pages(%struct.drm_gem_object*) #1

declare dso_local i32 @drm_vma_node_unmap(i32*, i32) #1

declare dso_local i32 @drm_gem_free_mmap_offset(%struct.drm_gem_object*) #1

declare dso_local i32 @shmem_truncate_range(%struct.TYPE_5__*, i32, i32) #1

declare dso_local %struct.TYPE_5__* @file_inode(i32) #1

declare dso_local i32 @invalidate_mapping_pages(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
