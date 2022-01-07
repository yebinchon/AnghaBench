; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_link_encoder.c_set_dp_phy_pattern_prbs7.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_link_encoder.c_set_dp_phy_pattern_prbs7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcn10_link_encoder = type { i32 }

@DP_DPHY_PRBS_CNTL = common dso_local global i32 0, align 4
@DPHY_PRBS_SEL = common dso_local global i32 0, align 4
@DPHY_PRBS_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dcn10_link_encoder*)* @set_dp_phy_pattern_prbs7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_dp_phy_pattern_prbs7(%struct.dcn10_link_encoder* %0) #0 {
  %2 = alloca %struct.dcn10_link_encoder*, align 8
  store %struct.dcn10_link_encoder* %0, %struct.dcn10_link_encoder** %2, align 8
  %3 = load %struct.dcn10_link_encoder*, %struct.dcn10_link_encoder** %2, align 8
  %4 = call i32 @enable_phy_bypass_mode(%struct.dcn10_link_encoder* %3, i32 0)
  %5 = load %struct.dcn10_link_encoder*, %struct.dcn10_link_encoder** %2, align 8
  %6 = call i32 @disable_prbs_symbols(%struct.dcn10_link_encoder* %5, i32 0)
  %7 = load i32, i32* @DP_DPHY_PRBS_CNTL, align 4
  %8 = load i32, i32* @DPHY_PRBS_SEL, align 4
  %9 = load i32, i32* @DPHY_PRBS_EN, align 4
  %10 = call i32 @REG_UPDATE_2(i32 %7, i32 %8, i32 0, i32 %9, i32 1)
  %11 = load %struct.dcn10_link_encoder*, %struct.dcn10_link_encoder** %2, align 8
  %12 = call i32 @enable_phy_bypass_mode(%struct.dcn10_link_encoder* %11, i32 1)
  ret void
}

declare dso_local i32 @enable_phy_bypass_mode(%struct.dcn10_link_encoder*, i32) #1

declare dso_local i32 @disable_prbs_symbols(%struct.dcn10_link_encoder*, i32) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
