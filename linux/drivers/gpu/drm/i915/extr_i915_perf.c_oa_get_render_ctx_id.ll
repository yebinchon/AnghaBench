; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_oa_get_render_ctx_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_oa_get_render_ctx_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_perf_stream = type { i32, i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_context = type { i32, i32 }

@GEN8_CTX_ID_WIDTH = common dso_local global i32 0, align 4
@GEN11_SW_CTX_ID_WIDTH = common dso_local global i32 0, align 4
@GEN11_SW_CTX_ID_SHIFT = common dso_local global i32 0, align 4
@GEN11_ENGINE_INSTANCE_WIDTH = common dso_local global i32 0, align 4
@GEN11_ENGINE_INSTANCE_SHIFT = common dso_local global i32 0, align 4
@GEN11_ENGINE_CLASS_WIDTH = common dso_local global i32 0, align 4
@GEN11_ENGINE_CLASS_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"filtering on ctx_id=0x%x ctx_id_mask=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_perf_stream*)* @oa_get_render_ctx_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oa_get_render_ctx_id(%struct.i915_perf_stream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i915_perf_stream*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_context*, align 8
  store %struct.i915_perf_stream* %0, %struct.i915_perf_stream** %3, align 8
  %6 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %3, align 8
  %7 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %6, i32 0, i32 2
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %4, align 8
  %9 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %3, align 8
  %10 = call %struct.intel_context* @oa_pin_context(%struct.i915_perf_stream* %9)
  store %struct.intel_context* %10, %struct.intel_context** %5, align 8
  %11 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %12 = call i64 @IS_ERR(%struct.intel_context* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %16 = call i32 @PTR_ERR(%struct.intel_context* %15)
  store i32 %16, i32* %2, align 4
  br label %117

17:                                               ; preds = %1
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %19 = call i32 @INTEL_GEN(%struct.drm_i915_private* %18)
  switch i32 %19, label %105 [
    i32 7, label %20
    i32 8, label %29
    i32 9, label %29
    i32 10, label %29
    i32 11, label %68
  ]

20:                                               ; preds = %17
  %21 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %22 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @i915_ggtt_offset(i32 %23)
  %25 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %3, align 8
  %26 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %3, align 8
  %28 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  br label %109

29:                                               ; preds = %17, %17, %17
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %31 = call i32 @USES_GUC_SUBMISSION(%struct.drm_i915_private* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %35 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @lower_32_bits(i32 %36)
  %38 = ashr i32 %37, 12
  %39 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %3, align 8
  %40 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @GEN8_CTX_ID_WIDTH, align 4
  %42 = sub i32 %41, 1
  %43 = shl i32 1, %42
  %44 = sub i32 %43, 1
  %45 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %3, align 8
  %46 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %67

47:                                               ; preds = %29
  %48 = load i32, i32* @GEN8_CTX_ID_WIDTH, align 4
  %49 = shl i32 1, %48
  %50 = sub i32 %49, 1
  %51 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %3, align 8
  %52 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %54 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @upper_32_bits(i32 %55)
  %57 = ptrtoint i8* %56 to i32
  %58 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %3, align 8
  %59 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %3, align 8
  %61 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %3, align 8
  %64 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %47, %33
  br label %109

68:                                               ; preds = %17
  %69 = load i32, i32* @GEN11_SW_CTX_ID_WIDTH, align 4
  %70 = shl i32 1, %69
  %71 = sub i32 %70, 1
  %72 = load i32, i32* @GEN11_SW_CTX_ID_SHIFT, align 4
  %73 = sub nsw i32 %72, 32
  %74 = shl i32 %71, %73
  %75 = load i32, i32* @GEN11_ENGINE_INSTANCE_WIDTH, align 4
  %76 = shl i32 1, %75
  %77 = sub i32 %76, 1
  %78 = load i32, i32* @GEN11_ENGINE_INSTANCE_SHIFT, align 4
  %79 = sub nsw i32 %78, 32
  %80 = shl i32 %77, %79
  %81 = or i32 %74, %80
  %82 = load i32, i32* @GEN11_ENGINE_CLASS_WIDTH, align 4
  %83 = shl i32 1, %82
  %84 = sub nsw i32 %83, 1
  %85 = load i32, i32* @GEN11_ENGINE_CLASS_SHIFT, align 4
  %86 = sub nsw i32 %85, 32
  %87 = shl i32 %84, %86
  %88 = or i32 %81, %87
  %89 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %3, align 8
  %90 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %92 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @upper_32_bits(i32 %93)
  %95 = ptrtoint i8* %94 to i32
  %96 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %3, align 8
  %97 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %3, align 8
  %99 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %3, align 8
  %102 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = and i32 %103, %100
  store i32 %104, i32* %102, align 8
  br label %109

105:                                              ; preds = %17
  %106 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %107 = call i32 @INTEL_GEN(%struct.drm_i915_private* %106)
  %108 = call i32 @MISSING_CASE(i32 %107)
  br label %109

109:                                              ; preds = %105, %68, %67, %20
  %110 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %3, align 8
  %111 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %3, align 8
  %114 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %112, i32 %115)
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %109, %14
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local %struct.intel_context* @oa_pin_context(%struct.i915_perf_stream*) #1

declare dso_local i64 @IS_ERR(%struct.intel_context*) #1

declare dso_local i32 @PTR_ERR(%struct.intel_context*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_ggtt_offset(i32) #1

declare dso_local i32 @USES_GUC_SUBMISSION(%struct.drm_i915_private*) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i8* @upper_32_bits(i32) #1

declare dso_local i32 @MISSING_CASE(i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
