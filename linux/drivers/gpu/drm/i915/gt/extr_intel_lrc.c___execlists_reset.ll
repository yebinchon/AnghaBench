; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c___execlists_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c___execlists_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32, i64, i64, %struct.intel_engine_execlists }
%struct.intel_engine_execlists = type { i32 }
%struct.intel_context = type { %struct.TYPE_4__*, i32*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.i915_request = type { i32, %struct.intel_context* }

@LRC_STATE_PN = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s replay {head:%04x, tail:%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_engine_cs*, i32)* @__execlists_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__execlists_reset(%struct.intel_engine_cs* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_engine_execlists*, align 8
  %6 = alloca %struct.intel_context*, align 8
  %7 = alloca %struct.i915_request*, align 8
  %8 = alloca i32*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %10 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %9, i32 0, i32 3
  store %struct.intel_engine_execlists* %10, %struct.intel_engine_execlists** %5, align 8
  %11 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %12 = call i32 @process_csb(%struct.intel_engine_cs* %11)
  %13 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %14 = call i32 @reset_csb_pointers(%struct.intel_engine_cs* %13)
  %15 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %5, align 8
  %16 = call %struct.i915_request* @execlists_active(%struct.intel_engine_execlists* %15)
  store %struct.i915_request* %16, %struct.i915_request** %7, align 8
  %17 = load %struct.i915_request*, %struct.i915_request** %7, align 8
  %18 = icmp ne %struct.i915_request* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %128

20:                                               ; preds = %2
  %21 = load %struct.i915_request*, %struct.i915_request** %7, align 8
  %22 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %21, i32 0, i32 1
  %23 = load %struct.intel_context*, %struct.intel_context** %22, align 8
  store %struct.intel_context* %23, %struct.intel_context** %6, align 8
  %24 = load %struct.intel_context*, %struct.intel_context** %6, align 8
  %25 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %24, i32 0, i32 3
  %26 = call i32 @i915_active_is_idle(i32* %25)
  %27 = call i32 @GEM_BUG_ON(i32 %26)
  %28 = load %struct.intel_context*, %struct.intel_context** %6, align 8
  %29 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @i915_vma_is_pinned(i32 %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @GEM_BUG_ON(i32 %34)
  %36 = load %struct.i915_request*, %struct.i915_request** %7, align 8
  %37 = call %struct.i915_request* @active_request(%struct.i915_request* %36)
  store %struct.i915_request* %37, %struct.i915_request** %7, align 8
  %38 = load %struct.i915_request*, %struct.i915_request** %7, align 8
  %39 = icmp ne %struct.i915_request* %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %20
  %41 = load %struct.intel_context*, %struct.intel_context** %6, align 8
  %42 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.intel_context*, %struct.intel_context** %6, align 8
  %47 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i32 %45, i32* %49, align 4
  br label %106

50:                                               ; preds = %20
  %51 = load %struct.intel_context*, %struct.intel_context** %6, align 8
  %52 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load %struct.i915_request*, %struct.i915_request** %7, align 8
  %55 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @intel_ring_wrap(%struct.TYPE_4__* %53, i32 %56)
  %58 = load %struct.intel_context*, %struct.intel_context** %6, align 8
  %59 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32 %57, i32* %61, align 4
  %62 = load %struct.i915_request*, %struct.i915_request** %7, align 8
  %63 = call i32 @i915_request_started(%struct.i915_request* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %50
  br label %106

66:                                               ; preds = %50
  %67 = load %struct.i915_request*, %struct.i915_request** %7, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @__i915_request_reset(%struct.i915_request* %67, i32 %68)
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %66
  br label %106

73:                                               ; preds = %66
  %74 = load %struct.intel_context*, %struct.intel_context** %6, align 8
  %75 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  store i32* %76, i32** %8, align 8
  %77 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %78 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %98

81:                                               ; preds = %73
  %82 = load i32*, i32** %8, align 8
  %83 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %84 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* @LRC_STATE_PN, align 4
  %87 = load i32, i32* @PAGE_SIZE, align 4
  %88 = mul nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %85, %89
  %91 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %92 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* @PAGE_SIZE, align 4
  %95 = sext i32 %94 to i64
  %96 = sub nsw i64 %93, %95
  %97 = call i32 @memcpy(i32* %82, i64 %90, i64 %96)
  br label %98

98:                                               ; preds = %81, %73
  %99 = load i32*, i32** %8, align 8
  %100 = load %struct.intel_context*, %struct.intel_context** %6, align 8
  %101 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %102 = load %struct.intel_context*, %struct.intel_context** %6, align 8
  %103 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = call i32 @execlists_init_reg_state(i32* %99, %struct.intel_context* %100, %struct.intel_engine_cs* %101, %struct.TYPE_4__* %104)
  br label %106

106:                                              ; preds = %98, %72, %65, %40
  %107 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %108 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.intel_context*, %struct.intel_context** %6, align 8
  %111 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.intel_context*, %struct.intel_context** %6, align 8
  %116 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %115, i32 0, i32 0
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @GEM_TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %109, i32 %114, i32 %119)
  %121 = load %struct.intel_context*, %struct.intel_context** %6, align 8
  %122 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %121, i32 0, i32 0
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = call i32 @intel_ring_update_space(%struct.TYPE_4__* %123)
  %125 = load %struct.intel_context*, %struct.intel_context** %6, align 8
  %126 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %127 = call i32 @__execlists_update_reg_state(%struct.intel_context* %125, %struct.intel_engine_cs* %126)
  br label %128

128:                                              ; preds = %106, %19
  %129 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %5, align 8
  %130 = call i32 @cancel_port_requests(%struct.intel_engine_execlists* %129)
  %131 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %132 = call i32 @__unwind_incomplete_requests(%struct.intel_engine_cs* %131)
  ret void
}

declare dso_local i32 @process_csb(%struct.intel_engine_cs*) #1

declare dso_local i32 @reset_csb_pointers(%struct.intel_engine_cs*) #1

declare dso_local %struct.i915_request* @execlists_active(%struct.intel_engine_execlists*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @i915_active_is_idle(i32*) #1

declare dso_local i32 @i915_vma_is_pinned(i32) #1

declare dso_local %struct.i915_request* @active_request(%struct.i915_request*) #1

declare dso_local i32 @intel_ring_wrap(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @i915_request_started(%struct.i915_request*) #1

declare dso_local i32 @__i915_request_reset(%struct.i915_request*, i32) #1

declare dso_local i32 @memcpy(i32*, i64, i64) #1

declare dso_local i32 @execlists_init_reg_state(i32*, %struct.intel_context*, %struct.intel_engine_cs*, %struct.TYPE_4__*) #1

declare dso_local i32 @GEM_TRACE(i8*, i32, i32, i32) #1

declare dso_local i32 @intel_ring_update_space(%struct.TYPE_4__*) #1

declare dso_local i32 @__execlists_update_reg_state(%struct.intel_context*, %struct.intel_engine_cs*) #1

declare dso_local i32 @cancel_port_requests(%struct.intel_engine_execlists*) #1

declare dso_local i32 @__unwind_incomplete_requests(%struct.intel_engine_cs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
