; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_bo.c_v3d_free_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_bo.c_v3d_free_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32, i32 }
%struct.v3d_dev = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.v3d_bo = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v3d_free_object(%struct.drm_gem_object* %0) #0 {
  %2 = alloca %struct.drm_gem_object*, align 8
  %3 = alloca %struct.v3d_dev*, align 8
  %4 = alloca %struct.v3d_bo*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %2, align 8
  %5 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %6 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.v3d_dev* @to_v3d_dev(i32 %7)
  store %struct.v3d_dev* %8, %struct.v3d_dev** %3, align 8
  %9 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %10 = call %struct.v3d_bo* @to_v3d_bo(%struct.drm_gem_object* %9)
  store %struct.v3d_bo* %10, %struct.v3d_bo** %4, align 8
  %11 = load %struct.v3d_bo*, %struct.v3d_bo** %4, align 8
  %12 = call i32 @v3d_mmu_remove_ptes(%struct.v3d_bo* %11)
  %13 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %14 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %17 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %22 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PAGE_SHIFT, align 4
  %25 = ashr i32 %23, %24
  %26 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %27 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %29, %25
  store i32 %30, i32* %28, align 4
  %31 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %32 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %31, i32 0, i32 1
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %35 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %34, i32 0, i32 0
  %36 = call i32 @spin_lock(i32* %35)
  %37 = load %struct.v3d_bo*, %struct.v3d_bo** %4, align 8
  %38 = getelementptr inbounds %struct.v3d_bo, %struct.v3d_bo* %37, i32 0, i32 1
  %39 = call i32 @drm_mm_remove_node(i32* %38)
  %40 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %41 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock(i32* %41)
  %43 = load %struct.v3d_bo*, %struct.v3d_bo** %4, align 8
  %44 = getelementptr inbounds %struct.v3d_bo, %struct.v3d_bo* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  %46 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %47 = call i32 @drm_gem_shmem_free_object(%struct.drm_gem_object* %46)
  ret void
}

declare dso_local %struct.v3d_dev* @to_v3d_dev(i32) #1

declare dso_local %struct.v3d_bo* @to_v3d_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @v3d_mmu_remove_ptes(%struct.v3d_bo*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @drm_mm_remove_node(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @drm_gem_shmem_free_object(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
