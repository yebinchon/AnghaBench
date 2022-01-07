; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_i915_capture_error_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_i915_capture_error_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.i915_gpu_state* }
%struct.i915_gpu_state = type { i32, i32 }

@i915_capture_error_state.warned = internal global i32 0, align 4
@i915_modparams = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@DRIVER_TIMESTAMP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [85 x i8] c"GPU hangs can indicate a bug anywhere in the entire gfx stack, including userspace.\0A\00", align 1
@.str.2 = private unnamed_addr constant [81 x i8] c"Please file a _new_ bug report on bugs.freedesktop.org against DRI -> DRM/Intel\0A\00", align 1
@.str.3 = private unnamed_addr constant [90 x i8] c"drm/i915 developers can then reassign to the right component if it's not a kernel issue.\0A\00", align 1
@.str.4 = private unnamed_addr constant [82 x i8] c"The GPU crash dump is required to analyze GPU hangs, so please always attach it.\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"GPU crash dump saved to /sys/class/drm/card%d/error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i915_capture_error_state(%struct.drm_i915_private* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.i915_gpu_state*, align 8
  %8 = alloca i64, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i915_modparams, i32 0, i32 0), align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %91

12:                                               ; preds = %3
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %14 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %15, align 8
  %17 = call i64 @READ_ONCE(%struct.i915_gpu_state* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %91

20:                                               ; preds = %12
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %22 = call %struct.i915_gpu_state* @i915_capture_gpu_state(%struct.drm_i915_private* %21)
  store %struct.i915_gpu_state* %22, %struct.i915_gpu_state** %7, align 8
  %23 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %7, align 8
  %24 = call i64 @IS_ERR(%struct.i915_gpu_state* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %91

27:                                               ; preds = %20
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %29 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %7, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @error_msg(%struct.i915_gpu_state* %32, i32 %33, i8* %34)
  %36 = call i32 @dev_info(i32 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %7, align 8
  %38 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %63, label %41

41:                                               ; preds = %27
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %43 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %48 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %49, align 8
  %51 = icmp ne %struct.i915_gpu_state* %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %41
  %53 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %7, align 8
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %55 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store %struct.i915_gpu_state* %53, %struct.i915_gpu_state** %56, align 8
  store %struct.i915_gpu_state* null, %struct.i915_gpu_state** %7, align 8
  br label %57

57:                                               ; preds = %52, %41
  %58 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %59 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  br label %63

63:                                               ; preds = %57, %27
  %64 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %7, align 8
  %65 = icmp ne %struct.i915_gpu_state* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %7, align 8
  %68 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %67, i32 0, i32 0
  %69 = call i32 @__i915_gpu_state_free(i32* %68)
  br label %91

70:                                               ; preds = %63
  %71 = call i32 @xchg(i32* @i915_capture_error_state.warned, i32 1)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %91, label %73

73:                                               ; preds = %70
  %74 = call i64 (...) @ktime_get_real_seconds()
  %75 = load i64, i64* @DRIVER_TIMESTAMP, align 8
  %76 = sub nsw i64 %74, %75
  %77 = call i64 @DAY_AS_SECONDS(i32 180)
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %73
  %80 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0))
  %81 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0))
  %82 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.3, i64 0, i64 0))
  %83 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.4, i64 0, i64 0))
  %84 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %85 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %11, %19, %26, %66, %79, %73, %70
  ret void
}

declare dso_local i64 @READ_ONCE(%struct.i915_gpu_state*) #1

declare dso_local %struct.i915_gpu_state* @i915_capture_gpu_state(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_ERR(%struct.i915_gpu_state*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @error_msg(%struct.i915_gpu_state*, i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__i915_gpu_state_free(i32*) #1

declare dso_local i32 @xchg(i32*, i32) #1

declare dso_local i64 @ktime_get_real_seconds(...) #1

declare dso_local i64 @DAY_AS_SECONDS(i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
