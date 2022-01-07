; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda998x_priv = type { i32 }

@REG_SOFTRESET = common dso_local global i32 0, align 4
@SOFTRESET_AUDIO = common dso_local global i32 0, align 4
@SOFTRESET_I2C_MASTER = common dso_local global i32 0, align 4
@REG_MAIN_CNTRL0 = common dso_local global i32 0, align 4
@MAIN_CNTRL0_SR = common dso_local global i32 0, align 4
@REG_PLL_SERIAL_1 = common dso_local global i32 0, align 4
@REG_PLL_SERIAL_2 = common dso_local global i32 0, align 4
@REG_PLL_SERIAL_3 = common dso_local global i32 0, align 4
@REG_SERIALIZER = common dso_local global i32 0, align 4
@REG_BUFFER_OUT = common dso_local global i32 0, align 4
@REG_PLL_SCG1 = common dso_local global i32 0, align 4
@REG_AUDIO_DIV = common dso_local global i32 0, align 4
@AUDIO_DIV_SERCLK_8 = common dso_local global i32 0, align 4
@REG_SEL_CLK = common dso_local global i32 0, align 4
@SEL_CLK_SEL_CLK1 = common dso_local global i32 0, align 4
@SEL_CLK_ENA_SC_CLK = common dso_local global i32 0, align 4
@REG_PLL_SCGN1 = common dso_local global i32 0, align 4
@REG_PLL_SCGN2 = common dso_local global i32 0, align 4
@REG_PLL_SCGR1 = common dso_local global i32 0, align 4
@REG_PLL_SCGR2 = common dso_local global i32 0, align 4
@REG_PLL_SCG2 = common dso_local global i32 0, align 4
@REG_MUX_VP_VIP_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tda998x_priv*)* @tda998x_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda998x_reset(%struct.tda998x_priv* %0) #0 {
  %2 = alloca %struct.tda998x_priv*, align 8
  store %struct.tda998x_priv* %0, %struct.tda998x_priv** %2, align 8
  %3 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %4 = load i32, i32* @REG_SOFTRESET, align 4
  %5 = load i32, i32* @SOFTRESET_AUDIO, align 4
  %6 = load i32, i32* @SOFTRESET_I2C_MASTER, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @reg_write(%struct.tda998x_priv* %3, i32 %4, i32 %7)
  %9 = call i32 @msleep(i32 50)
  %10 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %11 = load i32, i32* @REG_SOFTRESET, align 4
  %12 = call i32 @reg_write(%struct.tda998x_priv* %10, i32 %11, i32 0)
  %13 = call i32 @msleep(i32 50)
  %14 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %15 = load i32, i32* @REG_MAIN_CNTRL0, align 4
  %16 = load i32, i32* @MAIN_CNTRL0_SR, align 4
  %17 = call i32 @reg_set(%struct.tda998x_priv* %14, i32 %15, i32 %16)
  %18 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %19 = load i32, i32* @REG_MAIN_CNTRL0, align 4
  %20 = load i32, i32* @MAIN_CNTRL0_SR, align 4
  %21 = call i32 @reg_clear(%struct.tda998x_priv* %18, i32 %19, i32 %20)
  %22 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %23 = load i32, i32* @REG_PLL_SERIAL_1, align 4
  %24 = call i32 @reg_write(%struct.tda998x_priv* %22, i32 %23, i32 0)
  %25 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %26 = load i32, i32* @REG_PLL_SERIAL_2, align 4
  %27 = call i32 @PLL_SERIAL_2_SRL_NOSC(i32 1)
  %28 = call i32 @reg_write(%struct.tda998x_priv* %25, i32 %26, i32 %27)
  %29 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %30 = load i32, i32* @REG_PLL_SERIAL_3, align 4
  %31 = call i32 @reg_write(%struct.tda998x_priv* %29, i32 %30, i32 0)
  %32 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %33 = load i32, i32* @REG_SERIALIZER, align 4
  %34 = call i32 @reg_write(%struct.tda998x_priv* %32, i32 %33, i32 0)
  %35 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %36 = load i32, i32* @REG_BUFFER_OUT, align 4
  %37 = call i32 @reg_write(%struct.tda998x_priv* %35, i32 %36, i32 0)
  %38 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %39 = load i32, i32* @REG_PLL_SCG1, align 4
  %40 = call i32 @reg_write(%struct.tda998x_priv* %38, i32 %39, i32 0)
  %41 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %42 = load i32, i32* @REG_AUDIO_DIV, align 4
  %43 = load i32, i32* @AUDIO_DIV_SERCLK_8, align 4
  %44 = call i32 @reg_write(%struct.tda998x_priv* %41, i32 %42, i32 %43)
  %45 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %46 = load i32, i32* @REG_SEL_CLK, align 4
  %47 = load i32, i32* @SEL_CLK_SEL_CLK1, align 4
  %48 = load i32, i32* @SEL_CLK_ENA_SC_CLK, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @reg_write(%struct.tda998x_priv* %45, i32 %46, i32 %49)
  %51 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %52 = load i32, i32* @REG_PLL_SCGN1, align 4
  %53 = call i32 @reg_write(%struct.tda998x_priv* %51, i32 %52, i32 250)
  %54 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %55 = load i32, i32* @REG_PLL_SCGN2, align 4
  %56 = call i32 @reg_write(%struct.tda998x_priv* %54, i32 %55, i32 0)
  %57 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %58 = load i32, i32* @REG_PLL_SCGR1, align 4
  %59 = call i32 @reg_write(%struct.tda998x_priv* %57, i32 %58, i32 91)
  %60 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %61 = load i32, i32* @REG_PLL_SCGR2, align 4
  %62 = call i32 @reg_write(%struct.tda998x_priv* %60, i32 %61, i32 0)
  %63 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %64 = load i32, i32* @REG_PLL_SCG2, align 4
  %65 = call i32 @reg_write(%struct.tda998x_priv* %63, i32 %64, i32 16)
  %66 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %67 = load i32, i32* @REG_MUX_VP_VIP_OUT, align 4
  %68 = call i32 @reg_write(%struct.tda998x_priv* %66, i32 %67, i32 36)
  ret void
}

declare dso_local i32 @reg_write(%struct.tda998x_priv*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @reg_set(%struct.tda998x_priv*, i32, i32) #1

declare dso_local i32 @reg_clear(%struct.tda998x_priv*, i32, i32) #1

declare dso_local i32 @PLL_SERIAL_2_SRL_NOSC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
