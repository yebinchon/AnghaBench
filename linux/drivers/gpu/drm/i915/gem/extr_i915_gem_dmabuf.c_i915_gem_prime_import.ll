; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_dmabuf.c_i915_gem_prime_import.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_dmabuf.c_i915_gem_prime_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32, %struct.dma_buf_attachment*, %struct.drm_device* }
%struct.dma_buf_attachment = type { i32 }
%struct.drm_device = type { i32 }
%struct.dma_buf = type { i32, i32, i32* }
%struct.drm_i915_gem_object = type { %struct.drm_gem_object, i64, i32 }
%struct.TYPE_2__ = type { %struct.drm_gem_object }

@i915_dmabuf_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@i915_gem_object_dmabuf_ops = common dso_local global i32 0, align 4
@I915_GEM_DOMAIN_GTT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_gem_object* @i915_gem_prime_import(%struct.drm_device* %0, %struct.dma_buf* %1) #0 {
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.dma_buf*, align 8
  %6 = alloca %struct.dma_buf_attachment*, align 8
  %7 = alloca %struct.drm_i915_gem_object*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.dma_buf* %1, %struct.dma_buf** %5, align 8
  %9 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %10 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, @i915_dmabuf_ops
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %15 = call %struct.drm_i915_gem_object* @dma_buf_to_obj(%struct.dma_buf* %14)
  store %struct.drm_i915_gem_object* %15, %struct.drm_i915_gem_object** %7, align 8
  %16 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %17 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %17, i32 0, i32 2
  %19 = load %struct.drm_device*, %struct.drm_device** %18, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %21 = icmp eq %struct.drm_device* %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %13
  %23 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %24 = call %struct.TYPE_2__* @i915_gem_object_get(%struct.drm_i915_gem_object* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store %struct.drm_gem_object* %25, %struct.drm_gem_object** %3, align 8
  br label %83

26:                                               ; preds = %13
  br label %27

27:                                               ; preds = %26, %2
  %28 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %29 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %30 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.dma_buf_attachment* @dma_buf_attach(%struct.dma_buf* %28, i32 %31)
  store %struct.dma_buf_attachment* %32, %struct.dma_buf_attachment** %6, align 8
  %33 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %34 = call i64 @IS_ERR(%struct.dma_buf_attachment* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %38 = call %struct.drm_gem_object* @ERR_CAST(%struct.dma_buf_attachment* %37)
  store %struct.drm_gem_object* %38, %struct.drm_gem_object** %3, align 8
  br label %83

39:                                               ; preds = %27
  %40 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %41 = call i32 @get_dma_buf(%struct.dma_buf* %40)
  %42 = call %struct.drm_i915_gem_object* (...) @i915_gem_object_alloc()
  store %struct.drm_i915_gem_object* %42, %struct.drm_i915_gem_object** %7, align 8
  %43 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %44 = icmp eq %struct.drm_i915_gem_object* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %8, align 4
  br label %75

48:                                               ; preds = %39
  %49 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %50 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %51 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %50, i32 0, i32 0
  %52 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %53 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @drm_gem_private_object_init(%struct.drm_device* %49, %struct.drm_gem_object* %51, i32 %54)
  %56 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %57 = call i32 @i915_gem_object_init(%struct.drm_i915_gem_object* %56, i32* @i915_gem_object_dmabuf_ops)
  %58 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %59 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %60 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %60, i32 0, i32 1
  store %struct.dma_buf_attachment* %58, %struct.dma_buf_attachment** %61, align 8
  %62 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %63 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %66 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = load i32, i32* @I915_GEM_DOMAIN_GTT, align 4
  %69 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %70 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %72 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  %73 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %74 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %73, i32 0, i32 0
  store %struct.drm_gem_object* %74, %struct.drm_gem_object** %3, align 8
  br label %83

75:                                               ; preds = %45
  %76 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %77 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %78 = call i32 @dma_buf_detach(%struct.dma_buf* %76, %struct.dma_buf_attachment* %77)
  %79 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %80 = call i32 @dma_buf_put(%struct.dma_buf* %79)
  %81 = load i32, i32* %8, align 4
  %82 = call %struct.drm_gem_object* @ERR_PTR(i32 %81)
  store %struct.drm_gem_object* %82, %struct.drm_gem_object** %3, align 8
  br label %83

83:                                               ; preds = %75, %48, %36, %22
  %84 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  ret %struct.drm_gem_object* %84
}

declare dso_local %struct.drm_i915_gem_object* @dma_buf_to_obj(%struct.dma_buf*) #1

declare dso_local %struct.TYPE_2__* @i915_gem_object_get(%struct.drm_i915_gem_object*) #1

declare dso_local %struct.dma_buf_attachment* @dma_buf_attach(%struct.dma_buf*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dma_buf_attachment*) #1

declare dso_local %struct.drm_gem_object* @ERR_CAST(%struct.dma_buf_attachment*) #1

declare dso_local i32 @get_dma_buf(%struct.dma_buf*) #1

declare dso_local %struct.drm_i915_gem_object* @i915_gem_object_alloc(...) #1

declare dso_local i32 @drm_gem_private_object_init(%struct.drm_device*, %struct.drm_gem_object*, i32) #1

declare dso_local i32 @i915_gem_object_init(%struct.drm_i915_gem_object*, i32*) #1

declare dso_local i32 @dma_buf_detach(%struct.dma_buf*, %struct.dma_buf_attachment*) #1

declare dso_local i32 @dma_buf_put(%struct.dma_buf*) #1

declare dso_local %struct.drm_gem_object* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
