; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c___free_engines.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c___free_engines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_gem_engines = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_gem_engines*, i32)* @__free_engines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__free_engines(%struct.i915_gem_engines* %0, i32 %1) #0 {
  %3 = alloca %struct.i915_gem_engines*, align 8
  %4 = alloca i32, align 4
  store %struct.i915_gem_engines* %0, %struct.i915_gem_engines** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %19, %18, %2
  %6 = load i32, i32* %4, align 4
  %7 = add i32 %6, -1
  store i32 %7, i32* %4, align 4
  %8 = icmp ne i32 %6, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %5
  %10 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %3, align 8
  %11 = getelementptr inbounds %struct.i915_gem_engines, %struct.i915_gem_engines* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %9
  br label %5

19:                                               ; preds = %9
  %20 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %3, align 8
  %21 = getelementptr inbounds %struct.i915_gem_engines, %struct.i915_gem_engines* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @intel_context_put(i32 %26)
  br label %5

28:                                               ; preds = %5
  %29 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %3, align 8
  %30 = call i32 @kfree(%struct.i915_gem_engines* %29)
  ret void
}

declare dso_local i32 @intel_context_put(i32) #1

declare dso_local i32 @kfree(%struct.i915_gem_engines*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
