; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_ipuv3-crtc.c_ipu_drm_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_ipuv3-crtc.c_ipu_drm_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.ipu_client_platformdata* }
%struct.ipu_client_platformdata = type { i32 }
%struct.drm_device = type { i32 }
%struct.ipu_crtc = type { %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @ipu_drm_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipu_drm_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ipu_client_platformdata*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.ipu_crtc*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.ipu_client_platformdata*, %struct.ipu_client_platformdata** %13, align 8
  store %struct.ipu_client_platformdata* %14, %struct.ipu_client_platformdata** %8, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.drm_device*
  store %struct.drm_device* %16, %struct.drm_device** %9, align 8
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.ipu_crtc* @devm_kzalloc(%struct.device* %17, i32 8, i32 %18)
  store %struct.ipu_crtc* %19, %struct.ipu_crtc** %10, align 8
  %20 = load %struct.ipu_crtc*, %struct.ipu_crtc** %10, align 8
  %21 = icmp ne %struct.ipu_crtc* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %41

25:                                               ; preds = %3
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = load %struct.ipu_crtc*, %struct.ipu_crtc** %10, align 8
  %28 = getelementptr inbounds %struct.ipu_crtc, %struct.ipu_crtc* %27, i32 0, i32 0
  store %struct.device* %26, %struct.device** %28, align 8
  %29 = load %struct.ipu_crtc*, %struct.ipu_crtc** %10, align 8
  %30 = load %struct.ipu_client_platformdata*, %struct.ipu_client_platformdata** %8, align 8
  %31 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %32 = call i32 @ipu_crtc_init(%struct.ipu_crtc* %29, %struct.ipu_client_platformdata* %30, %struct.drm_device* %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %4, align 4
  br label %41

37:                                               ; preds = %25
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = load %struct.ipu_crtc*, %struct.ipu_crtc** %10, align 8
  %40 = call i32 @dev_set_drvdata(%struct.device* %38, %struct.ipu_crtc* %39)
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %37, %35, %22
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.ipu_crtc* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @ipu_crtc_init(%struct.ipu_crtc*, %struct.ipu_client_platformdata*, %struct.drm_device*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.ipu_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
