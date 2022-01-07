; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_await_fence_array.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_await_fence_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_execbuffer = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_syncobj = type { i32 }
%struct.dma_fence = type { i32 }

@I915_EXEC_FENCE_WAIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_execbuffer*, %struct.drm_syncobj**)* @await_fence_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @await_fence_array(%struct.i915_execbuffer* %0, %struct.drm_syncobj** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i915_execbuffer*, align 8
  %5 = alloca %struct.drm_syncobj**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_syncobj*, align 8
  %10 = alloca %struct.dma_fence*, align 8
  %11 = alloca i32, align 4
  store %struct.i915_execbuffer* %0, %struct.i915_execbuffer** %4, align 8
  store %struct.drm_syncobj** %1, %struct.drm_syncobj*** %5, align 8
  %12 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %4, align 8
  %13 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %54, %2
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %57

21:                                               ; preds = %17
  %22 = load %struct.drm_syncobj**, %struct.drm_syncobj*** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.drm_syncobj*, %struct.drm_syncobj** %22, i64 %24
  %26 = load %struct.drm_syncobj*, %struct.drm_syncobj** %25, align 8
  %27 = call %struct.drm_syncobj* @ptr_unpack_bits(%struct.drm_syncobj* %26, i32* %11, i32 2)
  store %struct.drm_syncobj* %27, %struct.drm_syncobj** %9, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @I915_EXEC_FENCE_WAIT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  br label %54

33:                                               ; preds = %21
  %34 = load %struct.drm_syncobj*, %struct.drm_syncobj** %9, align 8
  %35 = call %struct.dma_fence* @drm_syncobj_fence_get(%struct.drm_syncobj* %34)
  store %struct.dma_fence* %35, %struct.dma_fence** %10, align 8
  %36 = load %struct.dma_fence*, %struct.dma_fence** %10, align 8
  %37 = icmp ne %struct.dma_fence* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %58

41:                                               ; preds = %33
  %42 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %4, align 8
  %43 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.dma_fence*, %struct.dma_fence** %10, align 8
  %46 = call i32 @i915_request_await_dma_fence(i32 %44, %struct.dma_fence* %45)
  store i32 %46, i32* %8, align 4
  %47 = load %struct.dma_fence*, %struct.dma_fence** %10, align 8
  %48 = call i32 @dma_fence_put(%struct.dma_fence* %47)
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %58

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53, %32
  %55 = load i32, i32* %7, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %17

57:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %51, %38
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.drm_syncobj* @ptr_unpack_bits(%struct.drm_syncobj*, i32*, i32) #1

declare dso_local %struct.dma_fence* @drm_syncobj_fence_get(%struct.drm_syncobj*) #1

declare dso_local i32 @i915_request_await_dma_fence(i32, %struct.dma_fence*) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
