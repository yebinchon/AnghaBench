; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_drv.c_msm_ioctl_wait_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_drv.c_msm_ioctl_wait_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { %struct.msm_gpu* }
%struct.msm_gpu = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_msm_wait_fence = type { i32, i32, i64, i32 }
%struct.msm_gpu_submitqueue = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"invalid pad: %08x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @msm_ioctl_wait_fence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_ioctl_wait_fence(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.msm_drm_private*, align 8
  %9 = alloca %struct.drm_msm_wait_fence*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.msm_gpu_submitqueue*, align 8
  %12 = alloca %struct.msm_gpu*, align 8
  %13 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.msm_drm_private*, %struct.msm_drm_private** %15, align 8
  store %struct.msm_drm_private* %16, %struct.msm_drm_private** %8, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.drm_msm_wait_fence*
  store %struct.drm_msm_wait_fence* %18, %struct.drm_msm_wait_fence** %9, align 8
  %19 = load %struct.drm_msm_wait_fence*, %struct.drm_msm_wait_fence** %9, align 8
  %20 = getelementptr inbounds %struct.drm_msm_wait_fence, %struct.drm_msm_wait_fence* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @to_ktime(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.msm_drm_private*, %struct.msm_drm_private** %8, align 8
  %24 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %23, i32 0, i32 0
  %25 = load %struct.msm_gpu*, %struct.msm_gpu** %24, align 8
  store %struct.msm_gpu* %25, %struct.msm_gpu** %12, align 8
  %26 = load %struct.drm_msm_wait_fence*, %struct.drm_msm_wait_fence** %9, align 8
  %27 = getelementptr inbounds %struct.drm_msm_wait_fence, %struct.drm_msm_wait_fence* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %3
  %31 = load %struct.drm_msm_wait_fence*, %struct.drm_msm_wait_fence** %9, align 8
  %32 = getelementptr inbounds %struct.drm_msm_wait_fence, %struct.drm_msm_wait_fence* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %72

37:                                               ; preds = %3
  %38 = load %struct.msm_gpu*, %struct.msm_gpu** %12, align 8
  %39 = icmp ne %struct.msm_gpu* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %72

41:                                               ; preds = %37
  %42 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %43 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.drm_msm_wait_fence*, %struct.drm_msm_wait_fence** %9, align 8
  %46 = getelementptr inbounds %struct.drm_msm_wait_fence, %struct.drm_msm_wait_fence* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.msm_gpu_submitqueue* @msm_submitqueue_get(i32 %44, i32 %47)
  store %struct.msm_gpu_submitqueue* %48, %struct.msm_gpu_submitqueue** %11, align 8
  %49 = load %struct.msm_gpu_submitqueue*, %struct.msm_gpu_submitqueue** %11, align 8
  %50 = icmp ne %struct.msm_gpu_submitqueue* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %41
  %52 = load i32, i32* @ENOENT, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %72

54:                                               ; preds = %41
  %55 = load %struct.msm_gpu*, %struct.msm_gpu** %12, align 8
  %56 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %56, align 8
  %58 = load %struct.msm_gpu_submitqueue*, %struct.msm_gpu_submitqueue** %11, align 8
  %59 = getelementptr inbounds %struct.msm_gpu_submitqueue, %struct.msm_gpu_submitqueue* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %57, i64 %60
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.drm_msm_wait_fence*, %struct.drm_msm_wait_fence** %9, align 8
  %66 = getelementptr inbounds %struct.drm_msm_wait_fence, %struct.drm_msm_wait_fence* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @msm_wait_fence(i32 %64, i32 %67, i32* %10, i32 1)
  store i32 %68, i32* %13, align 4
  %69 = load %struct.msm_gpu_submitqueue*, %struct.msm_gpu_submitqueue** %11, align 8
  %70 = call i32 @msm_submitqueue_put(%struct.msm_gpu_submitqueue* %69)
  %71 = load i32, i32* %13, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %54, %51, %40, %30
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @to_ktime(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i64) #1

declare dso_local %struct.msm_gpu_submitqueue* @msm_submitqueue_get(i32, i32) #1

declare dso_local i32 @msm_wait_fence(i32, i32, i32*, i32) #1

declare dso_local i32 @msm_submitqueue_put(%struct.msm_gpu_submitqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
