; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_inno_hdmi.c_inno_hdmi_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_inno_hdmi.c_inno_hdmi_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.inno_hdmi = type { %struct.TYPE_4__, %struct.device*, %struct.drm_encoder }
%struct.TYPE_4__ = type { i32 }
%struct.device = type { i32 }
%struct.drm_encoder = type { i64 }

@EPROBE_DEFER = common dso_local global i32 0, align 4
@inno_hdmi_encoder_helper_funcs = common dso_local global i32 0, align 4
@inno_hdmi_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TMDS = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_HPD = common dso_local global i32 0, align 4
@inno_hdmi_connector_helper_funcs = common dso_local global i32 0, align 4
@inno_hdmi_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_HDMIA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.inno_hdmi*)* @inno_hdmi_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inno_hdmi_register(%struct.drm_device* %0, %struct.inno_hdmi* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.inno_hdmi*, align 8
  %6 = alloca %struct.drm_encoder*, align 8
  %7 = alloca %struct.device*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.inno_hdmi* %1, %struct.inno_hdmi** %5, align 8
  %8 = load %struct.inno_hdmi*, %struct.inno_hdmi** %5, align 8
  %9 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %8, i32 0, i32 2
  store %struct.drm_encoder* %9, %struct.drm_encoder** %6, align 8
  %10 = load %struct.inno_hdmi*, %struct.inno_hdmi** %5, align 8
  %11 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %10, i32 0, i32 1
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %7, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %14 = load %struct.device*, %struct.device** %7, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @drm_of_find_possible_crtcs(%struct.drm_device* %13, i32 %16)
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %19 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %21 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EPROBE_DEFER, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %50

27:                                               ; preds = %2
  %28 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %29 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %28, i32* @inno_hdmi_encoder_helper_funcs)
  %30 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %31 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %32 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %33 = call i32 @drm_encoder_init(%struct.drm_device* %30, %struct.drm_encoder* %31, i32* @inno_hdmi_encoder_funcs, i32 %32, i32* null)
  %34 = load i32, i32* @DRM_CONNECTOR_POLL_HPD, align 4
  %35 = load %struct.inno_hdmi*, %struct.inno_hdmi** %5, align 8
  %36 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load %struct.inno_hdmi*, %struct.inno_hdmi** %5, align 8
  %39 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %38, i32 0, i32 0
  %40 = call i32 @drm_connector_helper_add(%struct.TYPE_4__* %39, i32* @inno_hdmi_connector_helper_funcs)
  %41 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %42 = load %struct.inno_hdmi*, %struct.inno_hdmi** %5, align 8
  %43 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %42, i32 0, i32 0
  %44 = load i32, i32* @DRM_MODE_CONNECTOR_HDMIA, align 4
  %45 = call i32 @drm_connector_init(%struct.drm_device* %41, %struct.TYPE_4__* %43, i32* @inno_hdmi_connector_funcs, i32 %44)
  %46 = load %struct.inno_hdmi*, %struct.inno_hdmi** %5, align 8
  %47 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %46, i32 0, i32 0
  %48 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %49 = call i32 @drm_connector_attach_encoder(%struct.TYPE_4__* %47, %struct.drm_encoder* %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %27, %24
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @drm_of_find_possible_crtcs(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.drm_encoder*, i32*) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @drm_connector_helper_add(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, %struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.TYPE_4__*, %struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
