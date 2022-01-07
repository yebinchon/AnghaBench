; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_context.c_intel_context_unpin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_context.c_intel_context_unpin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_context = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i32 (%struct.intel_context*)* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s context:%llx retire\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_context_unpin(%struct.intel_context* %0) #0 {
  %2 = alloca %struct.intel_context*, align 8
  store %struct.intel_context* %0, %struct.intel_context** %2, align 8
  %3 = load %struct.intel_context*, %struct.intel_context** %2, align 8
  %4 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %3, i32 0, i32 5
  %5 = call i32 @atomic_add_unless(i32* %4, i32 -1, i32 1)
  %6 = call i64 @likely(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %52

9:                                                ; preds = %1
  %10 = load %struct.intel_context*, %struct.intel_context** %2, align 8
  %11 = call i32 @intel_context_get(%struct.intel_context* %10)
  %12 = load %struct.intel_context*, %struct.intel_context** %2, align 8
  %13 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %12, i32 0, i32 0
  %14 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %15 = call i32 @mutex_lock_nested(i32* %13, i32 %14)
  %16 = load %struct.intel_context*, %struct.intel_context** %2, align 8
  %17 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %16, i32 0, i32 5
  %18 = call i32 @atomic_dec_and_test(i32* %17)
  %19 = call i64 @likely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %9
  %22 = load %struct.intel_context*, %struct.intel_context** %2, align 8
  %23 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %22, i32 0, i32 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.intel_context*, %struct.intel_context** %2, align 8
  %28 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %27, i32 0, i32 3
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @GEM_TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %31)
  %33 = load %struct.intel_context*, %struct.intel_context** %2, align 8
  %34 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %33, i32 0, i32 2
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32 (%struct.intel_context*)*, i32 (%struct.intel_context*)** %36, align 8
  %38 = load %struct.intel_context*, %struct.intel_context** %2, align 8
  %39 = call i32 %37(%struct.intel_context* %38)
  %40 = load %struct.intel_context*, %struct.intel_context** %2, align 8
  %41 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @i915_gem_context_put(i32 %42)
  %44 = load %struct.intel_context*, %struct.intel_context** %2, align 8
  %45 = call i32 @intel_context_active_release(%struct.intel_context* %44)
  br label %46

46:                                               ; preds = %21, %9
  %47 = load %struct.intel_context*, %struct.intel_context** %2, align 8
  %48 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load %struct.intel_context*, %struct.intel_context** %2, align 8
  %51 = call i32 @intel_context_put(%struct.intel_context* %50)
  br label %52

52:                                               ; preds = %46, %8
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @atomic_add_unless(i32*, i32, i32) #1

declare dso_local i32 @intel_context_get(%struct.intel_context*) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @GEM_TRACE(i8*, i32, i32) #1

declare dso_local i32 @i915_gem_context_put(i32) #1

declare dso_local i32 @intel_context_active_release(%struct.intel_context*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @intel_context_put(%struct.intel_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
