; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_gem_shrinker.c_panfrost_gem_purge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_gem_shrinker.c_panfrost_gem_purge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.drm_gem_shmem_object = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_gem_object*)* @panfrost_gem_purge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panfrost_gem_purge(%struct.drm_gem_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.drm_gem_shmem_object*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %3, align 8
  %5 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %6 = call %struct.drm_gem_shmem_object* @to_drm_gem_shmem_obj(%struct.drm_gem_object* %5)
  store %struct.drm_gem_shmem_object* %6, %struct.drm_gem_shmem_object** %4, align 8
  %7 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %4, align 8
  %8 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %7, i32 0, i32 0
  %9 = call i32 @mutex_trylock(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

12:                                               ; preds = %1
  %13 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %14 = call i32 @to_panfrost_bo(%struct.drm_gem_object* %13)
  %15 = call i32 @panfrost_mmu_unmap(i32 %14)
  %16 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %17 = call i32 @drm_gem_shmem_purge_locked(%struct.drm_gem_object* %16)
  %18 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %4, align 8
  %19 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %18, i32 0, i32 0
  %20 = call i32 @mutex_unlock(i32* %19)
  store i32 1, i32* %2, align 4
  br label %21

21:                                               ; preds = %12, %11
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local %struct.drm_gem_shmem_object* @to_drm_gem_shmem_obj(%struct.drm_gem_object*) #1

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @panfrost_mmu_unmap(i32) #1

declare dso_local i32 @to_panfrost_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @drm_gem_shmem_purge_locked(%struct.drm_gem_object*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
