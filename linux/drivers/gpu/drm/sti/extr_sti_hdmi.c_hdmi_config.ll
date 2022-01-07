; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hdmi.c_hdmi_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hdmi.c_hdmi_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_hdmi = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@HDMI_CFG_FIFO_OVERRUN_CLR = common dso_local global i32 0, align 4
@HDMI_CFG_FIFO_UNDERRUN_CLR = common dso_local global i32 0, align 4
@HDMI_CFG_ESS_NOT_OESS = common dso_local global i32 0, align 4
@HDMI_CFG_HDMI_NOT_DVI = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"H Sync Negative\0A\00", align 1
@HDMI_CFG_H_SYNC_POL_NEG = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NVSYNC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"V Sync Negative\0A\00", align 1
@HDMI_CFG_V_SYNC_POL_NEG = common dso_local global i32 0, align 4
@HDMI_CFG_DEVICE_EN = common dso_local global i32 0, align 4
@HDMI_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sti_hdmi*)* @hdmi_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_config(%struct.sti_hdmi* %0) #0 {
  %2 = alloca %struct.sti_hdmi*, align 8
  %3 = alloca i32, align 4
  store %struct.sti_hdmi* %0, %struct.sti_hdmi** %2, align 8
  %4 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @HDMI_CFG_FIFO_OVERRUN_CLR, align 4
  %6 = load i32, i32* @HDMI_CFG_FIFO_UNDERRUN_CLR, align 4
  %7 = or i32 %5, %6
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @HDMI_CFG_ESS_NOT_OESS, align 4
  %9 = load i32, i32* %3, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.sti_hdmi*, %struct.sti_hdmi** %2, align 8
  %12 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @HDMI_CFG_HDMI_NOT_DVI, align 4
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %15, %1
  %20 = load %struct.sti_hdmi*, %struct.sti_hdmi** %2, align 8
  %21 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @HDMI_CFG_H_SYNC_POL_NEG, align 4
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %27, %19
  %33 = load %struct.sti_hdmi*, %struct.sti_hdmi** %2, align 8
  %34 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* @HDMI_CFG_V_SYNC_POL_NEG, align 4
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %40, %32
  %46 = load i32, i32* @HDMI_CFG_DEVICE_EN, align 4
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  %49 = load %struct.sti_hdmi*, %struct.sti_hdmi** %2, align 8
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @HDMI_CFG, align 4
  %52 = call i32 @hdmi_write(%struct.sti_hdmi* %49, i32 %50, i32 %51)
  ret void
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @hdmi_write(%struct.sti_hdmi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
