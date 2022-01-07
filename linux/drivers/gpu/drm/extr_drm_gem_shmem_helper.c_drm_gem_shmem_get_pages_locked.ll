; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_shmem_helper.c_drm_gem_shmem_get_pages_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_shmem_helper.c_drm_gem_shmem_get_pages_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_shmem_object = type { %struct.page**, i64, %struct.drm_gem_object }
%struct.page = type { i32 }
%struct.drm_gem_object = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Failed to get pages (%ld)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_gem_shmem_object*)* @drm_gem_shmem_get_pages_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_gem_shmem_get_pages_locked(%struct.drm_gem_shmem_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_gem_shmem_object*, align 8
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca %struct.page**, align 8
  store %struct.drm_gem_shmem_object* %0, %struct.drm_gem_shmem_object** %3, align 8
  %6 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %3, align 8
  %7 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %6, i32 0, i32 2
  store %struct.drm_gem_object* %7, %struct.drm_gem_object** %4, align 8
  %8 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %3, align 8
  %9 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, 1
  store i64 %11, i64* %9, align 8
  %12 = icmp sgt i64 %10, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

14:                                               ; preds = %1
  %15 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %16 = call %struct.page** @drm_gem_get_pages(%struct.drm_gem_object* %15)
  store %struct.page** %16, %struct.page*** %5, align 8
  %17 = load %struct.page**, %struct.page*** %5, align 8
  %18 = call i64 @IS_ERR(%struct.page** %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = load %struct.page**, %struct.page*** %5, align 8
  %22 = call i32 @PTR_ERR(%struct.page** %21)
  %23 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %3, align 8
  %25 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.page**, %struct.page*** %5, align 8
  %27 = call i32 @PTR_ERR(%struct.page** %26)
  store i32 %27, i32* %2, align 4
  br label %32

28:                                               ; preds = %14
  %29 = load %struct.page**, %struct.page*** %5, align 8
  %30 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %3, align 8
  %31 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %30, i32 0, i32 0
  store %struct.page** %29, %struct.page*** %31, align 8
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %28, %20, %13
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.page** @drm_gem_get_pages(%struct.drm_gem_object*) #1

declare dso_local i64 @IS_ERR(%struct.page**) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.page**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
