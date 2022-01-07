; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_dpi.c_mdfld_dsi_configure_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_dpi.c_mdfld_dsi_configure_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdfld_dsi_encoder = type { i32 }
%struct.mdfld_dsi_dpi_output = type { i32 }
%struct.mdfld_dsi_config = type { %struct.drm_device* }
%struct.drm_device = type { i32, %struct.drm_psb_private* }
%struct.drm_psb_private = type { i64* }

@.str = private unnamed_addr constant [25 x i8] c"DPI panel is already on\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mdfld_dsi_encoder*, i32)* @mdfld_dsi_configure_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdfld_dsi_configure_up(%struct.mdfld_dsi_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.mdfld_dsi_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mdfld_dsi_dpi_output*, align 8
  %6 = alloca %struct.mdfld_dsi_config*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_psb_private*, align 8
  store %struct.mdfld_dsi_encoder* %0, %struct.mdfld_dsi_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.mdfld_dsi_encoder*, %struct.mdfld_dsi_encoder** %3, align 8
  %10 = call %struct.mdfld_dsi_dpi_output* @MDFLD_DSI_DPI_OUTPUT(%struct.mdfld_dsi_encoder* %9)
  store %struct.mdfld_dsi_dpi_output* %10, %struct.mdfld_dsi_dpi_output** %5, align 8
  %11 = load %struct.mdfld_dsi_encoder*, %struct.mdfld_dsi_encoder** %3, align 8
  %12 = call %struct.mdfld_dsi_config* @mdfld_dsi_encoder_get_config(%struct.mdfld_dsi_encoder* %11)
  store %struct.mdfld_dsi_config* %12, %struct.mdfld_dsi_config** %6, align 8
  %13 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %6, align 8
  %14 = getelementptr inbounds %struct.mdfld_dsi_config, %struct.mdfld_dsi_config* %13, i32 0, i32 0
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %7, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 1
  %18 = load %struct.drm_psb_private*, %struct.drm_psb_private** %17, align 8
  store %struct.drm_psb_private* %18, %struct.drm_psb_private** %8, align 8
  %19 = load %struct.drm_psb_private*, %struct.drm_psb_private** %8, align 8
  %20 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %29 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %52

32:                                               ; preds = %2
  %33 = load %struct.mdfld_dsi_dpi_output*, %struct.mdfld_dsi_dpi_output** %5, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @mdfld_dsi_dpi_shut_down(%struct.mdfld_dsi_dpi_output* %33, i32 %34)
  %36 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @dsi_set_device_ready_state(%struct.drm_device* %36, i32 0, i32 %37)
  %39 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @dsi_set_device_ready_state(%struct.drm_device* %39, i32 1, i32 %40)
  %42 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %43 = call i32 @tc35876x_set_bridge_reset_state(%struct.drm_device* %42, i32 0)
  %44 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %45 = call i32 @tc35876x_configure_lvds_bridge(%struct.drm_device* %44)
  %46 = load %struct.mdfld_dsi_dpi_output*, %struct.mdfld_dsi_dpi_output** %5, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @mdfld_dsi_dpi_turn_on(%struct.mdfld_dsi_dpi_output* %46, i32 %47)
  %49 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @dsi_set_pipe_plane_enable_state(%struct.drm_device* %49, i32 1, i32 %50)
  br label %52

52:                                               ; preds = %32, %27
  ret void
}

declare dso_local %struct.mdfld_dsi_dpi_output* @MDFLD_DSI_DPI_OUTPUT(%struct.mdfld_dsi_encoder*) #1

declare dso_local %struct.mdfld_dsi_config* @mdfld_dsi_encoder_get_config(%struct.mdfld_dsi_encoder*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mdfld_dsi_dpi_shut_down(%struct.mdfld_dsi_dpi_output*, i32) #1

declare dso_local i32 @dsi_set_device_ready_state(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @tc35876x_set_bridge_reset_state(%struct.drm_device*, i32) #1

declare dso_local i32 @tc35876x_configure_lvds_bridge(%struct.drm_device*) #1

declare dso_local i32 @mdfld_dsi_dpi_turn_on(%struct.mdfld_dsi_dpi_output*, i32) #1

declare dso_local i32 @dsi_set_pipe_plane_enable_state(%struct.drm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
