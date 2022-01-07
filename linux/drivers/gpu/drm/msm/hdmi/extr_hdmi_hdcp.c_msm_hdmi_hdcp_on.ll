; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_hdcp.c_msm_hdmi_hdcp_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_hdcp.c_msm_hdmi_hdcp_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_hdcp_ctrl = type { i64, i32, i64, i64, %struct.hdmi* }
%struct.hdmi = type { i32, i32 }

@HDCP_STATE_INACTIVE = common dso_local global i64 0, align 8
@HDCP_STATE_NO_AKSV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"still active or activating or no askv. returning\00", align 1
@REG_HDMI_CTRL = common dso_local global i32 0, align 4
@HDMI_CTRL_ENCRYPTED = common dso_local global i32 0, align 4
@HDCP_STATE_AUTHENTICATING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_hdmi_hdcp_on(%struct.hdmi_hdcp_ctrl* %0) #0 {
  %2 = alloca %struct.hdmi_hdcp_ctrl*, align 8
  %3 = alloca %struct.hdmi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.hdmi_hdcp_ctrl* %0, %struct.hdmi_hdcp_ctrl** %2, align 8
  %6 = load %struct.hdmi_hdcp_ctrl*, %struct.hdmi_hdcp_ctrl** %2, align 8
  %7 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, %struct.hdmi_hdcp_ctrl* %6, i32 0, i32 4
  %8 = load %struct.hdmi*, %struct.hdmi** %7, align 8
  store %struct.hdmi* %8, %struct.hdmi** %3, align 8
  %9 = load i64, i64* @HDCP_STATE_INACTIVE, align 8
  %10 = load %struct.hdmi_hdcp_ctrl*, %struct.hdmi_hdcp_ctrl** %2, align 8
  %11 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, %struct.hdmi_hdcp_ctrl* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %9, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load i64, i64* @HDCP_STATE_NO_AKSV, align 8
  %16 = load %struct.hdmi_hdcp_ctrl*, %struct.hdmi_hdcp_ctrl** %2, align 8
  %17 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, %struct.hdmi_hdcp_ctrl* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14, %1
  %21 = call i32 @DBG(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %55

22:                                               ; preds = %14
  %23 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %24 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %23, i32 0, i32 1
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %28 = load i32, i32* @REG_HDMI_CTRL, align 4
  %29 = call i32 @hdmi_read(%struct.hdmi* %27, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @HDMI_CTRL_ENCRYPTED, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %35 = load i32, i32* @REG_HDMI_CTRL, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @hdmi_write(%struct.hdmi* %34, i32 %35, i32 %36)
  %38 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %39 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %38, i32 0, i32 1
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load %struct.hdmi_hdcp_ctrl*, %struct.hdmi_hdcp_ctrl** %2, align 8
  %43 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, %struct.hdmi_hdcp_ctrl* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load i64, i64* @HDCP_STATE_AUTHENTICATING, align 8
  %45 = load %struct.hdmi_hdcp_ctrl*, %struct.hdmi_hdcp_ctrl** %2, align 8
  %46 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, %struct.hdmi_hdcp_ctrl* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.hdmi_hdcp_ctrl*, %struct.hdmi_hdcp_ctrl** %2, align 8
  %48 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, %struct.hdmi_hdcp_ctrl* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %50 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.hdmi_hdcp_ctrl*, %struct.hdmi_hdcp_ctrl** %2, align 8
  %53 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, %struct.hdmi_hdcp_ctrl* %52, i32 0, i32 1
  %54 = call i32 @queue_work(i32 %51, i32* %53)
  br label %55

55:                                               ; preds = %22, %20
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
