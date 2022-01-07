; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_setup_rcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_setup_rcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32, i32, i32, i8*, i32, i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@GT_RENDER_L3_PARITY_ERROR_INTERRUPT = common dso_local global i32 0, align 4
@GT_RENDER_USER_INTERRUPT = common dso_local global i32 0, align 4
@gen7_render_ring_flush = common dso_local global i8* null, align 8
@gen7_rcs_emit_breadcrumb = common dso_local global i32 0, align 4
@gen6_render_ring_flush = common dso_local global i8* null, align 8
@gen6_rcs_emit_breadcrumb = common dso_local global i32 0, align 4
@gen4_render_ring_flush = common dso_local global i8* null, align 8
@gen2_render_ring_flush = common dso_local global i8* null, align 8
@I915_USER_INTERRUPT = common dso_local global i32 0, align 4
@hsw_emit_bb_start = common dso_local global i32 0, align 4
@rcs_resume = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_engine_cs*)* @setup_rcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_rcs(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca %struct.intel_engine_cs*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %2, align 8
  %4 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %5 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %4, i32 0, i32 6
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  store %struct.drm_i915_private* %6, %struct.drm_i915_private** %3, align 8
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %8 = call i64 @HAS_L3_DPF(%struct.drm_i915_private* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @GT_RENDER_L3_PARITY_ERROR_INTERRUPT, align 4
  %12 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %13 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %12, i32 0, i32 5
  store i32 %11, i32* %13, align 4
  br label %14

14:                                               ; preds = %10, %1
  %15 = load i32, i32* @GT_RENDER_USER_INTERRUPT, align 4
  %16 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %17 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %19 = call i32 @INTEL_GEN(%struct.drm_i915_private* %18)
  %20 = icmp sge i32 %19, 7
  br i1 %20, label %21, label %28

21:                                               ; preds = %14
  %22 = load i8*, i8** @gen7_render_ring_flush, align 8
  %23 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %24 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %23, i32 0, i32 3
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* @gen7_rcs_emit_breadcrumb, align 4
  %26 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %27 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  br label %65

28:                                               ; preds = %14
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %30 = call i64 @IS_GEN(%struct.drm_i915_private* %29, i32 6)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load i8*, i8** @gen6_render_ring_flush, align 8
  %34 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %35 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* @gen6_rcs_emit_breadcrumb, align 4
  %37 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %38 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  br label %64

39:                                               ; preds = %28
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %41 = call i64 @IS_GEN(%struct.drm_i915_private* %40, i32 5)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i8*, i8** @gen4_render_ring_flush, align 8
  %45 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %46 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  br label %63

47:                                               ; preds = %39
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %49 = call i32 @INTEL_GEN(%struct.drm_i915_private* %48)
  %50 = icmp slt i32 %49, 4
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i8*, i8** @gen2_render_ring_flush, align 8
  %53 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %54 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  br label %59

55:                                               ; preds = %47
  %56 = load i8*, i8** @gen4_render_ring_flush, align 8
  %57 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %58 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  br label %59

59:                                               ; preds = %55, %51
  %60 = load i32, i32* @I915_USER_INTERRUPT, align 4
  %61 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %62 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %59, %43
  br label %64

64:                                               ; preds = %63, %32
  br label %65

65:                                               ; preds = %64, %21
  %66 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %67 = call i64 @IS_HASWELL(%struct.drm_i915_private* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i32, i32* @hsw_emit_bb_start, align 4
  %71 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %72 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %69, %65
  %74 = load i32, i32* @rcs_resume, align 4
  %75 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %76 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  ret void
}

declare dso_local i64 @HAS_L3_DPF(%struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
