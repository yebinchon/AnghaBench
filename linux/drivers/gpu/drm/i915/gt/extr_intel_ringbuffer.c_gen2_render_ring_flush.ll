; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_gen2_render_ring_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_gen2_render_ring_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MI_FLUSH = common dso_local global i32 0, align 4
@EMIT_INVALIDATE = common dso_local global i32 0, align 4
@MI_READ_FLUSH = common dso_local global i32 0, align 4
@EMIT_FLUSH = common dso_local global i32 0, align 4
@MI_STORE_DWORD_IMM = common dso_local global i32 0, align 4
@MI_MEM_VIRTUAL = common dso_local global i32 0, align 4
@INTEL_GT_SCRATCH_FIELD_DEFAULT = common dso_local global i32 0, align 4
@MI_NO_WRITE_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_request*, i32)* @gen2_render_ring_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen2_render_ring_flush(%struct.i915_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i915_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.i915_request* %0, %struct.i915_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @MI_FLUSH, align 4
  store i32 %9, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @EMIT_INVALIDATE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @MI_READ_FLUSH, align 4
  %16 = load i32, i32* %7, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %14, %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @EMIT_FLUSH, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 4, i32* %6, align 4
  br label %24

24:                                               ; preds = %23, %18
  %25 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = mul i32 3, %26
  %28 = add i32 2, %27
  %29 = call i32* @intel_ring_begin(%struct.i915_request* %25, i32 %28)
  store i32* %29, i32** %8, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i64 @IS_ERR(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @PTR_ERR(i32* %34)
  store i32 %35, i32* %3, align 4
  br label %70

36:                                               ; preds = %24
  %37 = load i32, i32* %7, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %8, align 8
  store i32 %37, i32* %38, align 4
  br label %40

40:                                               ; preds = %44, %36
  %41 = load i32, i32* %6, align 4
  %42 = add i32 %41, -1
  store i32 %42, i32* %6, align 4
  %43 = icmp ne i32 %41, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %40
  %45 = load i32, i32* @MI_STORE_DWORD_IMM, align 4
  %46 = load i32, i32* @MI_MEM_VIRTUAL, align 4
  %47 = or i32 %45, %46
  %48 = load i32*, i32** %8, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %8, align 8
  store i32 %47, i32* %48, align 4
  %50 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %51 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @INTEL_GT_SCRATCH_FIELD_DEFAULT, align 4
  %56 = call i32 @intel_gt_scratch_offset(i32 %54, i32 %55)
  %57 = load i32*, i32** %8, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %8, align 8
  store i32 %56, i32* %57, align 4
  %59 = load i32*, i32** %8, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %8, align 8
  store i32 0, i32* %59, align 4
  br label %40

61:                                               ; preds = %40
  %62 = load i32, i32* @MI_FLUSH, align 4
  %63 = load i32, i32* @MI_NO_WRITE_FLUSH, align 4
  %64 = or i32 %62, %63
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %8, align 8
  store i32 %64, i32* %65, align 4
  %67 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @intel_ring_advance(%struct.i915_request* %67, i32* %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %61, %33
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32* @intel_ring_begin(%struct.i915_request*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @intel_gt_scratch_offset(i32, i32) #1

declare dso_local i32 @intel_ring_advance(%struct.i915_request*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
