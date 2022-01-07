; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_shmem_helper.c_drm_gem_shmem_get_pages_sgt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_shmem_helper.c_drm_gem_shmem_get_pages_sgt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_table = type { i32, i32 }
%struct.drm_gem_object = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.drm_gem_shmem_object = type { %struct.sg_table*, i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sg_table* @drm_gem_shmem_get_pages_sgt(%struct.drm_gem_object* %0) #0 {
  %2 = alloca %struct.sg_table*, align 8
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_gem_shmem_object*, align 8
  %6 = alloca %struct.sg_table*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %3, align 8
  %7 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %8 = call %struct.drm_gem_shmem_object* @to_drm_gem_shmem_obj(%struct.drm_gem_object* %7)
  store %struct.drm_gem_shmem_object* %8, %struct.drm_gem_shmem_object** %5, align 8
  %9 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %5, align 8
  %10 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %9, i32 0, i32 0
  %11 = load %struct.sg_table*, %struct.sg_table** %10, align 8
  %12 = icmp ne %struct.sg_table* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %5, align 8
  %15 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %14, i32 0, i32 0
  %16 = load %struct.sg_table*, %struct.sg_table** %15, align 8
  store %struct.sg_table* %16, %struct.sg_table** %2, align 8
  br label %62

17:                                               ; preds = %1
  %18 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %19 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @WARN_ON(i32 %20)
  %22 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %5, align 8
  %23 = call i32 @drm_gem_shmem_get_pages(%struct.drm_gem_shmem_object* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load i32, i32* %4, align 4
  %28 = call %struct.sg_table* @ERR_PTR(i32 %27)
  store %struct.sg_table* %28, %struct.sg_table** %2, align 8
  br label %62

29:                                               ; preds = %17
  %30 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %5, align 8
  %31 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %30, i32 0, i32 1
  %32 = call %struct.sg_table* @drm_gem_shmem_get_sg_table(i32* %31)
  store %struct.sg_table* %32, %struct.sg_table** %6, align 8
  %33 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %34 = call i64 @IS_ERR(%struct.sg_table* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %38 = call i32 @PTR_ERR(%struct.sg_table* %37)
  store i32 %38, i32* %4, align 4
  br label %57

39:                                               ; preds = %29
  %40 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %41 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %46 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %49 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %52 = call i32 @dma_map_sg(i32 %44, i32 %47, i32 %50, i32 %51)
  %53 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %54 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %5, align 8
  %55 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %54, i32 0, i32 0
  store %struct.sg_table* %53, %struct.sg_table** %55, align 8
  %56 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  store %struct.sg_table* %56, %struct.sg_table** %2, align 8
  br label %62

57:                                               ; preds = %36
  %58 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %5, align 8
  %59 = call i32 @drm_gem_shmem_put_pages(%struct.drm_gem_shmem_object* %58)
  %60 = load i32, i32* %4, align 4
  %61 = call %struct.sg_table* @ERR_PTR(i32 %60)
  store %struct.sg_table* %61, %struct.sg_table** %2, align 8
  br label %62

62:                                               ; preds = %57, %39, %26, %13
  %63 = load %struct.sg_table*, %struct.sg_table** %2, align 8
  ret %struct.sg_table* %63
}

declare dso_local %struct.drm_gem_shmem_object* @to_drm_gem_shmem_obj(%struct.drm_gem_object*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @drm_gem_shmem_get_pages(%struct.drm_gem_shmem_object*) #1

declare dso_local %struct.sg_table* @ERR_PTR(i32) #1

declare dso_local %struct.sg_table* @drm_gem_shmem_get_sg_table(i32*) #1

declare dso_local i64 @IS_ERR(%struct.sg_table*) #1

declare dso_local i32 @PTR_ERR(%struct.sg_table*) #1

declare dso_local i32 @dma_map_sg(i32, i32, i32, i32) #1

declare dso_local i32 @drm_gem_shmem_put_pages(%struct.drm_gem_shmem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
