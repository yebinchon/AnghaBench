; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_i2c.c_init_ddc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_i2c.c_init_ddc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_i2c_adapter = type { %struct.hdmi* }
%struct.hdmi = type { i32 }

@REG_HDMI_DDC_CTRL = common dso_local global i32 0, align 4
@HDMI_DDC_CTRL_SW_STATUS_RESET = common dso_local global i32 0, align 4
@HDMI_DDC_CTRL_SOFT_RESET = common dso_local global i32 0, align 4
@REG_HDMI_DDC_SPEED = common dso_local global i32 0, align 4
@REG_HDMI_DDC_SETUP = common dso_local global i32 0, align 4
@REG_HDMI_DDC_REF = common dso_local global i32 0, align 4
@HDMI_DDC_REF_REFTIMER_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdmi_i2c_adapter*)* @init_ddc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_ddc(%struct.hdmi_i2c_adapter* %0) #0 {
  %2 = alloca %struct.hdmi_i2c_adapter*, align 8
  %3 = alloca %struct.hdmi*, align 8
  store %struct.hdmi_i2c_adapter* %0, %struct.hdmi_i2c_adapter** %2, align 8
  %4 = load %struct.hdmi_i2c_adapter*, %struct.hdmi_i2c_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.hdmi_i2c_adapter, %struct.hdmi_i2c_adapter* %4, i32 0, i32 0
  %6 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  store %struct.hdmi* %6, %struct.hdmi** %3, align 8
  %7 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %8 = load i32, i32* @REG_HDMI_DDC_CTRL, align 4
  %9 = load i32, i32* @HDMI_DDC_CTRL_SW_STATUS_RESET, align 4
  %10 = call i32 @hdmi_write(%struct.hdmi* %7, i32 %8, i32 %9)
  %11 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %12 = load i32, i32* @REG_HDMI_DDC_CTRL, align 4
  %13 = load i32, i32* @HDMI_DDC_CTRL_SOFT_RESET, align 4
  %14 = call i32 @hdmi_write(%struct.hdmi* %11, i32 %12, i32 %13)
  %15 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %16 = load i32, i32* @REG_HDMI_DDC_SPEED, align 4
  %17 = call i32 @HDMI_DDC_SPEED_THRESHOLD(i32 2)
  %18 = call i32 @HDMI_DDC_SPEED_PRESCALE(i32 10)
  %19 = or i32 %17, %18
  %20 = call i32 @hdmi_write(%struct.hdmi* %15, i32 %16, i32 %19)
  %21 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %22 = load i32, i32* @REG_HDMI_DDC_SETUP, align 4
  %23 = call i32 @HDMI_DDC_SETUP_TIMEOUT(i32 255)
  %24 = call i32 @hdmi_write(%struct.hdmi* %21, i32 %22, i32 %23)
  %25 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %26 = load i32, i32* @REG_HDMI_DDC_REF, align 4
  %27 = load i32, i32* @HDMI_DDC_REF_REFTIMER_ENABLE, align 4
  %28 = call i32 @HDMI_DDC_REF_REFTIMER(i32 27)
  %29 = or i32 %27, %28
  %30 = call i32 @hdmi_write(%struct.hdmi* %25, i32 %26, i32 %29)
  ret void
}

declare dso_local i32 @hdmi_write(%struct.hdmi*, i32, i32) #1

declare dso_local i32 @HDMI_DDC_SPEED_THRESHOLD(i32) #1

declare dso_local i32 @HDMI_DDC_SPEED_PRESCALE(i32) #1

declare dso_local i32 @HDMI_DDC_SETUP_TIMEOUT(i32) #1

declare dso_local i32 @HDMI_DDC_REF_REFTIMER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
