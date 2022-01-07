; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_i915_gem_dmabuf.c_igt_dmabuf_import_ownership.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_i915_gem_dmabuf.c_igt_dmabuf_import_ownership.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.drm_i915_gem_object = type { i32 }
%struct.dma_buf = type opaque

@.str = private unnamed_addr constant [21 x i8] c"dma_buf_vmap failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"i915_gem_prime_import failed with err=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"i915_gem_object_pin_pages failed with err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @igt_dmabuf_import_ownership to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igt_dmabuf_import_ownership(i8* %0) #0 {
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
  %11 = call %struct.drm_i915_gem_object* @mock_dmabuf(i32 1)
  %12 = bitcast %struct.drm_i915_gem_object* %11 to %struct.dma_buf*
  store %struct.dma_buf* %12, %struct.dma_buf** %6, align 8
  %13 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %14 = bitcast %struct.dma_buf* %13 to %struct.drm_i915_gem_object*
  %15 = call i64 @IS_ERR(%struct.drm_i915_gem_object* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %19 = bitcast %struct.dma_buf* %18 to %struct.drm_i915_gem_object*
  %20 = call i32 @PTR_ERR(%struct.drm_i915_gem_object* %19)
  store i32 %20, i32* %2, align 4
  br label %77

21:                                               ; preds = %1
  %22 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %23 = bitcast %struct.dma_buf* %22 to %struct.drm_i915_gem_object*
  %24 = call i8* @dma_buf_vmap(%struct.drm_i915_gem_object* %23)
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %72

31:                                               ; preds = %21
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = call i32 @memset(i8* %32, i32 197, i32 %33)
  %35 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %36 = bitcast %struct.dma_buf* %35 to %struct.drm_i915_gem_object*
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @dma_buf_vunmap(%struct.drm_i915_gem_object* %36, i8* %37)
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %40 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %39, i32 0, i32 0
  %41 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %42 = bitcast %struct.dma_buf* %41 to %struct.drm_i915_gem_object*
  %43 = call i32 @i915_gem_prime_import(i32* %40, %struct.drm_i915_gem_object* %42)
  %44 = call %struct.drm_i915_gem_object* @to_intel_bo(i32 %43)
  store %struct.drm_i915_gem_object* %44, %struct.drm_i915_gem_object** %5, align 8
  %45 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %46 = call i64 @IS_ERR(%struct.drm_i915_gem_object* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %31
  %49 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %50 = call i32 @PTR_ERR(%struct.drm_i915_gem_object* %49)
  %51 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %53 = call i32 @PTR_ERR(%struct.drm_i915_gem_object* %52)
  store i32 %53, i32* %8, align 4
  br label %72

54:                                               ; preds = %31
  %55 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %56 = bitcast %struct.dma_buf* %55 to %struct.drm_i915_gem_object*
  %57 = call i32 @dma_buf_put(%struct.drm_i915_gem_object* %56)
  %58 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %59 = call i32 @i915_gem_object_pin_pages(%struct.drm_i915_gem_object* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load i32, i32* %8, align 4
  %64 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %68

65:                                               ; preds = %54
  store i32 0, i32* %8, align 4
  %66 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %67 = call i32 @i915_gem_object_unpin_pages(%struct.drm_i915_gem_object* %66)
  br label %68

68:                                               ; preds = %65, %62
  %69 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %70 = call i32 @i915_gem_object_put(%struct.drm_i915_gem_object* %69)
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %2, align 4
  br label %77

72:                                               ; preds = %48, %27
  %73 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %74 = bitcast %struct.dma_buf* %73 to %struct.drm_i915_gem_object*
  %75 = call i32 @dma_buf_put(%struct.drm_i915_gem_object* %74)
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %72, %68, %17
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.drm_i915_gem_object* @mock_dmabuf(i32) #1

declare dso_local i64 @IS_ERR(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_i915_gem_object*) #1

declare dso_local i8* @dma_buf_vmap(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @dma_buf_vunmap(%struct.drm_i915_gem_object*, i8*) #1

declare dso_local %struct.drm_i915_gem_object* @to_intel_bo(i32) #1

declare dso_local i32 @i915_gem_prime_import(i32*, %struct.drm_i915_gem_object*) #1

declare dso_local i32 @dma_buf_put(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_pin_pages(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_unpin_pages(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_put(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
