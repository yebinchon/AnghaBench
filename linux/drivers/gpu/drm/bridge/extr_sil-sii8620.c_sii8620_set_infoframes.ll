; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_set_infoframes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_set_infoframes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii8620 = type { i64 }
%struct.drm_display_mode = type { i32 }
%struct.mhl3_infoframe = type { i32 }
%union.hdmi_infoframe = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@HDMI_COLORSPACE_YUV422 = common dso_local global i32 0, align 4
@REG_TPI_AVI_CHSUM = common dso_local global i32 0, align 4
@REG_TPI_SC = common dso_local global i32 0, align 4
@BIT_TPI_SC_TPI_OUTPUT_MODE_0_HDMI = common dso_local global i32 0, align 4
@REG_PKT_FILTER_0 = common dso_local global i32 0, align 4
@BIT_PKT_FILTER_0_DROP_CEA_GAMUT_PKT = common dso_local global i32 0, align 4
@BIT_PKT_FILTER_0_DROP_MPEG_PKT = common dso_local global i32 0, align 4
@BIT_PKT_FILTER_0_DROP_GCP_PKT = common dso_local global i32 0, align 4
@BIT_PKT_FILTER_1_DROP_GEN_PKT = common dso_local global i32 0, align 4
@BIT_PKT_FILTER_0_DROP_AVI_PKT = common dso_local global i32 0, align 4
@BIT_PKT_FILTER_1_VSI_OVERRIDE_DIS = common dso_local global i32 0, align 4
@BIT_PKT_FILTER_1_DROP_VSIF_PKT = common dso_local global i32 0, align 4
@REG_TPI_INFO_FSEL = common dso_local global i32 0, align 4
@BIT_TPI_INFO_FSEL_EN = common dso_local global i32 0, align 4
@BIT_TPI_INFO_FSEL_RPT = common dso_local global i32 0, align 4
@VAL_TPI_INFO_FSEL_VSI = common dso_local global i32 0, align 4
@REG_TPI_INFO_B0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sii8620*, %struct.drm_display_mode*)* @sii8620_set_infoframes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sii8620_set_infoframes(%struct.sii8620* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.sii8620*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.mhl3_infoframe, align 4
  %6 = alloca %union.hdmi_infoframe, align 4
  %7 = alloca [31 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.sii8620* %0, %struct.sii8620** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %9 = bitcast %union.hdmi_infoframe* %6 to %struct.TYPE_3__*
  %10 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %11 = call i32 @drm_hdmi_avi_infoframe_from_display_mode(%struct.TYPE_3__* %9, i32* null, %struct.drm_display_mode* %10)
  store i32 %11, i32* %8, align 4
  %12 = load %struct.sii8620*, %struct.sii8620** %3, align 8
  %13 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @HDMI_COLORSPACE_YUV422, align 4
  %18 = bitcast %union.hdmi_infoframe* %6 to %struct.TYPE_3__*
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  br label %20

20:                                               ; preds = %16, %2
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = bitcast %union.hdmi_infoframe* %6 to %struct.TYPE_3__*
  %25 = getelementptr inbounds [31 x i32], [31 x i32]* %7, i64 0, i64 0
  %26 = getelementptr inbounds [31 x i32], [31 x i32]* %7, i64 0, i64 0
  %27 = call i32 @ARRAY_SIZE(i32* %26)
  %28 = call i32 @hdmi_avi_infoframe_pack(%struct.TYPE_3__* %24, i32* %25, i32 %27)
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %23, %20
  %30 = load i32, i32* %8, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load %struct.sii8620*, %struct.sii8620** %3, align 8
  %34 = load i32, i32* @REG_TPI_AVI_CHSUM, align 4
  %35 = getelementptr inbounds [31 x i32], [31 x i32]* %7, i64 0, i64 0
  %36 = getelementptr inbounds i32, i32* %35, i64 3
  %37 = load i32, i32* %8, align 4
  %38 = sub nsw i32 %37, 3
  %39 = call i32 @sii8620_write_buf(%struct.sii8620* %33, i32 %34, i32* %36, i32 %38)
  br label %40

40:                                               ; preds = %32, %29
  %41 = load %struct.sii8620*, %struct.sii8620** %3, align 8
  %42 = call i32 @sii8620_is_mhl3(%struct.sii8620* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load %struct.sii8620*, %struct.sii8620** %3, align 8
  %46 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %63, label %49

49:                                               ; preds = %44, %40
  %50 = load %struct.sii8620*, %struct.sii8620** %3, align 8
  %51 = load i32, i32* @REG_TPI_SC, align 4
  %52 = load i32, i32* @BIT_TPI_SC_TPI_OUTPUT_MODE_0_HDMI, align 4
  %53 = call i32 (%struct.sii8620*, i32, i32, ...) @sii8620_write(%struct.sii8620* %50, i32 %51, i32 %52)
  %54 = load %struct.sii8620*, %struct.sii8620** %3, align 8
  %55 = load i32, i32* @REG_PKT_FILTER_0, align 4
  %56 = load i32, i32* @BIT_PKT_FILTER_0_DROP_CEA_GAMUT_PKT, align 4
  %57 = load i32, i32* @BIT_PKT_FILTER_0_DROP_MPEG_PKT, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @BIT_PKT_FILTER_0_DROP_GCP_PKT, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @BIT_PKT_FILTER_1_DROP_GEN_PKT, align 4
  %62 = call i32 (%struct.sii8620*, i32, i32, ...) @sii8620_write(%struct.sii8620* %54, i32 %55, i32 %60, i32 %61)
  br label %101

63:                                               ; preds = %44
  %64 = load %struct.sii8620*, %struct.sii8620** %3, align 8
  %65 = load i32, i32* @REG_PKT_FILTER_0, align 4
  %66 = load i32, i32* @BIT_PKT_FILTER_0_DROP_CEA_GAMUT_PKT, align 4
  %67 = load i32, i32* @BIT_PKT_FILTER_0_DROP_MPEG_PKT, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @BIT_PKT_FILTER_0_DROP_AVI_PKT, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @BIT_PKT_FILTER_0_DROP_GCP_PKT, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @BIT_PKT_FILTER_1_VSI_OVERRIDE_DIS, align 4
  %74 = load i32, i32* @BIT_PKT_FILTER_1_DROP_GEN_PKT, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @BIT_PKT_FILTER_1_DROP_VSIF_PKT, align 4
  %77 = or i32 %75, %76
  %78 = call i32 (%struct.sii8620*, i32, i32, ...) @sii8620_write(%struct.sii8620* %64, i32 %65, i32 %72, i32 %77)
  %79 = load %struct.sii8620*, %struct.sii8620** %3, align 8
  %80 = load i32, i32* @REG_TPI_INFO_FSEL, align 4
  %81 = load i32, i32* @BIT_TPI_INFO_FSEL_EN, align 4
  %82 = load i32, i32* @BIT_TPI_INFO_FSEL_RPT, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @VAL_TPI_INFO_FSEL_VSI, align 4
  %85 = or i32 %83, %84
  %86 = call i32 (%struct.sii8620*, i32, i32, ...) @sii8620_write(%struct.sii8620* %79, i32 %80, i32 %85)
  %87 = call i32 @mhl3_infoframe_init(%struct.mhl3_infoframe* %5)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %63
  %91 = getelementptr inbounds [31 x i32], [31 x i32]* %7, i64 0, i64 0
  %92 = getelementptr inbounds [31 x i32], [31 x i32]* %7, i64 0, i64 0
  %93 = call i32 @ARRAY_SIZE(i32* %92)
  %94 = call i32 @mhl3_infoframe_pack(%struct.mhl3_infoframe* %5, i32* %91, i32 %93)
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %90, %63
  %96 = load %struct.sii8620*, %struct.sii8620** %3, align 8
  %97 = load i32, i32* @REG_TPI_INFO_B0, align 4
  %98 = getelementptr inbounds [31 x i32], [31 x i32]* %7, i64 0, i64 0
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @sii8620_write_buf(%struct.sii8620* %96, i32 %97, i32* %98, i32 %99)
  br label %101

101:                                              ; preds = %95, %49
  ret void
}

declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(%struct.TYPE_3__*, i32*, %struct.drm_display_mode*) #1

declare dso_local i32 @hdmi_avi_infoframe_pack(%struct.TYPE_3__*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @sii8620_write_buf(%struct.sii8620*, i32, i32*, i32) #1

declare dso_local i32 @sii8620_is_mhl3(%struct.sii8620*) #1

declare dso_local i32 @sii8620_write(%struct.sii8620*, i32, i32, ...) #1

declare dso_local i32 @mhl3_infoframe_init(%struct.mhl3_infoframe*) #1

declare dso_local i32 @mhl3_infoframe_pack(%struct.mhl3_infoframe*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
