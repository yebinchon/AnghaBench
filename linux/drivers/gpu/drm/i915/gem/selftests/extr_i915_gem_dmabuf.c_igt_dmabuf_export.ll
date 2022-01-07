; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_i915_gem_dmabuf.c_igt_dmabuf_export.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_i915_gem_dmabuf.c_igt_dmabuf_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.drm_i915_gem_object = type { i32 }
%struct.dma_buf = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"i915_gem_prime_export failed with err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @igt_dmabuf_export to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igt_dmabuf_export(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.drm_i915_gem_object*, align 8
  %6 = alloca %struct.dma_buf*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.drm_i915_private*
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %4, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %10 = load i32, i32* @PAGE_SIZE, align 4
  %11 = call %struct.drm_i915_gem_object* @i915_gem_object_create_shmem(%struct.drm_i915_private* %9, i32 %10)
  store %struct.drm_i915_gem_object* %11, %struct.drm_i915_gem_object** %5, align 8
  %12 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %13 = call i64 @IS_ERR(%struct.drm_i915_gem_object* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %17 = call i32 @PTR_ERR(%struct.drm_i915_gem_object* %16)
  store i32 %17, i32* %2, align 4
  br label %41

18:                                               ; preds = %1
  %19 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %20 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %19, i32 0, i32 0
  %21 = call %struct.drm_i915_gem_object* @i915_gem_prime_export(i32* %20, i32 0)
  %22 = bitcast %struct.drm_i915_gem_object* %21 to %struct.dma_buf*
  store %struct.dma_buf* %22, %struct.dma_buf** %6, align 8
  %23 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %24 = call i32 @i915_gem_object_put(%struct.drm_i915_gem_object* %23)
  %25 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %26 = bitcast %struct.dma_buf* %25 to %struct.drm_i915_gem_object*
  %27 = call i64 @IS_ERR(%struct.drm_i915_gem_object* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %18
  %30 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %31 = bitcast %struct.dma_buf* %30 to %struct.drm_i915_gem_object*
  %32 = call i32 @PTR_ERR(%struct.drm_i915_gem_object* %31)
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %35 = bitcast %struct.dma_buf* %34 to %struct.drm_i915_gem_object*
  %36 = call i32 @PTR_ERR(%struct.drm_i915_gem_object* %35)
  store i32 %36, i32* %2, align 4
  br label %41

37:                                               ; preds = %18
  %38 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %39 = bitcast %struct.dma_buf* %38 to %struct.drm_i915_gem_object*
  %40 = call i32 @dma_buf_put(%struct.drm_i915_gem_object* %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %37, %29, %15
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.drm_i915_gem_object* @i915_gem_object_create_shmem(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_ERR(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_i915_gem_object*) #1

declare dso_local %struct.drm_i915_gem_object* @i915_gem_prime_export(i32*, i32) #1

declare dso_local i32 @i915_gem_object_put(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @dma_buf_put(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
