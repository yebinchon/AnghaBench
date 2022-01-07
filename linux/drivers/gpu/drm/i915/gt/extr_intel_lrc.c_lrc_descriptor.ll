; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_lrc_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_lrc_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_context = type { i32, i32, %struct.i915_gem_context* }
%struct.i915_gem_context = type { i64 }
%struct.intel_engine_cs = type { i64, i64, i32 }

@MAX_CONTEXT_HW_ID = common dso_local global i64 0, align 8
@GEN8_CTX_ID_WIDTH = common dso_local global i32 0, align 4
@GEN11_MAX_CONTEXT_HW_ID = common dso_local global i64 0, align 8
@GEN11_SW_CTX_ID_WIDTH = common dso_local global i32 0, align 4
@INTEL_LEGACY_32B_CONTEXT = common dso_local global i32 0, align 4
@INTEL_LEGACY_64B_CONTEXT = common dso_local global i32 0, align 4
@GEN8_CTX_ADDRESSING_MODE_SHIFT = common dso_local global i32 0, align 4
@GEN8_CTX_VALID = common dso_local global i32 0, align 4
@GEN8_CTX_PRIVILEGE = common dso_local global i32 0, align 4
@GEN8_CTX_L3LLC_COHERENT = common dso_local global i32 0, align 4
@LRC_HEADER_PAGES = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GEN11_SW_CTX_ID_SHIFT = common dso_local global i32 0, align 4
@GEN11_ENGINE_INSTANCE_SHIFT = common dso_local global i32 0, align 4
@GEN11_ENGINE_CLASS_SHIFT = common dso_local global i32 0, align 4
@GEN8_CTX_ID_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_context*, %struct.intel_engine_cs*)* @lrc_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lrc_descriptor(%struct.intel_context* %0, %struct.intel_engine_cs* %1) #0 {
  %3 = alloca %struct.intel_context*, align 8
  %4 = alloca %struct.intel_engine_cs*, align 8
  %5 = alloca %struct.i915_gem_context*, align 8
  %6 = alloca i32, align 4
  store %struct.intel_context* %0, %struct.intel_context** %3, align 8
  store %struct.intel_engine_cs* %1, %struct.intel_engine_cs** %4, align 8
  %7 = load %struct.intel_context*, %struct.intel_context** %3, align 8
  %8 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %7, i32 0, i32 2
  %9 = load %struct.i915_gem_context*, %struct.i915_gem_context** %8, align 8
  store %struct.i915_gem_context* %9, %struct.i915_gem_context** %5, align 8
  %10 = load i64, i64* @MAX_CONTEXT_HW_ID, align 8
  %11 = load i32, i32* @GEN8_CTX_ID_WIDTH, align 4
  %12 = call i64 @BIT(i32 %11)
  %13 = icmp sgt i64 %10, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUILD_BUG_ON(i32 %14)
  %16 = load i64, i64* @GEN11_MAX_CONTEXT_HW_ID, align 8
  %17 = load i32, i32* @GEN11_SW_CTX_ID_WIDTH, align 4
  %18 = call i64 @BIT(i32 %17)
  %19 = icmp sgt i64 %16, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUILD_BUG_ON(i32 %20)
  %22 = load i32, i32* @INTEL_LEGACY_32B_CONTEXT, align 4
  store i32 %22, i32* %6, align 4
  %23 = load %struct.intel_context*, %struct.intel_context** %3, align 8
  %24 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @i915_vm_is_4lvl(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @INTEL_LEGACY_64B_CONTEXT, align 4
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %28, %2
  %31 = load i32, i32* @GEN8_CTX_ADDRESSING_MODE_SHIFT, align 4
  %32 = load i32, i32* %6, align 4
  %33 = shl i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* @GEN8_CTX_VALID, align 4
  %35 = load i32, i32* @GEN8_CTX_PRIVILEGE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %40 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @IS_GEN(i32 %41, i32 8)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %30
  %45 = load i32, i32* @GEN8_CTX_L3LLC_COHERENT, align 4
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %44, %30
  %49 = load %struct.intel_context*, %struct.intel_context** %3, align 8
  %50 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @i915_ggtt_offset(i32 %51)
  %53 = load i32, i32* @LRC_HEADER_PAGES, align 4
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = mul nsw i32 %53, %54
  %56 = add nsw i32 %52, %55
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %6, align 4
  %59 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %60 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @INTEL_GEN(i32 %61)
  %63 = icmp sge i32 %62, 11
  br i1 %63, label %64, label %97

64:                                               ; preds = %48
  %65 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %66 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @GEN11_SW_CTX_ID_WIDTH, align 4
  %69 = call i64 @BIT(i32 %68)
  %70 = icmp sge i64 %67, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @GEM_BUG_ON(i32 %71)
  %73 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %74 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = load i32, i32* @GEN11_SW_CTX_ID_SHIFT, align 4
  %78 = shl i32 %76, %77
  %79 = load i32, i32* %6, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %6, align 4
  %81 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %82 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = load i32, i32* @GEN11_ENGINE_INSTANCE_SHIFT, align 4
  %86 = shl i32 %84, %85
  %87 = load i32, i32* %6, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %6, align 4
  %89 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %90 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = load i32, i32* @GEN11_ENGINE_CLASS_SHIFT, align 4
  %94 = shl i32 %92, %93
  %95 = load i32, i32* %6, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %6, align 4
  br label %114

97:                                               ; preds = %48
  %98 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %99 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* @GEN8_CTX_ID_WIDTH, align 4
  %102 = call i64 @BIT(i32 %101)
  %103 = icmp sge i64 %100, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @GEM_BUG_ON(i32 %104)
  %106 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %107 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = trunc i64 %108 to i32
  %110 = load i32, i32* @GEN8_CTX_ID_SHIFT, align 4
  %111 = shl i32 %109, %110
  %112 = load i32, i32* %6, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %97, %64
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i64 @i915_vm_is_4lvl(i32) #1

declare dso_local i64 @IS_GEN(i32, i32) #1

declare dso_local i32 @i915_ggtt_offset(i32) #1

declare dso_local i32 @INTEL_GEN(i32) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
