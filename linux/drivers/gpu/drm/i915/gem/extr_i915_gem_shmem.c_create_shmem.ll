; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_shmem.c_create_shmem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_shmem.c_create_shmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.drm_gem_object = type { %struct.file* }
%struct.file = type { i32 }

@VM_NORESERVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"i915\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, %struct.drm_gem_object*, i64)* @create_shmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_shmem(%struct.drm_i915_private* %0, %struct.drm_gem_object* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.drm_gem_object*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.file*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %5, align 8
  store %struct.drm_gem_object* %1, %struct.drm_gem_object** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* @VM_NORESERVE, align 8
  store i64 %10, i64* %8, align 8
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %12 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %11, i32 0, i32 1
  %13 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @drm_gem_private_object_init(i32* %12, %struct.drm_gem_object* %13, i64 %14)
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %17 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %23 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call %struct.file* @shmem_file_setup_with_mnt(i64 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %26, i64 %27)
  store %struct.file* %28, %struct.file** %9, align 8
  br label %33

29:                                               ; preds = %3
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call %struct.file* @shmem_file_setup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %30, i64 %31)
  store %struct.file* %32, %struct.file** %9, align 8
  br label %33

33:                                               ; preds = %29, %21
  %34 = load %struct.file*, %struct.file** %9, align 8
  %35 = call i64 @IS_ERR(%struct.file* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load %struct.file*, %struct.file** %9, align 8
  %39 = call i32 @PTR_ERR(%struct.file* %38)
  store i32 %39, i32* %4, align 4
  br label %44

40:                                               ; preds = %33
  %41 = load %struct.file*, %struct.file** %9, align 8
  %42 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %43 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %42, i32 0, i32 0
  store %struct.file* %41, %struct.file** %43, align 8
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %40, %37
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @drm_gem_private_object_init(i32*, %struct.drm_gem_object*, i64) #1

declare dso_local %struct.file* @shmem_file_setup_with_mnt(i64, i8*, i64, i64) #1

declare dso_local %struct.file* @shmem_file_setup(i8*, i64, i64) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
