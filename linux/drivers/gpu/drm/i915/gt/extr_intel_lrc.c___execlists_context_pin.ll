; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c___execlists_context_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c___execlists_context_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_context = type { %struct.TYPE_2__*, i8*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.intel_engine_cs = type { i32 }

@I915_MAP_OVERRIDE = common dso_local global i32 0, align 4
@LRC_STATE_PN = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_context*, %struct.intel_engine_cs*)* @__execlists_context_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__execlists_context_pin(%struct.intel_context* %0, %struct.intel_engine_cs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_context*, align 8
  %5 = alloca %struct.intel_engine_cs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_context* %0, %struct.intel_context** %4, align 8
  store %struct.intel_engine_cs* %1, %struct.intel_engine_cs** %5, align 8
  %8 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  %9 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @GEM_BUG_ON(i32 %13)
  %15 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  %16 = call i32 @intel_context_active_acquire(%struct.intel_context* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %82

20:                                               ; preds = %2
  %21 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  %22 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = call i32 @i915_vma_is_pinned(%struct.TYPE_2__* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @GEM_BUG_ON(i32 %27)
  %29 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  %30 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %5, align 8
  %35 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @i915_coherent_map_type(i32 %36)
  %38 = load i32, i32* @I915_MAP_OVERRIDE, align 4
  %39 = or i32 %37, %38
  %40 = call i8* @i915_gem_object_pin_map(i32 %33, i32 %39)
  store i8* %40, i8** %6, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i64 @IS_ERR(i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %20
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @PTR_ERR(i8* %45)
  store i32 %46, i32* %7, align 4
  br label %79

47:                                               ; preds = %20
  %48 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  %49 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @i915_gem_context_pin_hw_id(i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %72

55:                                               ; preds = %47
  %56 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  %57 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %5, align 8
  %58 = call i32 @lrc_descriptor(%struct.intel_context* %56, %struct.intel_engine_cs* %57)
  %59 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  %60 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* @LRC_STATE_PN, align 4
  %63 = load i32, i32* @PAGE_SIZE, align 4
  %64 = mul nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr i8, i8* %61, i64 %65
  %67 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  %68 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  %70 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %5, align 8
  %71 = call i32 @__execlists_update_reg_state(%struct.intel_context* %69, %struct.intel_engine_cs* %70)
  store i32 0, i32* %3, align 4
  br label %84

72:                                               ; preds = %54
  %73 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  %74 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @i915_gem_object_unpin_map(i32 %77)
  br label %79

79:                                               ; preds = %72, %44
  %80 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  %81 = call i32 @intel_context_active_release(%struct.intel_context* %80)
  br label %82

82:                                               ; preds = %79, %19
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %82, %55
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @intel_context_active_acquire(%struct.intel_context*) #1

declare dso_local i32 @i915_vma_is_pinned(%struct.TYPE_2__*) #1

declare dso_local i8* @i915_gem_object_pin_map(i32, i32) #1

declare dso_local i32 @i915_coherent_map_type(i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @i915_gem_context_pin_hw_id(i32) #1

declare dso_local i32 @lrc_descriptor(%struct.intel_context*, %struct.intel_engine_cs*) #1

declare dso_local i32 @__execlists_update_reg_state(%struct.intel_context*, %struct.intel_engine_cs*) #1

declare dso_local i32 @i915_gem_object_unpin_map(i32) #1

declare dso_local i32 @intel_context_active_release(%struct.intel_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
