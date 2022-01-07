; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_gen8_emit_init_breadcrumb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_gen8_emit_init_breadcrumb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { i32, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@MI_ARB_CHECK = common dso_local global i32 0, align 4
@MI_NOOP = common dso_local global i32 0, align 4
@MI_STORE_DWORD_IMM_GEN4 = common dso_local global i32 0, align 4
@MI_USE_GGTT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_request*)* @gen8_emit_init_breadcrumb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen8_emit_init_breadcrumb(%struct.i915_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i915_request*, align 8
  %4 = alloca i32*, align 8
  store %struct.i915_request* %0, %struct.i915_request** %3, align 8
  %5 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %6 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @GEM_BUG_ON(i32 %12)
  %14 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %15 = call i32* @intel_ring_begin(%struct.i915_request* %14, i32 6)
  store i32* %15, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @IS_ERR(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @PTR_ERR(i32* %20)
  store i32 %21, i32* %2, align 4
  br label %58

22:                                               ; preds = %1
  %23 = load i32, i32* @MI_ARB_CHECK, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %4, align 8
  store i32 %23, i32* %24, align 4
  %26 = load i32, i32* @MI_NOOP, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %4, align 8
  store i32 %26, i32* %27, align 4
  %29 = load i32, i32* @MI_STORE_DWORD_IMM_GEN4, align 4
  %30 = load i32, i32* @MI_USE_GGTT, align 4
  %31 = or i32 %29, %30
  %32 = load i32*, i32** %4, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %4, align 8
  store i32 %31, i32* %32, align 4
  %34 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %35 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %4, align 8
  store i32 %38, i32* %39, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %4, align 8
  store i32 0, i32* %41, align 4
  %43 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %44 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, 1
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %4, align 8
  store i32 %47, i32* %48, align 4
  %50 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @intel_ring_advance(%struct.i915_request* %50, i32* %51)
  %53 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @intel_ring_offset(%struct.i915_request* %53, i32* %54)
  %56 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %57 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %22, %19
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32* @intel_ring_begin(%struct.i915_request*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @intel_ring_advance(%struct.i915_request*, i32*) #1

declare dso_local i32 @intel_ring_offset(%struct.i915_request*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
