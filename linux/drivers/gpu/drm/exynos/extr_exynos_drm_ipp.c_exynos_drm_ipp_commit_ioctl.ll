; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_ipp.c_exynos_drm_ipp_commit_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_ipp.c_exynos_drm_ipp_commit_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_exynos_ioctl_ipp_commit = type { i32, i32, i32, i64 }
%struct.exynos_drm_ipp = type { i32, i32, i32 }
%struct.exynos_drm_ipp_task = type { i32, %struct.exynos_drm_ipp* }

@DRM_EXYNOS_IPP_FLAGS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DRM_EXYNOS_IPP_FLAG_TEST_ONLY = common dso_local global i32 0, align 4
@DRM_EXYNOS_IPP_FLAG_EVENT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRM_EXYNOS_IPP_FLAG_NONBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"ipp: %d, nonblocking processing task %pK\0A\00", align 1
@DRM_EXYNOS_IPP_TASK_ASYNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"ipp: %d, processing task %pK\0A\00", align 1
@DRM_EXYNOS_IPP_TASK_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exynos_drm_ipp_commit_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_exynos_ioctl_ipp_commit*, align 8
  %9 = alloca %struct.exynos_drm_ipp*, align 8
  %10 = alloca %struct.exynos_drm_ipp_task*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.drm_exynos_ioctl_ipp_commit*
  store %struct.drm_exynos_ioctl_ipp_commit* %13, %struct.drm_exynos_ioctl_ipp_commit** %8, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.drm_exynos_ioctl_ipp_commit*, %struct.drm_exynos_ioctl_ipp_commit** %8, align 8
  %15 = getelementptr inbounds %struct.drm_exynos_ioctl_ipp_commit, %struct.drm_exynos_ioctl_ipp_commit* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @DRM_EXYNOS_IPP_FLAGS, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %3
  %22 = load %struct.drm_exynos_ioctl_ipp_commit*, %struct.drm_exynos_ioctl_ipp_commit** %8, align 8
  %23 = getelementptr inbounds %struct.drm_exynos_ioctl_ipp_commit, %struct.drm_exynos_ioctl_ipp_commit* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21, %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %173

29:                                               ; preds = %21
  %30 = load %struct.drm_exynos_ioctl_ipp_commit*, %struct.drm_exynos_ioctl_ipp_commit** %8, align 8
  %31 = getelementptr inbounds %struct.drm_exynos_ioctl_ipp_commit, %struct.drm_exynos_ioctl_ipp_commit* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @DRM_EXYNOS_IPP_FLAG_TEST_ONLY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %29
  %37 = load %struct.drm_exynos_ioctl_ipp_commit*, %struct.drm_exynos_ioctl_ipp_commit** %8, align 8
  %38 = getelementptr inbounds %struct.drm_exynos_ioctl_ipp_commit, %struct.drm_exynos_ioctl_ipp_commit* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @DRM_EXYNOS_IPP_FLAG_EVENT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %173

46:                                               ; preds = %36, %29
  %47 = load %struct.drm_exynos_ioctl_ipp_commit*, %struct.drm_exynos_ioctl_ipp_commit** %8, align 8
  %48 = getelementptr inbounds %struct.drm_exynos_ioctl_ipp_commit, %struct.drm_exynos_ioctl_ipp_commit* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call %struct.exynos_drm_ipp* @__ipp_get(i32 %49)
  store %struct.exynos_drm_ipp* %50, %struct.exynos_drm_ipp** %9, align 8
  %51 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %9, align 8
  %52 = icmp ne %struct.exynos_drm_ipp* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* @ENOENT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %173

56:                                               ; preds = %46
  %57 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %9, align 8
  %58 = call %struct.exynos_drm_ipp_task* @exynos_drm_ipp_task_alloc(%struct.exynos_drm_ipp* %57)
  store %struct.exynos_drm_ipp_task* %58, %struct.exynos_drm_ipp_task** %10, align 8
  %59 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %10, align 8
  %60 = icmp ne %struct.exynos_drm_ipp_task* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %173

64:                                               ; preds = %56
  %65 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %10, align 8
  %66 = load %struct.drm_exynos_ioctl_ipp_commit*, %struct.drm_exynos_ioctl_ipp_commit** %8, align 8
  %67 = call i32 @exynos_drm_ipp_task_set(%struct.exynos_drm_ipp_task* %65, %struct.drm_exynos_ioctl_ipp_commit* %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %168

71:                                               ; preds = %64
  %72 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %10, align 8
  %73 = call i32 @exynos_drm_ipp_task_check(%struct.exynos_drm_ipp_task* %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %168

77:                                               ; preds = %71
  %78 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %10, align 8
  %79 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %80 = call i32 @exynos_drm_ipp_task_setup_buffers(%struct.exynos_drm_ipp_task* %78, %struct.drm_file* %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %77
  %84 = load %struct.drm_exynos_ioctl_ipp_commit*, %struct.drm_exynos_ioctl_ipp_commit** %8, align 8
  %85 = getelementptr inbounds %struct.drm_exynos_ioctl_ipp_commit, %struct.drm_exynos_ioctl_ipp_commit* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @DRM_EXYNOS_IPP_FLAG_TEST_ONLY, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83, %77
  br label %168

91:                                               ; preds = %83
  %92 = load %struct.drm_exynos_ioctl_ipp_commit*, %struct.drm_exynos_ioctl_ipp_commit** %8, align 8
  %93 = getelementptr inbounds %struct.drm_exynos_ioctl_ipp_commit, %struct.drm_exynos_ioctl_ipp_commit* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @DRM_EXYNOS_IPP_FLAG_EVENT, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %91
  %99 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %10, align 8
  %100 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %101 = load %struct.drm_exynos_ioctl_ipp_commit*, %struct.drm_exynos_ioctl_ipp_commit** %8, align 8
  %102 = getelementptr inbounds %struct.drm_exynos_ioctl_ipp_commit, %struct.drm_exynos_ioctl_ipp_commit* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @exynos_drm_ipp_event_create(%struct.exynos_drm_ipp_task* %99, %struct.drm_file* %100, i32 %103)
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %98
  br label %168

108:                                              ; preds = %98
  br label %109

109:                                              ; preds = %108, %91
  %110 = load %struct.drm_exynos_ioctl_ipp_commit*, %struct.drm_exynos_ioctl_ipp_commit** %8, align 8
  %111 = getelementptr inbounds %struct.drm_exynos_ioctl_ipp_commit, %struct.drm_exynos_ioctl_ipp_commit* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @DRM_EXYNOS_IPP_FLAG_NONBLOCK, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %135

116:                                              ; preds = %109
  %117 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %9, align 8
  %118 = getelementptr inbounds %struct.exynos_drm_ipp, %struct.exynos_drm_ipp* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %9, align 8
  %121 = getelementptr inbounds %struct.exynos_drm_ipp, %struct.exynos_drm_ipp* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %10, align 8
  %124 = call i32 @DRM_DEV_DEBUG_DRIVER(i32 %119, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %122, %struct.exynos_drm_ipp_task* %123)
  %125 = load i32, i32* @DRM_EXYNOS_IPP_TASK_ASYNC, align 4
  %126 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %10, align 8
  %127 = getelementptr inbounds %struct.exynos_drm_ipp_task, %struct.exynos_drm_ipp_task* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 8
  %130 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %10, align 8
  %131 = getelementptr inbounds %struct.exynos_drm_ipp_task, %struct.exynos_drm_ipp_task* %130, i32 0, i32 1
  %132 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %131, align 8
  %133 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %10, align 8
  %134 = call i32 @exynos_drm_ipp_schedule_task(%struct.exynos_drm_ipp* %132, %struct.exynos_drm_ipp_task* %133)
  store i32 0, i32* %11, align 4
  br label %166

135:                                              ; preds = %109
  %136 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %9, align 8
  %137 = getelementptr inbounds %struct.exynos_drm_ipp, %struct.exynos_drm_ipp* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %9, align 8
  %140 = getelementptr inbounds %struct.exynos_drm_ipp, %struct.exynos_drm_ipp* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %10, align 8
  %143 = call i32 @DRM_DEV_DEBUG_DRIVER(i32 %138, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %141, %struct.exynos_drm_ipp_task* %142)
  %144 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %9, align 8
  %145 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %10, align 8
  %146 = call i32 @exynos_drm_ipp_schedule_task(%struct.exynos_drm_ipp* %144, %struct.exynos_drm_ipp_task* %145)
  %147 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %9, align 8
  %148 = getelementptr inbounds %struct.exynos_drm_ipp, %struct.exynos_drm_ipp* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %10, align 8
  %151 = getelementptr inbounds %struct.exynos_drm_ipp_task, %struct.exynos_drm_ipp_task* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @DRM_EXYNOS_IPP_TASK_DONE, align 4
  %154 = and i32 %152, %153
  %155 = call i32 @wait_event_interruptible(i32 %149, i32 %154)
  store i32 %155, i32* %11, align 4
  %156 = load i32, i32* %11, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %135
  %159 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %9, align 8
  %160 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %10, align 8
  %161 = call i32 @exynos_drm_ipp_task_abort(%struct.exynos_drm_ipp* %159, %struct.exynos_drm_ipp_task* %160)
  br label %165

162:                                              ; preds = %135
  %163 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %10, align 8
  %164 = call i32 @exynos_drm_ipp_task_cleanup(%struct.exynos_drm_ipp_task* %163)
  store i32 %164, i32* %11, align 4
  br label %165

165:                                              ; preds = %162, %158
  br label %166

166:                                              ; preds = %165, %116
  %167 = load i32, i32* %11, align 4
  store i32 %167, i32* %4, align 4
  br label %173

168:                                              ; preds = %107, %90, %76, %70
  %169 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %9, align 8
  %170 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %10, align 8
  %171 = call i32 @exynos_drm_ipp_task_free(%struct.exynos_drm_ipp* %169, %struct.exynos_drm_ipp_task* %170)
  %172 = load i32, i32* %11, align 4
  store i32 %172, i32* %4, align 4
  br label %173

173:                                              ; preds = %168, %166, %61, %53, %43, %26
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

declare dso_local %struct.exynos_drm_ipp* @__ipp_get(i32) #1

declare dso_local %struct.exynos_drm_ipp_task* @exynos_drm_ipp_task_alloc(%struct.exynos_drm_ipp*) #1

declare dso_local i32 @exynos_drm_ipp_task_set(%struct.exynos_drm_ipp_task*, %struct.drm_exynos_ioctl_ipp_commit*) #1

declare dso_local i32 @exynos_drm_ipp_task_check(%struct.exynos_drm_ipp_task*) #1

declare dso_local i32 @exynos_drm_ipp_task_setup_buffers(%struct.exynos_drm_ipp_task*, %struct.drm_file*) #1

declare dso_local i32 @exynos_drm_ipp_event_create(%struct.exynos_drm_ipp_task*, %struct.drm_file*, i32) #1

declare dso_local i32 @DRM_DEV_DEBUG_DRIVER(i32, i8*, i32, %struct.exynos_drm_ipp_task*) #1

declare dso_local i32 @exynos_drm_ipp_schedule_task(%struct.exynos_drm_ipp*, %struct.exynos_drm_ipp_task*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @exynos_drm_ipp_task_abort(%struct.exynos_drm_ipp*, %struct.exynos_drm_ipp_task*) #1

declare dso_local i32 @exynos_drm_ipp_task_cleanup(%struct.exynos_drm_ipp_task*) #1

declare dso_local i32 @exynos_drm_ipp_task_free(%struct.exynos_drm_ipp*, %struct.exynos_drm_ipp_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
