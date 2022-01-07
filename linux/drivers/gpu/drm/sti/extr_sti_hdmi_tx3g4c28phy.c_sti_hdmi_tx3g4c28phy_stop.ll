; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hdmi_tx3g4c28phy.c_sti_hdmi_tx3g4c28phy_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hdmi_tx3g4c28phy.c_sti_hdmi_tx3g4c28phy_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_hdmi = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@HDMI_SRZ_CFG_EN_SINK_TERM_DETECTION = common dso_local global i32 0, align 4
@HDMI_SRZ_CFG_EN_BIASRES_DETECTION = common dso_local global i32 0, align 4
@HDMI_SRZ_CFG = common dso_local global i32 0, align 4
@HDMI_SRZ_PLL_CFG = common dso_local global i32 0, align 4
@HDMI_TIMEOUT_PLL_LOCK = common dso_local global i32 0, align 4
@HDMI_STA = common dso_local global i32 0, align 4
@HDMI_STA_DLL_LCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"hdmi phy pll not well disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sti_hdmi*)* @sti_hdmi_tx3g4c28phy_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sti_hdmi_tx3g4c28phy_stop(%struct.sti_hdmi* %0) #0 {
  %2 = alloca %struct.sti_hdmi*, align 8
  %3 = alloca i32, align 4
  store %struct.sti_hdmi* %0, %struct.sti_hdmi** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.sti_hdmi*, %struct.sti_hdmi** %2, align 8
  %6 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %5, i32 0, i32 0
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @HDMI_SRZ_CFG_EN_SINK_TERM_DETECTION, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @HDMI_SRZ_CFG_EN_BIASRES_DETECTION, align 4
  %9 = load i32, i32* %3, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.sti_hdmi*, %struct.sti_hdmi** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @HDMI_SRZ_CFG, align 4
  %14 = call i32 @hdmi_write(%struct.sti_hdmi* %11, i32 %12, i32 %13)
  %15 = load %struct.sti_hdmi*, %struct.sti_hdmi** %2, align 8
  %16 = load i32, i32* @HDMI_SRZ_PLL_CFG, align 4
  %17 = call i32 @hdmi_write(%struct.sti_hdmi* %15, i32 0, i32 %16)
  %18 = load %struct.sti_hdmi*, %struct.sti_hdmi** %2, align 8
  %19 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sti_hdmi*, %struct.sti_hdmi** %2, align 8
  %22 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* @HDMI_TIMEOUT_PLL_LOCK, align 4
  %27 = call i32 @msecs_to_jiffies(i32 %26)
  %28 = call i32 @wait_event_interruptible_timeout(i32 %20, i32 %25, i32 %27)
  %29 = load %struct.sti_hdmi*, %struct.sti_hdmi** %2, align 8
  %30 = load i32, i32* @HDMI_STA, align 4
  %31 = call i32 @hdmi_read(%struct.sti_hdmi* %29, i32 %30)
  %32 = load i32, i32* @HDMI_STA_DLL_LCK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %1
  %36 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %1
  ret void
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @hdmi_write(%struct.sti_hdmi*, i32, i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @hdmi_read(%struct.sti_hdmi*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
