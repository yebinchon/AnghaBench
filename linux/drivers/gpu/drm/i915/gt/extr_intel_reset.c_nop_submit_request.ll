; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_reset.c_nop_submit_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_reset.c_nop_submit_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { %struct.TYPE_4__, %struct.intel_engine_cs* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.intel_engine_cs = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"%s fence %llx:%lld -> -EIO\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_request*)* @nop_submit_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nop_submit_request(%struct.i915_request* %0) #0 {
  %2 = alloca %struct.i915_request*, align 8
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca i64, align 8
  store %struct.i915_request* %0, %struct.i915_request** %2, align 8
  %5 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %6 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %5, i32 0, i32 1
  %7 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %6, align 8
  store %struct.intel_engine_cs* %7, %struct.intel_engine_cs** %3, align 8
  %8 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %9 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %12 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %16 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @GEM_TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %14, i32 %18)
  %20 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %21 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %20, i32 0, i32 0
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  %24 = call i32 @dma_fence_set_error(%struct.TYPE_4__* %21, i32 %23)
  %25 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %26 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %31 = call i32 @__i915_request_submit(%struct.i915_request* %30)
  %32 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %33 = call i32 @i915_request_mark_complete(%struct.i915_request* %32)
  %34 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %35 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %40 = call i32 @intel_engine_queue_breadcrumbs(%struct.intel_engine_cs* %39)
  ret void
}

declare dso_local i32 @GEM_TRACE(i8*, i32, i32, i32) #1

declare dso_local i32 @dma_fence_set_error(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__i915_request_submit(%struct.i915_request*) #1

declare dso_local i32 @i915_request_mark_complete(%struct.i915_request*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @intel_engine_queue_breadcrumbs(%struct.intel_engine_cs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
