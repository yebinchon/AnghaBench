; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_gen8_modify_self.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_gen8_modify_self.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_context = type { i32 }
%struct.flex = type { i32 }
%struct.i915_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_context*, %struct.flex*, i32)* @gen8_modify_self to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen8_modify_self(%struct.intel_context* %0, %struct.flex* %1, i32 %2) #0 {
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
  %11 = call %struct.i915_request* @i915_request_create(%struct.intel_context* %10)
  store %struct.i915_request* %11, %struct.i915_request** %8, align 8
  %12 = load %struct.i915_request*, %struct.i915_request** %8, align 8
  %13 = call i64 @IS_ERR(%struct.i915_request* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.i915_request*, %struct.i915_request** %8, align 8
  %17 = call i32 @PTR_ERR(%struct.i915_request* %16)
  store i32 %17, i32* %4, align 4
  br label %27

18:                                               ; preds = %3
  %19 = load %struct.i915_request*, %struct.i915_request** %8, align 8
  %20 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %21 = load %struct.flex*, %struct.flex** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @gen8_load_flex(%struct.i915_request* %19, %struct.intel_context* %20, %struct.flex* %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.i915_request*, %struct.i915_request** %8, align 8
  %25 = call i32 @i915_request_add(%struct.i915_request* %24)
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %18, %15
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local %struct.i915_request* @i915_request_create(%struct.intel_context*) #1

declare dso_local i64 @IS_ERR(%struct.i915_request*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_request*) #1

declare dso_local i32 @gen8_load_flex(%struct.i915_request*, %struct.intel_context*, %struct.flex*, i32) #1

declare dso_local i32 @i915_request_add(%struct.i915_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
