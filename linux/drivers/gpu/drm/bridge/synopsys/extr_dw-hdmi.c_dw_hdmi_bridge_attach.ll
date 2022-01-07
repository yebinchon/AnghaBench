; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_bridge_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_bridge_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32, %struct.drm_encoder*, %struct.dw_hdmi* }
%struct.drm_encoder = type { i32 }
%struct.dw_hdmi = type { i32, %struct.cec_notifier*, i32, i32, %struct.drm_connector }
%struct.cec_notifier = type { i32 }
%struct.drm_connector = type { i32, i32 }
%struct.cec_connector_info = type { i32 }

@DRM_CONNECTOR_POLL_HPD = common dso_local global i32 0, align 4
@dw_hdmi_connector_helper_funcs = common dso_local global i32 0, align 4
@dw_hdmi_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_HDMIA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_bridge*)* @dw_hdmi_bridge_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_hdmi_bridge_attach(%struct.drm_bridge* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_bridge*, align 8
  %4 = alloca %struct.dw_hdmi*, align 8
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca %struct.drm_connector*, align 8
  %7 = alloca %struct.cec_connector_info, align 4
  %8 = alloca %struct.cec_notifier*, align 8
  store %struct.drm_bridge* %0, %struct.drm_bridge** %3, align 8
  %9 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %10 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %9, i32 0, i32 2
  %11 = load %struct.dw_hdmi*, %struct.dw_hdmi** %10, align 8
  store %struct.dw_hdmi* %11, %struct.dw_hdmi** %4, align 8
  %12 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %13 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %12, i32 0, i32 1
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %13, align 8
  store %struct.drm_encoder* %14, %struct.drm_encoder** %5, align 8
  %15 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %16 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %15, i32 0, i32 4
  store %struct.drm_connector* %16, %struct.drm_connector** %6, align 8
  %17 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %18 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load i32, i32* @DRM_CONNECTOR_POLL_HPD, align 4
  %20 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %21 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %23 = call i32 @drm_connector_helper_add(%struct.drm_connector* %22, i32* @dw_hdmi_connector_helper_funcs)
  %24 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %25 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %28 = load i32, i32* @DRM_MODE_CONNECTOR_HDMIA, align 4
  %29 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %30 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @drm_connector_init_with_ddc(i32 %26, %struct.drm_connector* %27, i32* @dw_hdmi_connector_funcs, i32 %28, i32 %31)
  %33 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %34 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %35 = call i32 @drm_connector_attach_encoder(%struct.drm_connector* %33, %struct.drm_encoder* %34)
  %36 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %37 = call i32 @cec_fill_conn_info_from_drm(%struct.cec_connector_info* %7, %struct.drm_connector* %36)
  %38 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %39 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.cec_notifier* @cec_notifier_conn_register(i32 %40, i32* null, %struct.cec_connector_info* %7)
  store %struct.cec_notifier* %41, %struct.cec_notifier** %8, align 8
  %42 = load %struct.cec_notifier*, %struct.cec_notifier** %8, align 8
  %43 = icmp ne %struct.cec_notifier* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %1
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %57

47:                                               ; preds = %1
  %48 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %49 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %48, i32 0, i32 0
  %50 = call i32 @mutex_lock(i32* %49)
  %51 = load %struct.cec_notifier*, %struct.cec_notifier** %8, align 8
  %52 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %53 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %52, i32 0, i32 1
  store %struct.cec_notifier* %51, %struct.cec_notifier** %53, align 8
  %54 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %55 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %47, %44
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @drm_connector_helper_add(%struct.drm_connector*, i32*) #1

declare dso_local i32 @drm_connector_init_with_ddc(i32, %struct.drm_connector*, i32*, i32, i32) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.drm_connector*, %struct.drm_encoder*) #1

declare dso_local i32 @cec_fill_conn_info_from_drm(%struct.cec_connector_info*, %struct.drm_connector*) #1

declare dso_local %struct.cec_notifier* @cec_notifier_conn_register(i32, i32*, %struct.cec_connector_info*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
