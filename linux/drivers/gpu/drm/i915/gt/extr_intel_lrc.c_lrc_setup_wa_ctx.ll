; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_lrc_setup_wa_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_lrc_setup_wa_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { %struct.TYPE_4__, %struct.TYPE_6__*, i32 }
%struct.TYPE_4__ = type { %struct.i915_vma* }
%struct.i915_vma = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.drm_i915_gem_object = type opaque

@CTX_WA_BB_OBJ_SIZE = common dso_local global i32 0, align 4
@PIN_GLOBAL = common dso_local global i32 0, align 4
@PIN_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_engine_cs*)* @lrc_setup_wa_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lrc_setup_wa_ctx(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca %struct.drm_i915_gem_object*, align 8
  %5 = alloca %struct.i915_vma*, align 8
  %6 = alloca i32, align 4
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %3, align 8
  %7 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %8 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @CTX_WA_BB_OBJ_SIZE, align 4
  %11 = call %struct.i915_vma* @i915_gem_object_create_shmem(i32 %9, i32 %10)
  %12 = bitcast %struct.i915_vma* %11 to %struct.drm_i915_gem_object*
  store %struct.drm_i915_gem_object* %12, %struct.drm_i915_gem_object** %4, align 8
  %13 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %14 = bitcast %struct.drm_i915_gem_object* %13 to %struct.i915_vma*
  %15 = call i64 @IS_ERR(%struct.i915_vma* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %19 = bitcast %struct.drm_i915_gem_object* %18 to %struct.i915_vma*
  %20 = call i32 @PTR_ERR(%struct.i915_vma* %19)
  store i32 %20, i32* %2, align 4
  br label %56

21:                                               ; preds = %1
  %22 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %23 = bitcast %struct.drm_i915_gem_object* %22 to %struct.i915_vma*
  %24 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %25 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = call %struct.i915_vma* @i915_vma_instance(%struct.i915_vma* %23, i32* %29, i32* null)
  store %struct.i915_vma* %30, %struct.i915_vma** %5, align 8
  %31 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %32 = call i64 @IS_ERR(%struct.i915_vma* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %21
  %35 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %36 = call i32 @PTR_ERR(%struct.i915_vma* %35)
  store i32 %36, i32* %6, align 4
  br label %51

37:                                               ; preds = %21
  %38 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %39 = load i32, i32* @PIN_GLOBAL, align 4
  %40 = load i32, i32* @PIN_HIGH, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @i915_vma_pin(%struct.i915_vma* %38, i32 0, i32 0, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %51

46:                                               ; preds = %37
  %47 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %48 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %49 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store %struct.i915_vma* %47, %struct.i915_vma** %50, align 8
  store i32 0, i32* %2, align 4
  br label %56

51:                                               ; preds = %45, %34
  %52 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %53 = bitcast %struct.drm_i915_gem_object* %52 to %struct.i915_vma*
  %54 = call i32 @i915_gem_object_put(%struct.i915_vma* %53)
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %51, %46, %17
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.i915_vma* @i915_gem_object_create_shmem(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.i915_vma*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_vma*) #1

declare dso_local %struct.i915_vma* @i915_vma_instance(%struct.i915_vma*, i32*, i32*) #1

declare dso_local i32 @i915_vma_pin(%struct.i915_vma*, i32, i32, i32) #1

declare dso_local i32 @i915_gem_object_put(%struct.i915_vma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
