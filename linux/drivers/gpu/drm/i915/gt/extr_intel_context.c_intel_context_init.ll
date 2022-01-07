; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_context.c_intel_context_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_context.c_intel_context_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_context = type { i32, i32, i32, i32, i32, i32, i64, %struct.intel_engine_cs*, i32, i32, %struct.i915_gem_context*, i32 }
%struct.i915_gem_context = type { i32, i64, i64 }
%struct.intel_engine_cs = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@SZ_16K = common dso_local global i32 0, align 4
@__intel_context_active = common dso_local global i32 0, align 4
@__intel_context_retire = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_context_init(%struct.intel_context* %0, %struct.i915_gem_context* %1, %struct.intel_engine_cs* %2) #0 {
  %4 = alloca %struct.intel_context*, align 8
  %5 = alloca %struct.i915_gem_context*, align 8
  %6 = alloca %struct.intel_engine_cs*, align 8
  store %struct.intel_context* %0, %struct.intel_context** %4, align 8
  store %struct.i915_gem_context* %1, %struct.i915_gem_context** %5, align 8
  store %struct.intel_engine_cs* %2, %struct.intel_engine_cs** %6, align 8
  %7 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %6, align 8
  %8 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @GEM_BUG_ON(i32 %12)
  %14 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  %15 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %14, i32 0, i32 11
  %16 = call i32 @kref_init(i32* %15)
  %17 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %18 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  %19 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %18, i32 0, i32 10
  store %struct.i915_gem_context* %17, %struct.i915_gem_context** %19, align 8
  %20 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %21 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = inttoptr i64 %22 to i32*
  br label %33

26:                                               ; preds = %3
  %27 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %6, align 8
  %28 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  br label %33

33:                                               ; preds = %26, %24
  %34 = phi i32* [ %25, %24 ], [ %32, %26 ]
  %35 = call i32 @i915_vm_get(i32* %34)
  %36 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  %37 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %36, i32 0, i32 9
  store i32 %35, i32* %37, align 4
  %38 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %39 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %33
  %43 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %44 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @intel_timeline_get(i64 %45)
  %47 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  %48 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %47, i32 0, i32 8
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %42, %33
  %50 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %6, align 8
  %51 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  %52 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %51, i32 0, i32 7
  store %struct.intel_engine_cs* %50, %struct.intel_engine_cs** %52, align 8
  %53 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %6, align 8
  %54 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  %57 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %56, i32 0, i32 6
  store i64 %55, i64* %57, align 8
  %58 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %6, align 8
  %59 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  %62 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @SZ_16K, align 4
  %64 = call i32 @__intel_context_ring_size(i32 %63)
  %65 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  %66 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  %68 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %67, i32 0, i32 3
  %69 = call i32 @INIT_LIST_HEAD(i32* %68)
  %70 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  %71 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %70, i32 0, i32 2
  %72 = call i32 @INIT_LIST_HEAD(i32* %71)
  %73 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  %74 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %73, i32 0, i32 1
  %75 = call i32 @mutex_init(i32* %74)
  %76 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %77 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  %80 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %79, i32 0, i32 0
  %81 = load i32, i32* @__intel_context_active, align 4
  %82 = load i32, i32* @__intel_context_retire, align 4
  %83 = call i32 @i915_active_init(i32 %78, i32* %80, i32 %81, i32 %82)
  ret void
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @i915_vm_get(i32*) #1

declare dso_local i32 @intel_timeline_get(i64) #1

declare dso_local i32 @__intel_context_ring_size(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @i915_active_init(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
