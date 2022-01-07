; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_configure_audio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_configure_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda998x_priv = type { %struct.tda998x_audio_settings }
%struct.tda998x_audio_settings = type { i64, i32, i32, i32, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@REG_ENA_AP = common dso_local global i32 0, align 4
@REG_ENA_ACLK = common dso_local global i32 0, align 4
@REG_MUX_AP = common dso_local global i32 0, align 4
@REG_I2S_FORMAT = common dso_local global i32 0, align 4
@REG_AIP_CLKSEL = common dso_local global i32 0, align 4
@REG_AIP_CNTRL_0 = common dso_local global i32 0, align 4
@AIP_CNTRL_0_LAYOUT = common dso_local global i32 0, align 4
@AIP_CNTRL_0_ACR_MAN = common dso_local global i32 0, align 4
@REG_CTS_N = common dso_local global i32 0, align 4
@REG_AUDIO_DIV = common dso_local global i32 0, align 4
@REG_ACR_CTS_0 = common dso_local global i32 0, align 4
@AIP_CNTRL_0_RST_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tda998x_priv*)* @tda998x_configure_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda998x_configure_audio(%struct.tda998x_priv* %0) #0 {
  %2 = alloca %struct.tda998x_priv*, align 8
  %3 = alloca %struct.tda998x_audio_settings*, align 8
  %4 = alloca [6 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tda998x_priv* %0, %struct.tda998x_priv** %2, align 8
  %7 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %8 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %7, i32 0, i32 0
  store %struct.tda998x_audio_settings* %8, %struct.tda998x_audio_settings** %3, align 8
  %9 = load %struct.tda998x_audio_settings*, %struct.tda998x_audio_settings** %3, align 8
  %10 = getelementptr inbounds %struct.tda998x_audio_settings, %struct.tda998x_audio_settings* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %138

14:                                               ; preds = %1
  %15 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %16 = load %struct.tda998x_audio_settings*, %struct.tda998x_audio_settings** %3, align 8
  %17 = getelementptr inbounds %struct.tda998x_audio_settings, %struct.tda998x_audio_settings* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @tda998x_get_adiv(%struct.tda998x_priv* %15, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %21 = load i32, i32* @REG_ENA_AP, align 4
  %22 = load %struct.tda998x_audio_settings*, %struct.tda998x_audio_settings** %3, align 8
  %23 = getelementptr inbounds %struct.tda998x_audio_settings, %struct.tda998x_audio_settings* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @reg_write(%struct.tda998x_priv* %20, i32 %21, i32 %25)
  %27 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %28 = load i32, i32* @REG_ENA_ACLK, align 4
  %29 = load %struct.tda998x_audio_settings*, %struct.tda998x_audio_settings** %3, align 8
  %30 = getelementptr inbounds %struct.tda998x_audio_settings, %struct.tda998x_audio_settings* %29, i32 0, i32 6
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @reg_write(%struct.tda998x_priv* %27, i32 %28, i32 %33)
  %35 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %36 = load i32, i32* @REG_MUX_AP, align 4
  %37 = load %struct.tda998x_audio_settings*, %struct.tda998x_audio_settings** %3, align 8
  %38 = getelementptr inbounds %struct.tda998x_audio_settings, %struct.tda998x_audio_settings* %37, i32 0, i32 6
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @reg_write(%struct.tda998x_priv* %35, i32 %36, i32 %41)
  %43 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %44 = load i32, i32* @REG_I2S_FORMAT, align 4
  %45 = load %struct.tda998x_audio_settings*, %struct.tda998x_audio_settings** %3, align 8
  %46 = getelementptr inbounds %struct.tda998x_audio_settings, %struct.tda998x_audio_settings* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @reg_write(%struct.tda998x_priv* %43, i32 %44, i32 %47)
  %49 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %50 = load i32, i32* @REG_AIP_CLKSEL, align 4
  %51 = load %struct.tda998x_audio_settings*, %struct.tda998x_audio_settings** %3, align 8
  %52 = getelementptr inbounds %struct.tda998x_audio_settings, %struct.tda998x_audio_settings* %51, i32 0, i32 6
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @reg_write(%struct.tda998x_priv* %49, i32 %50, i32 %55)
  %57 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %58 = load i32, i32* @REG_AIP_CNTRL_0, align 4
  %59 = load i32, i32* @AIP_CNTRL_0_LAYOUT, align 4
  %60 = load i32, i32* @AIP_CNTRL_0_ACR_MAN, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @reg_clear(%struct.tda998x_priv* %57, i32 %58, i32 %61)
  %63 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %64 = load i32, i32* @REG_CTS_N, align 4
  %65 = load %struct.tda998x_audio_settings*, %struct.tda998x_audio_settings** %3, align 8
  %66 = getelementptr inbounds %struct.tda998x_audio_settings, %struct.tda998x_audio_settings* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @reg_write(%struct.tda998x_priv* %63, i32 %64, i32 %67)
  %69 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %70 = load i32, i32* @REG_AUDIO_DIV, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @reg_write(%struct.tda998x_priv* %69, i32 %70, i32 %71)
  %73 = load %struct.tda998x_audio_settings*, %struct.tda998x_audio_settings** %3, align 8
  %74 = getelementptr inbounds %struct.tda998x_audio_settings, %struct.tda998x_audio_settings* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = mul nsw i32 128, %75
  %77 = sdiv i32 %76, 1000
  store i32 %77, i32* %6, align 4
  %78 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  store i32 68, i32* %78, align 16
  %79 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 1
  store i32 66, i32* %79, align 4
  %80 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 2
  store i32 1, i32* %80, align 8
  %81 = load i32, i32* %6, align 4
  %82 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 3
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* %6, align 4
  %84 = ashr i32 %83, 8
  %85 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 4
  store i32 %84, i32* %85, align 16
  %86 = load i32, i32* %6, align 4
  %87 = ashr i32 %86, 16
  %88 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 5
  store i32 %87, i32* %88, align 4
  %89 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %90 = load i32, i32* @REG_ACR_CTS_0, align 4
  %91 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %92 = call i32 @reg_write_range(%struct.tda998x_priv* %89, i32 %90, i32* %91, i32 6)
  %93 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %94 = load i32, i32* @REG_AIP_CNTRL_0, align 4
  %95 = load i32, i32* @AIP_CNTRL_0_RST_CTS, align 4
  %96 = call i32 @reg_set(%struct.tda998x_priv* %93, i32 %94, i32 %95)
  %97 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %98 = load i32, i32* @REG_AIP_CNTRL_0, align 4
  %99 = load i32, i32* @AIP_CNTRL_0_RST_CTS, align 4
  %100 = call i32 @reg_clear(%struct.tda998x_priv* %97, i32 %98, i32 %99)
  %101 = load %struct.tda998x_audio_settings*, %struct.tda998x_audio_settings** %3, align 8
  %102 = getelementptr inbounds %struct.tda998x_audio_settings, %struct.tda998x_audio_settings* %101, i32 0, i32 4
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  store i32 %105, i32* %106, align 16
  %107 = load %struct.tda998x_audio_settings*, %struct.tda998x_audio_settings** %3, align 8
  %108 = getelementptr inbounds %struct.tda998x_audio_settings, %struct.tda998x_audio_settings* %107, i32 0, i32 4
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 1
  store i32 %111, i32* %112, align 4
  %113 = load %struct.tda998x_audio_settings*, %struct.tda998x_audio_settings** %3, align 8
  %114 = getelementptr inbounds %struct.tda998x_audio_settings, %struct.tda998x_audio_settings* %113, i32 0, i32 4
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 3
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 2
  store i32 %117, i32* %118, align 8
  %119 = load %struct.tda998x_audio_settings*, %struct.tda998x_audio_settings** %3, align 8
  %120 = getelementptr inbounds %struct.tda998x_audio_settings, %struct.tda998x_audio_settings* %119, i32 0, i32 4
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 4
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 3
  store i32 %123, i32* %124, align 4
  %125 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %126 = call i32 @REG_CH_STAT_B(i32 0)
  %127 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %128 = call i32 @reg_write_range(%struct.tda998x_priv* %125, i32 %126, i32* %127, i32 4)
  %129 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %130 = call i32 @tda998x_audio_mute(%struct.tda998x_priv* %129, i32 1)
  %131 = call i32 @msleep(i32 20)
  %132 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %133 = call i32 @tda998x_audio_mute(%struct.tda998x_priv* %132, i32 0)
  %134 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %135 = load %struct.tda998x_audio_settings*, %struct.tda998x_audio_settings** %3, align 8
  %136 = getelementptr inbounds %struct.tda998x_audio_settings, %struct.tda998x_audio_settings* %135, i32 0, i32 5
  %137 = call i32 @tda998x_write_aif(%struct.tda998x_priv* %134, i32* %136)
  br label %138

138:                                              ; preds = %14, %13
  ret void
}

declare dso_local i32 @tda998x_get_adiv(%struct.tda998x_priv*, i32) #1

declare dso_local i32 @reg_write(%struct.tda998x_priv*, i32, i32) #1

declare dso_local i32 @reg_clear(%struct.tda998x_priv*, i32, i32) #1

declare dso_local i32 @reg_write_range(%struct.tda998x_priv*, i32, i32*, i32) #1

declare dso_local i32 @reg_set(%struct.tda998x_priv*, i32, i32) #1

declare dso_local i32 @REG_CH_STAT_B(i32) #1

declare dso_local i32 @tda998x_audio_mute(%struct.tda998x_priv*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @tda998x_write_aif(%struct.tda998x_priv*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
