; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_request.c_igt_request_rewind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_request.c_igt_request_rewind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.i915_request = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.i915_request*)* }
%struct.i915_gem_context = type { i32 }
%struct.intel_context = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1
@RCS0 = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"failed to cancel request (already executed)!\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"timed out waiting for high priority request\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"low priority request already completed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @igt_request_rewind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igt_request_rewind(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.i915_request*, align 8
  %5 = alloca %struct.i915_request*, align 8
  %6 = alloca [2 x %struct.i915_gem_context*], align 16
  %7 = alloca %struct.intel_context*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.drm_i915_private*
  store %struct.drm_i915_private* %10, %struct.drm_i915_private** %3, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %14 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %18 = call %struct.i915_gem_context* @mock_context(%struct.drm_i915_private* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = getelementptr inbounds [2 x %struct.i915_gem_context*], [2 x %struct.i915_gem_context*]* %6, i64 0, i64 0
  store %struct.i915_gem_context* %18, %struct.i915_gem_context** %19, align 16
  %20 = getelementptr inbounds [2 x %struct.i915_gem_context*], [2 x %struct.i915_gem_context*]* %6, i64 0, i64 0
  %21 = load %struct.i915_gem_context*, %struct.i915_gem_context** %20, align 16
  %22 = load i32, i32* @RCS0, align 4
  %23 = call %struct.intel_context* @i915_gem_context_get_engine(%struct.i915_gem_context* %21, i32 %22)
  store %struct.intel_context* %23, %struct.intel_context** %7, align 8
  %24 = load %struct.intel_context*, %struct.intel_context** %7, align 8
  %25 = call i32 @IS_ERR(%struct.intel_context* %24)
  %26 = call i32 @GEM_BUG_ON(i32 %25)
  %27 = load %struct.intel_context*, %struct.intel_context** %7, align 8
  %28 = load i32, i32* @HZ, align 4
  %29 = mul nsw i32 2, %28
  %30 = call %struct.i915_request* @mock_request(%struct.intel_context* %27, i32 %29)
  store %struct.i915_request* %30, %struct.i915_request** %4, align 8
  %31 = load %struct.intel_context*, %struct.intel_context** %7, align 8
  %32 = call i32 @intel_context_put(%struct.intel_context* %31)
  %33 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %34 = icmp ne %struct.i915_request* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %1
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %116

38:                                               ; preds = %1
  %39 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %40 = call i32 @i915_request_get(%struct.i915_request* %39)
  %41 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %42 = call i32 @i915_request_add(%struct.i915_request* %41)
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %44 = call %struct.i915_gem_context* @mock_context(%struct.drm_i915_private* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %45 = getelementptr inbounds [2 x %struct.i915_gem_context*], [2 x %struct.i915_gem_context*]* %6, i64 0, i64 1
  store %struct.i915_gem_context* %44, %struct.i915_gem_context** %45, align 8
  %46 = getelementptr inbounds [2 x %struct.i915_gem_context*], [2 x %struct.i915_gem_context*]* %6, i64 0, i64 1
  %47 = load %struct.i915_gem_context*, %struct.i915_gem_context** %46, align 8
  %48 = load i32, i32* @RCS0, align 4
  %49 = call %struct.intel_context* @i915_gem_context_get_engine(%struct.i915_gem_context* %47, i32 %48)
  store %struct.intel_context* %49, %struct.intel_context** %7, align 8
  %50 = load %struct.intel_context*, %struct.intel_context** %7, align 8
  %51 = call i32 @IS_ERR(%struct.intel_context* %50)
  %52 = call i32 @GEM_BUG_ON(i32 %51)
  %53 = load %struct.intel_context*, %struct.intel_context** %7, align 8
  %54 = call %struct.i915_request* @mock_request(%struct.intel_context* %53, i32 0)
  store %struct.i915_request* %54, %struct.i915_request** %5, align 8
  %55 = load %struct.intel_context*, %struct.intel_context** %7, align 8
  %56 = call i32 @intel_context_put(%struct.intel_context* %55)
  %57 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %58 = icmp ne %struct.i915_request* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %38
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %8, align 4
  br label %110

62:                                               ; preds = %38
  %63 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %64 = call i32 @mock_cancel_request(%struct.i915_request* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %68 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %69 = call i32 @i915_request_add(%struct.i915_request* %68)
  br label %110

70:                                               ; preds = %62
  %71 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %72 = call i32 @i915_request_get(%struct.i915_request* %71)
  %73 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %74 = call i32 @i915_request_add(%struct.i915_request* %73)
  %75 = call i32 (...) @rcu_read_lock()
  %76 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %77 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32 (%struct.i915_request*)*, i32 (%struct.i915_request*)** %79, align 8
  %81 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %82 = call i32 %80(%struct.i915_request* %81)
  %83 = call i32 (...) @rcu_read_unlock()
  %84 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %85 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = call i32 @mutex_unlock(i32* %86)
  %88 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %89 = load i32, i32* @HZ, align 4
  %90 = call i32 @i915_request_wait(%struct.i915_request* %88, i32 0, i32 %89)
  %91 = load i32, i32* @ETIME, align 4
  %92 = sub nsw i32 0, %91
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %70
  %95 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %103

96:                                               ; preds = %70
  %97 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %98 = call i64 @i915_request_completed(%struct.i915_request* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %103

102:                                              ; preds = %96
  store i32 0, i32* %8, align 4
  br label %103

103:                                              ; preds = %102, %100, %94
  %104 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %105 = call i32 @i915_request_put(%struct.i915_request* %104)
  %106 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %107 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = call i32 @mutex_lock(i32* %108)
  br label %110

110:                                              ; preds = %103, %66, %59
  %111 = getelementptr inbounds [2 x %struct.i915_gem_context*], [2 x %struct.i915_gem_context*]* %6, i64 0, i64 1
  %112 = load %struct.i915_gem_context*, %struct.i915_gem_context** %111, align 8
  %113 = call i32 @mock_context_close(%struct.i915_gem_context* %112)
  %114 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %115 = call i32 @i915_request_put(%struct.i915_request* %114)
  br label %116

116:                                              ; preds = %110, %35
  %117 = getelementptr inbounds [2 x %struct.i915_gem_context*], [2 x %struct.i915_gem_context*]* %6, i64 0, i64 0
  %118 = load %struct.i915_gem_context*, %struct.i915_gem_context** %117, align 16
  %119 = call i32 @mock_context_close(%struct.i915_gem_context* %118)
  %120 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %121 = call i32 @mock_device_flush(%struct.drm_i915_private* %120)
  %122 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %123 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = call i32 @mutex_unlock(i32* %124)
  %126 = load i32, i32* %8, align 4
  ret i32 %126
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.i915_gem_context* @mock_context(%struct.drm_i915_private*, i8*) #1

declare dso_local %struct.intel_context* @i915_gem_context_get_engine(%struct.i915_gem_context*, i32) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @IS_ERR(%struct.intel_context*) #1

declare dso_local %struct.i915_request* @mock_request(%struct.intel_context*, i32) #1

declare dso_local i32 @intel_context_put(%struct.intel_context*) #1

declare dso_local i32 @i915_request_get(%struct.i915_request*) #1

declare dso_local i32 @i915_request_add(%struct.i915_request*) #1

declare dso_local i32 @mock_cancel_request(%struct.i915_request*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @i915_request_wait(%struct.i915_request*, i32, i32) #1

declare dso_local i64 @i915_request_completed(%struct.i915_request*) #1

declare dso_local i32 @i915_request_put(%struct.i915_request*) #1

declare dso_local i32 @mock_context_close(%struct.i915_gem_context*) #1

declare dso_local i32 @mock_device_flush(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
