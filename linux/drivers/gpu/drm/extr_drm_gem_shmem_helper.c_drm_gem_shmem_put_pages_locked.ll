; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_shmem_helper.c_drm_gem_shmem_put_pages_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_shmem_helper.c_drm_gem_shmem_put_pages_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_shmem_object = type { i64, i32*, i32, i32, %struct.drm_gem_object }
%struct.drm_gem_object = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_gem_shmem_object*)* @drm_gem_shmem_put_pages_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_gem_shmem_put_pages_locked(%struct.drm_gem_shmem_object* %0) #0 {
  %2 = alloca %struct.drm_gem_shmem_object*, align 8
  %3 = alloca %struct.drm_gem_object*, align 8
  store %struct.drm_gem_shmem_object* %0, %struct.drm_gem_shmem_object** %2, align 8
  %4 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %2, align 8
  %5 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %4, i32 0, i32 4
  store %struct.drm_gem_object* %5, %struct.drm_gem_object** %3, align 8
  %6 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %2, align 8
  %7 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @WARN_ON_ONCE(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %36

15:                                               ; preds = %1
  %16 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %2, align 8
  %17 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* %17, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %36

22:                                               ; preds = %15
  %23 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %24 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %2, align 8
  %25 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %2, align 8
  %28 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %2, align 8
  %31 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @drm_gem_put_pages(%struct.drm_gem_object* %23, i32* %26, i32 %29, i32 %32)
  %34 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %2, align 8
  %35 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %34, i32 0, i32 1
  store i32* null, i32** %35, align 8
  br label %36

36:                                               ; preds = %22, %21, %14
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @drm_gem_put_pages(%struct.drm_gem_object*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
