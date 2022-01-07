; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_proto_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_proto_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_data = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@DSI_FIFO_SIZE_32 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DSI_CTRL = common dso_local global i32 0, align 4
@DSI_QUIRK_DCS_CMD_CONFIG_VC = common dso_local global i32 0, align 4
@OMAP_DSS_DSI_VIDEO_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsi_data*)* @dsi_proto_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_proto_config(%struct.dsi_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dsi_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dsi_data* %0, %struct.dsi_data** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %7 = load i32, i32* @DSI_FIFO_SIZE_32, align 4
  %8 = load i32, i32* @DSI_FIFO_SIZE_32, align 4
  %9 = load i32, i32* @DSI_FIFO_SIZE_32, align 4
  %10 = load i32, i32* @DSI_FIFO_SIZE_32, align 4
  %11 = call i32 @dsi_config_tx_fifo(%struct.dsi_data* %6, i32 %7, i32 %8, i32 %9, i32 %10)
  %12 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %13 = load i32, i32* @DSI_FIFO_SIZE_32, align 4
  %14 = load i32, i32* @DSI_FIFO_SIZE_32, align 4
  %15 = load i32, i32* @DSI_FIFO_SIZE_32, align 4
  %16 = load i32, i32* @DSI_FIFO_SIZE_32, align 4
  %17 = call i32 @dsi_config_rx_fifo(%struct.dsi_data* %12, i32 %13, i32 %14, i32 %15, i32 %16)
  %18 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %19 = call i32 @dsi_set_stop_state_counter(%struct.dsi_data* %18, i32 4096, i32 0, i32 0)
  %20 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %21 = call i32 @dsi_set_ta_timeout(%struct.dsi_data* %20, i32 8191, i32 1, i32 1)
  %22 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %23 = call i32 @dsi_set_lp_rx_timeout(%struct.dsi_data* %22, i32 8191, i32 1, i32 1)
  %24 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %25 = call i32 @dsi_set_hs_tx_timeout(%struct.dsi_data* %24, i32 8191, i32 1, i32 1)
  %26 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %27 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dsi_get_pixel_size(i32 %28)
  switch i32 %29, label %33 [
    i32 16, label %30
    i32 18, label %31
    i32 24, label %32
  ]

30:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %37

31:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %37

32:                                               ; preds = %1
  store i32 2, i32* %5, align 4
  br label %37

33:                                               ; preds = %1
  %34 = call i32 (...) @BUG()
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %99

37:                                               ; preds = %32, %31, %30
  %38 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %39 = load i32, i32* @DSI_CTRL, align 4
  %40 = call i32 @dsi_read_reg(%struct.dsi_data* %38, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @FLD_MOD(i32 %41, i32 1, i32 1, i32 1)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @FLD_MOD(i32 %43, i32 1, i32 2, i32 2)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @FLD_MOD(i32 %45, i32 1, i32 3, i32 3)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @FLD_MOD(i32 %47, i32 1, i32 4, i32 4)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @FLD_MOD(i32 %49, i32 %50, i32 7, i32 6)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @FLD_MOD(i32 %52, i32 0, i32 8, i32 8)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @FLD_MOD(i32 %54, i32 1, i32 14, i32 14)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @FLD_MOD(i32 %56, i32 1, i32 19, i32 19)
  store i32 %57, i32* %4, align 4
  %58 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %59 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @DSI_QUIRK_DCS_CMD_CONFIG_VC, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %37
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @FLD_MOD(i32 %67, i32 1, i32 24, i32 24)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @FLD_MOD(i32 %69, i32 0, i32 25, i32 25)
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %66, %37
  %72 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %73 = load i32, i32* @DSI_CTRL, align 4
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @dsi_write_reg(%struct.dsi_data* %72, i32 %73, i32 %74)
  %76 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %77 = call i32 @dsi_config_vp_num_line_buffers(%struct.dsi_data* %76)
  %78 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %79 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @OMAP_DSS_DSI_VIDEO_MODE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %71
  %84 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %85 = call i32 @dsi_config_vp_sync_events(%struct.dsi_data* %84)
  %86 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %87 = call i32 @dsi_config_blanking_modes(%struct.dsi_data* %86)
  %88 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %89 = call i32 @dsi_config_cmd_mode_interleaving(%struct.dsi_data* %88)
  br label %90

90:                                               ; preds = %83, %71
  %91 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %92 = call i32 @dsi_vc_initial_config(%struct.dsi_data* %91, i32 0)
  %93 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %94 = call i32 @dsi_vc_initial_config(%struct.dsi_data* %93, i32 1)
  %95 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %96 = call i32 @dsi_vc_initial_config(%struct.dsi_data* %95, i32 2)
  %97 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %98 = call i32 @dsi_vc_initial_config(%struct.dsi_data* %97, i32 3)
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %90, %33
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @dsi_config_tx_fifo(%struct.dsi_data*, i32, i32, i32, i32) #1

declare dso_local i32 @dsi_config_rx_fifo(%struct.dsi_data*, i32, i32, i32, i32) #1

declare dso_local i32 @dsi_set_stop_state_counter(%struct.dsi_data*, i32, i32, i32) #1

declare dso_local i32 @dsi_set_ta_timeout(%struct.dsi_data*, i32, i32, i32) #1

declare dso_local i32 @dsi_set_lp_rx_timeout(%struct.dsi_data*, i32, i32, i32) #1

declare dso_local i32 @dsi_set_hs_tx_timeout(%struct.dsi_data*, i32, i32, i32) #1

declare dso_local i32 @dsi_get_pixel_size(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @dsi_read_reg(%struct.dsi_data*, i32) #1

declare dso_local i32 @FLD_MOD(i32, i32, i32, i32) #1

declare dso_local i32 @dsi_write_reg(%struct.dsi_data*, i32, i32) #1

declare dso_local i32 @dsi_config_vp_num_line_buffers(%struct.dsi_data*) #1

declare dso_local i32 @dsi_config_vp_sync_events(%struct.dsi_data*) #1

declare dso_local i32 @dsi_config_blanking_modes(%struct.dsi_data*) #1

declare dso_local i32 @dsi_config_cmd_mode_interleaving(%struct.dsi_data*) #1

declare dso_local i32 @dsi_vc_initial_config(%struct.dsi_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
