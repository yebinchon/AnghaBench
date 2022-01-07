; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_timeline.c_tl_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_timeline.c_tl_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { i32 }
%struct.intel_timeline = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.intel_engine_cs = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Failed to write to timeline!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i915_request* (%struct.intel_timeline*, %struct.intel_engine_cs*, i32)* @tl_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i915_request* @tl_write(%struct.intel_timeline* %0, %struct.intel_engine_cs* %1, i32 %2) #0 {
  %4 = alloca %struct.intel_timeline*, align 8
  %5 = alloca %struct.intel_engine_cs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i915_request*, align 8
  %8 = alloca i32, align 4
  store %struct.intel_timeline* %0, %struct.intel_timeline** %4, align 8
  store %struct.intel_engine_cs* %1, %struct.intel_engine_cs** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.intel_timeline*, %struct.intel_timeline** %4, align 8
  %10 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = call i32 @lockdep_assert_held(i32* %15)
  %17 = load %struct.intel_timeline*, %struct.intel_timeline** %4, align 8
  %18 = call i32 @intel_timeline_pin(%struct.intel_timeline* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = call %struct.i915_request* @ERR_PTR(i32 %22)
  store %struct.i915_request* %23, %struct.i915_request** %7, align 8
  br label %51

24:                                               ; preds = %3
  %25 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %5, align 8
  %26 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.i915_request* @i915_request_create(i32 %27)
  store %struct.i915_request* %28, %struct.i915_request** %7, align 8
  %29 = load %struct.i915_request*, %struct.i915_request** %7, align 8
  %30 = call i64 @IS_ERR(%struct.i915_request* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %48

33:                                               ; preds = %24
  %34 = load %struct.i915_request*, %struct.i915_request** %7, align 8
  %35 = load %struct.intel_timeline*, %struct.intel_timeline** %4, align 8
  %36 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @emit_ggtt_store_dw(%struct.i915_request* %34, i32 %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load %struct.i915_request*, %struct.i915_request** %7, align 8
  %41 = call i32 @i915_request_add(%struct.i915_request* %40)
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %33
  %45 = load i32, i32* %8, align 4
  %46 = call %struct.i915_request* @ERR_PTR(i32 %45)
  store %struct.i915_request* %46, %struct.i915_request** %7, align 8
  br label %47

47:                                               ; preds = %44, %33
  br label %48

48:                                               ; preds = %47, %32
  %49 = load %struct.intel_timeline*, %struct.intel_timeline** %4, align 8
  %50 = call i32 @intel_timeline_unpin(%struct.intel_timeline* %49)
  br label %51

51:                                               ; preds = %48, %21
  %52 = load %struct.i915_request*, %struct.i915_request** %7, align 8
  %53 = call i64 @IS_ERR(%struct.i915_request* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %51
  %58 = load %struct.i915_request*, %struct.i915_request** %7, align 8
  ret %struct.i915_request* %58
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @intel_timeline_pin(%struct.intel_timeline*) #1

declare dso_local %struct.i915_request* @ERR_PTR(i32) #1

declare dso_local %struct.i915_request* @i915_request_create(i32) #1

declare dso_local i64 @IS_ERR(%struct.i915_request*) #1

declare dso_local i32 @emit_ggtt_store_dw(%struct.i915_request*, i32, i32) #1

declare dso_local i32 @i915_request_add(%struct.i915_request*) #1

declare dso_local i32 @intel_timeline_unpin(%struct.intel_timeline*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
