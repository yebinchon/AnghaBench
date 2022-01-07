; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_drv.c_msm_ioctl_submitqueue_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_drv.c_msm_ioctl_submitqueue_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_msm_submitqueue = type { i32, i32, i32 }

@MSM_SUBMITQUEUE_FLAGS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @msm_ioctl_submitqueue_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_ioctl_submitqueue_new(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_msm_submitqueue*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.drm_msm_submitqueue*
  store %struct.drm_msm_submitqueue* %10, %struct.drm_msm_submitqueue** %8, align 8
  %11 = load %struct.drm_msm_submitqueue*, %struct.drm_msm_submitqueue** %8, align 8
  %12 = getelementptr inbounds %struct.drm_msm_submitqueue, %struct.drm_msm_submitqueue* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MSM_SUBMITQUEUE_FLAGS, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %35

21:                                               ; preds = %3
  %22 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %23 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %24 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.drm_msm_submitqueue*, %struct.drm_msm_submitqueue** %8, align 8
  %27 = getelementptr inbounds %struct.drm_msm_submitqueue, %struct.drm_msm_submitqueue* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.drm_msm_submitqueue*, %struct.drm_msm_submitqueue** %8, align 8
  %30 = getelementptr inbounds %struct.drm_msm_submitqueue, %struct.drm_msm_submitqueue* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.drm_msm_submitqueue*, %struct.drm_msm_submitqueue** %8, align 8
  %33 = getelementptr inbounds %struct.drm_msm_submitqueue, %struct.drm_msm_submitqueue* %32, i32 0, i32 1
  %34 = call i32 @msm_submitqueue_create(%struct.drm_device* %22, i32 %25, i32 %28, i32 %31, i32* %33)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %21, %18
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @msm_submitqueue_create(%struct.drm_device*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
