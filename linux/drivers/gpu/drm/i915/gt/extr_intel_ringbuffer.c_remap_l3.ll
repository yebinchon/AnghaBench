; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_remap_l3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_remap_l3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { %struct.i915_gem_context* }
%struct.i915_gem_context = type { i32 }

@MAX_L3_SLICES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_request*)* @remap_l3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remap_l3(%struct.i915_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i915_request*, align 8
  %4 = alloca %struct.i915_gem_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i915_request* %0, %struct.i915_request** %3, align 8
  %7 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %8 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %7, i32 0, i32 0
  %9 = load %struct.i915_gem_context*, %struct.i915_gem_context** %8, align 8
  store %struct.i915_gem_context* %9, %struct.i915_gem_context** %4, align 8
  %10 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %11 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

15:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %38, %15
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @MAX_L3_SLICES, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %16
  %21 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %22 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @BIT(i32 %24)
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  br label %38

29:                                               ; preds = %20
  %30 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @remap_l3_slice(%struct.i915_request* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %44

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %28
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %16

41:                                               ; preds = %16
  %42 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %43 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %42, i32 0, i32 0
  store i32 0, i32* %43, align 4
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %41, %35, %14
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @remap_l3_slice(%struct.i915_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
