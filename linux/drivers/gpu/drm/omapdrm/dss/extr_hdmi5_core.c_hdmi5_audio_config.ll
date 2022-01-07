; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi5_core.c_hdmi5_audio_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi5_core.c_hdmi5_audio_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_core_data = type { i32 }
%struct.hdmi_wp_data = type { i32 }
%struct.omap_dss_audio = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }
%struct.hdmi_audio_format = type { i32, i8*, i32, i32, i32, i32 }
%struct.hdmi_audio_dma = type { i32, i32, i32, i32 }
%struct.hdmi_core_audio_config = type { i32, i32, i32, %struct.TYPE_3__* }

@EINVAL = common dso_local global i32 0, align 4
@IEC958_AES4_CON_MAX_WORDLEN_24 = common dso_local global i32 0, align 4
@IEC958_AES4_CON_WORDLEN_20_16 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS = common dso_local global i32 0, align 4
@CEA861_AUDIO_INFOFRAME_DB1CC = common dso_local global i32 0, align 4
@HDMI_AUDIO_LAYOUT_2CH = common dso_local global i32 0, align 4
@HDMI_AUDIO_LAYOUT_6CH = common dso_local global i32 0, align 4
@HDMI_AUDIO_LAYOUT_8CH = common dso_local global i32 0, align 4
@HDMI_AUDIO_TRANSF_DMA = common dso_local global i32 0, align 4
@HDMI_AUDIO_ONEWORD_TWOSAMPLES = common dso_local global i32 0, align 4
@HDMI_AUDIO_SAMPLE_16BITS = common dso_local global i32 0, align 4
@HDMI_AUDIO_JUSTIFY_LEFT = common dso_local global i32 0, align 4
@HDMI_AUDIO_SAMPLE_LEFT_FIRST = common dso_local global i8* null, align 8
@HDMI_AUDIO_TYPE_LPCM = common dso_local global i32 0, align 4
@HDMI_AUDIO_BLOCK_SIG_STARTEND_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdmi5_audio_config(%struct.hdmi_core_data* %0, %struct.hdmi_wp_data* %1, %struct.omap_dss_audio* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hdmi_core_data*, align 8
  %7 = alloca %struct.hdmi_wp_data*, align 8
  %8 = alloca %struct.omap_dss_audio*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hdmi_audio_format, align 8
  %11 = alloca %struct.hdmi_audio_dma, align 4
  %12 = alloca %struct.hdmi_core_audio_config, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.hdmi_core_data* %0, %struct.hdmi_core_data** %6, align 8
  store %struct.hdmi_wp_data* %1, %struct.hdmi_wp_data** %7, align 8
  store %struct.omap_dss_audio* %2, %struct.omap_dss_audio** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %18, align 4
  %19 = load %struct.omap_dss_audio*, %struct.omap_dss_audio** %8, align 8
  %20 = icmp ne %struct.omap_dss_audio* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %4
  %22 = load %struct.omap_dss_audio*, %struct.omap_dss_audio** %8, align 8
  %23 = getelementptr inbounds %struct.omap_dss_audio, %struct.omap_dss_audio* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.omap_dss_audio*, %struct.omap_dss_audio** %8, align 8
  %28 = getelementptr inbounds %struct.omap_dss_audio, %struct.omap_dss_audio* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = icmp ne %struct.TYPE_4__* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %6, align 8
  %33 = icmp ne %struct.hdmi_core_data* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %31, %26, %21, %4
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %158

37:                                               ; preds = %31
  %38 = load %struct.omap_dss_audio*, %struct.omap_dss_audio** %8, align 8
  %39 = getelementptr inbounds %struct.omap_dss_audio, %struct.omap_dss_audio* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.hdmi_core_audio_config, %struct.hdmi_core_audio_config* %12, i32 0, i32 3
  store %struct.TYPE_3__* %40, %struct.TYPE_3__** %41, align 8
  %42 = load %struct.omap_dss_audio*, %struct.omap_dss_audio** %8, align 8
  %43 = getelementptr inbounds %struct.omap_dss_audio, %struct.omap_dss_audio* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IEC958_AES4_CON_MAX_WORDLEN_24, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %37
  %53 = load %struct.omap_dss_audio*, %struct.omap_dss_audio** %8, align 8
  %54 = getelementptr inbounds %struct.omap_dss_audio, %struct.omap_dss_audio* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 4
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @IEC958_AES4_CON_WORDLEN_20_16, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  store i32 1, i32* %18, align 4
  br label %64

64:                                               ; preds = %63, %52, %37
  %65 = load i32, i32* %18, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %158

70:                                               ; preds = %64
  %71 = load %struct.omap_dss_audio*, %struct.omap_dss_audio** %8, align 8
  %72 = getelementptr inbounds %struct.omap_dss_audio, %struct.omap_dss_audio* %71, i32 0, i32 1
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 3
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @IEC958_AES3_CON_FS, align 4
  %79 = and i32 %77, %78
  switch i32 %79, label %87 [
    i32 132, label %80
    i32 131, label %81
    i32 130, label %82
    i32 129, label %83
    i32 128, label %84
    i32 134, label %85
    i32 133, label %86
  ]

80:                                               ; preds = %70
  store i32 32000, i32* %17, align 4
  br label %90

81:                                               ; preds = %70
  store i32 44100, i32* %17, align 4
  br label %90

82:                                               ; preds = %70
  store i32 48000, i32* %17, align 4
  br label %90

83:                                               ; preds = %70
  store i32 88200, i32* %17, align 4
  br label %90

84:                                               ; preds = %70
  store i32 96000, i32* %17, align 4
  br label %90

85:                                               ; preds = %70
  store i32 176400, i32* %17, align 4
  br label %90

86:                                               ; preds = %70
  store i32 192000, i32* %17, align 4
  br label %90

87:                                               ; preds = %70
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %5, align 4
  br label %158

90:                                               ; preds = %86, %85, %84, %83, %82, %81, %80
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %17, align 4
  %93 = call i32 @hdmi_compute_acr(i32 %91, i32 %92, i32* %14, i32* %15)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %14, align 4
  %95 = getelementptr inbounds %struct.hdmi_core_audio_config, %struct.hdmi_core_audio_config* %12, i32 0, i32 0
  store i32 %94, i32* %95, align 8
  %96 = load i32, i32* %15, align 4
  %97 = getelementptr inbounds %struct.hdmi_core_audio_config, %struct.hdmi_core_audio_config* %12, i32 0, i32 1
  store i32 %96, i32* %97, align 4
  %98 = load %struct.omap_dss_audio*, %struct.omap_dss_audio** %8, align 8
  %99 = getelementptr inbounds %struct.omap_dss_audio, %struct.omap_dss_audio* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @CEA861_AUDIO_INFOFRAME_DB1CC, align 4
  %104 = and i32 %102, %103
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %16, align 4
  %107 = icmp eq i32 %106, 2
  br i1 %107, label %108, label %111

108:                                              ; preds = %90
  %109 = load i32, i32* @HDMI_AUDIO_LAYOUT_2CH, align 4
  %110 = getelementptr inbounds %struct.hdmi_core_audio_config, %struct.hdmi_core_audio_config* %12, i32 0, i32 2
  store i32 %109, i32* %110, align 8
  br label %121

111:                                              ; preds = %90
  %112 = load i32, i32* %16, align 4
  %113 = icmp eq i32 %112, 6
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32, i32* @HDMI_AUDIO_LAYOUT_6CH, align 4
  %116 = getelementptr inbounds %struct.hdmi_core_audio_config, %struct.hdmi_core_audio_config* %12, i32 0, i32 2
  store i32 %115, i32* %116, align 8
  br label %120

117:                                              ; preds = %111
  %118 = load i32, i32* @HDMI_AUDIO_LAYOUT_8CH, align 4
  %119 = getelementptr inbounds %struct.hdmi_core_audio_config, %struct.hdmi_core_audio_config* %12, i32 0, i32 2
  store i32 %118, i32* %119, align 8
  br label %120

120:                                              ; preds = %117, %114
  br label %121

121:                                              ; preds = %120, %108
  %122 = load i32, i32* %18, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.hdmi_audio_dma, %struct.hdmi_audio_dma* %11, i32 0, i32 0
  store i32 16, i32* %125, align 4
  br label %128

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.hdmi_audio_dma, %struct.hdmi_audio_dma* %11, i32 0, i32 0
  store i32 32, i32* %127, align 4
  br label %128

128:                                              ; preds = %126, %124
  %129 = getelementptr inbounds %struct.hdmi_audio_dma, %struct.hdmi_audio_dma* %11, i32 0, i32 1
  store i32 192, i32* %129, align 4
  %130 = load i32, i32* @HDMI_AUDIO_TRANSF_DMA, align 4
  %131 = getelementptr inbounds %struct.hdmi_audio_dma, %struct.hdmi_audio_dma* %11, i32 0, i32 3
  store i32 %130, i32* %131, align 4
  %132 = getelementptr inbounds %struct.hdmi_audio_dma, %struct.hdmi_audio_dma* %11, i32 0, i32 2
  store i32 32, i32* %132, align 4
  %133 = load i32, i32* @HDMI_AUDIO_ONEWORD_TWOSAMPLES, align 4
  %134 = getelementptr inbounds %struct.hdmi_audio_format, %struct.hdmi_audio_format* %10, i32 0, i32 5
  store i32 %133, i32* %134, align 4
  %135 = load i32, i32* @HDMI_AUDIO_SAMPLE_16BITS, align 4
  %136 = getelementptr inbounds %struct.hdmi_audio_format, %struct.hdmi_audio_format* %10, i32 0, i32 4
  store i32 %135, i32* %136, align 8
  %137 = load i32, i32* @HDMI_AUDIO_JUSTIFY_LEFT, align 4
  %138 = getelementptr inbounds %struct.hdmi_audio_format, %struct.hdmi_audio_format* %10, i32 0, i32 3
  store i32 %137, i32* %138, align 4
  %139 = load i8*, i8** @HDMI_AUDIO_SAMPLE_LEFT_FIRST, align 8
  %140 = getelementptr inbounds %struct.hdmi_audio_format, %struct.hdmi_audio_format* %10, i32 0, i32 1
  store i8* %139, i8** %140, align 8
  %141 = load i32, i32* @HDMI_AUDIO_TYPE_LPCM, align 4
  %142 = getelementptr inbounds %struct.hdmi_audio_format, %struct.hdmi_audio_format* %10, i32 0, i32 2
  store i32 %141, i32* %142, align 8
  %143 = load i8*, i8** @HDMI_AUDIO_SAMPLE_LEFT_FIRST, align 8
  %144 = getelementptr inbounds %struct.hdmi_audio_format, %struct.hdmi_audio_format* %10, i32 0, i32 1
  store i8* %143, i8** %144, align 8
  %145 = load i32, i32* @HDMI_AUDIO_BLOCK_SIG_STARTEND_ON, align 4
  %146 = getelementptr inbounds %struct.hdmi_audio_format, %struct.hdmi_audio_format* %10, i32 0, i32 0
  store i32 %145, i32* %146, align 8
  %147 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %7, align 8
  %148 = call i32 @hdmi_wp_audio_config_dma(%struct.hdmi_wp_data* %147, %struct.hdmi_audio_dma* %11)
  %149 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %7, align 8
  %150 = call i32 @hdmi_wp_audio_config_format(%struct.hdmi_wp_data* %149, %struct.hdmi_audio_format* %10)
  %151 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %6, align 8
  %152 = call i32 @hdmi5_core_audio_config(%struct.hdmi_core_data* %151, %struct.hdmi_core_audio_config* %12)
  %153 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %6, align 8
  %154 = load %struct.omap_dss_audio*, %struct.omap_dss_audio** %8, align 8
  %155 = getelementptr inbounds %struct.omap_dss_audio, %struct.omap_dss_audio* %154, i32 0, i32 0
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = call i32 @hdmi5_core_audio_infoframe_cfg(%struct.hdmi_core_data* %153, %struct.TYPE_4__* %156)
  store i32 0, i32* %5, align 4
  br label %158

158:                                              ; preds = %128, %87, %67, %34
  %159 = load i32, i32* %5, align 4
  ret i32 %159
}

declare dso_local i32 @hdmi_compute_acr(i32, i32, i32*, i32*) #1

declare dso_local i32 @hdmi_wp_audio_config_dma(%struct.hdmi_wp_data*, %struct.hdmi_audio_dma*) #1

declare dso_local i32 @hdmi_wp_audio_config_format(%struct.hdmi_wp_data*, %struct.hdmi_audio_format*) #1

declare dso_local i32 @hdmi5_core_audio_config(%struct.hdmi_core_data*, %struct.hdmi_core_audio_config*) #1

declare dso_local i32 @hdmi5_core_audio_infoframe_cfg(%struct.hdmi_core_data*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
