; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_bo.c_v3d_bo_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_bo.c_v3d_bo_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v3d_bo = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_gem_shmem_object = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.v3d_bo* @v3d_bo_create(%struct.drm_device* %0, %struct.drm_file* %1, i64 %2) #0 {
  %4 = alloca %struct.v3d_bo*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.drm_gem_shmem_object*, align 8
  %9 = alloca %struct.v3d_bo*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_file* %1, %struct.drm_file** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call %struct.drm_gem_shmem_object* @drm_gem_shmem_create(%struct.drm_device* %11, i64 %12)
  store %struct.drm_gem_shmem_object* %13, %struct.drm_gem_shmem_object** %8, align 8
  %14 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %8, align 8
  %15 = call i64 @IS_ERR(%struct.drm_gem_shmem_object* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %8, align 8
  %19 = call %struct.v3d_bo* @ERR_CAST(%struct.drm_gem_shmem_object* %18)
  store %struct.v3d_bo* %19, %struct.v3d_bo** %4, align 8
  br label %38

20:                                               ; preds = %3
  %21 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %8, align 8
  %22 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %21, i32 0, i32 0
  %23 = call %struct.v3d_bo* @to_v3d_bo(i32* %22)
  store %struct.v3d_bo* %23, %struct.v3d_bo** %9, align 8
  %24 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %8, align 8
  %25 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %24, i32 0, i32 0
  %26 = call i32 @v3d_bo_create_finish(i32* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %32

30:                                               ; preds = %20
  %31 = load %struct.v3d_bo*, %struct.v3d_bo** %9, align 8
  store %struct.v3d_bo* %31, %struct.v3d_bo** %4, align 8
  br label %38

32:                                               ; preds = %29
  %33 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %8, align 8
  %34 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %33, i32 0, i32 0
  %35 = call i32 @drm_gem_shmem_free_object(i32* %34)
  %36 = load i32, i32* %10, align 4
  %37 = call %struct.v3d_bo* @ERR_PTR(i32 %36)
  store %struct.v3d_bo* %37, %struct.v3d_bo** %4, align 8
  br label %38

38:                                               ; preds = %32, %30, %17
  %39 = load %struct.v3d_bo*, %struct.v3d_bo** %4, align 8
  ret %struct.v3d_bo* %39
}

declare dso_local %struct.drm_gem_shmem_object* @drm_gem_shmem_create(%struct.drm_device*, i64) #1

declare dso_local i64 @IS_ERR(%struct.drm_gem_shmem_object*) #1

declare dso_local %struct.v3d_bo* @ERR_CAST(%struct.drm_gem_shmem_object*) #1

declare dso_local %struct.v3d_bo* @to_v3d_bo(i32*) #1

declare dso_local i32 @v3d_bo_create_finish(i32*) #1

declare dso_local i32 @drm_gem_shmem_free_object(i32*) #1

declare dso_local %struct.v3d_bo* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
