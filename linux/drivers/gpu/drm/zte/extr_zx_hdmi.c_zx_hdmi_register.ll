; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_hdmi.c_zx_hdmi_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_hdmi.c_zx_hdmi_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.zx_hdmi = type { %struct.TYPE_4__, %struct.drm_encoder }
%struct.TYPE_4__ = type { i32 }
%struct.drm_encoder = type { i32 }

@VOU_CRTC_MASK = common dso_local global i32 0, align 4
@zx_hdmi_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TMDS = common dso_local global i32 0, align 4
@zx_hdmi_encoder_helper_funcs = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_HPD = common dso_local global i32 0, align 4
@zx_hdmi_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_HDMIA = common dso_local global i32 0, align 4
@zx_hdmi_connector_helper_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.zx_hdmi*)* @zx_hdmi_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_hdmi_register(%struct.drm_device* %0, %struct.zx_hdmi* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.zx_hdmi*, align 8
  %5 = alloca %struct.drm_encoder*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.zx_hdmi* %1, %struct.zx_hdmi** %4, align 8
  %6 = load %struct.zx_hdmi*, %struct.zx_hdmi** %4, align 8
  %7 = getelementptr inbounds %struct.zx_hdmi, %struct.zx_hdmi* %6, i32 0, i32 1
  store %struct.drm_encoder* %7, %struct.drm_encoder** %5, align 8
  %8 = load i32, i32* @VOU_CRTC_MASK, align 4
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %10 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %13 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %14 = call i32 @drm_encoder_init(%struct.drm_device* %11, %struct.drm_encoder* %12, i32* @zx_hdmi_encoder_funcs, i32 %13, i32* null)
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %16 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %15, i32* @zx_hdmi_encoder_helper_funcs)
  %17 = load i32, i32* @DRM_CONNECTOR_POLL_HPD, align 4
  %18 = load %struct.zx_hdmi*, %struct.zx_hdmi** %4, align 8
  %19 = getelementptr inbounds %struct.zx_hdmi, %struct.zx_hdmi* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %22 = load %struct.zx_hdmi*, %struct.zx_hdmi** %4, align 8
  %23 = getelementptr inbounds %struct.zx_hdmi, %struct.zx_hdmi* %22, i32 0, i32 0
  %24 = load i32, i32* @DRM_MODE_CONNECTOR_HDMIA, align 4
  %25 = call i32 @drm_connector_init(%struct.drm_device* %21, %struct.TYPE_4__* %23, i32* @zx_hdmi_connector_funcs, i32 %24)
  %26 = load %struct.zx_hdmi*, %struct.zx_hdmi** %4, align 8
  %27 = getelementptr inbounds %struct.zx_hdmi, %struct.zx_hdmi* %26, i32 0, i32 0
  %28 = call i32 @drm_connector_helper_add(%struct.TYPE_4__* %27, i32* @zx_hdmi_connector_helper_funcs)
  %29 = load %struct.zx_hdmi*, %struct.zx_hdmi** %4, align 8
  %30 = getelementptr inbounds %struct.zx_hdmi, %struct.zx_hdmi* %29, i32 0, i32 0
  %31 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %32 = call i32 @drm_connector_attach_encoder(%struct.TYPE_4__* %30, %struct.drm_encoder* %31)
  ret i32 0
}

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.drm_encoder*, i32*) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, %struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @drm_connector_helper_add(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.TYPE_4__*, %struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
