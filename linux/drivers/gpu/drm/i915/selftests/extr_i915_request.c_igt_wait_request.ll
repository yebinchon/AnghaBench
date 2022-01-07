; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_request.c_igt_wait_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_request.c_igt_wait_request.c"
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
@.str = private unnamed_addr constant [71 x i8] c"request wait (busy query) succeeded (expected timeout before submit!)\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"request wait succeeded (expected timeout before submit!)\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"request completed before submit!!\0A\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"request wait (busy query) succeeded (expected timeout after submit!)\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"request completed immediately!\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"request wait succeeded (expected timeout!)\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"request wait timed out!\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"request not complete after waiting!\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"request wait timed out when already complete!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @igt_wait_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igt_wait_request(i8* %0) #0 {
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
  br label %112

33:                                               ; preds = %1
  %34 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %35 = call i32 @i915_request_get(%struct.i915_request* %34)
  %36 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %37 = call i32 @i915_request_wait(%struct.i915_request* %36, i32 0, i64 0)
  %38 = load i32, i32* @ETIME, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  br label %109

43:                                               ; preds = %33
  %44 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %45 = load i64, i64* %3, align 8
  %46 = call i32 @i915_request_wait(%struct.i915_request* %44, i32 0, i64 %45)
  %47 = load i32, i32* @ETIME, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp ne i32 %46, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = call i32 @pr_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  br label %109

52:                                               ; preds = %43
  %53 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %54 = call i64 @i915_request_completed(%struct.i915_request* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %109

58:                                               ; preds = %52
  %59 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %60 = call i32 @i915_request_add(%struct.i915_request* %59)
  %61 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %62 = call i32 @i915_request_wait(%struct.i915_request* %61, i32 0, i64 0)
  %63 = load i32, i32* @ETIME, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp ne i32 %62, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = call i32 @pr_err(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0))
  br label %109

68:                                               ; preds = %58
  %69 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %70 = call i64 @i915_request_completed(%struct.i915_request* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %109

74:                                               ; preds = %68
  %75 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %76 = load i64, i64* %3, align 8
  %77 = sdiv i64 %76, 2
  %78 = call i32 @i915_request_wait(%struct.i915_request* %75, i32 0, i64 %77)
  %79 = load i32, i32* @ETIME, align 4
  %80 = sub nsw i32 0, %79
  %81 = icmp ne i32 %78, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  br label %109

84:                                               ; preds = %74
  %85 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %86 = load i64, i64* %3, align 8
  %87 = call i32 @i915_request_wait(%struct.i915_request* %85, i32 0, i64 %86)
  %88 = load i32, i32* @ETIME, align 4
  %89 = sub nsw i32 0, %88
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %109

93:                                               ; preds = %84
  %94 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %95 = call i64 @i915_request_completed(%struct.i915_request* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %93
  %98 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  br label %109

99:                                               ; preds = %93
  %100 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %101 = load i64, i64* %3, align 8
  %102 = call i32 @i915_request_wait(%struct.i915_request* %100, i32 0, i64 %101)
  %103 = load i32, i32* @ETIME, align 4
  %104 = sub nsw i32 0, %103
  %105 = icmp eq i32 %102, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0))
  br label %109

108:                                              ; preds = %99
  store i32 0, i32* %6, align 4
  br label %109

109:                                              ; preds = %108, %106, %97, %91, %82, %72, %66, %56, %50, %41
  %110 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %111 = call i32 @i915_request_put(%struct.i915_request* %110)
  br label %112

112:                                              ; preds = %109, %30
  %113 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %114 = call i32 @mock_device_flush(%struct.drm_i915_private* %113)
  %115 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %116 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = call i32 @mutex_unlock(i32* %117)
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.i915_request* @mock_request(i32, i64) #1

declare dso_local i32 @i915_request_get(%struct.i915_request*) #1

declare dso_local i32 @i915_request_wait(%struct.i915_request*, i32, i64) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @i915_request_completed(%struct.i915_request*) #1

declare dso_local i32 @i915_request_add(%struct.i915_request*) #1

declare dso_local i32 @i915_request_put(%struct.i915_request*) #1

declare dso_local i32 @mock_device_flush(%struct.drm_i915_private*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
