; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_reset.c_context_mark_guilty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_reset.c_context_mark_guilty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_gem_context = type { i64*, i32, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@CONTEXT_FAST_HANG_JIFFIES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"context %s: guilty %d, banned\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_gem_context*)* @context_mark_guilty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @context_mark_guilty(%struct.i915_gem_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i915_gem_context*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i915_gem_context* %0, %struct.i915_gem_context** %3, align 8
  %7 = load %struct.i915_gem_context*, %struct.i915_gem_context** %3, align 8
  %8 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %7, i32 0, i32 2
  %9 = call i32 @atomic_inc(i32* %8)
  %10 = load %struct.i915_gem_context*, %struct.i915_gem_context** %3, align 8
  %11 = call i32 @i915_gem_context_is_bannable(%struct.i915_gem_context* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %93

14:                                               ; preds = %1
  %15 = load %struct.i915_gem_context*, %struct.i915_gem_context** %3, align 8
  %16 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %4, align 8
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %43, %14
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.i915_gem_context*, %struct.i915_gem_context** %3, align 8
  %23 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = call i32 @ARRAY_SIZE(i64* %24)
  %26 = sub nsw i32 %25, 1
  %27 = icmp slt i32 %21, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %20
  %29 = load %struct.i915_gem_context*, %struct.i915_gem_context** %3, align 8
  %30 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %31, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.i915_gem_context*, %struct.i915_gem_context** %3, align 8
  %38 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  store i64 %36, i64* %42, align 8
  br label %43

43:                                               ; preds = %28
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %20

46:                                               ; preds = %20
  %47 = load i64, i64* @jiffies, align 8
  %48 = load %struct.i915_gem_context*, %struct.i915_gem_context** %3, align 8
  %49 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  store i64 %47, i64* %53, align 8
  %54 = load %struct.i915_gem_context*, %struct.i915_gem_context** %3, align 8
  %55 = call i32 @i915_gem_context_is_recoverable(%struct.i915_gem_context* %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %5, align 4
  %59 = load i64, i64* @jiffies, align 8
  %60 = load i64, i64* %4, align 8
  %61 = load i64, i64* @CONTEXT_FAST_HANG_JIFFIES, align 8
  %62 = add i64 %60, %61
  %63 = call i64 @time_before(i64 %59, i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %46
  store i32 1, i32* %5, align 4
  br label %66

66:                                               ; preds = %65, %46
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load %struct.i915_gem_context*, %struct.i915_gem_context** %3, align 8
  %71 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.i915_gem_context*, %struct.i915_gem_context** %3, align 8
  %74 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %73, i32 0, i32 2
  %75 = call i32 @atomic_read(i32* %74)
  %76 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %75)
  %77 = load %struct.i915_gem_context*, %struct.i915_gem_context** %3, align 8
  %78 = call i32 @i915_gem_context_set_banned(%struct.i915_gem_context* %77)
  br label %79

79:                                               ; preds = %69, %66
  %80 = load %struct.i915_gem_context*, %struct.i915_gem_context** %3, align 8
  %81 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @IS_ERR_OR_NULL(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %79
  %86 = load %struct.i915_gem_context*, %struct.i915_gem_context** %3, align 8
  %87 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.i915_gem_context*, %struct.i915_gem_context** %3, align 8
  %90 = call i32 @client_mark_guilty(i32 %88, %struct.i915_gem_context* %89)
  br label %91

91:                                               ; preds = %85, %79
  %92 = load i32, i32* %5, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %91, %13
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @i915_gem_context_is_bannable(%struct.i915_gem_context*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @i915_gem_context_is_recoverable(%struct.i915_gem_context*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @i915_gem_context_set_banned(%struct.i915_gem_context*) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @client_mark_guilty(i32, %struct.i915_gem_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
