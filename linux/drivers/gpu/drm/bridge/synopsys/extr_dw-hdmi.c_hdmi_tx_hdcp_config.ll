; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_hdmi_tx_hdcp_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_hdmi_tx_hdcp_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@HDMI_A_VIDPOLCFG_DATAENPOL_ACTIVE_HIGH = common dso_local global i32 0, align 4
@HDMI_A_VIDPOLCFG_DATAENPOL_ACTIVE_LOW = common dso_local global i32 0, align 4
@HDMI_A_HDCPCFG0_RXDETECT_DISABLE = common dso_local global i32 0, align 4
@HDMI_A_HDCPCFG0_RXDETECT_MASK = common dso_local global i32 0, align 4
@HDMI_A_HDCPCFG0 = common dso_local global i32 0, align 4
@HDMI_A_VIDPOLCFG_DATAENPOL_MASK = common dso_local global i32 0, align 4
@HDMI_A_VIDPOLCFG = common dso_local global i32 0, align 4
@HDMI_A_HDCPCFG1_ENCRYPTIONDISABLE_DISABLE = common dso_local global i32 0, align 4
@HDMI_A_HDCPCFG1_ENCRYPTIONDISABLE_MASK = common dso_local global i32 0, align 4
@HDMI_A_HDCPCFG1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_hdmi*)* @hdmi_tx_hdcp_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_tx_hdcp_config(%struct.dw_hdmi* %0) #0 {
  %2 = alloca %struct.dw_hdmi*, align 8
  %3 = alloca i32, align 4
  store %struct.dw_hdmi* %0, %struct.dw_hdmi** %2, align 8
  %4 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %5 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @HDMI_A_VIDPOLCFG_DATAENPOL_ACTIVE_HIGH, align 4
  store i32 %11, i32* %3, align 4
  br label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @HDMI_A_VIDPOLCFG_DATAENPOL_ACTIVE_LOW, align 4
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %16 = load i32, i32* @HDMI_A_HDCPCFG0_RXDETECT_DISABLE, align 4
  %17 = load i32, i32* @HDMI_A_HDCPCFG0_RXDETECT_MASK, align 4
  %18 = load i32, i32* @HDMI_A_HDCPCFG0, align 4
  %19 = call i32 @hdmi_modb(%struct.dw_hdmi* %15, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @HDMI_A_VIDPOLCFG_DATAENPOL_MASK, align 4
  %23 = load i32, i32* @HDMI_A_VIDPOLCFG, align 4
  %24 = call i32 @hdmi_modb(%struct.dw_hdmi* %20, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %26 = load i32, i32* @HDMI_A_HDCPCFG1_ENCRYPTIONDISABLE_DISABLE, align 4
  %27 = load i32, i32* @HDMI_A_HDCPCFG1_ENCRYPTIONDISABLE_MASK, align 4
  %28 = load i32, i32* @HDMI_A_HDCPCFG1, align 4
  %29 = call i32 @hdmi_modb(%struct.dw_hdmi* %25, i32 %26, i32 %27, i32 %28)
  ret void
}

declare dso_local i32 @hdmi_modb(%struct.dw_hdmi*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
