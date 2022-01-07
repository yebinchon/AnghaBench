; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_context.c___remote_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_context.c___remote_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_context = type { i32 }
%struct.i915_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_context*, %struct.intel_context*)* @__remote_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__remote_sync(%struct.intel_context* %0, %struct.intel_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_context*, align 8
  %5 = alloca %struct.intel_context*, align 8
  %6 = alloca %struct.i915_request*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_context* %0, %struct.intel_context** %4, align 8
  store %struct.intel_context* %1, %struct.intel_context** %5, align 8
  %8 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %9 = call i32 @intel_context_pin(%struct.intel_context* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  br label %39

14:                                               ; preds = %2
  %15 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  %16 = call %struct.i915_request* @intel_context_create_request(%struct.intel_context* %15)
  store %struct.i915_request* %16, %struct.i915_request** %6, align 8
  %17 = load %struct.i915_request*, %struct.i915_request** %6, align 8
  %18 = call i64 @IS_ERR(%struct.i915_request* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load %struct.i915_request*, %struct.i915_request** %6, align 8
  %22 = call i32 @PTR_ERR(%struct.i915_request* %21)
  store i32 %22, i32* %7, align 4
  br label %35

23:                                               ; preds = %14
  %24 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %25 = load %struct.i915_request*, %struct.i915_request** %6, align 8
  %26 = call i32 @intel_context_prepare_remote_request(%struct.intel_context* %24, %struct.i915_request* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.i915_request*, %struct.i915_request** %6, align 8
  %31 = call i32 @i915_request_add(%struct.i915_request* %30)
  br label %35

32:                                               ; preds = %23
  %33 = load %struct.i915_request*, %struct.i915_request** %6, align 8
  %34 = call i32 @request_sync(%struct.i915_request* %33)
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %32, %29, %20
  %36 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %37 = call i32 @intel_context_unpin(%struct.intel_context* %36)
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %12
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @intel_context_pin(%struct.intel_context*) #1

declare dso_local %struct.i915_request* @intel_context_create_request(%struct.intel_context*) #1

declare dso_local i64 @IS_ERR(%struct.i915_request*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_request*) #1

declare dso_local i32 @intel_context_prepare_remote_request(%struct.intel_context*, %struct.i915_request*) #1

declare dso_local i32 @i915_request_add(%struct.i915_request*) #1

declare dso_local i32 @request_sync(%struct.i915_request*) #1

declare dso_local i32 @intel_context_unpin(%struct.intel_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
