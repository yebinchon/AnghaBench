; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_gen7_render_ring_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_gen7_render_ring_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@INTEL_GT_SCRATCH_FIELD_RENDER_FLUSH = common dso_local global i32 0, align 4
@PIPE_CONTROL_CS_STALL = common dso_local global i32 0, align 4
@EMIT_FLUSH = common dso_local global i32 0, align 4
@PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH = common dso_local global i32 0, align 4
@PIPE_CONTROL_DEPTH_CACHE_FLUSH = common dso_local global i32 0, align 4
@PIPE_CONTROL_DC_FLUSH_ENABLE = common dso_local global i32 0, align 4
@PIPE_CONTROL_FLUSH_ENABLE = common dso_local global i32 0, align 4
@EMIT_INVALIDATE = common dso_local global i32 0, align 4
@PIPE_CONTROL_TLB_INVALIDATE = common dso_local global i32 0, align 4
@PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE = common dso_local global i32 0, align 4
@PIPE_CONTROL_TEXTURE_CACHE_INVALIDATE = common dso_local global i32 0, align 4
@PIPE_CONTROL_VF_CACHE_INVALIDATE = common dso_local global i32 0, align 4
@PIPE_CONTROL_CONST_CACHE_INVALIDATE = common dso_local global i32 0, align 4
@PIPE_CONTROL_STATE_CACHE_INVALIDATE = common dso_local global i32 0, align 4
@PIPE_CONTROL_MEDIA_STATE_CLEAR = common dso_local global i32 0, align 4
@PIPE_CONTROL_QW_WRITE = common dso_local global i32 0, align 4
@PIPE_CONTROL_GLOBAL_GTT_IVB = common dso_local global i32 0, align 4
@PIPE_CONTROL_STALL_AT_SCOREBOARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_request*, i32)* @gen7_render_ring_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen7_render_ring_flush(%struct.i915_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i915_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.i915_request* %0, %struct.i915_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %10 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @INTEL_GT_SCRATCH_FIELD_RENDER_FLUSH, align 4
  %15 = call i32 @intel_gt_scratch_offset(i32 %13, i32 %14)
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %16 = load i32, i32* @PIPE_CONTROL_CS_STALL, align 4
  %17 = load i32, i32* %8, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @EMIT_FLUSH, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %2
  %24 = load i32, i32* @PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH, align 4
  %25 = load i32, i32* %8, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* @PIPE_CONTROL_DEPTH_CACHE_FLUSH, align 4
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* @PIPE_CONTROL_DC_FLUSH_ENABLE, align 4
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* @PIPE_CONTROL_FLUSH_ENABLE, align 4
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %23, %2
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @EMIT_INVALIDATE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %74

41:                                               ; preds = %36
  %42 = load i32, i32* @PIPE_CONTROL_TLB_INVALIDATE, align 4
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* @PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE, align 4
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* @PIPE_CONTROL_TEXTURE_CACHE_INVALIDATE, align 4
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* @PIPE_CONTROL_VF_CACHE_INVALIDATE, align 4
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* @PIPE_CONTROL_CONST_CACHE_INVALIDATE, align 4
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* @PIPE_CONTROL_STATE_CACHE_INVALIDATE, align 4
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* @PIPE_CONTROL_MEDIA_STATE_CLEAR, align 4
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* @PIPE_CONTROL_QW_WRITE, align 4
  %64 = load i32, i32* %8, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* @PIPE_CONTROL_GLOBAL_GTT_IVB, align 4
  %67 = load i32, i32* %8, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* @PIPE_CONTROL_STALL_AT_SCOREBOARD, align 4
  %70 = load i32, i32* %8, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %8, align 4
  %72 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %73 = call i32 @gen7_render_ring_cs_stall_wa(%struct.i915_request* %72)
  br label %74

74:                                               ; preds = %41, %36
  %75 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %76 = call i32* @intel_ring_begin(%struct.i915_request* %75, i32 4)
  store i32* %76, i32** %7, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = call i64 @IS_ERR(i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i32*, i32** %7, align 8
  %82 = call i32 @PTR_ERR(i32* %81)
  store i32 %82, i32* %3, align 4
  br label %98

83:                                               ; preds = %74
  %84 = call i32 @GFX_OP_PIPE_CONTROL(i32 4)
  %85 = load i32*, i32** %7, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %7, align 8
  store i32 %84, i32* %85, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32*, i32** %7, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %7, align 8
  store i32 %87, i32* %88, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32*, i32** %7, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %7, align 8
  store i32 %90, i32* %91, align 4
  %93 = load i32*, i32** %7, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %7, align 8
  store i32 0, i32* %93, align 4
  %95 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = call i32 @intel_ring_advance(%struct.i915_request* %95, i32* %96)
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %83, %80
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @intel_gt_scratch_offset(i32, i32) #1

declare dso_local i32 @gen7_render_ring_cs_stall_wa(%struct.i915_request*) #1

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
