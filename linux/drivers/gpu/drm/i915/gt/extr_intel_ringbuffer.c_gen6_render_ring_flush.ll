; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_gen6_render_ring_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_gen6_render_ring_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@INTEL_GT_SCRATCH_FIELD_RENDER_FLUSH = common dso_local global i32 0, align 4
@EMIT_FLUSH = common dso_local global i32 0, align 4
@PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH = common dso_local global i32 0, align 4
@PIPE_CONTROL_DEPTH_CACHE_FLUSH = common dso_local global i32 0, align 4
@PIPE_CONTROL_CS_STALL = common dso_local global i32 0, align 4
@EMIT_INVALIDATE = common dso_local global i32 0, align 4
@PIPE_CONTROL_TLB_INVALIDATE = common dso_local global i32 0, align 4
@PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE = common dso_local global i32 0, align 4
@PIPE_CONTROL_TEXTURE_CACHE_INVALIDATE = common dso_local global i32 0, align 4
@PIPE_CONTROL_VF_CACHE_INVALIDATE = common dso_local global i32 0, align 4
@PIPE_CONTROL_CONST_CACHE_INVALIDATE = common dso_local global i32 0, align 4
@PIPE_CONTROL_STATE_CACHE_INVALIDATE = common dso_local global i32 0, align 4
@PIPE_CONTROL_QW_WRITE = common dso_local global i32 0, align 4
@PIPE_CONTROL_GLOBAL_GTT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_request*, i32)* @gen6_render_ring_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen6_render_ring_flush(%struct.i915_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i915_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i915_request* %0, %struct.i915_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %11 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @INTEL_GT_SCRATCH_FIELD_RENDER_FLUSH, align 4
  %16 = call i32 @intel_gt_scratch_offset(i32 %14, i32 %15)
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %17 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %18 = call i32 @gen6_emit_post_sync_nonzero_flush(%struct.i915_request* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %3, align 4
  br label %93

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @EMIT_FLUSH, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load i32, i32* @PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH, align 4
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* @PIPE_CONTROL_DEPTH_CACHE_FLUSH, align 4
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @PIPE_CONTROL_CS_STALL, align 4
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %28, %23
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @EMIT_INVALIDATE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %67

43:                                               ; preds = %38
  %44 = load i32, i32* @PIPE_CONTROL_TLB_INVALIDATE, align 4
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* @PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE, align 4
  %48 = load i32, i32* %8, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* @PIPE_CONTROL_TEXTURE_CACHE_INVALIDATE, align 4
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* @PIPE_CONTROL_VF_CACHE_INVALIDATE, align 4
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* @PIPE_CONTROL_CONST_CACHE_INVALIDATE, align 4
  %57 = load i32, i32* %8, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* @PIPE_CONTROL_STATE_CACHE_INVALIDATE, align 4
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* @PIPE_CONTROL_QW_WRITE, align 4
  %63 = load i32, i32* @PIPE_CONTROL_CS_STALL, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %43, %38
  %68 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %69 = call i32* @intel_ring_begin(%struct.i915_request* %68, i32 4)
  store i32* %69, i32** %7, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = call i64 @IS_ERR(i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @PTR_ERR(i32* %74)
  store i32 %75, i32* %3, align 4
  br label %93

76:                                               ; preds = %67
  %77 = call i32 @GFX_OP_PIPE_CONTROL(i32 4)
  %78 = load i32*, i32** %7, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %7, align 8
  store i32 %77, i32* %78, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %7, align 8
  store i32 %80, i32* %81, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @PIPE_CONTROL_GLOBAL_GTT, align 4
  %85 = or i32 %83, %84
  %86 = load i32*, i32** %7, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %7, align 8
  store i32 %85, i32* %86, align 4
  %88 = load i32*, i32** %7, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %7, align 8
  store i32 0, i32* %88, align 4
  %90 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %91 = load i32*, i32** %7, align 8
  %92 = call i32 @intel_ring_advance(%struct.i915_request* %90, i32* %91)
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %76, %73, %21
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @intel_gt_scratch_offset(i32, i32) #1

declare dso_local i32 @gen6_emit_post_sync_nonzero_flush(%struct.i915_request*) #1

declare dso_local i32* @intel_ring_begin(%struct.i915_request*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @GFX_OP_PIPE_CONTROL(i32) #1

declare dso_local i32 @intel_ring_advance(%struct.i915_request*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
