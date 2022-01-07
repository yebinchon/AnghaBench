; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hdmi.c_tegra_hdmi_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hdmi.c_tegra_hdmi_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_hdmi = type { i32 }

@HDMI_NV_PDISP_INT_STATUS = common dso_local global i32 0, align 4
@INT_CODEC_SCRATCH0 = common dso_local global i32 0, align 4
@HDMI_NV_PDISP_SOR_AUDIO_HDA_CODEC_SCRATCH0 = common dso_local global i32 0, align 4
@SOR_AUDIO_HDA_CODEC_SCRATCH0_VALID = common dso_local global i32 0, align 4
@SOR_AUDIO_HDA_CODEC_SCRATCH0_FMT_MASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tegra_hdmi_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_hdmi_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tegra_hdmi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.tegra_hdmi*
  store %struct.tegra_hdmi* %11, %struct.tegra_hdmi** %5, align 8
  %12 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %5, align 8
  %13 = load i32, i32* @HDMI_NV_PDISP_INT_STATUS, align 4
  %14 = call i32 @tegra_hdmi_readl(%struct.tegra_hdmi* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @HDMI_NV_PDISP_INT_STATUS, align 4
  %18 = call i32 @tegra_hdmi_writel(%struct.tegra_hdmi* %15, i32 %16, i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @INT_CODEC_SCRATCH0, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %62

23:                                               ; preds = %2
  %24 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %5, align 8
  %25 = load i32, i32* @HDMI_NV_PDISP_SOR_AUDIO_HDA_CODEC_SCRATCH0, align 4
  %26 = call i32 @tegra_hdmi_readl(%struct.tegra_hdmi* %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @SOR_AUDIO_HDA_CODEC_SCRATCH0_VALID, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %23
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @SOR_AUDIO_HDA_CODEC_SCRATCH0_FMT_MASK, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %5, align 8
  %37 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %36, i32 0, i32 0
  %38 = call i32 @tegra_hda_parse_format(i32 %35, i32* %37)
  %39 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %5, align 8
  %40 = call i32 @tegra_hdmi_setup_audio(%struct.tegra_hdmi* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %31
  %44 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %5, align 8
  %45 = call i32 @tegra_hdmi_disable_audio_infoframe(%struct.tegra_hdmi* %44)
  %46 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %5, align 8
  %47 = call i32 @tegra_hdmi_disable_audio(%struct.tegra_hdmi* %46)
  br label %55

48:                                               ; preds = %31
  %49 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %5, align 8
  %50 = call i32 @tegra_hdmi_setup_audio_infoframe(%struct.tegra_hdmi* %49)
  %51 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %5, align 8
  %52 = call i32 @tegra_hdmi_enable_audio_infoframe(%struct.tegra_hdmi* %51)
  %53 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %5, align 8
  %54 = call i32 @tegra_hdmi_enable_audio(%struct.tegra_hdmi* %53)
  br label %55

55:                                               ; preds = %48, %43
  br label %61

56:                                               ; preds = %23
  %57 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %5, align 8
  %58 = call i32 @tegra_hdmi_disable_audio_infoframe(%struct.tegra_hdmi* %57)
  %59 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %5, align 8
  %60 = call i32 @tegra_hdmi_disable_audio(%struct.tegra_hdmi* %59)
  br label %61

61:                                               ; preds = %56, %55
  br label %62

62:                                               ; preds = %61, %2
  %63 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %63
}

declare dso_local i32 @tegra_hdmi_readl(%struct.tegra_hdmi*, i32) #1

declare dso_local i32 @tegra_hdmi_writel(%struct.tegra_hdmi*, i32, i32) #1

declare dso_local i32 @tegra_hda_parse_format(i32, i32*) #1

declare dso_local i32 @tegra_hdmi_setup_audio(%struct.tegra_hdmi*) #1

declare dso_local i32 @tegra_hdmi_disable_audio_infoframe(%struct.tegra_hdmi*) #1

declare dso_local i32 @tegra_hdmi_disable_audio(%struct.tegra_hdmi*) #1

declare dso_local i32 @tegra_hdmi_setup_audio_infoframe(%struct.tegra_hdmi*) #1

declare dso_local i32 @tegra_hdmi_enable_audio_infoframe(%struct.tegra_hdmi*) #1

declare dso_local i32 @tegra_hdmi_enable_audio(%struct.tegra_hdmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
