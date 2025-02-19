; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_hw_send_info_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_hw_send_info_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hdmi = type { i32 }

@GRL_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"frame_type:0x%x,frame_ver:0x%x,frame_len:0x%x,checksum:0x%x\0A\00", align 1
@CTRL_AVI_EN = common dso_local global i32 0, align 4
@CTRL_SPD_EN = common dso_local global i32 0, align 4
@CTRL_AUDIO_EN = common dso_local global i32 0, align 4
@VS_EN = common dso_local global i32 0, align 4
@GRL_ACP_ISRC_CTRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Unknown infoframe type %d\0A\00", align 1
@GRL_INFOFRM_TYPE = common dso_local global i32 0, align 4
@GRL_INFOFRM_VER = common dso_local global i32 0, align 4
@GRL_INFOFRM_LNG = common dso_local global i32 0, align 4
@GRL_IFM_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_hdmi*, i32*, i32)* @mtk_hdmi_hw_send_info_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_hdmi_hw_send_info_frame(%struct.mtk_hdmi* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.mtk_hdmi*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mtk_hdmi* %0, %struct.mtk_hdmi** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* @GRL_CTRL, align 4
  store i32 %15, i32* %7, align 4
  store i32 0, i32* %14, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32* %19, i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  store i32* %23, i32** %5, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32* %27, i32** %5, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %13, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32* %31, i32** %5, align 8
  %32 = load i32*, i32** %5, align 8
  store i32* %32, i32** %9, align 8
  %33 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %34 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @dev_dbg(i32 %35, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* %10, align 4
  switch i32 %41, label %54 [
    i32 130, label %42
    i32 129, label %45
    i32 131, label %48
    i32 128, label %51
  ]

42:                                               ; preds = %3
  %43 = load i32, i32* @CTRL_AVI_EN, align 4
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* @GRL_CTRL, align 4
  store i32 %44, i32* %7, align 4
  br label %60

45:                                               ; preds = %3
  %46 = load i32, i32* @CTRL_SPD_EN, align 4
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* @GRL_CTRL, align 4
  store i32 %47, i32* %7, align 4
  br label %60

48:                                               ; preds = %3
  %49 = load i32, i32* @CTRL_AUDIO_EN, align 4
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* @GRL_CTRL, align 4
  store i32 %50, i32* %7, align 4
  br label %60

51:                                               ; preds = %3
  %52 = load i32, i32* @VS_EN, align 4
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* @GRL_ACP_ISRC_CTRL, align 4
  store i32 %53, i32* %7, align 4
  br label %60

54:                                               ; preds = %3
  %55 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %56 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %102

60:                                               ; preds = %51, %48, %45, %42
  %61 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @mtk_hdmi_clear_bits(%struct.mtk_hdmi* %61, i32 %62, i32 %63)
  %65 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %66 = load i32, i32* @GRL_INFOFRM_TYPE, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @mtk_hdmi_write(%struct.mtk_hdmi* %65, i32 %66, i32 %67)
  %69 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %70 = load i32, i32* @GRL_INFOFRM_VER, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @mtk_hdmi_write(%struct.mtk_hdmi* %69, i32 %70, i32 %71)
  %73 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %74 = load i32, i32* @GRL_INFOFRM_LNG, align 4
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @mtk_hdmi_write(%struct.mtk_hdmi* %73, i32 %74, i32 %75)
  %77 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %78 = load i32, i32* @GRL_IFM_PORT, align 4
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @mtk_hdmi_write(%struct.mtk_hdmi* %77, i32 %78, i32 %79)
  store i32 0, i32* %8, align 4
  br label %81

81:                                               ; preds = %94, %60
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %81
  %86 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %87 = load i32, i32* @GRL_IFM_PORT, align 4
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @mtk_hdmi_write(%struct.mtk_hdmi* %86, i32 %87, i32 %92)
  br label %94

94:                                               ; preds = %85
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %81

97:                                               ; preds = %81
  %98 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @mtk_hdmi_set_bits(%struct.mtk_hdmi* %98, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %97, %54
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mtk_hdmi_clear_bits(%struct.mtk_hdmi*, i32, i32) #1

declare dso_local i32 @mtk_hdmi_write(%struct.mtk_hdmi*, i32, i32) #1

declare dso_local i32 @mtk_hdmi_set_bits(%struct.mtk_hdmi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
