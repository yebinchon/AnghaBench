; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_hdmi_enable_audio_infoframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_hdmi_enable_audio_infoframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_sor = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hdmi_audio_infoframe = type { i32 }

@AUDIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to setup audio infoframe: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to pack audio infoframe: %d\0A\00", align 1
@SOR_HDMI_AUDIO_INFOFRAME_CTRL = common dso_local global i32 0, align 4
@INFOFRAME_CTRL_CHECKSUM_ENABLE = common dso_local global i32 0, align 4
@INFOFRAME_CTRL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_sor*)* @tegra_sor_hdmi_enable_audio_infoframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_sor_hdmi_enable_audio_infoframe(%struct.tegra_sor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_sor*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hdmi_audio_infoframe, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tegra_sor* %0, %struct.tegra_sor** %3, align 8
  %10 = load i32, i32* @AUDIO, align 4
  %11 = call i32 @HDMI_INFOFRAME_SIZE(i32 %10)
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %15 = call i32 @hdmi_audio_infoframe_init(%struct.hdmi_audio_infoframe* %6)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %20 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %60

25:                                               ; preds = %1
  %26 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %27 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %6, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = mul nuw i64 4, %12
  %32 = trunc i64 %31 to i32
  %33 = call i32 @hdmi_audio_infoframe_pack(%struct.hdmi_audio_infoframe* %6, i32* %14, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %25
  %37 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %38 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %60

43:                                               ; preds = %25
  %44 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @tegra_sor_hdmi_write_infopack(%struct.tegra_sor* %44, i32* %14, i32 %45)
  %47 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %48 = load i32, i32* @SOR_HDMI_AUDIO_INFOFRAME_CTRL, align 4
  %49 = call i32 @tegra_sor_readl(%struct.tegra_sor* %47, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* @INFOFRAME_CTRL_CHECKSUM_ENABLE, align 4
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* @INFOFRAME_CTRL_ENABLE, align 4
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  %56 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @SOR_HDMI_AUDIO_INFOFRAME_CTRL, align 4
  %59 = call i32 @tegra_sor_writel(%struct.tegra_sor* %56, i32 %57, i32 %58)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %60

60:                                               ; preds = %43, %36, %18
  %61 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @HDMI_INFOFRAME_SIZE(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @hdmi_audio_infoframe_init(%struct.hdmi_audio_infoframe*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @hdmi_audio_infoframe_pack(%struct.hdmi_audio_infoframe*, i32*, i32) #1

declare dso_local i32 @tegra_sor_hdmi_write_infopack(%struct.tegra_sor*, i32*, i32) #1

declare dso_local i32 @tegra_sor_readl(%struct.tegra_sor*, i32) #1

declare dso_local i32 @tegra_sor_writel(%struct.tegra_sor*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
