; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_link_encoder.c_set_dp_phy_pattern_hbr2_compliance_cp2520_2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_link_encoder.c_set_dp_phy_pattern_hbr2_compliance_cp2520_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcn10_link_encoder = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32)* }

@SIGNAL_TYPE_DISPLAY_PORT = common dso_local global i32 0, align 4
@DP_PANEL_MODE_DEFAULT = common dso_local global i32 0, align 4
@DP_LINK_FRAMING_CNTL = common dso_local global i32 0, align 4
@DP_IDLE_BS_INTERVAL = common dso_local global i32 0, align 4
@DP_VBID_DISABLE = common dso_local global i32 0, align 4
@DP_VID_ENHANCED_FRAME_MODE = common dso_local global i32 0, align 4
@DP_DPHY_SCRAM_CNTL = common dso_local global i32 0, align 4
@DPHY_SCRAMBLER_BS_COUNT = common dso_local global i32 0, align 4
@DP_DPHY_HBR2_PATTERN_CONTROL = common dso_local global i32 0, align 4
@DP_VID_STREAM_CNTL = common dso_local global i32 0, align 4
@DP_VID_STREAM_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dcn10_link_encoder*, i32)* @set_dp_phy_pattern_hbr2_compliance_cp2520_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_dp_phy_pattern_hbr2_compliance_cp2520_2(%struct.dcn10_link_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.dcn10_link_encoder*, align 8
  %4 = alloca i32, align 4
  store %struct.dcn10_link_encoder* %0, %struct.dcn10_link_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.dcn10_link_encoder*, %struct.dcn10_link_encoder** %3, align 8
  %6 = call i32 @enable_phy_bypass_mode(%struct.dcn10_link_encoder* %5, i32 0)
  %7 = load %struct.dcn10_link_encoder*, %struct.dcn10_link_encoder** %3, align 8
  %8 = getelementptr inbounds %struct.dcn10_link_encoder, %struct.dcn10_link_encoder* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %11, align 8
  %13 = load %struct.dcn10_link_encoder*, %struct.dcn10_link_encoder** %3, align 8
  %14 = getelementptr inbounds %struct.dcn10_link_encoder, %struct.dcn10_link_encoder* %13, i32 0, i32 0
  %15 = load i32, i32* @SIGNAL_TYPE_DISPLAY_PORT, align 4
  %16 = call i32 %12(%struct.TYPE_4__* %14, i32 %15)
  %17 = load %struct.dcn10_link_encoder*, %struct.dcn10_link_encoder** %3, align 8
  %18 = load i32, i32* @DP_PANEL_MODE_DEFAULT, align 4
  %19 = call i32 @setup_panel_mode(%struct.dcn10_link_encoder* %17, i32 %18)
  %20 = load i32, i32* @DP_LINK_FRAMING_CNTL, align 4
  %21 = load i32, i32* @DP_IDLE_BS_INTERVAL, align 4
  %22 = load i32, i32* @DP_VBID_DISABLE, align 4
  %23 = load i32, i32* @DP_VID_ENHANCED_FRAME_MODE, align 4
  %24 = call i32 @REG_UPDATE_3(i32 %20, i32 %21, i32 252, i32 %22, i32 1, i32 %23, i32 1)
  %25 = load i32, i32* @DP_DPHY_SCRAM_CNTL, align 4
  %26 = load i32, i32* @DPHY_SCRAMBLER_BS_COUNT, align 4
  %27 = call i32 @REG_UPDATE(i32 %25, i32 %26, i32 0)
  %28 = load i32, i32* @DP_DPHY_HBR2_PATTERN_CONTROL, align 4
  %29 = call i64 @REG(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  %32 = load i32, i32* @DP_DPHY_HBR2_PATTERN_CONTROL, align 4
  %33 = load i32, i32* @DP_DPHY_HBR2_PATTERN_CONTROL, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @REG_UPDATE(i32 %32, i32 %33, i32 %34)
  br label %41

36:                                               ; preds = %2
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i32
  %40 = call i32 @ASSERT(i32 %39)
  br label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.dcn10_link_encoder*, %struct.dcn10_link_encoder** %3, align 8
  %43 = call i32 @set_link_training_complete(%struct.dcn10_link_encoder* %42, i32 1)
  %44 = load i32, i32* @DP_VID_STREAM_CNTL, align 4
  %45 = load i32, i32* @DP_VID_STREAM_ENABLE, align 4
  %46 = call i32 @REG_UPDATE(i32 %44, i32 %45, i32 0)
  %47 = load %struct.dcn10_link_encoder*, %struct.dcn10_link_encoder** %3, align 8
  %48 = call i32 @enable_phy_bypass_mode(%struct.dcn10_link_encoder* %47, i32 0)
  ret void
}

declare dso_local i32 @enable_phy_bypass_mode(%struct.dcn10_link_encoder*, i32) #1

declare dso_local i32 @setup_panel_mode(%struct.dcn10_link_encoder*, i32) #1

declare dso_local i32 @REG_UPDATE_3(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i64 @REG(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @set_link_training_complete(%struct.dcn10_link_encoder*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
