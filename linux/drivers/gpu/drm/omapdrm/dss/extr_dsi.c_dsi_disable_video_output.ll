; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_disable_video_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_disable_video_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32 }
%struct.dsi_data = type { i64, i32 }

@OMAP_DSS_DSI_VIDEO_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_dss_device*, i32)* @dsi_disable_video_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_disable_video_output(%struct.omap_dss_device* %0, i32 %1) #0 {
  %3 = alloca %struct.omap_dss_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsi_data*, align 8
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %7 = call %struct.dsi_data* @to_dsi_data(%struct.omap_dss_device* %6)
  store %struct.dsi_data* %7, %struct.dsi_data** %5, align 8
  %8 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %9 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @OMAP_DSS_DSI_VIDEO_MODE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %15 = call i32 @dsi_if_enable(%struct.dsi_data* %14, i32 0)
  %16 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @dsi_vc_enable(%struct.dsi_data* %16, i32 %17, i32 0)
  %19 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @DSI_VC_CTRL(i32 %20)
  %22 = call i32 @REG_FLD_MOD(%struct.dsi_data* %19, i32 %21, i32 0, i32 4, i32 4)
  %23 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @dsi_vc_enable(%struct.dsi_data* %23, i32 %24, i32 1)
  %26 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %27 = call i32 @dsi_if_enable(%struct.dsi_data* %26, i32 1)
  br label %28

28:                                               ; preds = %13, %2
  %29 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %30 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %29, i32 0, i32 1
  %31 = call i32 @dss_mgr_disable(i32* %30)
  %32 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %33 = call i32 @dsi_display_uninit_dispc(%struct.dsi_data* %32)
  ret void
}

declare dso_local %struct.dsi_data* @to_dsi_data(%struct.omap_dss_device*) #1

declare dso_local i32 @dsi_if_enable(%struct.dsi_data*, i32) #1

declare dso_local i32 @dsi_vc_enable(%struct.dsi_data*, i32, i32) #1

declare dso_local i32 @REG_FLD_MOD(%struct.dsi_data*, i32, i32, i32, i32) #1

declare dso_local i32 @DSI_VC_CTRL(i32) #1

declare dso_local i32 @dss_mgr_disable(i32*) #1

declare dso_local i32 @dsi_display_uninit_dispc(%struct.dsi_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
