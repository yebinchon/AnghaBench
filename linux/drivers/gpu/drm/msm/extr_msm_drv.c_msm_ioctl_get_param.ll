; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_drv.c_msm_ioctl_get_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_drv.c_msm_ioctl_get_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { %struct.msm_gpu* }
%struct.msm_gpu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.msm_gpu*, i32, i32*)* }
%struct.drm_file = type { i32 }
%struct.drm_msm_param = type { i64, i32, i32 }

@MSM_PIPE_3D0 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @msm_ioctl_get_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_ioctl_get_param(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.msm_drm_private*, align 8
  %9 = alloca %struct.drm_msm_param*, align 8
  %10 = alloca %struct.msm_gpu*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.msm_drm_private*, %struct.msm_drm_private** %12, align 8
  store %struct.msm_drm_private* %13, %struct.msm_drm_private** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.drm_msm_param*
  store %struct.drm_msm_param* %15, %struct.drm_msm_param** %9, align 8
  %16 = load %struct.drm_msm_param*, %struct.drm_msm_param** %9, align 8
  %17 = getelementptr inbounds %struct.drm_msm_param, %struct.drm_msm_param* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MSM_PIPE_3D0, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %46

24:                                               ; preds = %3
  %25 = load %struct.msm_drm_private*, %struct.msm_drm_private** %8, align 8
  %26 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %25, i32 0, i32 0
  %27 = load %struct.msm_gpu*, %struct.msm_gpu** %26, align 8
  store %struct.msm_gpu* %27, %struct.msm_gpu** %10, align 8
  %28 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %29 = icmp ne %struct.msm_gpu* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @ENXIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %46

33:                                               ; preds = %24
  %34 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %35 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.msm_gpu*, i32, i32*)*, i32 (%struct.msm_gpu*, i32, i32*)** %37, align 8
  %39 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %40 = load %struct.drm_msm_param*, %struct.drm_msm_param** %9, align 8
  %41 = getelementptr inbounds %struct.drm_msm_param, %struct.drm_msm_param* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.drm_msm_param*, %struct.drm_msm_param** %9, align 8
  %44 = getelementptr inbounds %struct.drm_msm_param, %struct.drm_msm_param* %43, i32 0, i32 1
  %45 = call i32 %38(%struct.msm_gpu* %39, i32 %42, i32* %44)
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %33, %30, %21
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
