; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_ioctl.c_qxl_getparam_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_ioctl.c_qxl_getparam_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.qxl_device* }
%struct.qxl_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_qxl_getparam = type { i32, i32 }

@QXL_MAX_RES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @qxl_getparam_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qxl_getparam_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.qxl_device*, align 8
  %9 = alloca %struct.drm_qxl_getparam*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.qxl_device*, %struct.qxl_device** %11, align 8
  store %struct.qxl_device* %12, %struct.qxl_device** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.drm_qxl_getparam*
  store %struct.drm_qxl_getparam* %14, %struct.drm_qxl_getparam** %9, align 8
  %15 = load %struct.drm_qxl_getparam*, %struct.drm_qxl_getparam** %9, align 8
  %16 = getelementptr inbounds %struct.drm_qxl_getparam, %struct.drm_qxl_getparam* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %30 [
    i32 128, label %18
    i32 129, label %26
  ]

18:                                               ; preds = %3
  %19 = load %struct.qxl_device*, %struct.qxl_device** %8, align 8
  %20 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.drm_qxl_getparam*, %struct.drm_qxl_getparam** %9, align 8
  %25 = getelementptr inbounds %struct.drm_qxl_getparam, %struct.drm_qxl_getparam* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  br label %33

26:                                               ; preds = %3
  %27 = load i32, i32* @QXL_MAX_RES, align 4
  %28 = load %struct.drm_qxl_getparam*, %struct.drm_qxl_getparam** %9, align 8
  %29 = getelementptr inbounds %struct.drm_qxl_getparam, %struct.drm_qxl_getparam* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %34

33:                                               ; preds = %26, %18
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
