; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_i915_gem_dmabuf.c_igt_dmabuf_export_vmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_i915_gem_dmabuf.c_igt_dmabuf_export_vmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.drm_i915_gem_object = type { i32, i32 }
%struct.dma_buf = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"i915_gem_prime_export failed with err=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"dma_buf_vmap failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Exported object not initialiased to zero!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @igt_dmabuf_export_vmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igt_dmabuf_export_vmap(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.drm_i915_gem_object*, align 8
  %6 = alloca %struct.dma_buf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.drm_i915_private*
  store %struct.drm_i915_private* %10, %struct.drm_i915_private** %4, align 8
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %12 = load i32, i32* @PAGE_SIZE, align 4
  %13 = call %struct.drm_i915_gem_object* @i915_gem_object_create_shmem(%struct.drm_i915_private* %11, i32 %12)
  store %struct.drm_i915_gem_object* %13, %struct.drm_i915_gem_object** %5, align 8
  %14 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %15 = call i64 @IS_ERR(%struct.drm_i915_gem_object* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %19 = call i32 @PTR_ERR(%struct.drm_i915_gem_object* %18)
  store i32 %19, i32* %2, align 4
  br label %79

20:                                               ; preds = %1
  %21 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %22 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %21, i32 0, i32 1
  %23 = call %struct.drm_i915_gem_object* @i915_gem_prime_export(i32* %22, i32 0)
  %24 = bitcast %struct.drm_i915_gem_object* %23 to %struct.dma_buf*
  store %struct.dma_buf* %24, %struct.dma_buf** %6, align 8
  %25 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %26 = bitcast %struct.dma_buf* %25 to %struct.drm_i915_gem_object*
  %27 = call i64 @IS_ERR(%struct.drm_i915_gem_object* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %20
  %30 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %31 = bitcast %struct.dma_buf* %30 to %struct.drm_i915_gem_object*
  %32 = call i32 @PTR_ERR(%struct.drm_i915_gem_object* %31)
  %33 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %35 = bitcast %struct.dma_buf* %34 to %struct.drm_i915_gem_object*
  %36 = call i32 @PTR_ERR(%struct.drm_i915_gem_object* %35)
  store i32 %36, i32* %8, align 4
  br label %75

37:                                               ; preds = %20
  %38 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %39 = call i32 @i915_gem_object_put(%struct.drm_i915_gem_object* %38)
  %40 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %41 = bitcast %struct.dma_buf* %40 to %struct.drm_i915_gem_object*
  %42 = call i8* @dma_buf_vmap(%struct.drm_i915_gem_object* %41)
  store i8* %42, i8** %7, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %37
  %46 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %8, align 4
  br label %70

49:                                               ; preds = %37
  %50 = load i8*, i8** %7, align 8
  %51 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %52 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @memchr_inv(i8* %50, i32 0, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %8, align 4
  br label %70

60:                                               ; preds = %49
  %61 = load i8*, i8** %7, align 8
  %62 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %63 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @memset(i8* %61, i32 197, i32 %64)
  store i32 0, i32* %8, align 4
  %66 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %67 = bitcast %struct.dma_buf* %66 to %struct.drm_i915_gem_object*
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @dma_buf_vunmap(%struct.drm_i915_gem_object* %67, i8* %68)
  br label %70

70:                                               ; preds = %60, %56, %45
  %71 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %72 = bitcast %struct.dma_buf* %71 to %struct.drm_i915_gem_object*
  %73 = call i32 @dma_buf_put(%struct.drm_i915_gem_object* %72)
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %2, align 4
  br label %79

75:                                               ; preds = %29
  %76 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %77 = call i32 @i915_gem_object_put(%struct.drm_i915_gem_object* %76)
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %75, %70, %17
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.drm_i915_gem_object* @i915_gem_object_create_shmem(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_ERR(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_i915_gem_object*) #1

declare dso_local %struct.drm_i915_gem_object* @i915_gem_prime_export(i32*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @i915_gem_object_put(%struct.drm_i915_gem_object*) #1

declare dso_local i8* @dma_buf_vmap(%struct.drm_i915_gem_object*) #1

declare dso_local i64 @memchr_inv(i8*, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @dma_buf_vunmap(%struct.drm_i915_gem_object*, i8*) #1

declare dso_local i32 @dma_buf_put(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
