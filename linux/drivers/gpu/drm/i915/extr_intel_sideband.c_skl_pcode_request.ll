; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_sideband.c_skl_pcode_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_sideband.c_skl_pcode_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"PCODE timeout, retrying with preemption disabled\0A\00", align 1
@COND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skl_pcode_request(%struct.drm_i915_private* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %16 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = call i32 (%struct.drm_i915_private*, i32, i32, i32, i32, i32*, ...) bitcast (i32 (...)* @skl_pcode_try_request to i32 (%struct.drm_i915_private*, i32, i32, i32, i32, i32*, ...)*)(%struct.drm_i915_private* %18, i32 %19, i32 %20, i32 %21, i32 %22, i32* %13)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  store i32 0, i32* %14, align 4
  br label %56

26:                                               ; preds = %6
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 (%struct.drm_i915_private*, i32, i32, i32, i32, i32*, ...) bitcast (i32 (...)* @skl_pcode_try_request to i32 (%struct.drm_i915_private*, i32, i32, i32, i32, i32*, ...)*)(%struct.drm_i915_private* %27, i32 %28, i32 %29, i32 %30, i32 %31, i32* %13)
  %33 = sext i32 %32 to i64
  %34 = load i32, i32* %12, align 4
  %35 = mul nsw i32 %34, 1000
  %36 = call i32 @_wait_for(i64 %33, i32 %35, i32 10, i32 10)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %26
  br label %56

40:                                               ; preds = %26
  %41 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* %12, align 4
  %43 = icmp sgt i32 %42, 3
  %44 = zext i1 %43 to i32
  %45 = call i32 @WARN_ON_ONCE(i32 %44)
  %46 = call i32 (...) @preempt_disable()
  %47 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 (%struct.drm_i915_private*, i32, i32, i32, i32, i32*, ...) bitcast (i32 (...)* @skl_pcode_try_request to i32 (%struct.drm_i915_private*, i32, i32, i32, i32, i32*, ...)*)(%struct.drm_i915_private* %47, i32 %48, i32 %49, i32 %50, i32 %51, i32* %13)
  %53 = sext i32 %52 to i64
  %54 = call i32 @wait_for_atomic(i64 %53, i32 50)
  store i32 %54, i32* %14, align 4
  %55 = call i32 (...) @preempt_enable()
  br label %56

56:                                               ; preds = %40, %39, %25
  %57 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %58 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %14, align 4
  br label %66

64:                                               ; preds = %56
  %65 = load i32, i32* %13, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  ret i32 %67
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @skl_pcode_try_request(...) #1

declare dso_local i32 @_wait_for(i64, i32, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @wait_for_atomic(i64, i32) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
