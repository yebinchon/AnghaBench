; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_hdcp.c_msm_hdmi_hdcp_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_hdcp.c_msm_hdmi_hdcp_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_hdcp_ctrl = type { i64, i32, i32, i32, i32, %struct.hdmi* }
%struct.hdmi = type { i32 }

@HDCP_STATE_INACTIVE = common dso_local global i64 0, align 8
@HDCP_STATE_NO_AKSV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"hdcp inactive or no aksv. returning\00", align 1
@REG_HDMI_HPD_CTRL = common dso_local global i32 0, align 4
@HDMI_HPD_CTRL_ENABLE = common dso_local global i32 0, align 4
@REG_HDMI_HDCP_INT_CTRL = common dso_local global i32 0, align 4
@AUTH_ABORT_EV = common dso_local global i32 0, align 4
@REG_HDMI_HDCP_RESET = common dso_local global i32 0, align 4
@HDMI_HDCP_RESET_LINK0_DEAUTHENTICATE = common dso_local global i32 0, align 4
@REG_HDMI_HDCP_CTRL = common dso_local global i32 0, align 4
@REG_HDMI_CTRL = common dso_local global i32 0, align 4
@HDMI_CTRL_ENCRYPTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"HDCP: Off\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_hdmi_hdcp_off(%struct.hdmi_hdcp_ctrl* %0) #0 {
  %2 = alloca %struct.hdmi_hdcp_ctrl*, align 8
  %3 = alloca %struct.hdmi*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.hdmi_hdcp_ctrl* %0, %struct.hdmi_hdcp_ctrl** %2, align 8
  %6 = load %struct.hdmi_hdcp_ctrl*, %struct.hdmi_hdcp_ctrl** %2, align 8
  %7 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, %struct.hdmi_hdcp_ctrl* %6, i32 0, i32 5
  %8 = load %struct.hdmi*, %struct.hdmi** %7, align 8
  store %struct.hdmi* %8, %struct.hdmi** %3, align 8
  %9 = load i64, i64* @HDCP_STATE_INACTIVE, align 8
  %10 = load %struct.hdmi_hdcp_ctrl*, %struct.hdmi_hdcp_ctrl** %2, align 8
  %11 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, %struct.hdmi_hdcp_ctrl* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %9, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load i64, i64* @HDCP_STATE_NO_AKSV, align 8
  %16 = load %struct.hdmi_hdcp_ctrl*, %struct.hdmi_hdcp_ctrl** %2, align 8
  %17 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, %struct.hdmi_hdcp_ctrl* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14, %1
  %21 = call i32 @DBG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %98

22:                                               ; preds = %14
  %23 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %24 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %23, i32 0, i32 0
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %28 = load i32, i32* @REG_HDMI_HPD_CTRL, align 4
  %29 = call i32 @hdmi_read(%struct.hdmi* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @HDMI_HPD_CTRL_ENABLE, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %35 = load i32, i32* @REG_HDMI_HPD_CTRL, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @hdmi_write(%struct.hdmi* %34, i32 %35, i32 %36)
  %38 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %39 = load i32, i32* @REG_HDMI_HDCP_INT_CTRL, align 4
  %40 = call i32 @hdmi_write(%struct.hdmi* %38, i32 %39, i32 0)
  %41 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %42 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %41, i32 0, i32 0
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load i32, i32* @AUTH_ABORT_EV, align 4
  %46 = load %struct.hdmi_hdcp_ctrl*, %struct.hdmi_hdcp_ctrl** %2, align 8
  %47 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, %struct.hdmi_hdcp_ctrl* %46, i32 0, i32 4
  %48 = call i32 @set_bit(i32 %45, i32* %47)
  %49 = load %struct.hdmi_hdcp_ctrl*, %struct.hdmi_hdcp_ctrl** %2, align 8
  %50 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, %struct.hdmi_hdcp_ctrl* %49, i32 0, i32 3
  %51 = call i32 @wake_up_all(i32* %50)
  %52 = load %struct.hdmi_hdcp_ctrl*, %struct.hdmi_hdcp_ctrl** %2, align 8
  %53 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, %struct.hdmi_hdcp_ctrl* %52, i32 0, i32 2
  %54 = call i32 @cancel_work_sync(i32* %53)
  %55 = load %struct.hdmi_hdcp_ctrl*, %struct.hdmi_hdcp_ctrl** %2, align 8
  %56 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, %struct.hdmi_hdcp_ctrl* %55, i32 0, i32 1
  %57 = call i32 @cancel_work_sync(i32* %56)
  %58 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %59 = load i32, i32* @REG_HDMI_HDCP_RESET, align 4
  %60 = load i32, i32* @HDMI_HDCP_RESET_LINK0_DEAUTHENTICATE, align 4
  %61 = call i32 @hdmi_write(%struct.hdmi* %58, i32 %59, i32 %60)
  %62 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %63 = load i32, i32* @REG_HDMI_HDCP_CTRL, align 4
  %64 = call i32 @hdmi_write(%struct.hdmi* %62, i32 %63, i32 0)
  %65 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %66 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %65, i32 0, i32 0
  %67 = load i64, i64* %4, align 8
  %68 = call i32 @spin_lock_irqsave(i32* %66, i64 %67)
  %69 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %70 = load i32, i32* @REG_HDMI_CTRL, align 4
  %71 = call i32 @hdmi_read(%struct.hdmi* %69, i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* @HDMI_CTRL_ENCRYPTED, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %5, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %5, align 4
  %76 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %77 = load i32, i32* @REG_HDMI_CTRL, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @hdmi_write(%struct.hdmi* %76, i32 %77, i32 %78)
  %80 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %81 = load i32, i32* @REG_HDMI_HPD_CTRL, align 4
  %82 = call i32 @hdmi_read(%struct.hdmi* %80, i32 %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* @HDMI_HPD_CTRL_ENABLE, align 4
  %84 = load i32, i32* %5, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %5, align 4
  %86 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %87 = load i32, i32* @REG_HDMI_HPD_CTRL, align 4
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @hdmi_write(%struct.hdmi* %86, i32 %87, i32 %88)
  %90 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %91 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %90, i32 0, i32 0
  %92 = load i64, i64* %4, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %91, i64 %92)
  %94 = load i64, i64* @HDCP_STATE_INACTIVE, align 8
  %95 = load %struct.hdmi_hdcp_ctrl*, %struct.hdmi_hdcp_ctrl** %2, align 8
  %96 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, %struct.hdmi_hdcp_ctrl* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  %97 = call i32 @DBG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %98

98:                                               ; preds = %22, %20
  ret void
}

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hdmi_read(%struct.hdmi*, i32) #1

declare dso_local i32 @hdmi_write(%struct.hdmi*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
