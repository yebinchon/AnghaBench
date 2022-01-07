; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_emit_ppgtt_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_emit_ppgtt_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { %struct.intel_engine_cs*, %struct.TYPE_2__* }
%struct.intel_engine_cs = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.i915_address_space* }
%struct.i915_address_space = type { i32 }
%struct.i915_ppgtt = type { i32 }

@MI_NOOP = common dso_local global i8* null, align 8
@GEN8_3LVL_PDPES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_request*, i8*)* @emit_ppgtt_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emit_ppgtt_update(%struct.i915_request* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i915_request*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.i915_address_space*, align 8
  %7 = alloca %struct.intel_engine_cs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.i915_ppgtt*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.i915_ppgtt*, align 8
  %14 = alloca i32, align 4
  store %struct.i915_request* %0, %struct.i915_request** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %16 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.i915_address_space*, %struct.i915_address_space** %18, align 8
  store %struct.i915_address_space* %19, %struct.i915_address_space** %6, align 8
  %20 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %21 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %20, i32 0, i32 0
  %22 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %21, align 8
  store %struct.intel_engine_cs* %22, %struct.intel_engine_cs** %7, align 8
  %23 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %7, align 8
  %24 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load %struct.i915_address_space*, %struct.i915_address_space** %6, align 8
  %27 = call i64 @i915_vm_is_4lvl(%struct.i915_address_space* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %78

29:                                               ; preds = %2
  %30 = load %struct.i915_address_space*, %struct.i915_address_space** %6, align 8
  %31 = call %struct.i915_ppgtt* @i915_vm_to_ppgtt(%struct.i915_address_space* %30)
  store %struct.i915_ppgtt* %31, %struct.i915_ppgtt** %11, align 8
  %32 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %11, align 8
  %33 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @px_dma(i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %37 = call i32* @intel_ring_begin(%struct.i915_request* %36, i32 6)
  store i32* %37, i32** %9, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = call i64 @IS_ERR(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @PTR_ERR(i32* %42)
  store i32 %43, i32* %3, align 4
  br label %152

44:                                               ; preds = %29
  %45 = call i8* @MI_LOAD_REGISTER_IMM(i32 2)
  %46 = ptrtoint i8* %45 to i32
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %9, align 8
  store i32 %46, i32* %47, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @GEN8_RING_PDP_UDW(i32 %49, i32 0)
  %51 = call i8* @i915_mmio_reg_offset(i32 %50)
  %52 = ptrtoint i8* %51 to i32
  %53 = load i32*, i32** %9, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i8* @upper_32_bits(i32 %55)
  %57 = ptrtoint i8* %56 to i32
  %58 = load i32*, i32** %9, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %9, align 8
  store i32 %57, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @GEN8_RING_PDP_LDW(i32 %60, i32 0)
  %62 = call i8* @i915_mmio_reg_offset(i32 %61)
  %63 = ptrtoint i8* %62 to i32
  %64 = load i32*, i32** %9, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %9, align 8
  store i32 %63, i32* %64, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i8* @lower_32_bits(i32 %66)
  %68 = ptrtoint i8* %67 to i32
  %69 = load i32*, i32** %9, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %9, align 8
  store i32 %68, i32* %69, align 4
  %71 = load i8*, i8** @MI_NOOP, align 8
  %72 = ptrtoint i8* %71 to i32
  %73 = load i32*, i32** %9, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %9, align 8
  store i32 %72, i32* %73, align 4
  %75 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = call i32 @intel_ring_advance(%struct.i915_request* %75, i32* %76)
  br label %151

78:                                               ; preds = %2
  %79 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %7, align 8
  %80 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @HAS_LOGICAL_RING_CONTEXTS(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %146

84:                                               ; preds = %78
  %85 = load %struct.i915_address_space*, %struct.i915_address_space** %6, align 8
  %86 = call %struct.i915_ppgtt* @i915_vm_to_ppgtt(%struct.i915_address_space* %85)
  store %struct.i915_ppgtt* %86, %struct.i915_ppgtt** %13, align 8
  %87 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %88 = load i32, i32* @GEN8_3LVL_PDPES, align 4
  %89 = mul nsw i32 4, %88
  %90 = add nsw i32 %89, 2
  %91 = call i32* @intel_ring_begin(%struct.i915_request* %87, i32 %90)
  store i32* %91, i32** %9, align 8
  %92 = load i32*, i32** %9, align 8
  %93 = call i64 @IS_ERR(i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %84
  %96 = load i32*, i32** %9, align 8
  %97 = call i32 @PTR_ERR(i32* %96)
  store i32 %97, i32* %3, align 4
  br label %152

98:                                               ; preds = %84
  %99 = load i32, i32* @GEN8_3LVL_PDPES, align 4
  %100 = mul nsw i32 2, %99
  %101 = call i8* @MI_LOAD_REGISTER_IMM(i32 %100)
  %102 = ptrtoint i8* %101 to i32
  %103 = load i32*, i32** %9, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %9, align 8
  store i32 %102, i32* %103, align 4
  %105 = load i32, i32* @GEN8_3LVL_PDPES, align 4
  store i32 %105, i32* %10, align 4
  br label %106

106:                                              ; preds = %110, %98
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %10, align 4
  %109 = icmp ne i32 %107, 0
  br i1 %109, label %110, label %138

110:                                              ; preds = %106
  %111 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %13, align 8
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @i915_page_dir_dma_addr(%struct.i915_ppgtt* %111, i32 %112)
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @GEN8_RING_PDP_UDW(i32 %114, i32 %115)
  %117 = call i8* @i915_mmio_reg_offset(i32 %116)
  %118 = ptrtoint i8* %117 to i32
  %119 = load i32*, i32** %9, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %9, align 8
  store i32 %118, i32* %119, align 4
  %121 = load i32, i32* %14, align 4
  %122 = call i8* @upper_32_bits(i32 %121)
  %123 = ptrtoint i8* %122 to i32
  %124 = load i32*, i32** %9, align 8
  %125 = getelementptr inbounds i32, i32* %124, i32 1
  store i32* %125, i32** %9, align 8
  store i32 %123, i32* %124, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %10, align 4
  %128 = call i32 @GEN8_RING_PDP_LDW(i32 %126, i32 %127)
  %129 = call i8* @i915_mmio_reg_offset(i32 %128)
  %130 = ptrtoint i8* %129 to i32
  %131 = load i32*, i32** %9, align 8
  %132 = getelementptr inbounds i32, i32* %131, i32 1
  store i32* %132, i32** %9, align 8
  store i32 %130, i32* %131, align 4
  %133 = load i32, i32* %14, align 4
  %134 = call i8* @lower_32_bits(i32 %133)
  %135 = ptrtoint i8* %134 to i32
  %136 = load i32*, i32** %9, align 8
  %137 = getelementptr inbounds i32, i32* %136, i32 1
  store i32* %137, i32** %9, align 8
  store i32 %135, i32* %136, align 4
  br label %106

138:                                              ; preds = %106
  %139 = load i8*, i8** @MI_NOOP, align 8
  %140 = ptrtoint i8* %139 to i32
  %141 = load i32*, i32** %9, align 8
  %142 = getelementptr inbounds i32, i32* %141, i32 1
  store i32* %142, i32** %9, align 8
  store i32 %140, i32* %141, align 4
  %143 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %144 = load i32*, i32** %9, align 8
  %145 = call i32 @intel_ring_advance(%struct.i915_request* %143, i32* %144)
  br label %150

146:                                              ; preds = %78
  %147 = load %struct.i915_address_space*, %struct.i915_address_space** %6, align 8
  %148 = call %struct.i915_ppgtt* @i915_vm_to_ppgtt(%struct.i915_address_space* %147)
  %149 = call i32 @gen6_ppgtt_pin(%struct.i915_ppgtt* %148)
  br label %150

150:                                              ; preds = %146, %138
  br label %151

151:                                              ; preds = %150, %44
  store i32 0, i32* %3, align 4
  br label %152

152:                                              ; preds = %151, %95, %41
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i64 @i915_vm_is_4lvl(%struct.i915_address_space*) #1

declare dso_local %struct.i915_ppgtt* @i915_vm_to_ppgtt(%struct.i915_address_space*) #1

declare dso_local i32 @px_dma(i32) #1

declare dso_local i32* @intel_ring_begin(%struct.i915_request*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i8* @MI_LOAD_REGISTER_IMM(i32) #1

declare dso_local i8* @i915_mmio_reg_offset(i32) #1

declare dso_local i32 @GEN8_RING_PDP_UDW(i32, i32) #1

declare dso_local i8* @upper_32_bits(i32) #1

declare dso_local i32 @GEN8_RING_PDP_LDW(i32, i32) #1

declare dso_local i8* @lower_32_bits(i32) #1

declare dso_local i32 @intel_ring_advance(%struct.i915_request*, i32*) #1

declare dso_local i64 @HAS_LOGICAL_RING_CONTEXTS(i32) #1

declare dso_local i32 @i915_page_dir_dma_addr(%struct.i915_ppgtt*, i32) #1

declare dso_local i32 @gen6_ppgtt_pin(%struct.i915_ppgtt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
