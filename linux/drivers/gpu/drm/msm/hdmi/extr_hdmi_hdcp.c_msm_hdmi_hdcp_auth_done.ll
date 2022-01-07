; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_hdcp.c_msm_hdmi_hdcp_auth_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_hdcp.c_msm_hdmi_hdcp_auth_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_hdcp_ctrl = type { i64, i32, %struct.hdmi* }
%struct.hdmi = type { i32 }

@REG_HDMI_DDC_ARBITRATION = common dso_local global i32 0, align 4
@HDMI_DDC_ARBITRATION_HW_ARBITRATION = common dso_local global i32 0, align 4
@REG_HDMI_CTRL = common dso_local global i32 0, align 4
@HDMI_CTRL_ENCRYPTED = common dso_local global i32 0, align 4
@HDCP_STATE_AUTHENTICATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdmi_hdcp_ctrl*)* @msm_hdmi_hdcp_auth_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm_hdmi_hdcp_auth_done(%struct.hdmi_hdcp_ctrl* %0) #0 {
  %2 = alloca %struct.hdmi_hdcp_ctrl*, align 8
  %3 = alloca %struct.hdmi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.hdmi_hdcp_ctrl* %0, %struct.hdmi_hdcp_ctrl** %2, align 8
  %6 = load %struct.hdmi_hdcp_ctrl*, %struct.hdmi_hdcp_ctrl** %2, align 8
  %7 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, %struct.hdmi_hdcp_ctrl* %6, i32 0, i32 2
  %8 = load %struct.hdmi*, %struct.hdmi** %7, align 8
  store %struct.hdmi* %8, %struct.hdmi** %3, align 8
  %9 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %10 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %9, i32 0, i32 0
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %14 = load i32, i32* @REG_HDMI_DDC_ARBITRATION, align 4
  %15 = call i32 @hdmi_read(%struct.hdmi* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @HDMI_DDC_ARBITRATION_HW_ARBITRATION, align 4
  %17 = load i32, i32* %4, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %20 = load i32, i32* @REG_HDMI_DDC_ARBITRATION, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @hdmi_write(%struct.hdmi* %19, i32 %20, i32 %21)
  %23 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %24 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %23, i32 0, i32 0
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %28 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %27, i32 0, i32 0
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %32 = load i32, i32* @REG_HDMI_CTRL, align 4
  %33 = call i32 @hdmi_read(%struct.hdmi* %31, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* @HDMI_CTRL_ENCRYPTED, align 4
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %38 = load i32, i32* @REG_HDMI_CTRL, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @hdmi_write(%struct.hdmi* %37, i32 %38, i32 %39)
  %41 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %42 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %41, i32 0, i32 0
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load i32, i32* @HDCP_STATE_AUTHENTICATED, align 4
  %46 = load %struct.hdmi_hdcp_ctrl*, %struct.hdmi_hdcp_ctrl** %2, align 8
  %47 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, %struct.hdmi_hdcp_ctrl* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.hdmi_hdcp_ctrl*, %struct.hdmi_hdcp_ctrl** %2, align 8
  %49 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, %struct.hdmi_hdcp_ctrl* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hdmi_read(%struct.hdmi*, i32) #1

declare dso_local i32 @hdmi_write(%struct.hdmi*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
