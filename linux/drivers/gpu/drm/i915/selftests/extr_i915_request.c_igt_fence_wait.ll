; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_request.c_igt_fence_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_request.c_igt_fence_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_4__, %struct.TYPE_3__** }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.i915_request = type { i32 }

@HZ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RCS0 = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"fence wait success before submit (expected timeout)!\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"fence signaled immediately!\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"fence wait success after submit (expected timeout)!\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"fence wait timed out (expected success)!\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"fence unsignaled after waiting!\0A\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"fence wait timed out when complete (expected success)!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @igt_fence_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igt_fence_wait(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.i915_request*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* @HZ, align 4
  %8 = sdiv i32 %7, 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %3, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.drm_i915_private*
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %4, align 8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %15 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %19 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %19, align 8
  %21 = load i64, i64* @RCS0, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %20, i64 %21
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %3, align 8
  %27 = call %struct.i915_request* @mock_request(i32 %25, i64 %26)
  store %struct.i915_request* %27, %struct.i915_request** %5, align 8
  %28 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %29 = icmp ne %struct.i915_request* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %96

33:                                               ; preds = %1
  %34 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %35 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %34, i32 0, i32 0
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @dma_fence_wait_timeout(i32* %35, i32 0, i64 %36)
  %38 = load i32, i32* @ETIME, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %96

43:                                               ; preds = %33
  %44 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %45 = call i32 @i915_request_add(%struct.i915_request* %44)
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %47 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %51 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %50, i32 0, i32 0
  %52 = call i64 @dma_fence_is_signaled(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %91

56:                                               ; preds = %43
  %57 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %58 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %57, i32 0, i32 0
  %59 = load i64, i64* %3, align 8
  %60 = sdiv i64 %59, 2
  %61 = call i32 @dma_fence_wait_timeout(i32* %58, i32 0, i64 %60)
  %62 = load i32, i32* @ETIME, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp ne i32 %61, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = call i32 @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %91

67:                                               ; preds = %56
  %68 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %69 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %68, i32 0, i32 0
  %70 = load i64, i64* %3, align 8
  %71 = call i32 @dma_fence_wait_timeout(i32* %69, i32 0, i64 %70)
  %72 = icmp sle i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %91

75:                                               ; preds = %67
  %76 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %77 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %76, i32 0, i32 0
  %78 = call i64 @dma_fence_is_signaled(i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %75
  %81 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %91

82:                                               ; preds = %75
  %83 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %84 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %83, i32 0, i32 0
  %85 = load i64, i64* %3, align 8
  %86 = call i32 @dma_fence_wait_timeout(i32* %84, i32 0, i64 %85)
  %87 = icmp sle i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = call i32 @pr_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0))
  br label %91

90:                                               ; preds = %82
  store i32 0, i32* %6, align 4
  br label %91

91:                                               ; preds = %90, %88, %80, %73, %65, %54
  %92 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %93 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = call i32 @mutex_lock(i32* %94)
  br label %96

96:                                               ; preds = %91, %41, %30
  %97 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %98 = call i32 @mock_device_flush(%struct.drm_i915_private* %97)
  %99 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %100 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = call i32 @mutex_unlock(i32* %101)
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.i915_request* @mock_request(i32, i64) #1

declare dso_local i32 @dma_fence_wait_timeout(i32*, i32, i64) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @i915_request_add(%struct.i915_request*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @dma_fence_is_signaled(i32*) #1

declare dso_local i32 @mock_device_flush(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
