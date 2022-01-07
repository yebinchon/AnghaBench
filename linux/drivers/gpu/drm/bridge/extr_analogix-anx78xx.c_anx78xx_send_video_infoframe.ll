; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_analogix-anx78xx.c_anx78xx_send_video_infoframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_analogix-anx78xx.c_anx78xx_send_video_infoframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anx78xx = type { i32* }
%struct.hdmi_avi_infoframe = type { i32 }

@HDMI_INFOFRAME_HEADER_SIZE = common dso_local global i32 0, align 4
@HDMI_AVI_INFOFRAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to pack AVI infoframe: %d\0A\00", align 1
@I2C_IDX_TX_P0 = common dso_local global i64 0, align 8
@SP_PACKET_SEND_CTRL_REG = common dso_local global i32 0, align 4
@SP_AVI_IF_EN = common dso_local global i32 0, align 4
@I2C_IDX_TX_P2 = common dso_local global i64 0, align 8
@SP_INFOFRAME_AVI_DB1_REG = common dso_local global i32 0, align 4
@SP_AVI_IF_UD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.anx78xx*, %struct.hdmi_avi_infoframe*)* @anx78xx_send_video_infoframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anx78xx_send_video_infoframe(%struct.anx78xx* %0, %struct.hdmi_avi_infoframe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.anx78xx*, align 8
  %5 = alloca %struct.hdmi_avi_infoframe*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.anx78xx* %0, %struct.anx78xx** %4, align 8
  store %struct.hdmi_avi_infoframe* %1, %struct.hdmi_avi_infoframe** %5, align 8
  %10 = load i32, i32* @HDMI_INFOFRAME_HEADER_SIZE, align 4
  %11 = load i32, i32* @HDMI_AVI_INFOFRAME_SIZE, align 4
  %12 = add nsw i32 %10, %11
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %17 = mul nuw i64 4, %13
  %18 = trunc i64 %17 to i32
  %19 = call i32 @hdmi_avi_infoframe_pack(%struct.hdmi_avi_infoframe* %16, i32* %15, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %85

26:                                               ; preds = %2
  %27 = load %struct.anx78xx*, %struct.anx78xx** %4, align 8
  %28 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @I2C_IDX_TX_P0, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SP_PACKET_SEND_CTRL_REG, align 4
  %34 = load i32, i32* @SP_AVI_IF_EN, align 4
  %35 = call i32 @anx78xx_clear_bits(i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %85

40:                                               ; preds = %26
  %41 = load %struct.anx78xx*, %struct.anx78xx** %4, align 8
  %42 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @I2C_IDX_TX_P2, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SP_INFOFRAME_AVI_DB1_REG, align 4
  %48 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %49 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @regmap_bulk_write(i32 %46, i32 %47, i32* %15, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %40
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %85

56:                                               ; preds = %40
  %57 = load %struct.anx78xx*, %struct.anx78xx** %4, align 8
  %58 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @I2C_IDX_TX_P0, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @SP_PACKET_SEND_CTRL_REG, align 4
  %64 = load i32, i32* @SP_AVI_IF_UD, align 4
  %65 = call i32 @anx78xx_set_bits(i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %56
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %85

70:                                               ; preds = %56
  %71 = load %struct.anx78xx*, %struct.anx78xx** %4, align 8
  %72 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* @I2C_IDX_TX_P0, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @SP_PACKET_SEND_CTRL_REG, align 4
  %78 = load i32, i32* @SP_AVI_IF_EN, align 4
  %79 = call i32 @anx78xx_set_bits(i32 %76, i32 %77, i32 %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %70
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %85

84:                                               ; preds = %70
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %85

85:                                               ; preds = %84, %82, %68, %54, %38, %22
  %86 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %86)
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @hdmi_avi_infoframe_pack(%struct.hdmi_avi_infoframe*, i32*, i32) #2

declare dso_local i32 @DRM_ERROR(i8*, i32) #2

declare dso_local i32 @anx78xx_clear_bits(i32, i32, i32) #2

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #2

declare dso_local i32 @anx78xx_set_bits(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
