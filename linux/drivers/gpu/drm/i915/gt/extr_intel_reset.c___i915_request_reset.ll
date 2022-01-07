; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_reset.c___i915_request_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_reset.c___i915_request_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"%s rq=%llx:%lld, guilty? %s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__i915_request_reset(%struct.i915_request* %0, i32 %1) #0 {
  %3 = alloca %struct.i915_request*, align 8
  %4 = alloca i32, align 4
  store %struct.i915_request* %0, %struct.i915_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %6 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %5, i32 0, i32 2
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %11 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %15 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @yesno(i32 %18)
  %20 = call i32 @GEM_TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %13, i32 %17, i32 %19)
  %21 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %22 = call i32 @i915_request_completed(%struct.i915_request* %21)
  %23 = call i32 @GEM_BUG_ON(i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %2
  %27 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  %30 = call i32 @i915_request_skip(%struct.i915_request* %27, i32 %29)
  %31 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %32 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @context_mark_guilty(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %38 = call i32 @engine_skip_context(%struct.i915_request* %37)
  br label %39

39:                                               ; preds = %36, %26
  br label %50

40:                                               ; preds = %2
  %41 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %42 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %41, i32 0, i32 1
  %43 = load i32, i32* @EAGAIN, align 4
  %44 = sub nsw i32 0, %43
  %45 = call i32 @dma_fence_set_error(%struct.TYPE_4__* %42, i32 %44)
  %46 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %47 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @context_mark_innocent(i32 %48)
  br label %50

50:                                               ; preds = %40, %39
  ret void
}

declare dso_local i32 @GEM_TRACE(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @yesno(i32) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @i915_request_completed(%struct.i915_request*) #1

declare dso_local i32 @i915_request_skip(%struct.i915_request*, i32) #1

declare dso_local i64 @context_mark_guilty(i32) #1

declare dso_local i32 @engine_skip_context(%struct.i915_request*) #1

declare dso_local i32 @dma_fence_set_error(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @context_mark_innocent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
