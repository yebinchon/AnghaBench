; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_gem.c_panfrost_gem_create_with_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_gem.c_panfrost_gem_create_with_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panfrost_gem_object = type { i32, i32 }
%struct.drm_file = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_gem_shmem_object = type { i32 }

@PANFROST_BO_HEAP = common dso_local global i32 0, align 4
@SZ_2M = common dso_local global i32 0, align 4
@PANFROST_BO_NOEXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.panfrost_gem_object* @panfrost_gem_create_with_handle(%struct.drm_file* %0, %struct.drm_device* %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.panfrost_gem_object*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.drm_gem_shmem_object*, align 8
  %14 = alloca %struct.panfrost_gem_object*, align 8
  store %struct.drm_file* %0, %struct.drm_file** %7, align 8
  store %struct.drm_device* %1, %struct.drm_device** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @PANFROST_BO_HEAP, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load i64, i64* %9, align 8
  %21 = load i32, i32* @SZ_2M, align 4
  %22 = call i64 @roundup(i64 %20, i32 %21)
  store i64 %22, i64* %9, align 8
  br label %23

23:                                               ; preds = %19, %5
  %24 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call %struct.drm_gem_shmem_object* @drm_gem_shmem_create(%struct.drm_device* %24, i64 %25)
  store %struct.drm_gem_shmem_object* %26, %struct.drm_gem_shmem_object** %13, align 8
  %27 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %13, align 8
  %28 = call i64 @IS_ERR(%struct.drm_gem_shmem_object* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %13, align 8
  %32 = call %struct.panfrost_gem_object* @ERR_CAST(%struct.drm_gem_shmem_object* %31)
  store %struct.panfrost_gem_object* %32, %struct.panfrost_gem_object** %6, align 8
  br label %70

33:                                               ; preds = %23
  %34 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %13, align 8
  %35 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %34, i32 0, i32 0
  %36 = call %struct.panfrost_gem_object* @to_panfrost_bo(i32* %35)
  store %struct.panfrost_gem_object* %36, %struct.panfrost_gem_object** %14, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @PANFROST_BO_NOEXEC, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %14, align 8
  %45 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @PANFROST_BO_HEAP, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %14, align 8
  %54 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %56 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %13, align 8
  %57 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %56, i32 0, i32 0
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @drm_gem_handle_create(%struct.drm_file* %55, i32* %57, i32* %58)
  store i32 %59, i32* %12, align 4
  %60 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %13, align 8
  %61 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %60, i32 0, i32 0
  %62 = call i32 @drm_gem_object_put_unlocked(i32* %61)
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %33
  %66 = load i32, i32* %12, align 4
  %67 = call %struct.panfrost_gem_object* @ERR_PTR(i32 %66)
  store %struct.panfrost_gem_object* %67, %struct.panfrost_gem_object** %6, align 8
  br label %70

68:                                               ; preds = %33
  %69 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %14, align 8
  store %struct.panfrost_gem_object* %69, %struct.panfrost_gem_object** %6, align 8
  br label %70

70:                                               ; preds = %68, %65, %30
  %71 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %6, align 8
  ret %struct.panfrost_gem_object* %71
}

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local %struct.drm_gem_shmem_object* @drm_gem_shmem_create(%struct.drm_device*, i64) #1

declare dso_local i64 @IS_ERR(%struct.drm_gem_shmem_object*) #1

declare dso_local %struct.panfrost_gem_object* @ERR_CAST(%struct.drm_gem_shmem_object*) #1

declare dso_local %struct.panfrost_gem_object* @to_panfrost_bo(i32*) #1

declare dso_local i32 @drm_gem_handle_create(%struct.drm_file*, i32*, i32*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(i32*) #1

declare dso_local %struct.panfrost_gem_object* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
