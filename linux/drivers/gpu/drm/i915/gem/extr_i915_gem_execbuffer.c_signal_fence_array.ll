; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_signal_fence_array.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_signal_fence_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_execbuffer = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.dma_fence }
%struct.dma_fence = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.drm_syncobj = type { i32 }

@I915_EXEC_FENCE_SIGNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_execbuffer*, %struct.drm_syncobj**)* @signal_fence_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @signal_fence_array(%struct.i915_execbuffer* %0, %struct.drm_syncobj** %1) #0 {
  %3 = alloca %struct.i915_execbuffer*, align 8
  %4 = alloca %struct.drm_syncobj**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dma_fence*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_syncobj*, align 8
  %9 = alloca i32, align 4
  store %struct.i915_execbuffer* %0, %struct.i915_execbuffer** %3, align 8
  store %struct.drm_syncobj** %1, %struct.drm_syncobj*** %4, align 8
  %10 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %11 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %16 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store %struct.dma_fence* %18, %struct.dma_fence** %6, align 8
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %39, %2
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %19
  %24 = load %struct.drm_syncobj**, %struct.drm_syncobj*** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.drm_syncobj*, %struct.drm_syncobj** %24, i64 %26
  %28 = load %struct.drm_syncobj*, %struct.drm_syncobj** %27, align 8
  %29 = call %struct.drm_syncobj* @ptr_unpack_bits(%struct.drm_syncobj* %28, i32* %9, i32 2)
  store %struct.drm_syncobj* %29, %struct.drm_syncobj** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @I915_EXEC_FENCE_SIGNAL, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %23
  br label %39

35:                                               ; preds = %23
  %36 = load %struct.drm_syncobj*, %struct.drm_syncobj** %8, align 8
  %37 = load %struct.dma_fence*, %struct.dma_fence** %6, align 8
  %38 = call i32 @drm_syncobj_replace_fence(%struct.drm_syncobj* %36, %struct.dma_fence* %37)
  br label %39

39:                                               ; preds = %35, %34
  %40 = load i32, i32* %7, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %19

42:                                               ; preds = %19
  ret void
}

declare dso_local %struct.drm_syncobj* @ptr_unpack_bits(%struct.drm_syncobj*, i32*, i32) #1

declare dso_local i32 @drm_syncobj_replace_fence(%struct.drm_syncobj*, %struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
