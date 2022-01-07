; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_setup_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_setup_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32, i32, i32, i32, i32*, %struct.TYPE_2__, i32, i32, %struct.drm_i915_private* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.drm_i915_private = type { i32 }

@ring_destroy = common dso_local global i32 0, align 4
@xcs_resume = common dso_local global i32 0, align 4
@reset_prepare = common dso_local global i32 0, align 4
@reset_ring = common dso_local global i32 0, align 4
@reset_finish = common dso_local global i32 0, align 4
@ring_context_ops = common dso_local global i32 0, align 4
@ring_request_alloc = common dso_local global i32 0, align 4
@i9xx_emit_breadcrumb = common dso_local global i32 0, align 4
@gen5_emit_breadcrumb = common dso_local global i32 0, align 4
@i9xx_set_default_submission = common dso_local global i32 0, align 4
@gen6_emit_bb_start = common dso_local global i32 0, align 4
@i965_emit_bb_start = common dso_local global i32 0, align 4
@i830_emit_bb_start = common dso_local global i32 0, align 4
@i915_emit_bb_start = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_engine_cs*)* @setup_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_common(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca %struct.intel_engine_cs*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %2, align 8
  %4 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %5 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %4, i32 0, i32 8
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  store %struct.drm_i915_private* %6, %struct.drm_i915_private** %3, align 8
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %8 = call i32 @INTEL_GEN(%struct.drm_i915_private* %7)
  %9 = icmp sge i32 %8, 8
  %10 = zext i1 %9 to i32
  %11 = call i32 @GEM_BUG_ON(i32 %10)
  %12 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %13 = call i32 @setup_irq(%struct.intel_engine_cs* %12)
  %14 = load i32, i32* @ring_destroy, align 4
  %15 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %16 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %15, i32 0, i32 7
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @xcs_resume, align 4
  %18 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %19 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @reset_prepare, align 4
  %21 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %22 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 8
  %24 = load i32, i32* @reset_ring, align 4
  %25 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %26 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @reset_finish, align 4
  %29 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %30 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %33 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %32, i32 0, i32 4
  store i32* @ring_context_ops, i32** %33, align 8
  %34 = load i32, i32* @ring_request_alloc, align 4
  %35 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %36 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @i9xx_emit_breadcrumb, align 4
  %38 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %39 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %41 = call i64 @IS_GEN(%struct.drm_i915_private* %40, i32 5)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %1
  %44 = load i32, i32* @gen5_emit_breadcrumb, align 4
  %45 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %46 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %43, %1
  %48 = load i32, i32* @i9xx_set_default_submission, align 4
  %49 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %50 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %52 = call i32 @INTEL_GEN(%struct.drm_i915_private* %51)
  %53 = icmp sge i32 %52, 6
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load i32, i32* @gen6_emit_bb_start, align 4
  %56 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %57 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  br label %84

58:                                               ; preds = %47
  %59 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %60 = call i32 @INTEL_GEN(%struct.drm_i915_private* %59)
  %61 = icmp sge i32 %60, 4
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, i32* @i965_emit_bb_start, align 4
  %64 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %65 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  br label %83

66:                                               ; preds = %58
  %67 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %68 = call i64 @IS_I830(%struct.drm_i915_private* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %72 = call i64 @IS_I845G(%struct.drm_i915_private* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70, %66
  %75 = load i32, i32* @i830_emit_bb_start, align 4
  %76 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %77 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  br label %82

78:                                               ; preds = %70
  %79 = load i32, i32* @i915_emit_bb_start, align 4
  %80 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %81 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %78, %74
  br label %83

83:                                               ; preds = %82, %62
  br label %84

84:                                               ; preds = %83, %54
  ret void
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @setup_irq(%struct.intel_engine_cs*) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_I830(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_I845G(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
