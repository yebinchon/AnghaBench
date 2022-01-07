; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_gen8_modify_rpcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_gen8_modify_rpcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_context = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.intel_sseu = type { i32 }
%struct.i915_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_context*, i32)* @gen8_modify_rpcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen8_modify_rpcs(%struct.intel_context* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_sseu, align 4
  %5 = alloca %struct.intel_context*, align 8
  %6 = alloca %struct.i915_request*, align 8
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.intel_sseu, %struct.intel_sseu* %4, i32 0, i32 0
  store i32 %1, i32* %8, align 4
  store %struct.intel_context* %0, %struct.intel_context** %5, align 8
  %9 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %10 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %9, i32 0, i32 1
  %11 = call i32 @lockdep_assert_held(i32* %10)
  %12 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %13 = call i32 @intel_context_is_pinned(%struct.intel_context* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %45

16:                                               ; preds = %2
  %17 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %18 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.i915_request* @i915_request_create(i32 %21)
  store %struct.i915_request* %22, %struct.i915_request** %6, align 8
  %23 = load %struct.i915_request*, %struct.i915_request** %6, align 8
  %24 = call i64 @IS_ERR(%struct.i915_request* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load %struct.i915_request*, %struct.i915_request** %6, align 8
  %28 = call i32 @PTR_ERR(%struct.i915_request* %27)
  store i32 %28, i32* %3, align 4
  br label %45

29:                                               ; preds = %16
  %30 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %31 = load %struct.i915_request*, %struct.i915_request** %6, align 8
  %32 = call i32 @intel_context_prepare_remote_request(%struct.intel_context* %30, %struct.i915_request* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load %struct.i915_request*, %struct.i915_request** %6, align 8
  %37 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %38 = getelementptr inbounds %struct.intel_sseu, %struct.intel_sseu* %4, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @gen8_emit_rpcs_config(%struct.i915_request* %36, %struct.intel_context* %37, i32 %39)
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %35, %29
  %42 = load %struct.i915_request*, %struct.i915_request** %6, align 8
  %43 = call i32 @i915_request_add(%struct.i915_request* %42)
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %26, %15
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @intel_context_is_pinned(%struct.intel_context*) #1

declare dso_local %struct.i915_request* @i915_request_create(i32) #1

declare dso_local i64 @IS_ERR(%struct.i915_request*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_request*) #1

declare dso_local i32 @intel_context_prepare_remote_request(%struct.intel_context*, %struct.i915_request*) #1

declare dso_local i32 @gen8_emit_rpcs_config(%struct.i915_request*, %struct.intel_context*, i32) #1

declare dso_local i32 @i915_request_add(%struct.i915_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
