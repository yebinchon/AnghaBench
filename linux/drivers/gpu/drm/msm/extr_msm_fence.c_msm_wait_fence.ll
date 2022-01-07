; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_fence.c_msm_wait_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_fence.c_msm_wait_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_fence_context = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"%s: waiting on invalid fence: %u (of %u)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"timeout waiting for fence: %u (completed: %u)\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_wait_fence(%struct.msm_fence_context* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.msm_fence_context*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.msm_fence_context* %0, %struct.msm_fence_context** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.msm_fence_context*, %struct.msm_fence_context** %6, align 8
  %14 = getelementptr inbounds %struct.msm_fence_context, %struct.msm_fence_context* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %12, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %4
  %18 = load %struct.msm_fence_context*, %struct.msm_fence_context** %6, align 8
  %19 = getelementptr inbounds %struct.msm_fence_context, %struct.msm_fence_context* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.msm_fence_context*, %struct.msm_fence_context** %6, align 8
  %23 = getelementptr inbounds %struct.msm_fence_context, %struct.msm_fence_context* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %20, i64 %21, i64 %24)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %86

28:                                               ; preds = %4
  %29 = load i32*, i32** %8, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %42, label %31

31:                                               ; preds = %28
  %32 = load %struct.msm_fence_context*, %struct.msm_fence_context** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @fence_completed(%struct.msm_fence_context* %32, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  br label %40

40:                                               ; preds = %37, %36
  %41 = phi i32 [ 0, %36 ], [ %39, %37 ]
  store i32 %41, i32* %10, align 4
  br label %84

42:                                               ; preds = %28
  %43 = load i32*, i32** %8, align 8
  %44 = call i64 @timeout_to_jiffies(i32* %43)
  store i64 %44, i64* %11, align 8
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load %struct.msm_fence_context*, %struct.msm_fence_context** %6, align 8
  %49 = getelementptr inbounds %struct.msm_fence_context, %struct.msm_fence_context* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.msm_fence_context*, %struct.msm_fence_context** %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i64 @fence_completed(%struct.msm_fence_context* %51, i64 %52)
  %54 = load i64, i64* %11, align 8
  %55 = call i32 @wait_event_interruptible_timeout(i32 %50, i64 %53, i64 %54)
  store i32 %55, i32* %10, align 4
  br label %65

56:                                               ; preds = %42
  %57 = load %struct.msm_fence_context*, %struct.msm_fence_context** %6, align 8
  %58 = getelementptr inbounds %struct.msm_fence_context, %struct.msm_fence_context* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.msm_fence_context*, %struct.msm_fence_context** %6, align 8
  %61 = load i64, i64* %7, align 8
  %62 = call i64 @fence_completed(%struct.msm_fence_context* %60, i64 %61)
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @wait_event_timeout(i32 %59, i64 %62, i64 %63)
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %56, %47
  %66 = load i32, i32* %10, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load i64, i64* %7, align 8
  %70 = load %struct.msm_fence_context*, %struct.msm_fence_context** %6, align 8
  %71 = getelementptr inbounds %struct.msm_fence_context, %struct.msm_fence_context* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @DBG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %69, i32 %72)
  %74 = load i32, i32* @ETIMEDOUT, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %10, align 4
  br label %83

76:                                               ; preds = %65
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @ERESTARTSYS, align 4
  %79 = sub nsw i32 0, %78
  %80 = icmp ne i32 %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i32 0, i32* %10, align 4
  br label %82

82:                                               ; preds = %81, %76
  br label %83

83:                                               ; preds = %82, %68
  br label %84

84:                                               ; preds = %83, %40
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %84, %17
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @DRM_ERROR(i8*, i32, i64, i64) #1

declare dso_local i64 @fence_completed(%struct.msm_fence_context*, i64) #1

declare dso_local i64 @timeout_to_jiffies(i32*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i64, i64) #1

declare dso_local i32 @wait_event_timeout(i32, i64, i64) #1

declare dso_local i32 @DBG(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
