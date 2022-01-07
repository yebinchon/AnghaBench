; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_overlay.c_intel_overlay_flip_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_overlay.c_intel_overlay_flip_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_overlay = type { %struct.TYPE_9__*, %struct.TYPE_9__*, i32, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_8__ = type { i32 }
%struct.i915_vma = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_overlay*, %struct.i915_vma*)* @intel_overlay_flip_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_overlay_flip_prepare(%struct.intel_overlay* %0, %struct.i915_vma* %1) #0 {
  %3 = alloca %struct.intel_overlay*, align 8
  %4 = alloca %struct.i915_vma*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_overlay* %0, %struct.intel_overlay** %3, align 8
  store %struct.i915_vma* %1, %struct.i915_vma** %4, align 8
  %6 = load %struct.intel_overlay*, %struct.intel_overlay** %3, align 8
  %7 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %6, i32 0, i32 3
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.intel_overlay*, %struct.intel_overlay** %3, align 8
  %12 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %11, i32 0, i32 1
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = call i32 @WARN_ON(%struct.TYPE_9__* %13)
  %15 = load %struct.intel_overlay*, %struct.intel_overlay** %3, align 8
  %16 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %15, i32 0, i32 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = icmp ne %struct.TYPE_9__* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.intel_overlay*, %struct.intel_overlay** %3, align 8
  %21 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %20, i32 0, i32 0
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  br label %28

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %27, %19
  %29 = phi i32* [ %26, %19 ], [ null, %27 ]
  %30 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %31 = icmp ne %struct.i915_vma* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %34 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  br label %39

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38, %32
  %40 = phi i32* [ %37, %32 ], [ null, %38 ]
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @INTEL_FRONTBUFFER_OVERLAY(i32 %41)
  %43 = call i32 @intel_frontbuffer_track(i32* %29, i32* %40, i32 %42)
  %44 = load %struct.intel_overlay*, %struct.intel_overlay** %3, align 8
  %45 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @INTEL_FRONTBUFFER_OVERLAY(i32 %47)
  %49 = call i32 @intel_frontbuffer_flip_prepare(i32 %46, i32 %48)
  %50 = load %struct.intel_overlay*, %struct.intel_overlay** %3, align 8
  %51 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %50, i32 0, i32 0
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = load %struct.intel_overlay*, %struct.intel_overlay** %3, align 8
  %54 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %53, i32 0, i32 1
  store %struct.TYPE_9__* %52, %struct.TYPE_9__** %54, align 8
  %55 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %56 = icmp ne %struct.i915_vma* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %39
  %58 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %59 = call %struct.TYPE_9__* @i915_vma_get(%struct.i915_vma* %58)
  %60 = load %struct.intel_overlay*, %struct.intel_overlay** %3, align 8
  %61 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %60, i32 0, i32 0
  store %struct.TYPE_9__* %59, %struct.TYPE_9__** %61, align 8
  br label %65

62:                                               ; preds = %39
  %63 = load %struct.intel_overlay*, %struct.intel_overlay** %3, align 8
  %64 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %63, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %64, align 8
  br label %65

65:                                               ; preds = %62, %57
  ret void
}

declare dso_local i32 @WARN_ON(%struct.TYPE_9__*) #1

declare dso_local i32 @intel_frontbuffer_track(i32*, i32*, i32) #1

declare dso_local i32 @INTEL_FRONTBUFFER_OVERLAY(i32) #1

declare dso_local i32 @intel_frontbuffer_flip_prepare(i32, i32) #1

declare dso_local %struct.TYPE_9__* @i915_vma_get(%struct.i915_vma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
