; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_drv.c_lima_ioctl_get_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_drv.c_lima_ioctl_get_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_lima_get_param = type { i32, i32, i64 }
%struct.lima_device = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DRM_LIMA_PARAM_GPU_ID_MALI400 = common dso_local global i32 0, align 4
@DRM_LIMA_PARAM_GPU_ID_MALI450 = common dso_local global i32 0, align 4
@DRM_LIMA_PARAM_GPU_ID_UNKNOWN = common dso_local global i32 0, align 4
@lima_pipe_pp = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @lima_ioctl_get_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lima_ioctl_get_param(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_lima_get_param*, align 8
  %9 = alloca %struct.lima_device*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.drm_lima_get_param*
  store %struct.drm_lima_get_param* %11, %struct.drm_lima_get_param** %8, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = call %struct.lima_device* @to_lima_dev(%struct.drm_device* %12)
  store %struct.lima_device* %13, %struct.lima_device** %9, align 8
  %14 = load %struct.drm_lima_get_param*, %struct.drm_lima_get_param** %8, align 8
  %15 = getelementptr inbounds %struct.drm_lima_get_param, %struct.drm_lima_get_param* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %68

21:                                               ; preds = %3
  %22 = load %struct.drm_lima_get_param*, %struct.drm_lima_get_param** %8, align 8
  %23 = getelementptr inbounds %struct.drm_lima_get_param, %struct.drm_lima_get_param* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %64 [
    i32 133, label %25
    i32 131, label %42
    i32 132, label %52
    i32 130, label %58
  ]

25:                                               ; preds = %21
  %26 = load %struct.lima_device*, %struct.lima_device** %9, align 8
  %27 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %37 [
    i32 129, label %29
    i32 128, label %33
  ]

29:                                               ; preds = %25
  %30 = load i32, i32* @DRM_LIMA_PARAM_GPU_ID_MALI400, align 4
  %31 = load %struct.drm_lima_get_param*, %struct.drm_lima_get_param** %8, align 8
  %32 = getelementptr inbounds %struct.drm_lima_get_param, %struct.drm_lima_get_param* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %41

33:                                               ; preds = %25
  %34 = load i32, i32* @DRM_LIMA_PARAM_GPU_ID_MALI450, align 4
  %35 = load %struct.drm_lima_get_param*, %struct.drm_lima_get_param** %8, align 8
  %36 = getelementptr inbounds %struct.drm_lima_get_param, %struct.drm_lima_get_param* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %41

37:                                               ; preds = %25
  %38 = load i32, i32* @DRM_LIMA_PARAM_GPU_ID_UNKNOWN, align 4
  %39 = load %struct.drm_lima_get_param*, %struct.drm_lima_get_param** %8, align 8
  %40 = getelementptr inbounds %struct.drm_lima_get_param, %struct.drm_lima_get_param* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %33, %29
  br label %67

42:                                               ; preds = %21
  %43 = load %struct.lima_device*, %struct.lima_device** %9, align 8
  %44 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i64, i64* @lima_pipe_pp, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.drm_lima_get_param*, %struct.drm_lima_get_param** %8, align 8
  %51 = getelementptr inbounds %struct.drm_lima_get_param, %struct.drm_lima_get_param* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %67

52:                                               ; preds = %21
  %53 = load %struct.lima_device*, %struct.lima_device** %9, align 8
  %54 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.drm_lima_get_param*, %struct.drm_lima_get_param** %8, align 8
  %57 = getelementptr inbounds %struct.drm_lima_get_param, %struct.drm_lima_get_param* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %67

58:                                               ; preds = %21
  %59 = load %struct.lima_device*, %struct.lima_device** %9, align 8
  %60 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.drm_lima_get_param*, %struct.drm_lima_get_param** %8, align 8
  %63 = getelementptr inbounds %struct.drm_lima_get_param, %struct.drm_lima_get_param* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %67

64:                                               ; preds = %21
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %68

67:                                               ; preds = %58, %52, %42, %41
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %64, %18
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.lima_device* @to_lima_dev(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
