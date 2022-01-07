; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_hdcp.c_msm_hdmi_hdcp_auth_fail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_hdcp.c_msm_hdmi_hdcp_auth_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_hdcp_ctrl = type { i32, i32, %struct.hdmi* }
%struct.hdmi = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"hdcp auth failed, queue reauth work\00", align 1
@REG_HDMI_CTRL = common dso_local global i32 0, align 4
@HDMI_CTRL_ENCRYPTED = common dso_local global i32 0, align 4
@HDCP_STATE_AUTH_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdmi_hdcp_ctrl*)* @msm_hdmi_hdcp_auth_fail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm_hdmi_hdcp_auth_fail(%struct.hdmi_hdcp_ctrl* %0) #0 {
  %2 = alloca %struct.hdmi_hdcp_ctrl*, align 8
  %3 = alloca %struct.hdmi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.hdmi_hdcp_ctrl* %0, %struct.hdmi_hdcp_ctrl** %2, align 8
  %6 = load %struct.hdmi_hdcp_ctrl*, %struct.hdmi_hdcp_ctrl** %2, align 8
  %7 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, %struct.hdmi_hdcp_ctrl* %6, i32 0, i32 2
  %8 = load %struct.hdmi*, %struct.hdmi** %7, align 8
  store %struct.hdmi* %8, %struct.hdmi** %3, align 8
  %9 = call i32 @DBG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %11 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %10, i32 0, i32 1
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %15 = load i32, i32* @REG_HDMI_CTRL, align 4
  %16 = call i32 @hdmi_read(%struct.hdmi* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @HDMI_CTRL_ENCRYPTED, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %22 = load i32, i32* @REG_HDMI_CTRL, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @hdmi_write(%struct.hdmi* %21, i32 %22, i32 %23)
  %25 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %26 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %25, i32 0, i32 1
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load i32, i32* @HDCP_STATE_AUTH_FAILED, align 4
  %30 = load %struct.hdmi_hdcp_ctrl*, %struct.hdmi_hdcp_ctrl** %2, align 8
  %31 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, %struct.hdmi_hdcp_ctrl* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %33 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.hdmi_hdcp_ctrl*, %struct.hdmi_hdcp_ctrl** %2, align 8
  %36 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, %struct.hdmi_hdcp_ctrl* %35, i32 0, i32 0
  %37 = call i32 @queue_work(i32 %34, i32* %36)
  ret void
}

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hdmi_read(%struct.hdmi*, i32) #1

declare dso_local i32 @hdmi_write(%struct.hdmi*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
