; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_drv.c_amdgpu_device_get_job_timeout_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_drv.c_amdgpu_device_get_job_timeout_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, i64, i64, i64 }

@amdgpu_lockup_timeout = common dso_local global i8* null, align 8
@MAX_SCHEDULE_TIMEOUT = common dso_local global i8* null, align 8
@AMDGPU_MAX_TIMEOUT_PARAM_LENTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_device_get_job_timeout_settings(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %9 = load i8*, i8** @amdgpu_lockup_timeout, align 8
  store i8* %9, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %10 = call i8* @msecs_to_jiffies(i64 10000)
  %11 = ptrtoint i8* %10 to i64
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 2
  store i64 %16, i64* %18, align 8
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 1
  store i64 %16, i64* %20, align 8
  %21 = load i8*, i8** @MAX_SCHEDULE_TIMEOUT, align 8
  %22 = ptrtoint i8* %21 to i64
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 3
  store i64 %22, i64* %24, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* @AMDGPU_MAX_TIMEOUT_PARAM_LENTH, align 4
  %27 = call i64 @strnlen(i8* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %97

29:                                               ; preds = %1
  br label %30

30:                                               ; preds = %84, %50, %29
  %31 = call i8* @strsep(i8** %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %31, i8** %5, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* @AMDGPU_MAX_TIMEOUT_PARAM_LENTH, align 4
  %36 = call i64 @strnlen(i8* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %33, %30
  %39 = phi i1 [ false, %30 ], [ %37, %33 ]
  br i1 %39, label %40, label %85

40:                                               ; preds = %38
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @kstrtol(i8* %41, i32 0, i64* %7)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %2, align 4
  br label %99

47:                                               ; preds = %40
  %48 = load i64, i64* %7, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %30

53:                                               ; preds = %47
  %54 = load i64, i64* %7, align 8
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i8*, i8** @MAX_SCHEDULE_TIMEOUT, align 8
  %58 = ptrtoint i8* %57 to i64
  store i64 %58, i64* %7, align 8
  br label %63

59:                                               ; preds = %53
  %60 = load i64, i64* %7, align 8
  %61 = call i8* @msecs_to_jiffies(i64 %60)
  %62 = ptrtoint i8* %61 to i64
  store i64 %62, i64* %7, align 8
  br label %63

63:                                               ; preds = %59, %56
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  switch i32 %65, label %83 [
    i32 0, label %67
    i32 1, label %71
    i32 2, label %75
    i32 3, label %79
  ]

67:                                               ; preds = %64
  %68 = load i64, i64* %7, align 8
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %70 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  br label %84

71:                                               ; preds = %64
  %72 = load i64, i64* %7, align 8
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %74 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %73, i32 0, i32 3
  store i64 %72, i64* %74, align 8
  br label %84

75:                                               ; preds = %64
  %76 = load i64, i64* %7, align 8
  %77 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %78 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  br label %84

79:                                               ; preds = %64
  %80 = load i64, i64* %7, align 8
  %81 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %82 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %81, i32 0, i32 2
  store i64 %80, i64* %82, align 8
  br label %84

83:                                               ; preds = %64
  br label %84

84:                                               ; preds = %83, %79, %75, %71, %67
  br label %30

85:                                               ; preds = %38
  %86 = load i32, i32* %6, align 4
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %90 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %93 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %92, i32 0, i32 2
  store i64 %91, i64* %93, align 8
  %94 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %95 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %94, i32 0, i32 1
  store i64 %91, i64* %95, align 8
  br label %96

96:                                               ; preds = %88, %85
  br label %97

97:                                               ; preds = %96, %1
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %97, %45
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i8* @msecs_to_jiffies(i64) #1

declare dso_local i64 @strnlen(i8*, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
