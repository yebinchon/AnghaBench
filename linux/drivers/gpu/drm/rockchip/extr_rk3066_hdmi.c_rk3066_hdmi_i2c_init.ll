; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rk3066_hdmi.c_rk3066_hdmi_i2c_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rk3066_hdmi.c_rk3066_hdmi_i2c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk3066_hdmi = type { i32 }

@HDMI_SCL_RATE = common dso_local global i32 0, align 4
@HDMI_DDC_BUS_FREQ_L = common dso_local global i32 0, align 4
@HDMI_DDC_BUS_FREQ_H = common dso_local global i32 0, align 4
@HDMI_INTR_MASK1 = common dso_local global i32 0, align 4
@HDMI_INTR_EDID_MASK = common dso_local global i32 0, align 4
@HDMI_INTR_STATUS1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rk3066_hdmi*)* @rk3066_hdmi_i2c_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk3066_hdmi_i2c_init(%struct.rk3066_hdmi* %0) #0 {
  %2 = alloca %struct.rk3066_hdmi*, align 8
  %3 = alloca i32, align 4
  store %struct.rk3066_hdmi* %0, %struct.rk3066_hdmi** %2, align 8
  %4 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %2, align 8
  %5 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = ashr i32 %6, 2
  %8 = load i32, i32* @HDMI_SCL_RATE, align 4
  %9 = sdiv i32 %7, %8
  store i32 %9, i32* %3, align 4
  %10 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %2, align 8
  %11 = load i32, i32* @HDMI_DDC_BUS_FREQ_L, align 4
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, 255
  %14 = call i32 @hdmi_writeb(%struct.rk3066_hdmi* %10, i32 %11, i32 %13)
  %15 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %2, align 8
  %16 = load i32, i32* @HDMI_DDC_BUS_FREQ_H, align 4
  %17 = load i32, i32* %3, align 4
  %18 = ashr i32 %17, 8
  %19 = and i32 %18, 255
  %20 = call i32 @hdmi_writeb(%struct.rk3066_hdmi* %15, i32 %16, i32 %19)
  %21 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %2, align 8
  %22 = load i32, i32* @HDMI_INTR_MASK1, align 4
  %23 = load i32, i32* @HDMI_INTR_EDID_MASK, align 4
  %24 = call i32 @hdmi_modb(%struct.rk3066_hdmi* %21, i32 %22, i32 %23, i32 0)
  %25 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %2, align 8
  %26 = load i32, i32* @HDMI_INTR_STATUS1, align 4
  %27 = load i32, i32* @HDMI_INTR_EDID_MASK, align 4
  %28 = call i32 @hdmi_writeb(%struct.rk3066_hdmi* %25, i32 %26, i32 %27)
  ret void
}

declare dso_local i32 @hdmi_writeb(%struct.rk3066_hdmi*, i32, i32) #1

declare dso_local i32 @hdmi_modb(%struct.rk3066_hdmi*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
