; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_context.c___live_remote_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_context.c___live_remote_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32, %struct.intel_context* }
%struct.intel_context = type { i32 }
%struct.i915_gem_context = type { i32 }

@.str = private unnamed_addr constant [66 x i8] c"remote context is not active; expected idle-barrier (%s pass %d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_engine_cs*, %struct.i915_gem_context*)* @__live_remote_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__live_remote_context(%struct.intel_engine_cs* %0, %struct.i915_gem_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_engine_cs*, align 8
  %5 = alloca %struct.i915_gem_context*, align 8
  %6 = alloca %struct.intel_context*, align 8
  %7 = alloca %struct.intel_context*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %4, align 8
  store %struct.i915_gem_context* %1, %struct.i915_gem_context** %5, align 8
  %10 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %11 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %12 = call %struct.intel_context* @intel_context_create(%struct.i915_gem_context* %10, %struct.intel_engine_cs* %11)
  store %struct.intel_context* %12, %struct.intel_context** %7, align 8
  %13 = load %struct.intel_context*, %struct.intel_context** %7, align 8
  %14 = call i64 @IS_ERR(%struct.intel_context* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.intel_context*, %struct.intel_context** %7, align 8
  %18 = call i32 @PTR_ERR(%struct.intel_context* %17)
  store i32 %18, i32* %3, align 4
  br label %73

19:                                               ; preds = %2
  %20 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %21 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %22 = call %struct.intel_context* @intel_context_create(%struct.i915_gem_context* %20, %struct.intel_engine_cs* %21)
  store %struct.intel_context* %22, %struct.intel_context** %6, align 8
  %23 = load %struct.intel_context*, %struct.intel_context** %6, align 8
  %24 = call i64 @IS_ERR(%struct.intel_context* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.intel_context*, %struct.intel_context** %6, align 8
  %28 = call i32 @PTR_ERR(%struct.intel_context* %27)
  store i32 %28, i32* %9, align 4
  br label %69

29:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %63, %29
  %31 = load i32, i32* %8, align 4
  %32 = icmp sle i32 %31, 2
  br i1 %32, label %33, label %66

33:                                               ; preds = %30
  %34 = load %struct.intel_context*, %struct.intel_context** %6, align 8
  %35 = load %struct.intel_context*, %struct.intel_context** %7, align 8
  %36 = call i32 @__remote_sync(%struct.intel_context* %34, %struct.intel_context* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %66

40:                                               ; preds = %33
  %41 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %42 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %41, i32 0, i32 1
  %43 = load %struct.intel_context*, %struct.intel_context** %42, align 8
  %44 = load %struct.intel_context*, %struct.intel_context** %7, align 8
  %45 = call i32 @__remote_sync(%struct.intel_context* %43, %struct.intel_context* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %66

49:                                               ; preds = %40
  %50 = load %struct.intel_context*, %struct.intel_context** %7, align 8
  %51 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %50, i32 0, i32 0
  %52 = call i64 @i915_active_is_idle(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %56 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @pr_err(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %9, align 4
  br label %66

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %30

66:                                               ; preds = %54, %48, %39, %30
  %67 = load %struct.intel_context*, %struct.intel_context** %6, align 8
  %68 = call i32 @intel_context_put(%struct.intel_context* %67)
  br label %69

69:                                               ; preds = %66, %26
  %70 = load %struct.intel_context*, %struct.intel_context** %7, align 8
  %71 = call i32 @intel_context_put(%struct.intel_context* %70)
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %69, %16
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.intel_context* @intel_context_create(%struct.i915_gem_context*, %struct.intel_engine_cs*) #1

declare dso_local i64 @IS_ERR(%struct.intel_context*) #1

declare dso_local i32 @PTR_ERR(%struct.intel_context*) #1

declare dso_local i32 @__remote_sync(%struct.intel_context*, %struct.intel_context*) #1

declare dso_local i64 @i915_active_is_idle(i32*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @intel_context_put(%struct.intel_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
