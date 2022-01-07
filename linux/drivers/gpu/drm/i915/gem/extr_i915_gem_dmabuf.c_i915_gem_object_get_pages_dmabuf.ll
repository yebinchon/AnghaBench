; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_dmabuf.c_i915_gem_object_get_pages_dmabuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_dmabuf.c_i915_gem_object_get_pages_dmabuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sg_table = type { i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_gem_object*)* @i915_gem_object_get_pages_dmabuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_gem_object_get_pages_dmabuf(%struct.drm_i915_gem_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_i915_gem_object*, align 8
  %4 = alloca %struct.sg_table*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %3, align 8
  %6 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %7 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %11 = call %struct.sg_table* @dma_buf_map_attachment(i32 %9, i32 %10)
  store %struct.sg_table* %11, %struct.sg_table** %4, align 8
  %12 = load %struct.sg_table*, %struct.sg_table** %4, align 8
  %13 = call i64 @IS_ERR(%struct.sg_table* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.sg_table*, %struct.sg_table** %4, align 8
  %17 = call i32 @PTR_ERR(%struct.sg_table* %16)
  store i32 %17, i32* %2, align 4
  br label %27

18:                                               ; preds = %1
  %19 = load %struct.sg_table*, %struct.sg_table** %4, align 8
  %20 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @i915_sg_page_sizes(i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %24 = load %struct.sg_table*, %struct.sg_table** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @__i915_gem_object_set_pages(%struct.drm_i915_gem_object* %23, %struct.sg_table* %24, i32 %25)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %18, %15
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.sg_table* @dma_buf_map_attachment(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.sg_table*) #1

declare dso_local i32 @PTR_ERR(%struct.sg_table*) #1

declare dso_local i32 @i915_sg_page_sizes(i32) #1

declare dso_local i32 @__i915_gem_object_set_pages(%struct.drm_i915_gem_object*, %struct.sg_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
