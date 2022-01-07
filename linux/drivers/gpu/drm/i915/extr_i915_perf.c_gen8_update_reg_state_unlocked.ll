; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_gen8_update_reg_state_unlocked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_gen8_update_reg_state_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_perf_stream = type { i32, i64 }
%struct.intel_context = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.i915_oa_config = type { i32 }

@EU_PERF_CNTL0 = common dso_local global i32 0, align 4
@EU_PERF_CNTL1 = common dso_local global i32 0, align 4
@EU_PERF_CNTL2 = common dso_local global i32 0, align 4
@EU_PERF_CNTL3 = common dso_local global i32 0, align 4
@EU_PERF_CNTL4 = common dso_local global i32 0, align 4
@EU_PERF_CNTL5 = common dso_local global i32 0, align 4
@EU_PERF_CNTL6 = common dso_local global i32 0, align 4
@GEN8_OACTXCONTROL = common dso_local global i32 0, align 4
@GEN8_OA_TIMER_PERIOD_SHIFT = common dso_local global i32 0, align 4
@GEN8_OA_TIMER_ENABLE = common dso_local global i32 0, align 4
@GEN8_OA_COUNTER_RESUME = common dso_local global i32 0, align 4
@CTX_R_PWR_CLK_STATE = common dso_local global i64 0, align 8
@GEN8_R_PWR_CLK_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_perf_stream*, %struct.intel_context*, i64*, %struct.i915_oa_config*)* @gen8_update_reg_state_unlocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen8_update_reg_state_unlocked(%struct.i915_perf_stream* %0, %struct.intel_context* %1, i64* %2, %struct.i915_oa_config* %3) #0 {
  %5 = alloca %struct.i915_perf_stream*, align 8
  %6 = alloca %struct.intel_context*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.i915_oa_config*, align 8
  %9 = alloca %struct.drm_i915_private*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [7 x i32], align 16
  %13 = alloca i32, align 4
  store %struct.i915_perf_stream* %0, %struct.i915_perf_stream** %5, align 8
  store %struct.intel_context* %1, %struct.intel_context** %6, align 8
  store i64* %2, i64** %7, align 8
  store %struct.i915_oa_config* %3, %struct.i915_oa_config** %8, align 8
  %14 = load %struct.intel_context*, %struct.intel_context** %6, align 8
  %15 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %17, align 8
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %9, align 8
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %20 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %24 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %11, align 8
  %27 = getelementptr inbounds [7 x i32], [7 x i32]* %12, i64 0, i64 0
  %28 = load i32, i32* @EU_PERF_CNTL0, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds i32, i32* %27, i64 1
  %30 = load i32, i32* @EU_PERF_CNTL1, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds i32, i32* %29, i64 1
  %32 = load i32, i32* @EU_PERF_CNTL2, align 4
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds i32, i32* %31, i64 1
  %34 = load i32, i32* @EU_PERF_CNTL3, align 4
  store i32 %34, i32* %33, align 4
  %35 = getelementptr inbounds i32, i32* %33, i64 1
  %36 = load i32, i32* @EU_PERF_CNTL4, align 4
  store i32 %36, i32* %35, align 4
  %37 = getelementptr inbounds i32, i32* %35, i64 1
  %38 = load i32, i32* @EU_PERF_CNTL5, align 4
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds i32, i32* %37, i64 1
  %40 = load i32, i32* @EU_PERF_CNTL6, align 4
  store i32 %40, i32* %39, align 4
  %41 = load i64*, i64** %7, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i32, i32* @GEN8_OACTXCONTROL, align 4
  %44 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %5, align 8
  %45 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @GEN8_OA_TIMER_PERIOD_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %5, align 8
  %50 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %4
  %54 = load i32, i32* @GEN8_OA_TIMER_ENABLE, align 4
  br label %56

55:                                               ; preds = %4
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i32 [ %54, %53 ], [ 0, %55 ]
  %58 = or i32 %48, %57
  %59 = load i32, i32* @GEN8_OA_COUNTER_RESUME, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @CTX_REG(i64* %41, i64 %42, i32 %43, i32 %60)
  store i32 0, i32* %13, align 4
  br label %62

62:                                               ; preds = %85, %56
  %63 = load i32, i32* %13, align 4
  %64 = getelementptr inbounds [7 x i32], [7 x i32]* %12, i64 0, i64 0
  %65 = call i32 @ARRAY_SIZE(i32* %64)
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %88

67:                                               ; preds = %62
  %68 = load i64*, i64** %7, align 8
  %69 = load i64, i64* %11, align 8
  %70 = load i32, i32* %13, align 4
  %71 = mul nsw i32 %70, 2
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %69, %72
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [7 x i32], [7 x i32]* %12, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.i915_oa_config*, %struct.i915_oa_config** %8, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [7 x i32], [7 x i32]* %12, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @oa_config_flex_reg(%struct.i915_oa_config* %78, i32 %82)
  %84 = call i32 @CTX_REG(i64* %68, i64 %73, i32 %77, i32 %83)
  br label %85

85:                                               ; preds = %67
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %13, align 4
  br label %62

88:                                               ; preds = %62
  %89 = load i64*, i64** %7, align 8
  %90 = load i64, i64* @CTX_R_PWR_CLK_STATE, align 8
  %91 = load i32, i32* @GEN8_R_PWR_CLK_STATE, align 4
  %92 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %93 = load %struct.intel_context*, %struct.intel_context** %6, align 8
  %94 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %93, i32 0, i32 0
  %95 = call i32 @intel_sseu_make_rpcs(%struct.drm_i915_private* %92, i32* %94)
  %96 = call i32 @CTX_REG(i64* %89, i64 %90, i32 %91, i32 %95)
  ret void
}

declare dso_local i32 @CTX_REG(i64*, i64, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @oa_config_flex_reg(%struct.i915_oa_config*, i32) #1

declare dso_local i32 @intel_sseu_make_rpcs(%struct.drm_i915_private*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
