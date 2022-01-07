; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_gen7_rcs_emit_breadcrumb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_gen7_rcs_emit_breadcrumb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH = common dso_local global i32 0, align 4
@PIPE_CONTROL_DEPTH_CACHE_FLUSH = common dso_local global i32 0, align 4
@PIPE_CONTROL_DC_FLUSH_ENABLE = common dso_local global i32 0, align 4
@PIPE_CONTROL_FLUSH_ENABLE = common dso_local global i32 0, align 4
@PIPE_CONTROL_QW_WRITE = common dso_local global i32 0, align 4
@PIPE_CONTROL_GLOBAL_GTT_IVB = common dso_local global i32 0, align 4
@PIPE_CONTROL_CS_STALL = common dso_local global i32 0, align 4
@MI_USER_INTERRUPT = common dso_local global i32 0, align 4
@MI_NOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.i915_request*, i32*)* @gen7_rcs_emit_breadcrumb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @gen7_rcs_emit_breadcrumb(%struct.i915_request* %0, i32* %1) #0 {
  %3 = alloca %struct.i915_request*, align 8
  %4 = alloca i32*, align 8
  store %struct.i915_request* %0, %struct.i915_request** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = call i32 @GFX_OP_PIPE_CONTROL(i32 4)
  %6 = load i32*, i32** %4, align 8
  %7 = getelementptr inbounds i32, i32* %6, i32 1
  store i32* %7, i32** %4, align 8
  store i32 %5, i32* %6, align 4
  %8 = load i32, i32* @PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH, align 4
  %9 = load i32, i32* @PIPE_CONTROL_DEPTH_CACHE_FLUSH, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @PIPE_CONTROL_DC_FLUSH_ENABLE, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @PIPE_CONTROL_FLUSH_ENABLE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @PIPE_CONTROL_QW_WRITE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @PIPE_CONTROL_GLOBAL_GTT_IVB, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @PIPE_CONTROL_CS_STALL, align 4
  %20 = or i32 %18, %19
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %4, align 8
  store i32 %20, i32* %21, align 4
  %23 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %24 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %23, i32 0, i32 3
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %4, align 8
  store i32 %27, i32* %28, align 4
  %30 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %31 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %4, align 8
  store i32 %33, i32* %34, align 4
  %36 = load i32, i32* @MI_USER_INTERRUPT, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %4, align 8
  store i32 %36, i32* %37, align 4
  %39 = load i32, i32* @MI_NOOP, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %4, align 8
  store i32 %39, i32* %40, align 4
  %42 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @intel_ring_offset(%struct.i915_request* %42, i32* %43)
  %45 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %46 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %48 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %51 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @assert_ring_tail_valid(i32 %49, i32 %52)
  %54 = load i32*, i32** %4, align 8
  ret i32* %54
}

declare dso_local i32 @GFX_OP_PIPE_CONTROL(i32) #1

declare dso_local i32 @intel_ring_offset(%struct.i915_request*, i32*) #1

declare dso_local i32 @assert_ring_tail_valid(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
