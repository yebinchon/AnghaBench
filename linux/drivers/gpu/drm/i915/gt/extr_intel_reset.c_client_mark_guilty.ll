; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_reset.c_client_mark_guilty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_reset.c_client_mark_guilty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_file_private = type { i32, i32 }
%struct.i915_gem_context = type { i32 }

@I915_CLIENT_SCORE_CONTEXT_BAN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@I915_CLIENT_FAST_HANG_JIFFIES = common dso_local global i64 0, align 8
@I915_CLIENT_SCORE_HANG_FAST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"client %s: gained %u ban score, now %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_file_private*, %struct.i915_gem_context*)* @client_mark_guilty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @client_mark_guilty(%struct.drm_i915_file_private* %0, %struct.i915_gem_context* %1) #0 {
  %3 = alloca %struct.drm_i915_file_private*, align 8
  %4 = alloca %struct.i915_gem_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.drm_i915_file_private* %0, %struct.drm_i915_file_private** %3, align 8
  store %struct.i915_gem_context* %1, %struct.i915_gem_context** %4, align 8
  %7 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %8 = call i64 @i915_gem_context_is_banned(%struct.i915_gem_context* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @I915_CLIENT_SCORE_CONTEXT_BAN, align 4
  store i32 %11, i32* %5, align 4
  br label %13

12:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %12, %10
  %14 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %3, align 8
  %15 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %14, i32 0, i32 1
  %16 = load i32, i32* @jiffies, align 4
  %17 = call i64 @xchg(i32* %15, i32 %16)
  store i64 %17, i64* %6, align 8
  %18 = load i32, i32* @jiffies, align 4
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @I915_CLIENT_FAST_HANG_JIFFIES, align 8
  %21 = add i64 %19, %20
  %22 = call i64 @time_before(i32 %18, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %13
  %25 = load i64, i64* @I915_CLIENT_SCORE_HANG_FAST, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = add nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %24, %13
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %3, align 8
  %36 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %35, i32 0, i32 0
  %37 = call i32 @atomic_add(i32 %34, i32* %36)
  %38 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %39 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %3, align 8
  %43 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %42, i32 0, i32 0
  %44 = call i32 @atomic_read(i32* %43)
  %45 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %33, %30
  ret void
}

declare dso_local i64 @i915_gem_context_is_banned(%struct.i915_gem_context*) #1

declare dso_local i64 @xchg(i32*, i32) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
