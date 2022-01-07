; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_gen11_emit_flush_render.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_gen11_emit_flush_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { %struct.intel_engine_cs* }
%struct.intel_engine_cs = type { i32 }

@INTEL_GT_SCRATCH_FIELD_RENDER_FLUSH = common dso_local global i32 0, align 4
@EMIT_FLUSH = common dso_local global i32 0, align 4
@PIPE_CONTROL_CS_STALL = common dso_local global i32 0, align 4
@PIPE_CONTROL_TILE_CACHE_FLUSH = common dso_local global i32 0, align 4
@PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH = common dso_local global i32 0, align 4
@PIPE_CONTROL_DEPTH_CACHE_FLUSH = common dso_local global i32 0, align 4
@PIPE_CONTROL_DC_FLUSH_ENABLE = common dso_local global i32 0, align 4
@PIPE_CONTROL_FLUSH_ENABLE = common dso_local global i32 0, align 4
@PIPE_CONTROL_QW_WRITE = common dso_local global i32 0, align 4
@PIPE_CONTROL_GLOBAL_GTT_IVB = common dso_local global i32 0, align 4
@EMIT_INVALIDATE = common dso_local global i32 0, align 4
@PIPE_CONTROL_COMMAND_CACHE_INVALIDATE = common dso_local global i32 0, align 4
@PIPE_CONTROL_TLB_INVALIDATE = common dso_local global i32 0, align 4
@PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE = common dso_local global i32 0, align 4
@PIPE_CONTROL_TEXTURE_CACHE_INVALIDATE = common dso_local global i32 0, align 4
@PIPE_CONTROL_VF_CACHE_INVALIDATE = common dso_local global i32 0, align 4
@PIPE_CONTROL_CONST_CACHE_INVALIDATE = common dso_local global i32 0, align 4
@PIPE_CONTROL_STATE_CACHE_INVALIDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_request*, i32)* @gen11_emit_flush_render to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen11_emit_flush_render(%struct.i915_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i915_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_engine_cs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.i915_request* %0, %struct.i915_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %13 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %12, i32 0, i32 0
  %14 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %13, align 8
  store %struct.intel_engine_cs* %14, %struct.intel_engine_cs** %6, align 8
  %15 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %6, align 8
  %16 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @INTEL_GT_SCRATCH_FIELD_RENDER_FLUSH, align 4
  %19 = call i32 @intel_gt_scratch_offset(i32 %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @EMIT_FLUSH, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %65

24:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  %25 = load i32, i32* @PIPE_CONTROL_CS_STALL, align 4
  %26 = load i32, i32* %9, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* @PIPE_CONTROL_TILE_CACHE_FLUSH, align 4
  %29 = load i32, i32* %9, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* @PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH, align 4
  %32 = load i32, i32* %9, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* @PIPE_CONTROL_DEPTH_CACHE_FLUSH, align 4
  %35 = load i32, i32* %9, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* @PIPE_CONTROL_DC_FLUSH_ENABLE, align 4
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* @PIPE_CONTROL_FLUSH_ENABLE, align 4
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* @PIPE_CONTROL_QW_WRITE, align 4
  %44 = load i32, i32* %9, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* @PIPE_CONTROL_GLOBAL_GTT_IVB, align 4
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %9, align 4
  %49 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %50 = call i32* @intel_ring_begin(%struct.i915_request* %49, i32 6)
  store i32* %50, i32** %8, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = call i64 @IS_ERR(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %24
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @PTR_ERR(i32* %55)
  store i32 %56, i32* %3, align 4
  br label %118

57:                                               ; preds = %24
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32* @gen8_emit_pipe_control(i32* %58, i32 %59, i32 %60)
  store i32* %61, i32** %8, align 8
  %62 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @intel_ring_advance(%struct.i915_request* %62, i32* %63)
  br label %65

65:                                               ; preds = %57, %2
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @EMIT_INVALIDATE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %117

70:                                               ; preds = %65
  store i32 0, i32* %11, align 4
  %71 = load i32, i32* @PIPE_CONTROL_CS_STALL, align 4
  %72 = load i32, i32* %11, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* @PIPE_CONTROL_COMMAND_CACHE_INVALIDATE, align 4
  %75 = load i32, i32* %11, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* @PIPE_CONTROL_TLB_INVALIDATE, align 4
  %78 = load i32, i32* %11, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* @PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE, align 4
  %81 = load i32, i32* %11, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* @PIPE_CONTROL_TEXTURE_CACHE_INVALIDATE, align 4
  %84 = load i32, i32* %11, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* @PIPE_CONTROL_VF_CACHE_INVALIDATE, align 4
  %87 = load i32, i32* %11, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* @PIPE_CONTROL_CONST_CACHE_INVALIDATE, align 4
  %90 = load i32, i32* %11, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* @PIPE_CONTROL_STATE_CACHE_INVALIDATE, align 4
  %93 = load i32, i32* %11, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* @PIPE_CONTROL_QW_WRITE, align 4
  %96 = load i32, i32* %11, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* @PIPE_CONTROL_GLOBAL_GTT_IVB, align 4
  %99 = load i32, i32* %11, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %11, align 4
  %101 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %102 = call i32* @intel_ring_begin(%struct.i915_request* %101, i32 6)
  store i32* %102, i32** %10, align 8
  %103 = load i32*, i32** %10, align 8
  %104 = call i64 @IS_ERR(i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %70
  %107 = load i32*, i32** %10, align 8
  %108 = call i32 @PTR_ERR(i32* %107)
  store i32 %108, i32* %3, align 4
  br label %118

109:                                              ; preds = %70
  %110 = load i32*, i32** %10, align 8
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %7, align 4
  %113 = call i32* @gen8_emit_pipe_control(i32* %110, i32 %111, i32 %112)
  store i32* %113, i32** %10, align 8
  %114 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %115 = load i32*, i32** %10, align 8
  %116 = call i32 @intel_ring_advance(%struct.i915_request* %114, i32* %115)
  br label %117

117:                                              ; preds = %109, %65
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %117, %106, %54
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @intel_gt_scratch_offset(i32, i32) #1

declare dso_local i32* @intel_ring_begin(%struct.i915_request*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32* @gen8_emit_pipe_control(i32*, i32, i32) #1

declare dso_local i32 @intel_ring_advance(%struct.i915_request*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
