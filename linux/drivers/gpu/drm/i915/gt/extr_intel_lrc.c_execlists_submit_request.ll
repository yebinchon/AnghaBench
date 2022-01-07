; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_execlists_submit_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_execlists_submit_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { %struct.TYPE_8__, %struct.intel_engine_cs* }
%struct.TYPE_8__ = type { i32 }
%struct.intel_engine_cs = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_request*)* @execlists_submit_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @execlists_submit_request(%struct.i915_request* %0) #0 {
  %2 = alloca %struct.i915_request*, align 8
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca i64, align 8
  store %struct.i915_request* %0, %struct.i915_request** %2, align 8
  %5 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %6 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %5, i32 0, i32 1
  %7 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %6, align 8
  store %struct.intel_engine_cs* %7, %struct.intel_engine_cs** %3, align 8
  %8 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %9 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %14 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %15 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %14, i32 0, i32 0
  %16 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %17 = call i32 @rq_prio(%struct.i915_request* %16)
  %18 = call i32 @queue_request(%struct.intel_engine_cs* %13, %struct.TYPE_8__* %15, i32 %17)
  %19 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %20 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = call i32 @RB_EMPTY_ROOT(i32* %22)
  %24 = call i32 @GEM_BUG_ON(i32 %23)
  %25 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %26 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = call i32 @list_empty(i32* %27)
  %29 = call i32 @GEM_BUG_ON(i32 %28)
  %30 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %31 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %32 = call i32 @submit_queue(%struct.intel_engine_cs* %30, %struct.i915_request* %31)
  %33 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %34 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @queue_request(%struct.intel_engine_cs*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @rq_prio(%struct.i915_request*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @RB_EMPTY_ROOT(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @submit_queue(%struct.intel_engine_cs*, %struct.i915_request*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
