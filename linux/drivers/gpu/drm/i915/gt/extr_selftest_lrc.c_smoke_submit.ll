; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_lrc.c_smoke_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_lrc.c_smoke_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.preempt_smoke = type { i32 }
%struct.i915_gem_context = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_gem_object = type { i32 }
%struct.i915_request = type { %struct.TYPE_6__, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.i915_vma*, i32, i32, i32)* }
%struct.i915_vma = type { %struct.TYPE_6__, %struct.TYPE_5__*, i32 }

@PIN_USER = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.preempt_smoke*, %struct.i915_gem_context*, i32, %struct.drm_i915_gem_object*)* @smoke_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smoke_submit(%struct.preempt_smoke* %0, %struct.i915_gem_context* %1, i32 %2, %struct.drm_i915_gem_object* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.preempt_smoke*, align 8
  %7 = alloca %struct.i915_gem_context*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_i915_gem_object*, align 8
  %10 = alloca %struct.i915_request*, align 8
  %11 = alloca %struct.i915_vma*, align 8
  %12 = alloca i32, align 4
  store %struct.preempt_smoke* %0, %struct.preempt_smoke** %6, align 8
  store %struct.i915_gem_context* %1, %struct.i915_gem_context** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.drm_i915_gem_object* %3, %struct.drm_i915_gem_object** %9, align 8
  store %struct.i915_vma* null, %struct.i915_vma** %11, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %14 = icmp ne %struct.drm_i915_gem_object* %13, null
  br i1 %14, label %15, label %36

15:                                               ; preds = %4
  %16 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %17 = load %struct.i915_gem_context*, %struct.i915_gem_context** %7, align 8
  %18 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.i915_vma* @i915_vma_instance(%struct.drm_i915_gem_object* %16, i32 %19, i32* null)
  store %struct.i915_vma* %20, %struct.i915_vma** %11, align 8
  %21 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %22 = call i64 @IS_ERR(%struct.i915_vma* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %26 = call i32 @PTR_ERR(%struct.i915_vma* %25)
  store i32 %26, i32* %5, align 4
  br label %106

27:                                               ; preds = %15
  %28 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %29 = load i32, i32* @PIN_USER, align 4
  %30 = call i32 @i915_vma_pin(%struct.i915_vma* %28, i32 0, i32 0, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %5, align 4
  br label %106

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %4
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.i915_gem_context*, %struct.i915_gem_context** %7, align 8
  %39 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = load %struct.i915_gem_context*, %struct.i915_gem_context** %7, align 8
  %42 = load %struct.preempt_smoke*, %struct.preempt_smoke** %6, align 8
  %43 = getelementptr inbounds %struct.preempt_smoke, %struct.preempt_smoke* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.i915_vma* @igt_request_alloc(%struct.i915_gem_context* %41, i32 %44)
  %46 = bitcast %struct.i915_vma* %45 to %struct.i915_request*
  store %struct.i915_request* %46, %struct.i915_request** %10, align 8
  %47 = load %struct.i915_request*, %struct.i915_request** %10, align 8
  %48 = bitcast %struct.i915_request* %47 to %struct.i915_vma*
  %49 = call i64 @IS_ERR(%struct.i915_vma* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %36
  %52 = load %struct.i915_request*, %struct.i915_request** %10, align 8
  %53 = bitcast %struct.i915_request* %52 to %struct.i915_vma*
  %54 = call i32 @PTR_ERR(%struct.i915_vma* %53)
  store i32 %54, i32* %12, align 4
  br label %98

55:                                               ; preds = %36
  %56 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %57 = icmp ne %struct.i915_vma* %56, null
  br i1 %57, label %58, label %94

58:                                               ; preds = %55
  %59 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %60 = call i32 @i915_vma_lock(%struct.i915_vma* %59)
  %61 = load %struct.i915_request*, %struct.i915_request** %10, align 8
  %62 = bitcast %struct.i915_request* %61 to %struct.i915_vma*
  %63 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %64 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @i915_request_await_object(%struct.i915_vma* %62, i32 %65, i32 0)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %58
  %70 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %71 = load %struct.i915_request*, %struct.i915_request** %10, align 8
  %72 = bitcast %struct.i915_request* %71 to %struct.i915_vma*
  %73 = call i32 @i915_vma_move_to_active(%struct.i915_vma* %70, %struct.i915_vma* %72, i32 0)
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %69, %58
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %91, label %77

77:                                               ; preds = %74
  %78 = load %struct.i915_request*, %struct.i915_request** %10, align 8
  %79 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %78, i32 0, i32 1
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32 (%struct.i915_vma*, i32, i32, i32)*, i32 (%struct.i915_vma*, i32, i32, i32)** %81, align 8
  %83 = load %struct.i915_request*, %struct.i915_request** %10, align 8
  %84 = bitcast %struct.i915_request* %83 to %struct.i915_vma*
  %85 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %86 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @PAGE_SIZE, align 4
  %90 = call i32 %82(%struct.i915_vma* %84, i32 %88, i32 %89, i32 0)
  store i32 %90, i32* %12, align 4
  br label %91

91:                                               ; preds = %77, %74
  %92 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %93 = call i32 @i915_vma_unlock(%struct.i915_vma* %92)
  br label %94

94:                                               ; preds = %91, %55
  %95 = load %struct.i915_request*, %struct.i915_request** %10, align 8
  %96 = bitcast %struct.i915_request* %95 to %struct.i915_vma*
  %97 = call i32 @i915_request_add(%struct.i915_vma* %96)
  br label %98

98:                                               ; preds = %94, %51
  %99 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %100 = icmp ne %struct.i915_vma* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %103 = call i32 @i915_vma_unpin(%struct.i915_vma* %102)
  br label %104

104:                                              ; preds = %101, %98
  %105 = load i32, i32* %12, align 4
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %104, %33, %24
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local %struct.i915_vma* @i915_vma_instance(%struct.drm_i915_gem_object*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.i915_vma*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_vma*) #1

declare dso_local i32 @i915_vma_pin(%struct.i915_vma*, i32, i32, i32) #1

declare dso_local %struct.i915_vma* @igt_request_alloc(%struct.i915_gem_context*, i32) #1

declare dso_local i32 @i915_vma_lock(%struct.i915_vma*) #1

declare dso_local i32 @i915_request_await_object(%struct.i915_vma*, i32, i32) #1

declare dso_local i32 @i915_vma_move_to_active(%struct.i915_vma*, %struct.i915_vma*, i32) #1

declare dso_local i32 @i915_vma_unlock(%struct.i915_vma*) #1

declare dso_local i32 @i915_request_add(%struct.i915_vma*) #1

declare dso_local i32 @i915_vma_unpin(%struct.i915_vma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
