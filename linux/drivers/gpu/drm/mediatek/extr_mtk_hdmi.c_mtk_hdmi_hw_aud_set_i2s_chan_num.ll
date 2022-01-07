; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_hw_aud_set_i2s_chan_num.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_hw_aud_set_i2s_chan_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hdmi = type { i32 }

@HDMI_AUD_CHAN_TYPE_3_0_LRS = common dso_local global i32 0, align 4
@HDMI_AUD_CHAN_TYPE_4_0 = common dso_local global i32 0, align 4
@HDMI_AUD_CHAN_TYPE_5_1 = common dso_local global i32 0, align 4
@HDMI_AUD_CHAN_TYPE_4_1_CLRS = common dso_local global i32 0, align 4
@GRL_CH_SW0 = common dso_local global i32 0, align 4
@GRL_CH_SW1 = common dso_local global i32 0, align 4
@GRL_CH_SW2 = common dso_local global i32 0, align 4
@GRL_I2S_UV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_hdmi*, i32, i32)* @mtk_hdmi_hw_aud_set_i2s_chan_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_hdmi_hw_aud_set_i2s_chan_num(%struct.mtk_hdmi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mtk_hdmi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mtk_hdmi* %0, %struct.mtk_hdmi** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = call i32 @CH_SWITCH(i32 7, i32 7)
  %10 = call i32 @CH_SWITCH(i32 6, i32 6)
  %11 = or i32 %9, %10
  %12 = call i32 @CH_SWITCH(i32 5, i32 5)
  %13 = or i32 %11, %12
  %14 = call i32 @CH_SWITCH(i32 4, i32 4)
  %15 = or i32 %13, %14
  %16 = call i32 @CH_SWITCH(i32 3, i32 3)
  %17 = or i32 %15, %16
  %18 = call i32 @CH_SWITCH(i32 1, i32 2)
  %19 = or i32 %17, %18
  %20 = call i32 @CH_SWITCH(i32 2, i32 1)
  %21 = or i32 %19, %20
  %22 = call i32 @CH_SWITCH(i32 0, i32 0)
  %23 = or i32 %21, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = call i32 @I2S_UV_CH_EN(i32 0)
  store i32 %27, i32* %8, align 4
  br label %105

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 4
  br i1 %33, label %34, label %54

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 4
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @HDMI_AUD_CHAN_TYPE_3_0_LRS, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @HDMI_AUD_CHAN_TYPE_4_0, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41, %37
  %46 = call i32 @I2S_UV_CH_EN(i32 2)
  %47 = call i32 @I2S_UV_CH_EN(i32 0)
  %48 = or i32 %46, %47
  store i32 %48, i32* %8, align 4
  br label %53

49:                                               ; preds = %41, %34
  %50 = call i32 @I2S_UV_CH_EN(i32 3)
  %51 = call i32 @I2S_UV_CH_EN(i32 2)
  %52 = or i32 %50, %51
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %49, %45
  br label %104

54:                                               ; preds = %31
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %55, 6
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %6, align 4
  %59 = icmp eq i32 %58, 5
  br i1 %59, label %60, label %86

60:                                               ; preds = %57, %54
  %61 = load i32, i32* %6, align 4
  %62 = icmp eq i32 %61, 6
  br i1 %62, label %63, label %79

63:                                               ; preds = %60
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @HDMI_AUD_CHAN_TYPE_5_1, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %63
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @HDMI_AUD_CHAN_TYPE_4_1_CLRS, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %67
  %72 = call i32 @I2S_UV_CH_EN(i32 3)
  %73 = call i32 @I2S_UV_CH_EN(i32 2)
  %74 = or i32 %72, %73
  %75 = call i32 @I2S_UV_CH_EN(i32 1)
  %76 = or i32 %74, %75
  %77 = call i32 @I2S_UV_CH_EN(i32 0)
  %78 = or i32 %76, %77
  store i32 %78, i32* %8, align 4
  br label %85

79:                                               ; preds = %67, %63, %60
  %80 = call i32 @I2S_UV_CH_EN(i32 2)
  %81 = call i32 @I2S_UV_CH_EN(i32 1)
  %82 = or i32 %80, %81
  %83 = call i32 @I2S_UV_CH_EN(i32 0)
  %84 = or i32 %82, %83
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %79, %71
  br label %103

86:                                               ; preds = %57
  %87 = load i32, i32* %6, align 4
  %88 = icmp eq i32 %87, 8
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %6, align 4
  %91 = icmp eq i32 %90, 7
  br i1 %91, label %92, label %100

92:                                               ; preds = %89, %86
  %93 = call i32 @I2S_UV_CH_EN(i32 3)
  %94 = call i32 @I2S_UV_CH_EN(i32 2)
  %95 = or i32 %93, %94
  %96 = call i32 @I2S_UV_CH_EN(i32 1)
  %97 = or i32 %95, %96
  %98 = call i32 @I2S_UV_CH_EN(i32 0)
  %99 = or i32 %97, %98
  store i32 %99, i32* %8, align 4
  br label %102

100:                                              ; preds = %89
  %101 = call i32 @I2S_UV_CH_EN(i32 0)
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %100, %92
  br label %103

103:                                              ; preds = %102, %85
  br label %104

104:                                              ; preds = %103, %53
  br label %105

105:                                              ; preds = %104, %26
  %106 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %107 = load i32, i32* @GRL_CH_SW0, align 4
  %108 = load i32, i32* %7, align 4
  %109 = and i32 %108, 255
  %110 = call i32 @mtk_hdmi_write(%struct.mtk_hdmi* %106, i32 %107, i32 %109)
  %111 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %112 = load i32, i32* @GRL_CH_SW1, align 4
  %113 = load i32, i32* %7, align 4
  %114 = lshr i32 %113, 8
  %115 = and i32 %114, 255
  %116 = call i32 @mtk_hdmi_write(%struct.mtk_hdmi* %111, i32 %112, i32 %115)
  %117 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %118 = load i32, i32* @GRL_CH_SW2, align 4
  %119 = load i32, i32* %7, align 4
  %120 = lshr i32 %119, 16
  %121 = and i32 %120, 255
  %122 = call i32 @mtk_hdmi_write(%struct.mtk_hdmi* %117, i32 %118, i32 %121)
  %123 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %124 = load i32, i32* @GRL_I2S_UV, align 4
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @mtk_hdmi_write(%struct.mtk_hdmi* %123, i32 %124, i32 %125)
  ret void
}

declare dso_local i32 @CH_SWITCH(i32, i32) #1

declare dso_local i32 @I2S_UV_CH_EN(i32) #1

declare dso_local i32 @mtk_hdmi_write(%struct.mtk_hdmi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
