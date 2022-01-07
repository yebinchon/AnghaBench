; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_intel_engine_emit_ctx_wa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_intel_engine_emit_ctx_wa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.i915_request*, i32)*, %struct.i915_wa_list }
%struct.i915_wa_list = type { i32, %struct.i915_wa* }
%struct.i915_wa = type { i32, i32 }

@EMIT_BARRIER = common dso_local global i32 0, align 4
@MI_NOOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_engine_emit_ctx_wa(%struct.i915_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i915_request*, align 8
  %4 = alloca %struct.i915_wa_list*, align 8
  %5 = alloca %struct.i915_wa*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.i915_request* %0, %struct.i915_request** %3, align 8
  %9 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %10 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store %struct.i915_wa_list* %12, %struct.i915_wa_list** %4, align 8
  %13 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %14 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %98

18:                                               ; preds = %1
  %19 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %20 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.i915_request*, i32)*, i32 (%struct.i915_request*, i32)** %22, align 8
  %24 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %25 = load i32, i32* @EMIT_BARRIER, align 4
  %26 = call i32 %23(%struct.i915_request* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %2, align 4
  br label %98

31:                                               ; preds = %18
  %32 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %33 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %34 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = mul nsw i32 %35, 2
  %37 = add nsw i32 %36, 2
  %38 = call i32* @intel_ring_begin(%struct.i915_request* %32, i32 %37)
  store i32* %38, i32** %7, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i64 @IS_ERR(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @PTR_ERR(i32* %43)
  store i32 %44, i32* %2, align 4
  br label %98

45:                                               ; preds = %31
  %46 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %47 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @MI_LOAD_REGISTER_IMM(i32 %48)
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  store i32 0, i32* %6, align 4
  %52 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %53 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %52, i32 0, i32 1
  %54 = load %struct.i915_wa*, %struct.i915_wa** %53, align 8
  store %struct.i915_wa* %54, %struct.i915_wa** %5, align 8
  br label %55

55:                                               ; preds = %73, %45
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %58 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ult i32 %56, %59
  br i1 %60, label %61, label %78

61:                                               ; preds = %55
  %62 = load %struct.i915_wa*, %struct.i915_wa** %5, align 8
  %63 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @i915_mmio_reg_offset(i32 %64)
  %66 = load i32*, i32** %7, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %7, align 8
  store i32 %65, i32* %66, align 4
  %68 = load %struct.i915_wa*, %struct.i915_wa** %5, align 8
  %69 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %7, align 8
  store i32 %70, i32* %71, align 4
  br label %73

73:                                               ; preds = %61
  %74 = load i32, i32* %6, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %6, align 4
  %76 = load %struct.i915_wa*, %struct.i915_wa** %5, align 8
  %77 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %76, i32 1
  store %struct.i915_wa* %77, %struct.i915_wa** %5, align 8
  br label %55

78:                                               ; preds = %55
  %79 = load i32, i32* @MI_NOOP, align 4
  %80 = load i32*, i32** %7, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %7, align 8
  store i32 %79, i32* %80, align 4
  %82 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @intel_ring_advance(%struct.i915_request* %82, i32* %83)
  %85 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %86 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32 (%struct.i915_request*, i32)*, i32 (%struct.i915_request*, i32)** %88, align 8
  %90 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %91 = load i32, i32* @EMIT_BARRIER, align 4
  %92 = call i32 %89(%struct.i915_request* %90, i32 %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %78
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %2, align 4
  br label %98

97:                                               ; preds = %78
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %97, %95, %42, %29, %17
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32* @intel_ring_begin(%struct.i915_request*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @MI_LOAD_REGISTER_IMM(i32) #1

declare dso_local i32 @i915_mmio_reg_offset(i32) #1

declare dso_local i32 @intel_ring_advance(%struct.i915_request*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
