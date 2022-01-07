; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_cec_set_calibration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_cec_set_calibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda998x_priv = type { i32 }

@REG_CEC_DES_FREQ2 = common dso_local global i32 0, align 4
@CEC_DES_FREQ2_DIS_AUTOCAL = common dso_local global i32 0, align 4
@REG_CEC_CLK = common dso_local global i32 0, align 4
@CEC_CLK_FRO = common dso_local global i32 0, align 4
@CEC_ENAMODS_DIS_FRO = common dso_local global i32 0, align 4
@REG_CEC_CAL_XOSC_CTRL1 = common dso_local global i32 0, align 4
@CEC_CAL_XOSC_CTRL1_ENA_CAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tda998x_priv*, i32)* @tda998x_cec_set_calibration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda998x_cec_set_calibration(%struct.tda998x_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.tda998x_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tda998x_priv* %0, %struct.tda998x_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %35

8:                                                ; preds = %2
  %9 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %10 = call i32 @cec_write(%struct.tda998x_priv* %9, i32 243, i32 192)
  %11 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %12 = call i32 @cec_write(%struct.tda998x_priv* %11, i32 244, i32 212)
  %13 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %14 = load i32, i32* @REG_CEC_DES_FREQ2, align 4
  %15 = call i32 @cec_read(%struct.tda998x_priv* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @CEC_DES_FREQ2_DIS_AUTOCAL, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %21 = load i32, i32* @REG_CEC_DES_FREQ2, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @cec_write(%struct.tda998x_priv* %20, i32 %21, i32 %22)
  %24 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %25 = load i32, i32* @REG_CEC_CLK, align 4
  %26 = load i32, i32* @CEC_CLK_FRO, align 4
  %27 = call i32 @cec_write(%struct.tda998x_priv* %24, i32 %25, i32 %26)
  %28 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %29 = load i32, i32* @CEC_ENAMODS_DIS_FRO, align 4
  %30 = call i32 @cec_enamods(%struct.tda998x_priv* %28, i32 %29, i32 0)
  %31 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %32 = load i32, i32* @REG_CEC_CAL_XOSC_CTRL1, align 4
  %33 = load i32, i32* @CEC_CAL_XOSC_CTRL1_ENA_CAL, align 4
  %34 = call i32 @cec_write(%struct.tda998x_priv* %31, i32 %32, i32 %33)
  br label %39

35:                                               ; preds = %2
  %36 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %37 = load i32, i32* @REG_CEC_CAL_XOSC_CTRL1, align 4
  %38 = call i32 @cec_write(%struct.tda998x_priv* %36, i32 %37, i32 0)
  br label %39

39:                                               ; preds = %35, %8
  ret void
}

declare dso_local i32 @cec_write(%struct.tda998x_priv*, i32, i32) #1

declare dso_local i32 @cec_read(%struct.tda998x_priv*, i32) #1

declare dso_local i32 @cec_enamods(%struct.tda998x_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
