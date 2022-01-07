; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_bo.c_v3d_bo_create_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_bo.c_v3d_bo_create_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32, i32 }
%struct.v3d_dev = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.v3d_bo = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sg_table = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@GMP_GRANULARITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_gem_object*)* @v3d_bo_create_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v3d_bo_create_finish(%struct.drm_gem_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.v3d_dev*, align 8
  %5 = alloca %struct.v3d_bo*, align 8
  %6 = alloca %struct.sg_table*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %3, align 8
  %8 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %9 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.v3d_dev* @to_v3d_dev(i32 %10)
  store %struct.v3d_dev* %11, %struct.v3d_dev** %4, align 8
  %12 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %13 = call %struct.v3d_bo* @to_v3d_bo(%struct.drm_gem_object* %12)
  store %struct.v3d_bo* %13, %struct.v3d_bo** %5, align 8
  %14 = load %struct.v3d_bo*, %struct.v3d_bo** %5, align 8
  %15 = getelementptr inbounds %struct.v3d_bo, %struct.v3d_bo* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = call %struct.sg_table* @drm_gem_shmem_get_pages_sgt(i32* %16)
  store %struct.sg_table* %17, %struct.sg_table** %6, align 8
  %18 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %19 = call i64 @IS_ERR(%struct.sg_table* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %23 = call i32 @PTR_ERR(%struct.sg_table* %22)
  store i32 %23, i32* %2, align 4
  br label %72

24:                                               ; preds = %1
  %25 = load %struct.v3d_dev*, %struct.v3d_dev** %4, align 8
  %26 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %25, i32 0, i32 2
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.v3d_dev*, %struct.v3d_dev** %4, align 8
  %29 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %28, i32 0, i32 3
  %30 = load %struct.v3d_bo*, %struct.v3d_bo** %5, align 8
  %31 = getelementptr inbounds %struct.v3d_bo, %struct.v3d_bo* %30, i32 0, i32 0
  %32 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %33 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PAGE_SHIFT, align 4
  %36 = ashr i32 %34, %35
  %37 = load i32, i32* @GMP_GRANULARITY, align 4
  %38 = load i32, i32* @PAGE_SHIFT, align 4
  %39 = ashr i32 %37, %38
  %40 = call i32 @drm_mm_insert_node_generic(i32* %29, i32* %31, i32 %36, i32 %39, i32 0, i32 0)
  store i32 %40, i32* %7, align 4
  %41 = load %struct.v3d_dev*, %struct.v3d_dev** %4, align 8
  %42 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %41, i32 0, i32 2
  %43 = call i32 @spin_unlock(i32* %42)
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %24
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %2, align 4
  br label %72

48:                                               ; preds = %24
  %49 = load %struct.v3d_dev*, %struct.v3d_dev** %4, align 8
  %50 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %49, i32 0, i32 0
  %51 = call i32 @mutex_lock(i32* %50)
  %52 = load %struct.v3d_dev*, %struct.v3d_dev** %4, align 8
  %53 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %58 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @PAGE_SHIFT, align 4
  %61 = ashr i32 %59, %60
  %62 = load %struct.v3d_dev*, %struct.v3d_dev** %4, align 8
  %63 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, %61
  store i32 %66, i32* %64, align 4
  %67 = load %struct.v3d_dev*, %struct.v3d_dev** %4, align 8
  %68 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load %struct.v3d_bo*, %struct.v3d_bo** %5, align 8
  %71 = call i32 @v3d_mmu_insert_ptes(%struct.v3d_bo* %70)
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %48, %46, %21
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.v3d_dev* @to_v3d_dev(i32) #1

declare dso_local %struct.v3d_bo* @to_v3d_bo(%struct.drm_gem_object*) #1

declare dso_local %struct.sg_table* @drm_gem_shmem_get_pages_sgt(i32*) #1

declare dso_local i64 @IS_ERR(%struct.sg_table*) #1

declare dso_local i32 @PTR_ERR(%struct.sg_table*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @drm_mm_insert_node_generic(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v3d_mmu_insert_ptes(%struct.v3d_bo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
