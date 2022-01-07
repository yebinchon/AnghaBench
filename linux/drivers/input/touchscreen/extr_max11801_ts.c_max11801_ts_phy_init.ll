; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_max11801_ts.c_max11801_ts_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_max11801_ts.c_max11801_ts_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max11801_data = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@MESURE_AVER_CONF_REG = common dso_local global i32 0, align 4
@PANEL_SETUPTIME_CONF_REG = common dso_local global i32 0, align 4
@TOUCH_DETECT_PULLUP_CONF_REG = common dso_local global i32 0, align 4
@AUTO_MODE_TIME_CONF_REG = common dso_local global i32 0, align 4
@APERTURE_CONF_REG = common dso_local global i32 0, align 4
@OP_MODE_CONF_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.max11801_data*)* @max11801_ts_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max11801_ts_phy_init(%struct.max11801_data* %0) #0 {
  %2 = alloca %struct.max11801_data*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  store %struct.max11801_data* %0, %struct.max11801_data** %2, align 8
  %4 = load %struct.max11801_data*, %struct.max11801_data** %2, align 8
  %5 = getelementptr inbounds %struct.max11801_data, %struct.max11801_data* %4, i32 0, i32 0
  %6 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  store %struct.i2c_client* %6, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = load i32, i32* @MESURE_AVER_CONF_REG, align 4
  %9 = call i32 @max11801_write_reg(%struct.i2c_client* %7, i32 %8, i32 255)
  %10 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %11 = load i32, i32* @PANEL_SETUPTIME_CONF_REG, align 4
  %12 = call i32 @max11801_write_reg(%struct.i2c_client* %10, i32 %11, i32 17)
  %13 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %14 = load i32, i32* @TOUCH_DETECT_PULLUP_CONF_REG, align 4
  %15 = call i32 @max11801_write_reg(%struct.i2c_client* %13, i32 %14, i32 16)
  %16 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %17 = load i32, i32* @AUTO_MODE_TIME_CONF_REG, align 4
  %18 = call i32 @max11801_write_reg(%struct.i2c_client* %16, i32 %17, i32 170)
  %19 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %20 = load i32, i32* @APERTURE_CONF_REG, align 4
  %21 = call i32 @max11801_write_reg(%struct.i2c_client* %19, i32 %20, i32 51)
  %22 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %23 = load i32, i32* @OP_MODE_CONF_REG, align 4
  %24 = call i32 @max11801_write_reg(%struct.i2c_client* %22, i32 %23, i32 54)
  ret void
}

declare dso_local i32 @max11801_write_reg(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
