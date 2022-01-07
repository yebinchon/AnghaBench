; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_i915_gem_context_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_i915_gem_context_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { %struct.drm_i915_file_private* }
%struct.drm_i915_file_private = type { i32, i32, i32, i32 }

@context_idr_cleanup = common dso_local global i32 0, align 4
@vm_idr_cleanup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i915_gem_context_close(%struct.drm_file* %0) #0 {
  %2 = alloca %struct.drm_file*, align 8
  %3 = alloca %struct.drm_i915_file_private*, align 8
  store %struct.drm_file* %0, %struct.drm_file** %2, align 8
  %4 = load %struct.drm_file*, %struct.drm_file** %2, align 8
  %5 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %4, i32 0, i32 0
  %6 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %5, align 8
  store %struct.drm_i915_file_private* %6, %struct.drm_i915_file_private** %3, align 8
  %7 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %3, align 8
  %8 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %7, i32 0, i32 3
  %9 = load i32, i32* @context_idr_cleanup, align 4
  %10 = call i32 @idr_for_each(i32* %8, i32 %9, i32* null)
  %11 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %3, align 8
  %12 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %11, i32 0, i32 3
  %13 = call i32 @idr_destroy(i32* %12)
  %14 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %3, align 8
  %15 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %14, i32 0, i32 2
  %16 = call i32 @mutex_destroy(i32* %15)
  %17 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %3, align 8
  %18 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %17, i32 0, i32 1
  %19 = load i32, i32* @vm_idr_cleanup, align 4
  %20 = call i32 @idr_for_each(i32* %18, i32 %19, i32* null)
  %21 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %3, align 8
  %22 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %21, i32 0, i32 1
  %23 = call i32 @idr_destroy(i32* %22)
  %24 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %3, align 8
  %25 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %24, i32 0, i32 0
  %26 = call i32 @mutex_destroy(i32* %25)
  ret void
}

declare dso_local i32 @idr_for_each(i32*, i32, i32*) #1

declare dso_local i32 @idr_destroy(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
