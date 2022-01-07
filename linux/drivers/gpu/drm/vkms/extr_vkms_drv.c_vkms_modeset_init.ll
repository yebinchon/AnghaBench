; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vkms/extr_vkms_drv.c_vkms_modeset_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vkms/extr_vkms_drv.c_vkms_modeset_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vkms_device = type { %struct.drm_device }
%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32, i32, i32, i32, i32* }

@vkms_mode_funcs = common dso_local global i32 0, align 4
@XRES_MIN = common dso_local global i32 0, align 4
@YRES_MIN = common dso_local global i32 0, align 4
@XRES_MAX = common dso_local global i32 0, align 4
@YRES_MAX = common dso_local global i32 0, align 4
@vkms_mode_config_helpers = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vkms_device*)* @vkms_modeset_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vkms_modeset_init(%struct.vkms_device* %0) #0 {
  %2 = alloca %struct.vkms_device*, align 8
  %3 = alloca %struct.drm_device*, align 8
  store %struct.vkms_device* %0, %struct.vkms_device** %2, align 8
  %4 = load %struct.vkms_device*, %struct.vkms_device** %2, align 8
  %5 = getelementptr inbounds %struct.vkms_device, %struct.vkms_device* %4, i32 0, i32 0
  store %struct.drm_device* %5, %struct.drm_device** %3, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %7 = call i32 @drm_mode_config_init(%struct.drm_device* %6)
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 6
  store i32* @vkms_mode_funcs, i32** %10, align 8
  %11 = load i32, i32* @XRES_MIN, align 4
  %12 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 5
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* @YRES_MIN, align 4
  %16 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 4
  store i32 %15, i32* %18, align 8
  %19 = load i32, i32* @XRES_MAX, align 4
  %20 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @YRES_MAX, align 4
  %24 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  store i32 %23, i32* %26, align 8
  %27 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %28 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 24, i32* %29, align 8
  %30 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %31 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32* @vkms_mode_config_helpers, i32** %32, align 8
  %33 = load %struct.vkms_device*, %struct.vkms_device** %2, align 8
  %34 = call i32 @vkms_output_init(%struct.vkms_device* %33, i32 0)
  ret i32 %34
}

declare dso_local i32 @drm_mode_config_init(%struct.drm_device*) #1

declare dso_local i32 @vkms_output_init(%struct.vkms_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
