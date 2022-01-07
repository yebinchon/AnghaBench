; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_emit_pdps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_emit_pdps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { i32, %struct.TYPE_2__*, %struct.intel_engine_cs* }
%struct.TYPE_2__ = type { i32 }
%struct.intel_engine_cs = type { i32 (%struct.i915_request.0*, i32)*, i32 }
%struct.i915_request.0 = type opaque
%struct.i915_ppgtt = type { i32 }

@EMIT_FLUSH = common dso_local global i32 0, align 4
@EMIT_INVALIDATE = common dso_local global i32 0, align 4
@GEN8_3LVL_PDPES = common dso_local global i32 0, align 4
@MI_LRI_FORCE_POSTED = common dso_local global i32 0, align 4
@MI_NOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_request*)* @emit_pdps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emit_pdps(%struct.i915_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i915_request*, align 8
  %4 = alloca %struct.intel_engine_cs*, align 8
  %5 = alloca %struct.i915_ppgtt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i915_request* %0, %struct.i915_request** %3, align 8
  %11 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %12 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %11, i32 0, i32 2
  %13 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %12, align 8
  store %struct.intel_engine_cs* %13, %struct.intel_engine_cs** %4, align 8
  %14 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %15 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.i915_ppgtt* @i915_vm_to_ppgtt(i32 %18)
  store %struct.i915_ppgtt* %19, %struct.i915_ppgtt** %5, align 8
  %20 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %21 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @intel_vgpu_active(i32 %22)
  %24 = call i32 @GEM_BUG_ON(i32 %23)
  %25 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %26 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %25, i32 0, i32 0
  %27 = load i32 (%struct.i915_request.0*, i32)*, i32 (%struct.i915_request.0*, i32)** %26, align 8
  %28 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %29 = bitcast %struct.i915_request* %28 to %struct.i915_request.0*
  %30 = load i32, i32* @EMIT_FLUSH, align 4
  %31 = call i32 %27(%struct.i915_request.0* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %1
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %128

36:                                               ; preds = %1
  %37 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %38 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %37, i32 0, i32 0
  %39 = load i32 (%struct.i915_request.0*, i32)*, i32 (%struct.i915_request.0*, i32)** %38, align 8
  %40 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %41 = bitcast %struct.i915_request* %40 to %struct.i915_request.0*
  %42 = load i32, i32* @EMIT_INVALIDATE, align 4
  %43 = call i32 %39(%struct.i915_request.0* %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %128

48:                                               ; preds = %36
  %49 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %50 = load i32, i32* @GEN8_3LVL_PDPES, align 4
  %51 = mul nsw i32 4, %50
  %52 = add nsw i32 %51, 2
  %53 = call i32* @intel_ring_begin(%struct.i915_request* %49, i32 %52)
  store i32* %53, i32** %8, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = call i64 @IS_ERR(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @PTR_ERR(i32* %58)
  store i32 %59, i32* %2, align 4
  br label %128

60:                                               ; preds = %48
  %61 = load i32, i32* @GEN8_3LVL_PDPES, align 4
  %62 = mul nsw i32 2, %61
  %63 = call i32 @MI_LOAD_REGISTER_IMM(i32 %62)
  %64 = load i32, i32* @MI_LRI_FORCE_POSTED, align 4
  %65 = or i32 %63, %64
  %66 = load i32*, i32** %8, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %8, align 8
  store i32 %65, i32* %66, align 4
  %68 = load i32, i32* @GEN8_3LVL_PDPES, align 4
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %73, %60
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %7, align 4
  %72 = icmp ne i32 %70, 0
  br i1 %72, label %73, label %102

73:                                               ; preds = %69
  %74 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %5, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @i915_page_dir_dma_addr(%struct.i915_ppgtt* %74, i32 %75)
  store i32 %76, i32* %9, align 4
  %77 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %78 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @GEN8_RING_PDP_UDW(i32 %80, i32 %81)
  %83 = call i8* @i915_mmio_reg_offset(i32 %82)
  %84 = ptrtoint i8* %83 to i32
  %85 = load i32*, i32** %8, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %8, align 8
  store i32 %84, i32* %85, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @upper_32_bits(i32 %87)
  %89 = load i32*, i32** %8, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %8, align 8
  store i32 %88, i32* %89, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @GEN8_RING_PDP_LDW(i32 %91, i32 %92)
  %94 = call i8* @i915_mmio_reg_offset(i32 %93)
  %95 = ptrtoint i8* %94 to i32
  %96 = load i32*, i32** %8, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %8, align 8
  store i32 %95, i32* %96, align 4
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @lower_32_bits(i32 %98)
  %100 = load i32*, i32** %8, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %8, align 8
  store i32 %99, i32* %100, align 4
  br label %69

102:                                              ; preds = %69
  %103 = load i32, i32* @MI_NOOP, align 4
  %104 = load i32*, i32** %8, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %8, align 8
  store i32 %103, i32* %104, align 4
  %106 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %107 = load i32*, i32** %8, align 8
  %108 = call i32 @intel_ring_advance(%struct.i915_request* %106, i32* %107)
  %109 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %110 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %109, i32 0, i32 0
  %111 = load i32 (%struct.i915_request.0*, i32)*, i32 (%struct.i915_request.0*, i32)** %110, align 8
  %112 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %113 = bitcast %struct.i915_request* %112 to %struct.i915_request.0*
  %114 = load i32, i32* @EMIT_FLUSH, align 4
  %115 = call i32 %111(%struct.i915_request.0* %113, i32 %114)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %102
  %119 = load i32, i32* %6, align 4
  store i32 %119, i32* %2, align 4
  br label %128

120:                                              ; preds = %102
  %121 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %122 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %121, i32 0, i32 0
  %123 = load i32 (%struct.i915_request.0*, i32)*, i32 (%struct.i915_request.0*, i32)** %122, align 8
  %124 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %125 = bitcast %struct.i915_request* %124 to %struct.i915_request.0*
  %126 = load i32, i32* @EMIT_INVALIDATE, align 4
  %127 = call i32 %123(%struct.i915_request.0* %125, i32 %126)
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %120, %118, %57, %46, %34
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local %struct.i915_ppgtt* @i915_vm_to_ppgtt(i32) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @intel_vgpu_active(i32) #1

declare dso_local i32* @intel_ring_begin(%struct.i915_request*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @MI_LOAD_REGISTER_IMM(i32) #1

declare dso_local i32 @i915_page_dir_dma_addr(%struct.i915_ppgtt*, i32) #1

declare dso_local i8* @i915_mmio_reg_offset(i32) #1

declare dso_local i32 @GEN8_RING_PDP_UDW(i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @GEN8_RING_PDP_LDW(i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @intel_ring_advance(%struct.i915_request*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
