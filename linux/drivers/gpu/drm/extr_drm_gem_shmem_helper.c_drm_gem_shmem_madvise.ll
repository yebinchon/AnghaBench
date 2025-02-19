; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_shmem_helper.c_drm_gem_shmem_madvise.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_shmem_helper.c_drm_gem_shmem_madvise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.drm_gem_shmem_object = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_gem_shmem_madvise(%struct.drm_gem_object* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_gem_shmem_object*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %7 = call %struct.drm_gem_shmem_object* @to_drm_gem_shmem_obj(%struct.drm_gem_object* %6)
  store %struct.drm_gem_shmem_object* %7, %struct.drm_gem_shmem_object** %5, align 8
  %8 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %5, align 8
  %9 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %5, align 8
  %12 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %5, align 8
  %18 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  br label %19

19:                                               ; preds = %15, %2
  %20 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %5, align 8
  %21 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %4, align 4
  %23 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %5, align 8
  %24 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %23, i32 0, i32 1
  %25 = call i32 @mutex_unlock(i32* %24)
  %26 = load i32, i32* %4, align 4
  %27 = icmp sge i32 %26, 0
  %28 = zext i1 %27 to i32
  ret i32 %28
}

declare dso_local %struct.drm_gem_shmem_object* @to_drm_gem_shmem_obj(%struct.drm_gem_object*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
