; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_shmem_helper.c_drm_gem_shmem_vmap_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_shmem_helper.c_drm_gem_shmem_vmap_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_shmem_object = type { i8*, i64, i32, %struct.drm_gem_object }
%struct.drm_gem_object = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@VM_MAP = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Failed to vmap pages\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.drm_gem_shmem_object*)* @drm_gem_shmem_vmap_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @drm_gem_shmem_vmap_locked(%struct.drm_gem_shmem_object* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.drm_gem_shmem_object*, align 8
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_gem_shmem_object* %0, %struct.drm_gem_shmem_object** %3, align 8
  %6 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %3, align 8
  %7 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %6, i32 0, i32 3
  store %struct.drm_gem_object* %7, %struct.drm_gem_object** %4, align 8
  %8 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %3, align 8
  %9 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, 1
  store i64 %11, i64* %9, align 8
  %12 = icmp sgt i64 %10, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %3, align 8
  %15 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %2, align 8
  br label %73

17:                                               ; preds = %1
  %18 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %3, align 8
  %19 = call i32 @drm_gem_shmem_get_pages(%struct.drm_gem_shmem_object* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %68

23:                                               ; preds = %17
  %24 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %25 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %30 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @dma_buf_vmap(i32 %33)
  %35 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %3, align 8
  %36 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  br label %52

37:                                               ; preds = %23
  %38 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %3, align 8
  %39 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %42 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @PAGE_SHIFT, align 4
  %45 = ashr i32 %43, %44
  %46 = load i32, i32* @VM_MAP, align 4
  %47 = load i32, i32* @PAGE_KERNEL, align 4
  %48 = call i32 @pgprot_writecombine(i32 %47)
  %49 = call i8* @vmap(i32 %40, i32 %45, i32 %46, i32 %48)
  %50 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %3, align 8
  %51 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %37, %28
  %53 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %3, align 8
  %54 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %65

61:                                               ; preds = %52
  %62 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %3, align 8
  %63 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %2, align 8
  br label %73

65:                                               ; preds = %57
  %66 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %3, align 8
  %67 = call i32 @drm_gem_shmem_put_pages(%struct.drm_gem_shmem_object* %66)
  br label %68

68:                                               ; preds = %65, %22
  %69 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %3, align 8
  %70 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %69, i32 0, i32 1
  store i64 0, i64* %70, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i8* @ERR_PTR(i32 %71)
  store i8* %72, i8** %2, align 8
  br label %73

73:                                               ; preds = %68, %61, %13
  %74 = load i8*, i8** %2, align 8
  ret i8* %74
}

declare dso_local i32 @drm_gem_shmem_get_pages(%struct.drm_gem_shmem_object*) #1

declare dso_local i8* @dma_buf_vmap(i32) #1

declare dso_local i8* @vmap(i32, i32, i32, i32) #1

declare dso_local i32 @pgprot_writecombine(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @drm_gem_shmem_put_pages(%struct.drm_gem_shmem_object*) #1

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
