; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_overlay.c_get_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_overlay.c_get_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_overlay = type { %struct.i915_vma*, %struct.i915_vma*, i32, %struct.drm_i915_private* }
%struct.i915_vma = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.drm_i915_gem_object = type { %struct.TYPE_5__ }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PIN_MAPPABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_overlay*, i32)* @get_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_registers(%struct.intel_overlay* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_overlay*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.drm_i915_gem_object*, align 8
  %8 = alloca %struct.i915_vma*, align 8
  %9 = alloca i32, align 4
  store %struct.intel_overlay* %0, %struct.intel_overlay** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.intel_overlay*, %struct.intel_overlay** %4, align 8
  %11 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %10, i32 0, i32 3
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %6, align 8
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %14 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = call %struct.i915_vma* @i915_gem_object_create_stolen(%struct.drm_i915_private* %17, i32 %18)
  %20 = bitcast %struct.i915_vma* %19 to %struct.drm_i915_gem_object*
  store %struct.drm_i915_gem_object* %20, %struct.drm_i915_gem_object** %7, align 8
  %21 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %22 = icmp eq %struct.drm_i915_gem_object* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = call %struct.i915_vma* @i915_gem_object_create_internal(%struct.drm_i915_private* %24, i32 %25)
  %27 = bitcast %struct.i915_vma* %26 to %struct.drm_i915_gem_object*
  store %struct.drm_i915_gem_object* %27, %struct.drm_i915_gem_object** %7, align 8
  br label %28

28:                                               ; preds = %23, %2
  %29 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %30 = bitcast %struct.drm_i915_gem_object* %29 to %struct.i915_vma*
  %31 = call i64 @IS_ERR(%struct.i915_vma* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %35 = bitcast %struct.drm_i915_gem_object* %34 to %struct.i915_vma*
  %36 = call i32 @PTR_ERR(%struct.i915_vma* %35)
  store i32 %36, i32* %9, align 4
  br label %96

37:                                               ; preds = %28
  %38 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %39 = bitcast %struct.drm_i915_gem_object* %38 to %struct.i915_vma*
  %40 = load i32, i32* @PIN_MAPPABLE, align 4
  %41 = call %struct.i915_vma* @i915_gem_object_ggtt_pin(%struct.i915_vma* %39, i32* null, i32 0, i32 0, i32 %40)
  store %struct.i915_vma* %41, %struct.i915_vma** %8, align 8
  %42 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %43 = call i64 @IS_ERR(%struct.i915_vma* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %47 = call i32 @PTR_ERR(%struct.i915_vma* %46)
  store i32 %47, i32* %9, align 4
  br label %92

48:                                               ; preds = %37
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %48
  %52 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %53 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @sg_dma_address(i32 %57)
  %59 = load %struct.intel_overlay*, %struct.intel_overlay** %4, align 8
  %60 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  br label %66

61:                                               ; preds = %48
  %62 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %63 = call i32 @i915_ggtt_offset(%struct.i915_vma* %62)
  %64 = load %struct.intel_overlay*, %struct.intel_overlay** %4, align 8
  %65 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %61, %51
  %67 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %68 = call %struct.i915_vma* @i915_vma_pin_iomap(%struct.i915_vma* %67)
  %69 = load %struct.intel_overlay*, %struct.intel_overlay** %4, align 8
  %70 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %69, i32 0, i32 1
  store %struct.i915_vma* %68, %struct.i915_vma** %70, align 8
  %71 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %72 = call i32 @i915_vma_unpin(%struct.i915_vma* %71)
  %73 = load %struct.intel_overlay*, %struct.intel_overlay** %4, align 8
  %74 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %73, i32 0, i32 1
  %75 = load %struct.i915_vma*, %struct.i915_vma** %74, align 8
  %76 = call i64 @IS_ERR(%struct.i915_vma* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %66
  %79 = load %struct.intel_overlay*, %struct.intel_overlay** %4, align 8
  %80 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %79, i32 0, i32 1
  %81 = load %struct.i915_vma*, %struct.i915_vma** %80, align 8
  %82 = call i32 @PTR_ERR(%struct.i915_vma* %81)
  store i32 %82, i32* %9, align 4
  br label %92

83:                                               ; preds = %66
  %84 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %85 = bitcast %struct.drm_i915_gem_object* %84 to %struct.i915_vma*
  %86 = load %struct.intel_overlay*, %struct.intel_overlay** %4, align 8
  %87 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %86, i32 0, i32 0
  store %struct.i915_vma* %85, %struct.i915_vma** %87, align 8
  %88 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %89 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = call i32 @mutex_unlock(i32* %90)
  store i32 0, i32* %3, align 4
  br label %102

92:                                               ; preds = %78, %45
  %93 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %94 = bitcast %struct.drm_i915_gem_object* %93 to %struct.i915_vma*
  %95 = call i32 @i915_gem_object_put(%struct.i915_vma* %94)
  br label %96

96:                                               ; preds = %92, %33
  %97 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %98 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %96, %83
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.i915_vma* @i915_gem_object_create_stolen(%struct.drm_i915_private*, i32) #1

declare dso_local %struct.i915_vma* @i915_gem_object_create_internal(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_ERR(%struct.i915_vma*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_vma*) #1

declare dso_local %struct.i915_vma* @i915_gem_object_ggtt_pin(%struct.i915_vma*, i32*, i32, i32, i32) #1

declare dso_local i32 @sg_dma_address(i32) #1

declare dso_local i32 @i915_ggtt_offset(%struct.i915_vma*) #1

declare dso_local %struct.i915_vma* @i915_vma_pin_iomap(%struct.i915_vma*) #1

declare dso_local i32 @i915_vma_unpin(%struct.i915_vma*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @i915_gem_object_put(%struct.i915_vma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
