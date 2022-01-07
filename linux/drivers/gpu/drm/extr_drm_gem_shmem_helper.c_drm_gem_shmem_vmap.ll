; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_shmem_helper.c_drm_gem_shmem_vmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_shmem_helper.c_drm_gem_shmem_vmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.drm_gem_shmem_object = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @drm_gem_shmem_vmap(%struct.drm_gem_object* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.drm_gem_shmem_object*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %3, align 8
  %7 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %8 = call %struct.drm_gem_shmem_object* @to_drm_gem_shmem_obj(%struct.drm_gem_object* %7)
  store %struct.drm_gem_shmem_object* %8, %struct.drm_gem_shmem_object** %4, align 8
  %9 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %4, align 8
  %10 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock_interruptible(i32* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  %16 = call i8* @ERR_PTR(i32 %15)
  store i8* %16, i8** %2, align 8
  br label %24

17:                                               ; preds = %1
  %18 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %4, align 8
  %19 = call i8* @drm_gem_shmem_vmap_locked(%struct.drm_gem_shmem_object* %18)
  store i8* %19, i8** %5, align 8
  %20 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %4, align 8
  %21 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %20, i32 0, i32 0
  %22 = call i32 @mutex_unlock(i32* %21)
  %23 = load i8*, i8** %5, align 8
  store i8* %23, i8** %2, align 8
  br label %24

24:                                               ; preds = %17, %14
  %25 = load i8*, i8** %2, align 8
  ret i8* %25
}

declare dso_local %struct.drm_gem_shmem_object* @to_drm_gem_shmem_obj(%struct.drm_gem_object*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @drm_gem_shmem_vmap_locked(%struct.drm_gem_shmem_object*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
