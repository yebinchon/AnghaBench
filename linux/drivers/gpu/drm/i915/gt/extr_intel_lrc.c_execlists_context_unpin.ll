; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_execlists_context_unpin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_execlists_context_unpin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_context = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@LRC_STATE_PN = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_context*)* @execlists_context_unpin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @execlists_context_unpin(%struct.intel_context* %0) #0 {
  %2 = alloca %struct.intel_context*, align 8
  store %struct.intel_context* %0, %struct.intel_context** %2, align 8
  %3 = load %struct.intel_context*, %struct.intel_context** %2, align 8
  %4 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %3, i32 0, i32 4
  %5 = load i64, i64* %4, align 8
  %6 = inttoptr i64 %5 to i8*
  %7 = load i32, i32* @LRC_STATE_PN, align 4
  %8 = load i32, i32* @PAGE_SIZE, align 4
  %9 = mul nsw i32 %7, %8
  %10 = sext i32 %9 to i64
  %11 = sub i64 0, %10
  %12 = getelementptr i8, i8* %6, i64 %11
  %13 = load %struct.intel_context*, %struct.intel_context** %2, align 8
  %14 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @check_redzone(i8* %12, i32 %15)
  %17 = load %struct.intel_context*, %struct.intel_context** %2, align 8
  %18 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @i915_gem_context_unpin_hw_id(i32 %19)
  %21 = load %struct.intel_context*, %struct.intel_context** %2, align 8
  %22 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @i915_gem_object_unpin_map(i32 %25)
  %27 = load %struct.intel_context*, %struct.intel_context** %2, align 8
  %28 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load %struct.intel_context*, %struct.intel_context** %2, align 8
  %31 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @intel_ring_reset(%struct.TYPE_4__* %29, i32 %34)
  ret void
}

declare dso_local i32 @check_redzone(i8*, i32) #1

declare dso_local i32 @i915_gem_context_unpin_hw_id(i32) #1

declare dso_local i32 @i915_gem_object_unpin_map(i32) #1

declare dso_local i32 @intel_ring_reset(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
