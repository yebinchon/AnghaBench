; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c___execlists_update_reg_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c___execlists_update_reg_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_context = type { i32, i32*, %struct.intel_ring* }
%struct.intel_ring = type { i32, i32, i32 }
%struct.intel_engine_cs = type { i64, i32 }

@CTX_RING_BUFFER_START = common dso_local global i32 0, align 4
@CTX_RING_HEAD = common dso_local global i32 0, align 4
@CTX_RING_TAIL = common dso_local global i32 0, align 4
@RENDER_CLASS = common dso_local global i64 0, align 8
@CTX_R_PWR_CLK_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_context*, %struct.intel_engine_cs*)* @__execlists_update_reg_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__execlists_update_reg_state(%struct.intel_context* %0, %struct.intel_engine_cs* %1) #0 {
  %3 = alloca %struct.intel_context*, align 8
  %4 = alloca %struct.intel_engine_cs*, align 8
  %5 = alloca %struct.intel_ring*, align 8
  %6 = alloca i32*, align 8
  store %struct.intel_context* %0, %struct.intel_context** %3, align 8
  store %struct.intel_engine_cs* %1, %struct.intel_engine_cs** %4, align 8
  %7 = load %struct.intel_context*, %struct.intel_context** %3, align 8
  %8 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %7, i32 0, i32 2
  %9 = load %struct.intel_ring*, %struct.intel_ring** %8, align 8
  store %struct.intel_ring* %9, %struct.intel_ring** %5, align 8
  %10 = load %struct.intel_context*, %struct.intel_context** %3, align 8
  %11 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  %13 = load %struct.intel_ring*, %struct.intel_ring** %5, align 8
  %14 = load %struct.intel_ring*, %struct.intel_ring** %5, align 8
  %15 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @intel_ring_offset_valid(%struct.intel_ring* %13, i32 %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @GEM_BUG_ON(i32 %20)
  %22 = load %struct.intel_ring*, %struct.intel_ring** %5, align 8
  %23 = load %struct.intel_ring*, %struct.intel_ring** %5, align 8
  %24 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @intel_ring_offset_valid(%struct.intel_ring* %22, i32 %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @GEM_BUG_ON(i32 %29)
  %31 = load %struct.intel_ring*, %struct.intel_ring** %5, align 8
  %32 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @i915_ggtt_offset(i32 %33)
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* @CTX_RING_BUFFER_START, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  store i32 %34, i32* %39, align 4
  %40 = load %struct.intel_ring*, %struct.intel_ring** %5, align 8
  %41 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* @CTX_RING_HEAD, align 4
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  store i32 %42, i32* %47, align 4
  %48 = load %struct.intel_ring*, %struct.intel_ring** %5, align 8
  %49 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* @CTX_RING_TAIL, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  store i32 %50, i32* %55, align 4
  %56 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %57 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @RENDER_CLASS, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %2
  %62 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %63 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.intel_context*, %struct.intel_context** %3, align 8
  %66 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %65, i32 0, i32 0
  %67 = call i32 @intel_sseu_make_rpcs(i32 %64, i32* %66)
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* @CTX_R_PWR_CLK_STATE, align 4
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  store i32 %67, i32* %72, align 4
  %73 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %74 = load %struct.intel_context*, %struct.intel_context** %3, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @i915_oa_init_reg_state(%struct.intel_engine_cs* %73, %struct.intel_context* %74, i32* %75)
  br label %77

77:                                               ; preds = %61, %2
  ret void
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @intel_ring_offset_valid(%struct.intel_ring*, i32) #1

declare dso_local i32 @i915_ggtt_offset(i32) #1

declare dso_local i32 @intel_sseu_make_rpcs(i32, i32*) #1

declare dso_local i32 @i915_oa_init_reg_state(%struct.intel_engine_cs*, %struct.intel_context*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
