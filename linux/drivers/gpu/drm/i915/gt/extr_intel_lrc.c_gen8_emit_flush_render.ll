; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_gen8_emit_flush_render.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_gen8_emit_flush_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { i32, %struct.intel_engine_cs* }
%struct.intel_engine_cs = type { i32 }

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
@PIPE_CONTROL_QW_WRITE = common dso_local global i32 0, align 4
@PIPE_CONTROL_GLOBAL_GTT_IVB = common dso_local global i32 0, align 4
@KBL_REVID_B0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_request*, i32)* @gen8_emit_flush_render to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen8_emit_flush_render(%struct.i915_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i915_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_engine_cs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i915_request* %0, %struct.i915_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %14 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %13, i32 0, i32 1
  %15 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %14, align 8
  store %struct.intel_engine_cs* %15, %struct.intel_engine_cs** %6, align 8
  %16 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %6, align 8
  %17 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @INTEL_GT_SCRATCH_FIELD_RENDER_FLUSH, align 4
  %20 = call i32 @intel_gt_scratch_offset(i32 %18, i32 %19)
  store i32 %20, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %21 = load i32, i32* @PIPE_CONTROL_CS_STALL, align 4
  %22 = load i32, i32* %11, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @EMIT_FLUSH, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %2
  %29 = load i32, i32* @PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH, align 4
  %30 = load i32, i32* %11, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* @PIPE_CONTROL_DEPTH_CACHE_FLUSH, align 4
  %33 = load i32, i32* %11, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* @PIPE_CONTROL_DC_FLUSH_ENABLE, align 4
  %36 = load i32, i32* %11, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* @PIPE_CONTROL_FLUSH_ENABLE, align 4
  %39 = load i32, i32* %11, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %28, %2
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @EMIT_INVALIDATE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %86

46:                                               ; preds = %41
  %47 = load i32, i32* @PIPE_CONTROL_TLB_INVALIDATE, align 4
  %48 = load i32, i32* %11, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* @PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE, align 4
  %51 = load i32, i32* %11, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* @PIPE_CONTROL_TEXTURE_CACHE_INVALIDATE, align 4
  %54 = load i32, i32* %11, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* @PIPE_CONTROL_VF_CACHE_INVALIDATE, align 4
  %57 = load i32, i32* %11, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* @PIPE_CONTROL_CONST_CACHE_INVALIDATE, align 4
  %60 = load i32, i32* %11, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* @PIPE_CONTROL_STATE_CACHE_INVALIDATE, align 4
  %63 = load i32, i32* %11, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* @PIPE_CONTROL_QW_WRITE, align 4
  %66 = load i32, i32* %11, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* @PIPE_CONTROL_GLOBAL_GTT_IVB, align 4
  %69 = load i32, i32* %11, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %11, align 4
  %71 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %72 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @IS_GEN(i32 %73, i32 9)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %46
  store i32 1, i32* %8, align 4
  br label %77

77:                                               ; preds = %76, %46
  %78 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %79 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @KBL_REVID_B0, align 4
  %82 = call i64 @IS_KBL_REVID(i32 %80, i32 0, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  store i32 1, i32* %9, align 4
  br label %85

85:                                               ; preds = %84, %77
  br label %86

86:                                               ; preds = %85, %41
  store i32 6, i32* %12, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, 6
  store i32 %91, i32* %12, align 4
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, 12
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %95, %92
  %99 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %100 = load i32, i32* %12, align 4
  %101 = call i32* @intel_ring_begin(%struct.i915_request* %99, i32 %100)
  store i32* %101, i32** %10, align 8
  %102 = load i32*, i32** %10, align 8
  %103 = call i64 @IS_ERR(i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = load i32*, i32** %10, align 8
  %107 = call i32 @PTR_ERR(i32* %106)
  store i32 %107, i32* %3, align 4
  br label %136

108:                                              ; preds = %98
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i32*, i32** %10, align 8
  %113 = call i32* @gen8_emit_pipe_control(i32* %112, i32 0, i32 0)
  store i32* %113, i32** %10, align 8
  br label %114

114:                                              ; preds = %111, %108
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load i32*, i32** %10, align 8
  %119 = load i32, i32* @PIPE_CONTROL_DC_FLUSH_ENABLE, align 4
  %120 = call i32* @gen8_emit_pipe_control(i32* %118, i32 %119, i32 0)
  store i32* %120, i32** %10, align 8
  br label %121

121:                                              ; preds = %117, %114
  %122 = load i32*, i32** %10, align 8
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %7, align 4
  %125 = call i32* @gen8_emit_pipe_control(i32* %122, i32 %123, i32 %124)
  store i32* %125, i32** %10, align 8
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %121
  %129 = load i32*, i32** %10, align 8
  %130 = load i32, i32* @PIPE_CONTROL_CS_STALL, align 4
  %131 = call i32* @gen8_emit_pipe_control(i32* %129, i32 %130, i32 0)
  store i32* %131, i32** %10, align 8
  br label %132

132:                                              ; preds = %128, %121
  %133 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %134 = load i32*, i32** %10, align 8
  %135 = call i32 @intel_ring_advance(%struct.i915_request* %133, i32* %134)
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %132, %105
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @intel_gt_scratch_offset(i32, i32) #1

declare dso_local i64 @IS_GEN(i32, i32) #1

declare dso_local i64 @IS_KBL_REVID(i32, i32, i32) #1

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
