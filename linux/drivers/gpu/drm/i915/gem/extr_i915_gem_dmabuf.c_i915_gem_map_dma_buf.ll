; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_dmabuf.c_i915_gem_map_dma_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_dmabuf.c_i915_gem_map_dma_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_table = type { i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.dma_buf_attachment = type { i32, i32 }
%struct.drm_i915_gem_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.scatterlist* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sg_table* (%struct.dma_buf_attachment*, i32)* @i915_gem_map_dma_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sg_table* @i915_gem_map_dma_buf(%struct.dma_buf_attachment* %0, i32 %1) #0 {
  %3 = alloca %struct.sg_table*, align 8
  %4 = alloca %struct.dma_buf_attachment*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_gem_object*, align 8
  %7 = alloca %struct.sg_table*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dma_buf_attachment* %0, %struct.dma_buf_attachment** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %13 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.drm_i915_gem_object* @dma_buf_to_obj(i32 %14)
  store %struct.drm_i915_gem_object* %15, %struct.drm_i915_gem_object** %6, align 8
  %16 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %17 = call i32 @i915_gem_object_pin_pages(%struct.drm_i915_gem_object* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %103

21:                                               ; preds = %2
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.sg_table* @kmalloc(i32 16, i32 %22)
  store %struct.sg_table* %23, %struct.sg_table** %7, align 8
  %24 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %25 = icmp eq %struct.sg_table* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %10, align 4
  br label %100

29:                                               ; preds = %21
  %30 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %31 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %32 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i32 @sg_alloc_table(%struct.sg_table* %30, i32 %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  br label %97

42:                                               ; preds = %29
  %43 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %44 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load %struct.scatterlist*, %struct.scatterlist** %47, align 8
  store %struct.scatterlist* %48, %struct.scatterlist** %8, align 8
  %49 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %50 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %49, i32 0, i32 1
  %51 = load %struct.scatterlist*, %struct.scatterlist** %50, align 8
  store %struct.scatterlist* %51, %struct.scatterlist** %9, align 8
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %73, %42
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %55 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %53, %59
  br i1 %60, label %61, label %76

61:                                               ; preds = %52
  %62 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %63 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %64 = call i32 @sg_page(%struct.scatterlist* %63)
  %65 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %66 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @sg_set_page(%struct.scatterlist* %62, i32 %64, i32 %67, i32 0)
  %69 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %70 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %69)
  store %struct.scatterlist* %70, %struct.scatterlist** %9, align 8
  %71 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %72 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %71)
  store %struct.scatterlist* %72, %struct.scatterlist** %8, align 8
  br label %73

73:                                               ; preds = %61
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %52

76:                                               ; preds = %52
  %77 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %78 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %81 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %80, i32 0, i32 1
  %82 = load %struct.scatterlist*, %struct.scatterlist** %81, align 8
  %83 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %84 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @dma_map_sg(i32 %79, %struct.scatterlist* %82, i32 %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %76
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %10, align 4
  br label %94

92:                                               ; preds = %76
  %93 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  store %struct.sg_table* %93, %struct.sg_table** %3, align 8
  br label %106

94:                                               ; preds = %89
  %95 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %96 = call i32 @sg_free_table(%struct.sg_table* %95)
  br label %97

97:                                               ; preds = %94, %41
  %98 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %99 = call i32 @kfree(%struct.sg_table* %98)
  br label %100

100:                                              ; preds = %97, %26
  %101 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %102 = call i32 @i915_gem_object_unpin_pages(%struct.drm_i915_gem_object* %101)
  br label %103

103:                                              ; preds = %100, %20
  %104 = load i32, i32* %10, align 4
  %105 = call %struct.sg_table* @ERR_PTR(i32 %104)
  store %struct.sg_table* %105, %struct.sg_table** %3, align 8
  br label %106

106:                                              ; preds = %103, %92
  %107 = load %struct.sg_table*, %struct.sg_table** %3, align 8
  ret %struct.sg_table* %107
}

declare dso_local %struct.drm_i915_gem_object* @dma_buf_to_obj(i32) #1

declare dso_local i32 @i915_gem_object_pin_pages(%struct.drm_i915_gem_object*) #1

declare dso_local %struct.sg_table* @kmalloc(i32, i32) #1

declare dso_local i32 @sg_alloc_table(%struct.sg_table*, i32, i32) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @dma_map_sg(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @sg_free_table(%struct.sg_table*) #1

declare dso_local i32 @kfree(%struct.sg_table*) #1

declare dso_local i32 @i915_gem_object_unpin_pages(%struct.drm_i915_gem_object*) #1

declare dso_local %struct.sg_table* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
