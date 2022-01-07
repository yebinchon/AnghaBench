; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_shmem_helper.c_drm_gem_shmem_prime_import_sg_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_shmem_helper.c_drm_gem_shmem_prime_import_sg_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.drm_device = type { i32 }
%struct.dma_buf_attachment = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sg_table = type { i32 }
%struct.drm_gem_shmem_object = type { i32, %struct.drm_gem_object, i32, %struct.sg_table* }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"size = %zu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_gem_object* @drm_gem_shmem_prime_import_sg_table(%struct.drm_device* %0, %struct.dma_buf_attachment* %1, %struct.sg_table* %2) #0 {
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.dma_buf_attachment*, align 8
  %7 = alloca %struct.sg_table*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.drm_gem_shmem_object*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.dma_buf_attachment* %1, %struct.dma_buf_attachment** %6, align 8
  store %struct.sg_table* %2, %struct.sg_table** %7, align 8
  %12 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %13 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @PAGE_ALIGN(i32 %16)
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @PAGE_SHIFT, align 8
  %20 = lshr i64 %18, %19
  store i64 %20, i64* %9, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call %struct.drm_gem_shmem_object* @drm_gem_shmem_create(%struct.drm_device* %21, i64 %22)
  store %struct.drm_gem_shmem_object* %23, %struct.drm_gem_shmem_object** %10, align 8
  %24 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %10, align 8
  %25 = call i64 @IS_ERR(%struct.drm_gem_shmem_object* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %10, align 8
  %29 = call %struct.drm_gem_object* @ERR_CAST(%struct.drm_gem_shmem_object* %28)
  store %struct.drm_gem_object* %29, %struct.drm_gem_object** %4, align 8
  br label %74

30:                                               ; preds = %3
  %31 = load i64, i64* %9, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i32 @kvmalloc_array(i64 %31, i32 8, i32 %32)
  %34 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %10, align 8
  %35 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %10, align 8
  %37 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %30
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %11, align 4
  br label %68

43:                                               ; preds = %30
  %44 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %45 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %10, align 8
  %46 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @drm_prime_sg_to_page_addr_arrays(%struct.sg_table* %44, i32 %47, i32* null, i64 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %63

53:                                               ; preds = %43
  %54 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %55 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %10, align 8
  %56 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %55, i32 0, i32 3
  store %struct.sg_table* %54, %struct.sg_table** %56, align 8
  %57 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %10, align 8
  %58 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @DRM_DEBUG_PRIME(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %59)
  %61 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %10, align 8
  %62 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %61, i32 0, i32 1
  store %struct.drm_gem_object* %62, %struct.drm_gem_object** %4, align 8
  br label %74

63:                                               ; preds = %52
  %64 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %10, align 8
  %65 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @kvfree(i32 %66)
  br label %68

68:                                               ; preds = %63, %40
  %69 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %10, align 8
  %70 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %69, i32 0, i32 1
  %71 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %70)
  %72 = load i32, i32* %11, align 4
  %73 = call %struct.drm_gem_object* @ERR_PTR(i32 %72)
  store %struct.drm_gem_object* %73, %struct.drm_gem_object** %4, align 8
  br label %74

74:                                               ; preds = %68, %53, %27
  %75 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  ret %struct.drm_gem_object* %75
}

declare dso_local i64 @PAGE_ALIGN(i32) #1

declare dso_local %struct.drm_gem_shmem_object* @drm_gem_shmem_create(%struct.drm_device*, i64) #1

declare dso_local i64 @IS_ERR(%struct.drm_gem_shmem_object*) #1

declare dso_local %struct.drm_gem_object* @ERR_CAST(%struct.drm_gem_shmem_object*) #1

declare dso_local i32 @kvmalloc_array(i64, i32, i32) #1

declare dso_local i32 @drm_prime_sg_to_page_addr_arrays(%struct.sg_table*, i32, i32*, i64) #1

declare dso_local i32 @DRM_DEBUG_PRIME(i8*, i64) #1

declare dso_local i32 @kvfree(i32) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

declare dso_local %struct.drm_gem_object* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
