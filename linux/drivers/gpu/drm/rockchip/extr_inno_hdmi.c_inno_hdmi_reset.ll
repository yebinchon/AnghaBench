; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_inno_hdmi.c_inno_hdmi_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_inno_hdmi.c_inno_hdmi_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inno_hdmi = type { i32 }

@HDMI_SYS_CTRL = common dso_local global i32 0, align 4
@m_RST_DIGITAL = common dso_local global i32 0, align 4
@v_NOT_RST_DIGITAL = common dso_local global i32 0, align 4
@m_RST_ANALOG = common dso_local global i32 0, align 4
@v_NOT_RST_ANALOG = common dso_local global i32 0, align 4
@m_REG_CLK_INV = common dso_local global i32 0, align 4
@m_REG_CLK_SOURCE = common dso_local global i32 0, align 4
@m_POWER = common dso_local global i32 0, align 4
@m_INT_POL = common dso_local global i32 0, align 4
@v_REG_CLK_INV = common dso_local global i32 0, align 4
@v_REG_CLK_SOURCE_SYS = common dso_local global i32 0, align 4
@v_PWR_ON = common dso_local global i32 0, align 4
@v_INT_POL_HIGH = common dso_local global i32 0, align 4
@NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inno_hdmi*)* @inno_hdmi_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inno_hdmi_reset(%struct.inno_hdmi* %0) #0 {
  %2 = alloca %struct.inno_hdmi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.inno_hdmi* %0, %struct.inno_hdmi** %2, align 8
  %5 = load %struct.inno_hdmi*, %struct.inno_hdmi** %2, align 8
  %6 = load i32, i32* @HDMI_SYS_CTRL, align 4
  %7 = load i32, i32* @m_RST_DIGITAL, align 4
  %8 = load i32, i32* @v_NOT_RST_DIGITAL, align 4
  %9 = call i32 @hdmi_modb(%struct.inno_hdmi* %5, i32 %6, i32 %7, i32 %8)
  %10 = call i32 @udelay(i32 100)
  %11 = load %struct.inno_hdmi*, %struct.inno_hdmi** %2, align 8
  %12 = load i32, i32* @HDMI_SYS_CTRL, align 4
  %13 = load i32, i32* @m_RST_ANALOG, align 4
  %14 = load i32, i32* @v_NOT_RST_ANALOG, align 4
  %15 = call i32 @hdmi_modb(%struct.inno_hdmi* %11, i32 %12, i32 %13, i32 %14)
  %16 = call i32 @udelay(i32 100)
  %17 = load i32, i32* @m_REG_CLK_INV, align 4
  %18 = load i32, i32* @m_REG_CLK_SOURCE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @m_POWER, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @m_INT_POL, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @v_REG_CLK_INV, align 4
  %25 = load i32, i32* @v_REG_CLK_SOURCE_SYS, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @v_PWR_ON, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @v_INT_POL_HIGH, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %3, align 4
  %31 = load %struct.inno_hdmi*, %struct.inno_hdmi** %2, align 8
  %32 = load i32, i32* @HDMI_SYS_CTRL, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @hdmi_modb(%struct.inno_hdmi* %31, i32 %32, i32 %33, i32 %34)
  %36 = load %struct.inno_hdmi*, %struct.inno_hdmi** %2, align 8
  %37 = load i32, i32* @NORMAL, align 4
  %38 = call i32 @inno_hdmi_set_pwr_mode(%struct.inno_hdmi* %36, i32 %37)
  ret void
}

declare dso_local i32 @hdmi_modb(%struct.inno_hdmi*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @inno_hdmi_set_pwr_mode(%struct.inno_hdmi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
