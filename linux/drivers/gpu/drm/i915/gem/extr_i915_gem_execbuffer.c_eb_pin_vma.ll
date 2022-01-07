; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_eb_pin_vma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_eb_pin_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_execbuffer = type { i32 }
%struct.drm_i915_gem_exec_object2 = type { i32 }
%struct.i915_vma = type { i32*, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@PIN_OFFSET_MASK = common dso_local global i32 0, align 4
@PIN_USER = common dso_local global i32 0, align 4
@PIN_NOEVICT = common dso_local global i32 0, align 4
@PIN_OFFSET_FIXED = common dso_local global i32 0, align 4
@EXEC_OBJECT_NEEDS_GTT = common dso_local global i32 0, align 4
@PIN_GLOBAL = common dso_local global i32 0, align 4
@EXEC_OBJECT_NEEDS_FENCE = common dso_local global i32 0, align 4
@__EXEC_OBJECT_HAS_FENCE = common dso_local global i32 0, align 4
@__EXEC_OBJECT_HAS_PIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_execbuffer*, %struct.drm_i915_gem_exec_object2*, %struct.i915_vma*)* @eb_pin_vma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eb_pin_vma(%struct.i915_execbuffer* %0, %struct.drm_i915_gem_exec_object2* %1, %struct.i915_vma* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i915_execbuffer*, align 8
  %6 = alloca %struct.drm_i915_gem_exec_object2*, align 8
  %7 = alloca %struct.i915_vma*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i915_execbuffer* %0, %struct.i915_execbuffer** %5, align 8
  store %struct.drm_i915_gem_exec_object2* %1, %struct.drm_i915_gem_exec_object2** %6, align 8
  store %struct.i915_vma* %2, %struct.i915_vma** %7, align 8
  %10 = load %struct.i915_vma*, %struct.i915_vma** %7, align 8
  %11 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.i915_vma*, %struct.i915_vma** %7, align 8
  %15 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.i915_vma*, %struct.i915_vma** %7, align 8
  %21 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %9, align 4
  br label %30

24:                                               ; preds = %3
  %25 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %6, align 8
  %26 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PIN_OFFSET_MASK, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %24, %19
  %31 = load i32, i32* @PIN_USER, align 4
  %32 = load i32, i32* @PIN_NOEVICT, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @PIN_OFFSET_FIXED, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @EXEC_OBJECT_NEEDS_GTT, align 4
  %40 = and i32 %38, %39
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %30
  %44 = load i32, i32* @PIN_GLOBAL, align 4
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %43, %30
  %48 = load %struct.i915_vma*, %struct.i915_vma** %7, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @i915_vma_pin(%struct.i915_vma* %48, i32 0, i32 0, i32 %49)
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %92

54:                                               ; preds = %47
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @EXEC_OBJECT_NEEDS_FENCE, align 4
  %57 = and i32 %55, %56
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %54
  %61 = load %struct.i915_vma*, %struct.i915_vma** %7, align 8
  %62 = call i32 @i915_vma_pin_fence(%struct.i915_vma* %61)
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.i915_vma*, %struct.i915_vma** %7, align 8
  %67 = call i32 @i915_vma_unpin(%struct.i915_vma* %66)
  store i32 0, i32* %4, align 4
  br label %92

68:                                               ; preds = %60
  %69 = load %struct.i915_vma*, %struct.i915_vma** %7, align 8
  %70 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i32, i32* @__EXEC_OBJECT_HAS_FENCE, align 4
  %75 = load i32, i32* %8, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %73, %68
  br label %78

78:                                               ; preds = %77, %54
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @__EXEC_OBJECT_HAS_PIN, align 4
  %81 = or i32 %79, %80
  %82 = load %struct.i915_vma*, %struct.i915_vma** %7, align 8
  %83 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  store i32 %81, i32* %84, align 4
  %85 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %6, align 8
  %86 = load %struct.i915_vma*, %struct.i915_vma** %7, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @eb_vma_misplaced(%struct.drm_i915_gem_exec_object2* %85, %struct.i915_vma* %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %78, %65, %53
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @i915_vma_pin(%struct.i915_vma*, i32, i32, i32) #1

declare dso_local i32 @i915_vma_pin_fence(%struct.i915_vma*) #1

declare dso_local i32 @i915_vma_unpin(%struct.i915_vma*) #1

declare dso_local i32 @eb_vma_misplaced(%struct.drm_i915_gem_exec_object2*, %struct.i915_vma*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
