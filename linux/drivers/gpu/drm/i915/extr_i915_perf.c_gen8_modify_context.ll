; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_gen8_modify_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_gen8_modify_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_context = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.flex = type { i32 }
%struct.i915_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_context*, %struct.flex*, i32)* @gen8_modify_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen8_modify_context(%struct.intel_context* %0, %struct.flex* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_context*, align 8
  %6 = alloca %struct.flex*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i915_request*, align 8
  %9 = alloca i32, align 4
  store %struct.intel_context* %0, %struct.intel_context** %5, align 8
  store %struct.flex* %1, %struct.flex** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %11 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %10, i32 0, i32 1
  %12 = call i32 @lockdep_assert_held(i32* %11)
  %13 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %14 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.i915_request* @i915_request_create(i32 %17)
  store %struct.i915_request* %18, %struct.i915_request** %8, align 8
  %19 = load %struct.i915_request*, %struct.i915_request** %8, align 8
  %20 = call i64 @IS_ERR(%struct.i915_request* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load %struct.i915_request*, %struct.i915_request** %8, align 8
  %24 = call i32 @PTR_ERR(%struct.i915_request* %23)
  store i32 %24, i32* %4, align 4
  br label %41

25:                                               ; preds = %3
  %26 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %27 = load %struct.i915_request*, %struct.i915_request** %8, align 8
  %28 = call i32 @intel_context_prepare_remote_request(%struct.intel_context* %26, %struct.i915_request* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.i915_request*, %struct.i915_request** %8, align 8
  %33 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %34 = load %struct.flex*, %struct.flex** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @gen8_store_flex(%struct.i915_request* %32, %struct.intel_context* %33, %struct.flex* %34, i32 %35)
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %31, %25
  %38 = load %struct.i915_request*, %struct.i915_request** %8, align 8
  %39 = call i32 @i915_request_add(%struct.i915_request* %38)
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %37, %22
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.i915_request* @i915_request_create(i32) #1

declare dso_local i64 @IS_ERR(%struct.i915_request*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_request*) #1

declare dso_local i32 @intel_context_prepare_remote_request(%struct.intel_context*, %struct.i915_request*) #1

declare dso_local i32 @gen8_store_flex(%struct.i915_request*, %struct.intel_context*, %struct.flex*, i32) #1

declare dso_local i32 @i915_request_add(%struct.i915_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
