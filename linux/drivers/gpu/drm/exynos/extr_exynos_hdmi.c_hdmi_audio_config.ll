; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_audio_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_audio_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_context = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32* }

@HDMI_I2S_MUX_CON = common dso_local global i32 0, align 4
@HDMI_I2S_IN_DISABLE = common dso_local global i32 0, align 4
@HDMI_I2S_AUD_I2S = common dso_local global i32 0, align 4
@HDMI_I2S_CUV_I2S_ENABLE = common dso_local global i32 0, align 4
@HDMI_I2S_MUX_ENABLE = common dso_local global i32 0, align 4
@HDMI_I2S_MUX_CH = common dso_local global i32 0, align 4
@HDMI_I2S_CH0_EN = common dso_local global i32 0, align 4
@HDMI_I2S_CH1_EN = common dso_local global i32 0, align 4
@HDMI_I2S_CH2_EN = common dso_local global i32 0, align 4
@HDMI_I2S_MUX_CUV = common dso_local global i32 0, align 4
@HDMI_I2S_CUV_RL_EN = common dso_local global i32 0, align 4
@HDMI_I2S_CLK_CON = common dso_local global i32 0, align 4
@HDMI_I2S_CLK_DIS = common dso_local global i32 0, align 4
@HDMI_I2S_CLK_EN = common dso_local global i32 0, align 4
@HDMI_I2S_DSD_CON = common dso_local global i32 0, align 4
@HDMI_I2S_PIN_SEL_0 = common dso_local global i32 0, align 4
@HDMI_I2S_PIN_SEL_1 = common dso_local global i32 0, align 4
@HDMI_I2S_PIN_SEL_2 = common dso_local global i32 0, align 4
@HDMI_I2S_PIN_SEL_3 = common dso_local global i32 0, align 4
@HDMI_I2S_CON_1 = common dso_local global i32 0, align 4
@HDMI_I2S_SCLK_FALLING_EDGE = common dso_local global i32 0, align 4
@HDMI_I2S_L_CH_LOW_POL = common dso_local global i32 0, align 4
@HDMI_I2S_CON_2 = common dso_local global i32 0, align 4
@HDMI_I2S_MSB_FIRST_MODE = common dso_local global i32 0, align 4
@HDMI_I2S_BASIC_FORMAT = common dso_local global i32 0, align 4
@HDMI_I2S_CH_ST_MAXNUM = common dso_local global i32 0, align 4
@HDMI_I2S_CH_ST_CON = common dso_local global i32 0, align 4
@HDMI_I2S_CH_STATUS_RELOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdmi_context*)* @hdmi_audio_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_audio_config(%struct.hdmi_context* %0) #0 {
  %2 = alloca %struct.hdmi_context*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hdmi_context* %0, %struct.hdmi_context** %2, align 8
  store i32 1, i32* %3, align 4
  %7 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %8 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %14 [
    i32 20, label %12
    i32 24, label %13
  ]

12:                                               ; preds = %1
  store i32 2, i32* %4, align 4
  br label %15

13:                                               ; preds = %1
  store i32 3, i32* %4, align 4
  br label %15

14:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %14, %13, %12
  %16 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %17 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %18 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @hdmi_reg_acr(%struct.hdmi_context* %16, i32 %21)
  %23 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %24 = load i32, i32* @HDMI_I2S_MUX_CON, align 4
  %25 = load i32, i32* @HDMI_I2S_IN_DISABLE, align 4
  %26 = load i32, i32* @HDMI_I2S_AUD_I2S, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @HDMI_I2S_CUV_I2S_ENABLE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @HDMI_I2S_MUX_ENABLE, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @hdmi_reg_writeb(%struct.hdmi_context* %23, i32 %24, i32 %31)
  %33 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %34 = load i32, i32* @HDMI_I2S_MUX_CH, align 4
  %35 = load i32, i32* @HDMI_I2S_CH0_EN, align 4
  %36 = load i32, i32* @HDMI_I2S_CH1_EN, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @HDMI_I2S_CH2_EN, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @hdmi_reg_writeb(%struct.hdmi_context* %33, i32 %34, i32 %39)
  %41 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %42 = load i32, i32* @HDMI_I2S_MUX_CUV, align 4
  %43 = load i32, i32* @HDMI_I2S_CUV_RL_EN, align 4
  %44 = call i32 @hdmi_reg_writeb(%struct.hdmi_context* %41, i32 %42, i32 %43)
  %45 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %46 = load i32, i32* @HDMI_I2S_CLK_CON, align 4
  %47 = load i32, i32* @HDMI_I2S_CLK_DIS, align 4
  %48 = call i32 @hdmi_reg_writeb(%struct.hdmi_context* %45, i32 %46, i32 %47)
  %49 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %50 = load i32, i32* @HDMI_I2S_CLK_CON, align 4
  %51 = load i32, i32* @HDMI_I2S_CLK_EN, align 4
  %52 = call i32 @hdmi_reg_writeb(%struct.hdmi_context* %49, i32 %50, i32 %51)
  %53 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %54 = load i32, i32* @HDMI_I2S_DSD_CON, align 4
  %55 = call i32 @hdmi_reg_read(%struct.hdmi_context* %53, i32 %54)
  %56 = or i32 %55, 1
  store i32 %56, i32* %5, align 4
  %57 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %58 = load i32, i32* @HDMI_I2S_DSD_CON, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @hdmi_reg_writeb(%struct.hdmi_context* %57, i32 %58, i32 %59)
  %61 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %62 = load i32, i32* @HDMI_I2S_PIN_SEL_0, align 4
  %63 = call i32 @HDMI_I2S_SEL_SCLK(i32 5)
  %64 = call i32 @HDMI_I2S_SEL_LRCK(i32 6)
  %65 = or i32 %63, %64
  %66 = call i32 @hdmi_reg_writeb(%struct.hdmi_context* %61, i32 %62, i32 %65)
  %67 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %68 = load i32, i32* @HDMI_I2S_PIN_SEL_1, align 4
  %69 = call i32 @HDMI_I2S_SEL_SDATA1(i32 3)
  %70 = call i32 @HDMI_I2S_SEL_SDATA0(i32 4)
  %71 = or i32 %69, %70
  %72 = call i32 @hdmi_reg_writeb(%struct.hdmi_context* %67, i32 %68, i32 %71)
  %73 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %74 = load i32, i32* @HDMI_I2S_PIN_SEL_2, align 4
  %75 = call i32 @HDMI_I2S_SEL_SDATA3(i32 1)
  %76 = call i32 @HDMI_I2S_SEL_SDATA2(i32 2)
  %77 = or i32 %75, %76
  %78 = call i32 @hdmi_reg_writeb(%struct.hdmi_context* %73, i32 %74, i32 %77)
  %79 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %80 = load i32, i32* @HDMI_I2S_PIN_SEL_3, align 4
  %81 = call i32 @HDMI_I2S_SEL_DSD(i32 0)
  %82 = call i32 @hdmi_reg_writeb(%struct.hdmi_context* %79, i32 %80, i32 %81)
  %83 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %84 = load i32, i32* @HDMI_I2S_CON_1, align 4
  %85 = load i32, i32* @HDMI_I2S_SCLK_FALLING_EDGE, align 4
  %86 = load i32, i32* @HDMI_I2S_L_CH_LOW_POL, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @hdmi_reg_writeb(%struct.hdmi_context* %83, i32 %84, i32 %87)
  %89 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %90 = load i32, i32* @HDMI_I2S_CON_2, align 4
  %91 = load i32, i32* @HDMI_I2S_MSB_FIRST_MODE, align 4
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @HDMI_I2S_SET_BIT_CH(i32 %92)
  %94 = or i32 %91, %93
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @HDMI_I2S_SET_SDATA_BIT(i32 %95)
  %97 = or i32 %94, %96
  %98 = load i32, i32* @HDMI_I2S_BASIC_FORMAT, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @hdmi_reg_writeb(%struct.hdmi_context* %89, i32 %90, i32 %99)
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %120, %15
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @HDMI_I2S_CH_ST_MAXNUM, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %123

105:                                              ; preds = %101
  %106 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @HDMI_I2S_CH_ST(i32 %107)
  %109 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %110 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @hdmi_reg_writeb(%struct.hdmi_context* %106, i32 %108, i32 %118)
  br label %120

120:                                              ; preds = %105
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %6, align 4
  br label %101

123:                                              ; preds = %101
  %124 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %125 = load i32, i32* @HDMI_I2S_CH_ST_CON, align 4
  %126 = load i32, i32* @HDMI_I2S_CH_STATUS_RELOAD, align 4
  %127 = call i32 @hdmi_reg_writeb(%struct.hdmi_context* %124, i32 %125, i32 %126)
  ret void
}

declare dso_local i32 @hdmi_reg_acr(%struct.hdmi_context*, i32) #1

declare dso_local i32 @hdmi_reg_writeb(%struct.hdmi_context*, i32, i32) #1

declare dso_local i32 @hdmi_reg_read(%struct.hdmi_context*, i32) #1

declare dso_local i32 @HDMI_I2S_SEL_SCLK(i32) #1

declare dso_local i32 @HDMI_I2S_SEL_LRCK(i32) #1

declare dso_local i32 @HDMI_I2S_SEL_SDATA1(i32) #1

declare dso_local i32 @HDMI_I2S_SEL_SDATA0(i32) #1

declare dso_local i32 @HDMI_I2S_SEL_SDATA3(i32) #1

declare dso_local i32 @HDMI_I2S_SEL_SDATA2(i32) #1

declare dso_local i32 @HDMI_I2S_SEL_DSD(i32) #1

declare dso_local i32 @HDMI_I2S_SET_BIT_CH(i32) #1

declare dso_local i32 @HDMI_I2S_SET_SDATA_BIT(i32) #1

declare dso_local i32 @HDMI_I2S_CH_ST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
