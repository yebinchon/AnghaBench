; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_reloc_gpu_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_reloc_gpu_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reloc_cache = type { i32, %struct.TYPE_10__*, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@MI_BATCH_BUFFER_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.reloc_cache*)* @reloc_gpu_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reloc_gpu_flush(%struct.reloc_cache* %0) #0 {
  %2 = alloca %struct.reloc_cache*, align 8
  store %struct.reloc_cache* %0, %struct.reloc_cache** %2, align 8
  %3 = load %struct.reloc_cache*, %struct.reloc_cache** %2, align 8
  %4 = getelementptr inbounds %struct.reloc_cache, %struct.reloc_cache* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = sext i32 %5 to i64
  %7 = load %struct.reloc_cache*, %struct.reloc_cache** %2, align 8
  %8 = getelementptr inbounds %struct.reloc_cache, %struct.reloc_cache* %7, i32 0, i32 1
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = udiv i64 %17, 4
  %19 = icmp uge i64 %6, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @GEM_BUG_ON(i32 %20)
  %22 = load i32, i32* @MI_BATCH_BUFFER_END, align 4
  %23 = load %struct.reloc_cache*, %struct.reloc_cache** %2, align 8
  %24 = getelementptr inbounds %struct.reloc_cache, %struct.reloc_cache* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.reloc_cache*, %struct.reloc_cache** %2, align 8
  %27 = getelementptr inbounds %struct.reloc_cache, %struct.reloc_cache* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %25, i64 %29
  store i32 %22, i32* %30, align 4
  %31 = load %struct.reloc_cache*, %struct.reloc_cache** %2, align 8
  %32 = getelementptr inbounds %struct.reloc_cache, %struct.reloc_cache* %31, i32 0, i32 1
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = load %struct.reloc_cache*, %struct.reloc_cache** %2, align 8
  %39 = getelementptr inbounds %struct.reloc_cache, %struct.reloc_cache* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = call i32 @__i915_gem_object_flush_map(%struct.TYPE_11__* %37, i32 0, i64 %41)
  %43 = load %struct.reloc_cache*, %struct.reloc_cache** %2, align 8
  %44 = getelementptr inbounds %struct.reloc_cache, %struct.reloc_cache* %43, i32 0, i32 1
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = call i32 @i915_gem_object_unpin_map(%struct.TYPE_11__* %49)
  %51 = load %struct.reloc_cache*, %struct.reloc_cache** %2, align 8
  %52 = getelementptr inbounds %struct.reloc_cache, %struct.reloc_cache* %51, i32 0, i32 1
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @intel_gt_chipset_flush(i32 %57)
  %59 = load %struct.reloc_cache*, %struct.reloc_cache** %2, align 8
  %60 = getelementptr inbounds %struct.reloc_cache, %struct.reloc_cache* %59, i32 0, i32 1
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = call i32 @i915_request_add(%struct.TYPE_10__* %61)
  %63 = load %struct.reloc_cache*, %struct.reloc_cache** %2, align 8
  %64 = getelementptr inbounds %struct.reloc_cache, %struct.reloc_cache* %63, i32 0, i32 1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %64, align 8
  ret void
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @__i915_gem_object_flush_map(%struct.TYPE_11__*, i32, i64) #1

declare dso_local i32 @i915_gem_object_unpin_map(%struct.TYPE_11__*) #1

declare dso_local i32 @intel_gt_chipset_flush(i32) #1

declare dso_local i32 @i915_request_add(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
