; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_load_pd_dir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_load_pd_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { %struct.intel_engine_cs* }
%struct.intel_engine_cs = type { i32 }
%struct.i915_ppgtt = type { i32 }
%struct.TYPE_2__ = type { i32 }

@PP_DIR_DCLV_2G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_request*, %struct.i915_ppgtt*)* @load_pd_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_pd_dir(%struct.i915_request* %0, %struct.i915_ppgtt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i915_request*, align 8
  %5 = alloca %struct.i915_ppgtt*, align 8
  %6 = alloca %struct.intel_engine_cs*, align 8
  %7 = alloca i32*, align 8
  store %struct.i915_request* %0, %struct.i915_request** %4, align 8
  store %struct.i915_ppgtt* %1, %struct.i915_ppgtt** %5, align 8
  %8 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %9 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %8, i32 0, i32 0
  %10 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %9, align 8
  store %struct.intel_engine_cs* %10, %struct.intel_engine_cs** %6, align 8
  %11 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %12 = call i32* @intel_ring_begin(%struct.i915_request* %11, i32 6)
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i64 @IS_ERR(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @PTR_ERR(i32* %17)
  store i32 %18, i32* %3, align 4
  br label %59

19:                                               ; preds = %2
  %20 = call i8* @MI_LOAD_REGISTER_IMM(i32 1)
  %21 = ptrtoint i8* %20 to i32
  %22 = load i32*, i32** %7, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %7, align 8
  store i32 %21, i32* %22, align 4
  %24 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %6, align 8
  %25 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @RING_PP_DIR_DCLV(i32 %26)
  %28 = call i8* @i915_mmio_reg_offset(i32 %27)
  %29 = ptrtoint i8* %28 to i32
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  %32 = load i32, i32* @PP_DIR_DCLV_2G, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  %35 = call i8* @MI_LOAD_REGISTER_IMM(i32 1)
  %36 = ptrtoint i8* %35 to i32
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  %39 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %6, align 8
  %40 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @RING_PP_DIR_BASE(i32 %41)
  %43 = call i8* @i915_mmio_reg_offset(i32 %42)
  %44 = ptrtoint i8* %43 to i32
  %45 = load i32*, i32** %7, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  %47 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %5, align 8
  %48 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.TYPE_2__* @px_base(i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 10
  %54 = load i32*, i32** %7, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %7, align 8
  store i32 %53, i32* %54, align 4
  %56 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @intel_ring_advance(%struct.i915_request* %56, i32* %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %19, %16
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32* @intel_ring_begin(%struct.i915_request*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i8* @MI_LOAD_REGISTER_IMM(i32) #1

declare dso_local i8* @i915_mmio_reg_offset(i32) #1

declare dso_local i32 @RING_PP_DIR_DCLV(i32) #1

declare dso_local i32 @RING_PP_DIR_BASE(i32) #1

declare dso_local %struct.TYPE_2__* @px_base(i32) #1

declare dso_local i32 @intel_ring_advance(%struct.i915_request*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
