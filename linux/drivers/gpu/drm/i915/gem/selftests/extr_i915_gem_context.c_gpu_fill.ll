; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_i915_gem_context.c_gpu_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_i915_gem_context.c_gpu_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.i915_gem_context = type { i32 }
%struct.intel_engine_cs = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.i915_address_space }
%struct.i915_address_space = type { i64 }
%struct.i915_vma = type { i32 }

@PIN_HIGH = common dso_local global i32 0, align 4
@PIN_USER = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_gem_object*, %struct.i915_gem_context*, %struct.intel_engine_cs*, i32)* @gpu_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpu_fill(%struct.drm_i915_gem_object* %0, %struct.i915_gem_context* %1, %struct.intel_engine_cs* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_gem_object*, align 8
  %7 = alloca %struct.i915_gem_context*, align 8
  %8 = alloca %struct.intel_engine_cs*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.i915_address_space*, align 8
  %11 = alloca %struct.i915_vma*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %6, align 8
  store %struct.i915_gem_context* %1, %struct.i915_gem_context** %7, align 8
  store %struct.intel_engine_cs* %2, %struct.intel_engine_cs** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.i915_gem_context*, %struct.i915_gem_context** %7, align 8
  %14 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = sext i32 %15 to i64
  %19 = inttoptr i64 %18 to %struct.i915_address_space*
  br label %27

20:                                               ; preds = %4
  %21 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %8, align 8
  %22 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  br label %27

27:                                               ; preds = %20, %17
  %28 = phi %struct.i915_address_space* [ %19, %17 ], [ %26, %20 ]
  store %struct.i915_address_space* %28, %struct.i915_address_space** %10, align 8
  %29 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %30 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.i915_address_space*, %struct.i915_address_space** %10, align 8
  %34 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %32, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @GEM_BUG_ON(i32 %37)
  %39 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %8, align 8
  %40 = call i32 @intel_engine_can_store_dword(%struct.intel_engine_cs* %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @GEM_BUG_ON(i32 %43)
  %45 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %46 = load %struct.i915_address_space*, %struct.i915_address_space** %10, align 8
  %47 = call %struct.i915_vma* @i915_vma_instance(%struct.drm_i915_gem_object* %45, %struct.i915_address_space* %46, i32* null)
  store %struct.i915_vma* %47, %struct.i915_vma** %11, align 8
  %48 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %49 = call i64 @IS_ERR(%struct.i915_vma* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %27
  %52 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %53 = call i32 @PTR_ERR(%struct.i915_vma* %52)
  store i32 %53, i32* %5, align 4
  br label %98

54:                                               ; preds = %27
  %55 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %56 = call i32 @i915_gem_object_lock(%struct.drm_i915_gem_object* %55)
  %57 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %58 = call i32 @i915_gem_object_set_to_gtt_domain(%struct.drm_i915_gem_object* %57, i32 1)
  store i32 %58, i32* %12, align 4
  %59 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %60 = call i32 @i915_gem_object_unlock(%struct.drm_i915_gem_object* %59)
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %5, align 4
  br label %98

65:                                               ; preds = %54
  %66 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %67 = load i32, i32* @PIN_HIGH, align 4
  %68 = load i32, i32* @PIN_USER, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @i915_vma_pin(%struct.i915_vma* %66, i32 0, i32 0, i32 %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %5, align 4
  br label %98

75:                                               ; preds = %65
  %76 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %77 = load %struct.i915_gem_context*, %struct.i915_gem_context** %7, align 8
  %78 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %8, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %81 = call i32 @real_page_count(%struct.drm_i915_gem_object* %80)
  %82 = mul i32 %79, %81
  %83 = load i32, i32* @PAGE_SHIFT, align 4
  %84 = shl i32 %82, %83
  %85 = zext i32 %84 to i64
  %86 = load i32, i32* %9, align 4
  %87 = zext i32 %86 to i64
  %88 = mul i64 %87, 4
  %89 = or i64 %85, %88
  %90 = trunc i64 %89 to i32
  %91 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %92 = call i32 @real_page_count(%struct.drm_i915_gem_object* %91)
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @igt_gpu_fill_dw(%struct.i915_vma* %76, %struct.i915_gem_context* %77, %struct.intel_engine_cs* %78, i32 %90, i32 %92, i32 %93)
  store i32 %94, i32* %12, align 4
  %95 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %96 = call i32 @i915_vma_unpin(%struct.i915_vma* %95)
  %97 = load i32, i32* %12, align 4
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %75, %73, %63, %51
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @intel_engine_can_store_dword(%struct.intel_engine_cs*) #1

declare dso_local %struct.i915_vma* @i915_vma_instance(%struct.drm_i915_gem_object*, %struct.i915_address_space*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.i915_vma*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_vma*) #1

declare dso_local i32 @i915_gem_object_lock(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_set_to_gtt_domain(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i32 @i915_gem_object_unlock(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_vma_pin(%struct.i915_vma*, i32, i32, i32) #1

declare dso_local i32 @igt_gpu_fill_dw(%struct.i915_vma*, %struct.i915_gem_context*, %struct.intel_engine_cs*, i32, i32, i32) #1

declare dso_local i32 @real_page_count(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_vma_unpin(%struct.i915_vma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
