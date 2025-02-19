; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_lrc.c_spinner_create_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_lrc.c_spinner_create_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { i32 }
%struct.igt_spinner = type { i32 }
%struct.i915_gem_context = type { i32 }
%struct.intel_engine_cs = type { i32 }
%struct.intel_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i915_request* (%struct.igt_spinner*, %struct.i915_gem_context*, %struct.intel_engine_cs*, i32)* @spinner_create_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i915_request* @spinner_create_request(%struct.igt_spinner* %0, %struct.i915_gem_context* %1, %struct.intel_engine_cs* %2, i32 %3) #0 {
  %5 = alloca %struct.i915_request*, align 8
  %6 = alloca %struct.igt_spinner*, align 8
  %7 = alloca %struct.i915_gem_context*, align 8
  %8 = alloca %struct.intel_engine_cs*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.intel_context*, align 8
  %11 = alloca %struct.i915_request*, align 8
  store %struct.igt_spinner* %0, %struct.igt_spinner** %6, align 8
  store %struct.i915_gem_context* %1, %struct.i915_gem_context** %7, align 8
  store %struct.intel_engine_cs* %2, %struct.intel_engine_cs** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.i915_gem_context*, %struct.i915_gem_context** %7, align 8
  %13 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %8, align 8
  %14 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.intel_context* @i915_gem_context_get_engine(%struct.i915_gem_context* %12, i32 %15)
  store %struct.intel_context* %16, %struct.intel_context** %10, align 8
  %17 = load %struct.intel_context*, %struct.intel_context** %10, align 8
  %18 = call i64 @IS_ERR(%struct.intel_context* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load %struct.intel_context*, %struct.intel_context** %10, align 8
  %22 = call %struct.i915_request* @ERR_CAST(%struct.intel_context* %21)
  store %struct.i915_request* %22, %struct.i915_request** %5, align 8
  br label %31

23:                                               ; preds = %4
  %24 = load %struct.igt_spinner*, %struct.igt_spinner** %6, align 8
  %25 = load %struct.intel_context*, %struct.intel_context** %10, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call %struct.i915_request* @igt_spinner_create_request(%struct.igt_spinner* %24, %struct.intel_context* %25, i32 %26)
  store %struct.i915_request* %27, %struct.i915_request** %11, align 8
  %28 = load %struct.intel_context*, %struct.intel_context** %10, align 8
  %29 = call i32 @intel_context_put(%struct.intel_context* %28)
  %30 = load %struct.i915_request*, %struct.i915_request** %11, align 8
  store %struct.i915_request* %30, %struct.i915_request** %5, align 8
  br label %31

31:                                               ; preds = %23, %20
  %32 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  ret %struct.i915_request* %32
}

declare dso_local %struct.intel_context* @i915_gem_context_get_engine(%struct.i915_gem_context*, i32) #1

declare dso_local i64 @IS_ERR(%struct.intel_context*) #1

declare dso_local %struct.i915_request* @ERR_CAST(%struct.intel_context*) #1

declare dso_local %struct.i915_request* @igt_spinner_create_request(%struct.igt_spinner*, %struct.intel_context*, i32) #1

declare dso_local i32 @intel_context_put(%struct.intel_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
