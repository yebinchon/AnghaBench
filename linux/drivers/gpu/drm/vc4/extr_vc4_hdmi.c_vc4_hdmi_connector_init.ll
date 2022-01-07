; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_hdmi.c_vc4_hdmi_connector_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_hdmi.c_vc4_hdmi_connector_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, i32, i64 }
%struct.drm_device = type { i32 }
%struct.drm_encoder = type { i32 }
%struct.vc4_hdmi_connector = type { %struct.drm_encoder*, %struct.drm_connector }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vc4_hdmi_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_HDMIA = common dso_local global i32 0, align 4
@vc4_hdmi_connector_helper_funcs = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_CONNECT = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_DISCONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_connector* (%struct.drm_device*, %struct.drm_encoder*)* @vc4_hdmi_connector_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_connector* @vc4_hdmi_connector_init(%struct.drm_device* %0, %struct.drm_encoder* %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca %struct.drm_connector*, align 8
  %7 = alloca %struct.vc4_hdmi_connector*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_encoder* %1, %struct.drm_encoder** %5, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.vc4_hdmi_connector* @devm_kzalloc(i32 %11, i32 24, i32 %12)
  store %struct.vc4_hdmi_connector* %13, %struct.vc4_hdmi_connector** %7, align 8
  %14 = load %struct.vc4_hdmi_connector*, %struct.vc4_hdmi_connector** %7, align 8
  %15 = icmp ne %struct.vc4_hdmi_connector* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.drm_connector* @ERR_PTR(i32 %18)
  store %struct.drm_connector* %19, %struct.drm_connector** %3, align 8
  br label %55

20:                                               ; preds = %2
  %21 = load %struct.vc4_hdmi_connector*, %struct.vc4_hdmi_connector** %7, align 8
  %22 = getelementptr inbounds %struct.vc4_hdmi_connector, %struct.vc4_hdmi_connector* %21, i32 0, i32 1
  store %struct.drm_connector* %22, %struct.drm_connector** %6, align 8
  %23 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %24 = load %struct.vc4_hdmi_connector*, %struct.vc4_hdmi_connector** %7, align 8
  %25 = getelementptr inbounds %struct.vc4_hdmi_connector, %struct.vc4_hdmi_connector* %24, i32 0, i32 0
  store %struct.drm_encoder* %23, %struct.drm_encoder** %25, align 8
  %26 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %27 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %28 = load i32, i32* @DRM_MODE_CONNECTOR_HDMIA, align 4
  %29 = call i32 @drm_connector_init(%struct.drm_device* %26, %struct.drm_connector* %27, i32* @vc4_hdmi_connector_funcs, i32 %28)
  %30 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %31 = call i32 @drm_connector_helper_add(%struct.drm_connector* %30, i32* @vc4_hdmi_connector_helper_funcs)
  %32 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %33 = call i32 @drm_mode_create_tv_margin_properties(%struct.drm_device* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %20
  %37 = load i32, i32* %8, align 4
  %38 = call %struct.drm_connector* @ERR_PTR(i32 %37)
  store %struct.drm_connector* %38, %struct.drm_connector** %3, align 8
  br label %55

39:                                               ; preds = %20
  %40 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %41 = call i32 @drm_connector_attach_tv_margin_properties(%struct.drm_connector* %40)
  %42 = load i32, i32* @DRM_CONNECTOR_POLL_CONNECT, align 4
  %43 = load i32, i32* @DRM_CONNECTOR_POLL_DISCONNECT, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %46 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %48 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  %49 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %50 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %49, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %52 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %53 = call i32 @drm_connector_attach_encoder(%struct.drm_connector* %51, %struct.drm_encoder* %52)
  %54 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  store %struct.drm_connector* %54, %struct.drm_connector** %3, align 8
  br label %55

55:                                               ; preds = %39, %36, %16
  %56 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  ret %struct.drm_connector* %56
}

declare dso_local %struct.vc4_hdmi_connector* @devm_kzalloc(i32, i32, i32) #1

declare dso_local %struct.drm_connector* @ERR_PTR(i32) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, %struct.drm_connector*, i32*, i32) #1

declare dso_local i32 @drm_connector_helper_add(%struct.drm_connector*, i32*) #1

declare dso_local i32 @drm_mode_create_tv_margin_properties(%struct.drm_device*) #1

declare dso_local i32 @drm_connector_attach_tv_margin_properties(%struct.drm_connector*) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.drm_connector*, %struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
