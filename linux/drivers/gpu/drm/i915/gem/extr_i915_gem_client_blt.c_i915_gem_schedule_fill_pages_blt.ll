; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_client_blt.c_i915_gem_schedule_fill_pages_blt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_client_blt.c_i915_gem_schedule_fill_pages_blt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_context = type { i32 }
%struct.sg_table = type { i32 }
%struct.i915_page_sizes = type { i32 }
%struct.clear_pages_work = type { i32, i32, i32, i32, %struct.intel_context*, %struct.i915_sleeve*, i32 }
%struct.i915_sleeve = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@clear_pages_worker = common dso_local global i32 0, align 4
@clear_pages_signal_irq_worker = common dso_local global i32 0, align 4
@clear_pages_work_ops = common dso_local global i32 0, align 4
@fence_lock = common dso_local global i32 0, align 4
@clear_pages_work_notify = common dso_local global i32 0, align 4
@I915_FENCE_TIMEOUT = common dso_local global i32 0, align 4
@I915_FENCE_GFP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_schedule_fill_pages_blt(%struct.drm_i915_gem_object* %0, %struct.intel_context* %1, %struct.sg_table* %2, %struct.i915_page_sizes* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_i915_gem_object*, align 8
  %8 = alloca %struct.intel_context*, align 8
  %9 = alloca %struct.sg_table*, align 8
  %10 = alloca %struct.i915_page_sizes*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.clear_pages_work*, align 8
  %13 = alloca %struct.i915_sleeve*, align 8
  %14 = alloca i32, align 4
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %7, align 8
  store %struct.intel_context* %1, %struct.intel_context** %8, align 8
  store %struct.sg_table* %2, %struct.sg_table** %9, align 8
  store %struct.i915_page_sizes* %3, %struct.i915_page_sizes** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.intel_context*, %struct.intel_context** %8, align 8
  %16 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %19 = load %struct.sg_table*, %struct.sg_table** %9, align 8
  %20 = load %struct.i915_page_sizes*, %struct.i915_page_sizes** %10, align 8
  %21 = call %struct.i915_sleeve* @create_sleeve(i32 %17, %struct.drm_i915_gem_object* %18, %struct.sg_table* %19, %struct.i915_page_sizes* %20)
  store %struct.i915_sleeve* %21, %struct.i915_sleeve** %13, align 8
  %22 = load %struct.i915_sleeve*, %struct.i915_sleeve** %13, align 8
  %23 = call i64 @IS_ERR(%struct.i915_sleeve* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load %struct.i915_sleeve*, %struct.i915_sleeve** %13, align 8
  %27 = call i32 @PTR_ERR(%struct.i915_sleeve* %26)
  store i32 %27, i32* %6, align 4
  br label %99

28:                                               ; preds = %5
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.clear_pages_work* @kmalloc(i32 40, i32 %29)
  store %struct.clear_pages_work* %30, %struct.clear_pages_work** %12, align 8
  %31 = load %struct.clear_pages_work*, %struct.clear_pages_work** %12, align 8
  %32 = icmp ne %struct.clear_pages_work* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load %struct.i915_sleeve*, %struct.i915_sleeve** %13, align 8
  %35 = call i32 @destroy_sleeve(%struct.i915_sleeve* %34)
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %99

38:                                               ; preds = %28
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.clear_pages_work*, %struct.clear_pages_work** %12, align 8
  %41 = getelementptr inbounds %struct.clear_pages_work, %struct.clear_pages_work* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 8
  %42 = load %struct.i915_sleeve*, %struct.i915_sleeve** %13, align 8
  %43 = load %struct.clear_pages_work*, %struct.clear_pages_work** %12, align 8
  %44 = getelementptr inbounds %struct.clear_pages_work, %struct.clear_pages_work* %43, i32 0, i32 5
  store %struct.i915_sleeve* %42, %struct.i915_sleeve** %44, align 8
  %45 = load %struct.intel_context*, %struct.intel_context** %8, align 8
  %46 = load %struct.clear_pages_work*, %struct.clear_pages_work** %12, align 8
  %47 = getelementptr inbounds %struct.clear_pages_work, %struct.clear_pages_work* %46, i32 0, i32 4
  store %struct.intel_context* %45, %struct.intel_context** %47, align 8
  %48 = load %struct.clear_pages_work*, %struct.clear_pages_work** %12, align 8
  %49 = getelementptr inbounds %struct.clear_pages_work, %struct.clear_pages_work* %48, i32 0, i32 3
  %50 = load i32, i32* @clear_pages_worker, align 4
  %51 = call i32 @INIT_WORK(i32* %49, i32 %50)
  %52 = load %struct.clear_pages_work*, %struct.clear_pages_work** %12, align 8
  %53 = getelementptr inbounds %struct.clear_pages_work, %struct.clear_pages_work* %52, i32 0, i32 2
  %54 = load i32, i32* @clear_pages_signal_irq_worker, align 4
  %55 = call i32 @init_irq_work(i32* %53, i32 %54)
  %56 = load %struct.clear_pages_work*, %struct.clear_pages_work** %12, align 8
  %57 = getelementptr inbounds %struct.clear_pages_work, %struct.clear_pages_work* %56, i32 0, i32 1
  %58 = call i32 @dma_fence_init(i32* %57, i32* @clear_pages_work_ops, i32* @fence_lock, i32 0, i32 0)
  %59 = load %struct.clear_pages_work*, %struct.clear_pages_work** %12, align 8
  %60 = getelementptr inbounds %struct.clear_pages_work, %struct.clear_pages_work* %59, i32 0, i32 0
  %61 = load i32, i32* @clear_pages_work_notify, align 4
  %62 = call i32 @i915_sw_fence_init(i32* %60, i32 %61)
  %63 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %64 = call i32 @i915_gem_object_lock(%struct.drm_i915_gem_object* %63)
  %65 = load %struct.clear_pages_work*, %struct.clear_pages_work** %12, align 8
  %66 = getelementptr inbounds %struct.clear_pages_work, %struct.clear_pages_work* %65, i32 0, i32 0
  %67 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %68 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @I915_FENCE_TIMEOUT, align 4
  %72 = load i32, i32* @I915_FENCE_GFP, align 4
  %73 = call i32 @i915_sw_fence_await_reservation(i32* %66, i32 %70, i32* null, i32 1, i32 %71, i32 %72)
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %38
  %77 = load %struct.clear_pages_work*, %struct.clear_pages_work** %12, align 8
  %78 = getelementptr inbounds %struct.clear_pages_work, %struct.clear_pages_work* %77, i32 0, i32 1
  %79 = load i32, i32* %14, align 4
  %80 = call i32 @dma_fence_set_error(i32* %78, i32 %79)
  br label %89

81:                                               ; preds = %38
  %82 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %83 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.clear_pages_work*, %struct.clear_pages_work** %12, align 8
  %87 = getelementptr inbounds %struct.clear_pages_work, %struct.clear_pages_work* %86, i32 0, i32 1
  %88 = call i32 @dma_resv_add_excl_fence(i32 %85, i32* %87)
  store i32 0, i32* %14, align 4
  br label %89

89:                                               ; preds = %81, %76
  %90 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %91 = call i32 @i915_gem_object_unlock(%struct.drm_i915_gem_object* %90)
  %92 = load %struct.clear_pages_work*, %struct.clear_pages_work** %12, align 8
  %93 = getelementptr inbounds %struct.clear_pages_work, %struct.clear_pages_work* %92, i32 0, i32 1
  %94 = call i32 @dma_fence_get(i32* %93)
  %95 = load %struct.clear_pages_work*, %struct.clear_pages_work** %12, align 8
  %96 = getelementptr inbounds %struct.clear_pages_work, %struct.clear_pages_work* %95, i32 0, i32 0
  %97 = call i32 @i915_sw_fence_commit(i32* %96)
  %98 = load i32, i32* %14, align 4
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %89, %33, %25
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local %struct.i915_sleeve* @create_sleeve(i32, %struct.drm_i915_gem_object*, %struct.sg_table*, %struct.i915_page_sizes*) #1

declare dso_local i64 @IS_ERR(%struct.i915_sleeve*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_sleeve*) #1

declare dso_local %struct.clear_pages_work* @kmalloc(i32, i32) #1

declare dso_local i32 @destroy_sleeve(%struct.i915_sleeve*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_irq_work(i32*, i32) #1

declare dso_local i32 @dma_fence_init(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @i915_sw_fence_init(i32*, i32) #1

declare dso_local i32 @i915_gem_object_lock(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_sw_fence_await_reservation(i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @dma_fence_set_error(i32*, i32) #1

declare dso_local i32 @dma_resv_add_excl_fence(i32, i32*) #1

declare dso_local i32 @i915_gem_object_unlock(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @dma_fence_get(i32*) #1

declare dso_local i32 @i915_sw_fence_commit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
