; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hdmi.c_sti_hdmi_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hdmi.c_sti_hdmi_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { %struct.sti_hdmi* }
%struct.sti_hdmi = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.sti_hdmi*)* }

@HDMI_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@HDMI_CFG_DEVICE_EN = common dso_local global i32 0, align 4
@HDMI_INT_CLR = common dso_local global i32 0, align 4
@HDMI_IFRAME_SLOT_AVI = common dso_local global i32 0, align 4
@HDMI_IFRAME_SLOT_AUDIO = common dso_local global i32 0, align 4
@HDMI_IFRAME_SLOT_VENDOR = common dso_local global i32 0, align 4
@HDMI_DFLT_CHL0_DAT = common dso_local global i32 0, align 4
@HDMI_DFLT_CHL1_DAT = common dso_local global i32 0, align 4
@HDMI_DFLT_CHL2_DAT = common dso_local global i32 0, align 4
@CEC_PHYS_ADDR_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*)* @sti_hdmi_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sti_hdmi_disable(%struct.drm_bridge* %0) #0 {
  %2 = alloca %struct.drm_bridge*, align 8
  %3 = alloca %struct.sti_hdmi*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %2, align 8
  %5 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %6 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %5, i32 0, i32 0
  %7 = load %struct.sti_hdmi*, %struct.sti_hdmi** %6, align 8
  store %struct.sti_hdmi* %7, %struct.sti_hdmi** %3, align 8
  %8 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %9 = load i32, i32* @HDMI_CFG, align 4
  %10 = call i32 @hdmi_read(%struct.sti_hdmi* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %12 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %73

16:                                               ; preds = %1
  %17 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @HDMI_CFG_DEVICE_EN, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @HDMI_CFG, align 4
  %25 = call i32 @hdmi_write(%struct.sti_hdmi* %22, i32 %23, i32 %24)
  %26 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %27 = load i32, i32* @HDMI_INT_CLR, align 4
  %28 = call i32 @hdmi_write(%struct.sti_hdmi* %26, i32 -1, i32 %27)
  %29 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %30 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %29, i32 0, i32 5
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.sti_hdmi*)*, i32 (%struct.sti_hdmi*)** %32, align 8
  %34 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %35 = call i32 %33(%struct.sti_hdmi* %34)
  %36 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %37 = load i32, i32* @HDMI_IFRAME_SLOT_AVI, align 4
  %38 = call i32 @hdmi_infoframe_reset(%struct.sti_hdmi* %36, i32 %37)
  %39 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %40 = load i32, i32* @HDMI_IFRAME_SLOT_AUDIO, align 4
  %41 = call i32 @hdmi_infoframe_reset(%struct.sti_hdmi* %39, i32 %40)
  %42 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %43 = load i32, i32* @HDMI_IFRAME_SLOT_VENDOR, align 4
  %44 = call i32 @hdmi_infoframe_reset(%struct.sti_hdmi* %42, i32 %43)
  %45 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %46 = load i32, i32* @HDMI_DFLT_CHL0_DAT, align 4
  %47 = call i32 @hdmi_write(%struct.sti_hdmi* %45, i32 0, i32 %46)
  %48 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %49 = load i32, i32* @HDMI_DFLT_CHL1_DAT, align 4
  %50 = call i32 @hdmi_write(%struct.sti_hdmi* %48, i32 0, i32 %49)
  %51 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %52 = load i32, i32* @HDMI_DFLT_CHL2_DAT, align 4
  %53 = call i32 @hdmi_write(%struct.sti_hdmi* %51, i32 96, i32 %52)
  %54 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %55 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @clk_disable_unprepare(i32 %56)
  %58 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %59 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @clk_disable_unprepare(i32 %60)
  %62 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %63 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @clk_disable_unprepare(i32 %64)
  %66 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %67 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  %68 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %69 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @CEC_PHYS_ADDR_INVALID, align 4
  %72 = call i32 @cec_notifier_set_phys_addr(i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @hdmi_read(%struct.sti_hdmi*, i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @hdmi_write(%struct.sti_hdmi*, i32, i32) #1

declare dso_local i32 @hdmi_infoframe_reset(%struct.sti_hdmi*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @cec_notifier_set_phys_addr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
