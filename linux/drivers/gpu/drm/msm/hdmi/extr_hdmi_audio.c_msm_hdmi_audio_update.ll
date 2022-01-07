; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_audio.c_msm_hdmi_audio_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_audio.c_msm_hdmi_audio_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi = type { i8*, i64, %struct.hdmi_audio }
%struct.hdmi_audio = type { i32, i64, %struct.hdmi_audio_infoframe }
%struct.hdmi_audio_infoframe = type { i32, i32, i32, i32 }
%struct.hdmi_msm_audio_arcs = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [107 x i8] c"audio: enabled=%d, channels=%d, channel_allocation=0x%x, level_shift_value=%d, downmix_inhibit=%d, rate=%d\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"video: power_on=%d, pixclock=%lu\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"disabling audio: no video\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"disabling audio: unsupported pixclock: %lu\00", align 1
@REG_HDMI_ACR_PKT_CTRL = common dso_local global i32 0, align 4
@REG_HDMI_VBI_PKT_CTRL = common dso_local global i32 0, align 4
@REG_HDMI_AUDIO_PKT_CTRL1 = common dso_local global i32 0, align 4
@REG_HDMI_INFOFRAME_CTRL0 = common dso_local global i32 0, align 4
@REG_HDMI_AUDIO_CFG = common dso_local global i32 0, align 4
@HDMI_ACR_PKT_CTRL_SELECT__MASK = common dso_local global i32 0, align 4
@MSM_HDMI_SAMPLE_RATE_192KHZ = common dso_local global i64 0, align 8
@MSM_HDMI_SAMPLE_RATE_176_4KHZ = common dso_local global i64 0, align 8
@MSM_HDMI_SAMPLE_RATE_96KHZ = common dso_local global i64 0, align 8
@MSM_HDMI_SAMPLE_RATE_88_2KHZ = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"n=%u, cts=%u, multiplier=%u\00", align 1
@HDMI_ACR_PKT_CTRL_SOURCE = common dso_local global i32 0, align 4
@HDMI_ACR_PKT_CTRL_AUDIO_PRIORITY = common dso_local global i32 0, align 4
@MSM_HDMI_SAMPLE_RATE_48KHZ = common dso_local global i64 0, align 8
@ACR_48 = common dso_local global i32 0, align 4
@MSM_HDMI_SAMPLE_RATE_44_1KHZ = common dso_local global i64 0, align 8
@ACR_44 = common dso_local global i32 0, align 4
@ACR_32 = common dso_local global i32 0, align 4
@REG_HDMI_AUDIO_PKT_CTRL2 = common dso_local global i32 0, align 4
@HDMI_AUDIO_PKT_CTRL2_LAYOUT = common dso_local global i32 0, align 4
@HDMI_AUDIO_PKT_CTRL2_OVERRIDE = common dso_local global i32 0, align 4
@HDMI_ACR_PKT_CTRL_CONT = common dso_local global i32 0, align 4
@HDMI_ACR_PKT_CTRL_SEND = common dso_local global i32 0, align 4
@REG_HDMI_AUDIO_INFO0 = common dso_local global i32 0, align 4
@REG_HDMI_AUDIO_INFO1 = common dso_local global i32 0, align 4
@REG_HDMI_GC = common dso_local global i32 0, align 4
@HDMI_VBI_PKT_CTRL_GC_ENABLE = common dso_local global i32 0, align 4
@HDMI_VBI_PKT_CTRL_GC_EVERY_FRAME = common dso_local global i32 0, align 4
@HDMI_AUDIO_PKT_CTRL1_AUDIO_SAMPLE_SEND = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_CTRL0_AUDIO_INFO_SEND = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_CTRL0_AUDIO_INFO_CONT = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_CTRL0_AUDIO_INFO_SOURCE = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_CTRL0_AUDIO_INFO_UPDATE = common dso_local global i32 0, align 4
@HDMI_AUDIO_CFG_FIFO_WATERMARK__MASK = common dso_local global i32 0, align 4
@HDMI_AUDIO_CFG_ENGINE_ENABLE = common dso_local global i32 0, align 4
@REG_HDMI_AUD_INT = common dso_local global i32 0, align 4
@HDMI_AUD_INT_AUD_FIFO_URUN_INT = common dso_local global i32 0, align 4
@HDMI_AUD_INT_AUD_SAM_DROP_INT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"audio %sabled\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"dis\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_hdmi_audio_update(%struct.hdmi* %0) #0 {
  %2 = alloca %struct.hdmi*, align 8
  %3 = alloca %struct.hdmi_audio*, align 8
  %4 = alloca %struct.hdmi_audio_infoframe*, align 8
  %5 = alloca %struct.hdmi_msm_audio_arcs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [14 x i32], align 16
  store %struct.hdmi* %0, %struct.hdmi** %2, align 8
  %17 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %18 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %17, i32 0, i32 2
  store %struct.hdmi_audio* %18, %struct.hdmi_audio** %3, align 8
  %19 = load %struct.hdmi_audio*, %struct.hdmi_audio** %3, align 8
  %20 = getelementptr inbounds %struct.hdmi_audio, %struct.hdmi_audio* %19, i32 0, i32 2
  store %struct.hdmi_audio_infoframe* %20, %struct.hdmi_audio_infoframe** %4, align 8
  store %struct.hdmi_msm_audio_arcs* null, %struct.hdmi_msm_audio_arcs** %5, align 8
  %21 = load %struct.hdmi_audio*, %struct.hdmi_audio** %3, align 8
  %22 = getelementptr inbounds %struct.hdmi_audio, %struct.hdmi_audio* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %6, align 4
  %24 = load %struct.hdmi_audio*, %struct.hdmi_audio** %3, align 8
  %25 = getelementptr inbounds %struct.hdmi_audio, %struct.hdmi_audio* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %4, align 8
  %28 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %4, align 8
  %31 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %4, align 8
  %34 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %4, align 8
  %37 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.hdmi_audio*, %struct.hdmi_audio** %3, align 8
  %40 = getelementptr inbounds %struct.hdmi_audio, %struct.hdmi_audio* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29, i32 %32, i32 %35, i32 %38, i64 %41)
  %43 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %44 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %47 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %45, i8* %48)
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %1
  %53 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %54 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %59 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %57, %52
  %63 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %62, %57, %1
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %64
  %68 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %69 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call %struct.hdmi_msm_audio_arcs* @get_arcs(i8* %70)
  store %struct.hdmi_msm_audio_arcs* %71, %struct.hdmi_msm_audio_arcs** %5, align 8
  %72 = load %struct.hdmi_msm_audio_arcs*, %struct.hdmi_msm_audio_arcs** %5, align 8
  %73 = icmp ne %struct.hdmi_msm_audio_arcs* %72, null
  br i1 %73, label %79, label %74

74:                                               ; preds = %67
  %75 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %76 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %77)
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %74, %67
  br label %80

80:                                               ; preds = %79, %64
  %81 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %82 = load i32, i32* @REG_HDMI_ACR_PKT_CTRL, align 4
  %83 = call i32 @hdmi_read(%struct.hdmi* %81, i32 %82)
  store i32 %83, i32* %7, align 4
  %84 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %85 = load i32, i32* @REG_HDMI_VBI_PKT_CTRL, align 4
  %86 = call i32 @hdmi_read(%struct.hdmi* %84, i32 %85)
  store i32 %86, i32* %8, align 4
  %87 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %88 = load i32, i32* @REG_HDMI_AUDIO_PKT_CTRL1, align 4
  %89 = call i32 @hdmi_read(%struct.hdmi* %87, i32 %88)
  store i32 %89, i32* %9, align 4
  %90 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %91 = load i32, i32* @REG_HDMI_INFOFRAME_CTRL0, align 4
  %92 = call i32 @hdmi_read(%struct.hdmi* %90, i32 %91)
  store i32 %92, i32* %10, align 4
  %93 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %94 = load i32, i32* @REG_HDMI_AUDIO_CFG, align 4
  %95 = call i32 @hdmi_read(%struct.hdmi* %93, i32 %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* @HDMI_ACR_PKT_CTRL_SELECT__MASK, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %7, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %311

102:                                              ; preds = %80
  %103 = load %struct.hdmi_msm_audio_arcs*, %struct.hdmi_msm_audio_arcs** %5, align 8
  %104 = getelementptr inbounds %struct.hdmi_msm_audio_arcs, %struct.hdmi_msm_audio_arcs* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = load %struct.hdmi_audio*, %struct.hdmi_audio** %3, align 8
  %107 = getelementptr inbounds %struct.hdmi_audio, %struct.hdmi_audio* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %12, align 4
  %112 = load %struct.hdmi_msm_audio_arcs*, %struct.hdmi_msm_audio_arcs** %5, align 8
  %113 = getelementptr inbounds %struct.hdmi_msm_audio_arcs, %struct.hdmi_msm_audio_arcs* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = load %struct.hdmi_audio*, %struct.hdmi_audio** %3, align 8
  %116 = getelementptr inbounds %struct.hdmi_audio, %struct.hdmi_audio* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %13, align 4
  %121 = load i64, i64* @MSM_HDMI_SAMPLE_RATE_192KHZ, align 8
  %122 = load %struct.hdmi_audio*, %struct.hdmi_audio** %3, align 8
  %123 = getelementptr inbounds %struct.hdmi_audio, %struct.hdmi_audio* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %121, %124
  br i1 %125, label %132, label %126

126:                                              ; preds = %102
  %127 = load i64, i64* @MSM_HDMI_SAMPLE_RATE_176_4KHZ, align 8
  %128 = load %struct.hdmi_audio*, %struct.hdmi_audio** %3, align 8
  %129 = getelementptr inbounds %struct.hdmi_audio, %struct.hdmi_audio* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %127, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %126, %102
  store i32 4, i32* %14, align 4
  %133 = load i32, i32* %12, align 4
  %134 = ashr i32 %133, 2
  store i32 %134, i32* %12, align 4
  br label %152

135:                                              ; preds = %126
  %136 = load i64, i64* @MSM_HDMI_SAMPLE_RATE_96KHZ, align 8
  %137 = load %struct.hdmi_audio*, %struct.hdmi_audio** %3, align 8
  %138 = getelementptr inbounds %struct.hdmi_audio, %struct.hdmi_audio* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %136, %139
  br i1 %140, label %147, label %141

141:                                              ; preds = %135
  %142 = load i64, i64* @MSM_HDMI_SAMPLE_RATE_88_2KHZ, align 8
  %143 = load %struct.hdmi_audio*, %struct.hdmi_audio** %3, align 8
  %144 = getelementptr inbounds %struct.hdmi_audio, %struct.hdmi_audio* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp eq i64 %142, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %141, %135
  store i32 2, i32* %14, align 4
  %148 = load i32, i32* %12, align 4
  %149 = ashr i32 %148, 1
  store i32 %149, i32* %12, align 4
  br label %151

150:                                              ; preds = %141
  store i32 1, i32* %14, align 4
  br label %151

151:                                              ; preds = %150, %147
  br label %152

152:                                              ; preds = %151, %132
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* %14, align 4
  %156 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %153, i32 %154, i32 %155)
  %157 = load i32, i32* @HDMI_ACR_PKT_CTRL_SOURCE, align 4
  %158 = load i32, i32* %7, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %7, align 4
  %160 = load i32, i32* @HDMI_ACR_PKT_CTRL_AUDIO_PRIORITY, align 4
  %161 = load i32, i32* %7, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %7, align 4
  %163 = load i32, i32* %14, align 4
  %164 = call i32 @HDMI_ACR_PKT_CTRL_N_MULTIPLIER(i32 %163)
  %165 = load i32, i32* %7, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %7, align 4
  %167 = load i64, i64* @MSM_HDMI_SAMPLE_RATE_48KHZ, align 8
  %168 = load %struct.hdmi_audio*, %struct.hdmi_audio** %3, align 8
  %169 = getelementptr inbounds %struct.hdmi_audio, %struct.hdmi_audio* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp eq i64 %167, %170
  br i1 %171, label %184, label %172

172:                                              ; preds = %152
  %173 = load i64, i64* @MSM_HDMI_SAMPLE_RATE_96KHZ, align 8
  %174 = load %struct.hdmi_audio*, %struct.hdmi_audio** %3, align 8
  %175 = getelementptr inbounds %struct.hdmi_audio, %struct.hdmi_audio* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = icmp eq i64 %173, %176
  br i1 %177, label %184, label %178

178:                                              ; preds = %172
  %179 = load i64, i64* @MSM_HDMI_SAMPLE_RATE_192KHZ, align 8
  %180 = load %struct.hdmi_audio*, %struct.hdmi_audio** %3, align 8
  %181 = getelementptr inbounds %struct.hdmi_audio, %struct.hdmi_audio* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = icmp eq i64 %179, %182
  br i1 %183, label %184, label %186

184:                                              ; preds = %178, %172, %152
  %185 = load i32, i32* @ACR_48, align 4
  store i32 %185, i32* %15, align 4
  br label %209

186:                                              ; preds = %178
  %187 = load i64, i64* @MSM_HDMI_SAMPLE_RATE_44_1KHZ, align 8
  %188 = load %struct.hdmi_audio*, %struct.hdmi_audio** %3, align 8
  %189 = getelementptr inbounds %struct.hdmi_audio, %struct.hdmi_audio* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = icmp eq i64 %187, %190
  br i1 %191, label %204, label %192

192:                                              ; preds = %186
  %193 = load i64, i64* @MSM_HDMI_SAMPLE_RATE_88_2KHZ, align 8
  %194 = load %struct.hdmi_audio*, %struct.hdmi_audio** %3, align 8
  %195 = getelementptr inbounds %struct.hdmi_audio, %struct.hdmi_audio* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = icmp eq i64 %193, %196
  br i1 %197, label %204, label %198

198:                                              ; preds = %192
  %199 = load i64, i64* @MSM_HDMI_SAMPLE_RATE_176_4KHZ, align 8
  %200 = load %struct.hdmi_audio*, %struct.hdmi_audio** %3, align 8
  %201 = getelementptr inbounds %struct.hdmi_audio, %struct.hdmi_audio* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = icmp eq i64 %199, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %198, %192, %186
  %205 = load i32, i32* @ACR_44, align 4
  store i32 %205, i32* %15, align 4
  br label %208

206:                                              ; preds = %198
  %207 = load i32, i32* @ACR_32, align 4
  store i32 %207, i32* %15, align 4
  br label %208

208:                                              ; preds = %206, %204
  br label %209

209:                                              ; preds = %208, %184
  %210 = load i32, i32* %15, align 4
  %211 = call i32 @HDMI_ACR_PKT_CTRL_SELECT(i32 %210)
  %212 = load i32, i32* %7, align 4
  %213 = or i32 %212, %211
  store i32 %213, i32* %7, align 4
  %214 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %215 = load i32, i32* %15, align 4
  %216 = sub i32 %215, 1
  %217 = call i32 @REG_HDMI_ACR_0(i32 %216)
  %218 = load i32, i32* %13, align 4
  %219 = call i32 @HDMI_ACR_0_CTS(i32 %218)
  %220 = call i32 @hdmi_write(%struct.hdmi* %214, i32 %217, i32 %219)
  %221 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %222 = load i32, i32* %15, align 4
  %223 = sub i32 %222, 1
  %224 = call i32 @REG_HDMI_ACR_1(i32 %223)
  %225 = load i32, i32* %12, align 4
  %226 = call i32 @HDMI_ACR_1_N(i32 %225)
  %227 = call i32 @hdmi_write(%struct.hdmi* %221, i32 %224, i32 %226)
  %228 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %229 = load i32, i32* @REG_HDMI_AUDIO_PKT_CTRL2, align 4
  %230 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %4, align 8
  %231 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = icmp ne i32 %232, 2
  %234 = zext i1 %233 to i32
  %235 = load i32, i32* @HDMI_AUDIO_PKT_CTRL2_LAYOUT, align 4
  %236 = call i32 @COND(i32 %234, i32 %235)
  %237 = load i32, i32* @HDMI_AUDIO_PKT_CTRL2_OVERRIDE, align 4
  %238 = or i32 %236, %237
  %239 = call i32 @hdmi_write(%struct.hdmi* %228, i32 %229, i32 %238)
  %240 = load i32, i32* @HDMI_ACR_PKT_CTRL_CONT, align 4
  %241 = load i32, i32* %7, align 4
  %242 = or i32 %241, %240
  store i32 %242, i32* %7, align 4
  %243 = load i32, i32* @HDMI_ACR_PKT_CTRL_SEND, align 4
  %244 = load i32, i32* %7, align 4
  %245 = or i32 %244, %243
  store i32 %245, i32* %7, align 4
  %246 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %4, align 8
  %247 = getelementptr inbounds [14 x i32], [14 x i32]* %16, i64 0, i64 0
  %248 = call i32 @hdmi_audio_infoframe_pack(%struct.hdmi_audio_infoframe* %246, i32* %247, i32 56)
  %249 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %250 = load i32, i32* @REG_HDMI_AUDIO_INFO0, align 4
  %251 = getelementptr inbounds [14 x i32], [14 x i32]* %16, i64 0, i64 3
  %252 = load i32, i32* %251, align 4
  %253 = shl i32 %252, 0
  %254 = getelementptr inbounds [14 x i32], [14 x i32]* %16, i64 0, i64 4
  %255 = load i32, i32* %254, align 16
  %256 = shl i32 %255, 8
  %257 = or i32 %253, %256
  %258 = getelementptr inbounds [14 x i32], [14 x i32]* %16, i64 0, i64 5
  %259 = load i32, i32* %258, align 4
  %260 = shl i32 %259, 16
  %261 = or i32 %257, %260
  %262 = getelementptr inbounds [14 x i32], [14 x i32]* %16, i64 0, i64 6
  %263 = load i32, i32* %262, align 8
  %264 = shl i32 %263, 24
  %265 = or i32 %261, %264
  %266 = call i32 @hdmi_write(%struct.hdmi* %249, i32 %250, i32 %265)
  %267 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %268 = load i32, i32* @REG_HDMI_AUDIO_INFO1, align 4
  %269 = getelementptr inbounds [14 x i32], [14 x i32]* %16, i64 0, i64 7
  %270 = load i32, i32* %269, align 4
  %271 = shl i32 %270, 0
  %272 = getelementptr inbounds [14 x i32], [14 x i32]* %16, i64 0, i64 8
  %273 = load i32, i32* %272, align 16
  %274 = shl i32 %273, 8
  %275 = or i32 %271, %274
  %276 = call i32 @hdmi_write(%struct.hdmi* %267, i32 %268, i32 %275)
  %277 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %278 = load i32, i32* @REG_HDMI_GC, align 4
  %279 = call i32 @hdmi_write(%struct.hdmi* %277, i32 %278, i32 0)
  %280 = load i32, i32* @HDMI_VBI_PKT_CTRL_GC_ENABLE, align 4
  %281 = load i32, i32* %8, align 4
  %282 = or i32 %281, %280
  store i32 %282, i32* %8, align 4
  %283 = load i32, i32* @HDMI_VBI_PKT_CTRL_GC_EVERY_FRAME, align 4
  %284 = load i32, i32* %8, align 4
  %285 = or i32 %284, %283
  store i32 %285, i32* %8, align 4
  %286 = load i32, i32* @HDMI_AUDIO_PKT_CTRL1_AUDIO_SAMPLE_SEND, align 4
  %287 = load i32, i32* %9, align 4
  %288 = or i32 %287, %286
  store i32 %288, i32* %9, align 4
  %289 = load i32, i32* @HDMI_INFOFRAME_CTRL0_AUDIO_INFO_SEND, align 4
  %290 = load i32, i32* %10, align 4
  %291 = or i32 %290, %289
  store i32 %291, i32* %10, align 4
  %292 = load i32, i32* @HDMI_INFOFRAME_CTRL0_AUDIO_INFO_CONT, align 4
  %293 = load i32, i32* %10, align 4
  %294 = or i32 %293, %292
  store i32 %294, i32* %10, align 4
  %295 = load i32, i32* @HDMI_INFOFRAME_CTRL0_AUDIO_INFO_SOURCE, align 4
  %296 = load i32, i32* %10, align 4
  %297 = or i32 %296, %295
  store i32 %297, i32* %10, align 4
  %298 = load i32, i32* @HDMI_INFOFRAME_CTRL0_AUDIO_INFO_UPDATE, align 4
  %299 = load i32, i32* %10, align 4
  %300 = or i32 %299, %298
  store i32 %300, i32* %10, align 4
  %301 = load i32, i32* @HDMI_AUDIO_CFG_FIFO_WATERMARK__MASK, align 4
  %302 = xor i32 %301, -1
  %303 = load i32, i32* %11, align 4
  %304 = and i32 %303, %302
  store i32 %304, i32* %11, align 4
  %305 = call i32 @HDMI_AUDIO_CFG_FIFO_WATERMARK(i32 4)
  %306 = load i32, i32* %11, align 4
  %307 = or i32 %306, %305
  store i32 %307, i32* %11, align 4
  %308 = load i32, i32* @HDMI_AUDIO_CFG_ENGINE_ENABLE, align 4
  %309 = load i32, i32* %11, align 4
  %310 = or i32 %309, %308
  store i32 %310, i32* %11, align 4
  br label %352

311:                                              ; preds = %80
  %312 = load i32, i32* @HDMI_ACR_PKT_CTRL_CONT, align 4
  %313 = xor i32 %312, -1
  %314 = load i32, i32* %7, align 4
  %315 = and i32 %314, %313
  store i32 %315, i32* %7, align 4
  %316 = load i32, i32* @HDMI_ACR_PKT_CTRL_SEND, align 4
  %317 = xor i32 %316, -1
  %318 = load i32, i32* %7, align 4
  %319 = and i32 %318, %317
  store i32 %319, i32* %7, align 4
  %320 = load i32, i32* @HDMI_VBI_PKT_CTRL_GC_ENABLE, align 4
  %321 = xor i32 %320, -1
  %322 = load i32, i32* %8, align 4
  %323 = and i32 %322, %321
  store i32 %323, i32* %8, align 4
  %324 = load i32, i32* @HDMI_VBI_PKT_CTRL_GC_EVERY_FRAME, align 4
  %325 = xor i32 %324, -1
  %326 = load i32, i32* %8, align 4
  %327 = and i32 %326, %325
  store i32 %327, i32* %8, align 4
  %328 = load i32, i32* @HDMI_AUDIO_PKT_CTRL1_AUDIO_SAMPLE_SEND, align 4
  %329 = xor i32 %328, -1
  %330 = load i32, i32* %9, align 4
  %331 = and i32 %330, %329
  store i32 %331, i32* %9, align 4
  %332 = load i32, i32* @HDMI_INFOFRAME_CTRL0_AUDIO_INFO_SEND, align 4
  %333 = xor i32 %332, -1
  %334 = load i32, i32* %10, align 4
  %335 = and i32 %334, %333
  store i32 %335, i32* %10, align 4
  %336 = load i32, i32* @HDMI_INFOFRAME_CTRL0_AUDIO_INFO_CONT, align 4
  %337 = xor i32 %336, -1
  %338 = load i32, i32* %10, align 4
  %339 = and i32 %338, %337
  store i32 %339, i32* %10, align 4
  %340 = load i32, i32* @HDMI_INFOFRAME_CTRL0_AUDIO_INFO_SOURCE, align 4
  %341 = xor i32 %340, -1
  %342 = load i32, i32* %10, align 4
  %343 = and i32 %342, %341
  store i32 %343, i32* %10, align 4
  %344 = load i32, i32* @HDMI_INFOFRAME_CTRL0_AUDIO_INFO_UPDATE, align 4
  %345 = xor i32 %344, -1
  %346 = load i32, i32* %10, align 4
  %347 = and i32 %346, %345
  store i32 %347, i32* %10, align 4
  %348 = load i32, i32* @HDMI_AUDIO_CFG_ENGINE_ENABLE, align 4
  %349 = xor i32 %348, -1
  %350 = load i32, i32* %11, align 4
  %351 = and i32 %350, %349
  store i32 %351, i32* %11, align 4
  br label %352

352:                                              ; preds = %311, %209
  %353 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %354 = load i32, i32* @REG_HDMI_ACR_PKT_CTRL, align 4
  %355 = load i32, i32* %7, align 4
  %356 = call i32 @hdmi_write(%struct.hdmi* %353, i32 %354, i32 %355)
  %357 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %358 = load i32, i32* @REG_HDMI_VBI_PKT_CTRL, align 4
  %359 = load i32, i32* %8, align 4
  %360 = call i32 @hdmi_write(%struct.hdmi* %357, i32 %358, i32 %359)
  %361 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %362 = load i32, i32* @REG_HDMI_AUDIO_PKT_CTRL1, align 4
  %363 = load i32, i32* %9, align 4
  %364 = call i32 @hdmi_write(%struct.hdmi* %361, i32 %362, i32 %363)
  %365 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %366 = load i32, i32* @REG_HDMI_INFOFRAME_CTRL0, align 4
  %367 = load i32, i32* %10, align 4
  %368 = call i32 @hdmi_write(%struct.hdmi* %365, i32 %366, i32 %367)
  %369 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %370 = load i32, i32* @REG_HDMI_AUD_INT, align 4
  %371 = load i32, i32* %6, align 4
  %372 = load i32, i32* @HDMI_AUD_INT_AUD_FIFO_URUN_INT, align 4
  %373 = call i32 @COND(i32 %371, i32 %372)
  %374 = load i32, i32* %6, align 4
  %375 = load i32, i32* @HDMI_AUD_INT_AUD_SAM_DROP_INT, align 4
  %376 = call i32 @COND(i32 %374, i32 %375)
  %377 = or i32 %373, %376
  %378 = call i32 @hdmi_write(%struct.hdmi* %369, i32 %370, i32 %377)
  %379 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %380 = load i32, i32* @REG_HDMI_AUDIO_CFG, align 4
  %381 = load i32, i32* %11, align 4
  %382 = call i32 @hdmi_write(%struct.hdmi* %379, i32 %380, i32 %381)
  %383 = load i32, i32* %6, align 4
  %384 = icmp ne i32 %383, 0
  %385 = zext i1 %384 to i64
  %386 = select i1 %384, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)
  %387 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %386)
  ret i32 0
}

declare dso_local i32 @DBG(i8*, ...) #1

declare dso_local %struct.hdmi_msm_audio_arcs* @get_arcs(i8*) #1

declare dso_local i32 @hdmi_read(%struct.hdmi*, i32) #1

declare dso_local i32 @HDMI_ACR_PKT_CTRL_N_MULTIPLIER(i32) #1

declare dso_local i32 @HDMI_ACR_PKT_CTRL_SELECT(i32) #1

declare dso_local i32 @hdmi_write(%struct.hdmi*, i32, i32) #1

declare dso_local i32 @REG_HDMI_ACR_0(i32) #1

declare dso_local i32 @HDMI_ACR_0_CTS(i32) #1

declare dso_local i32 @REG_HDMI_ACR_1(i32) #1

declare dso_local i32 @HDMI_ACR_1_N(i32) #1

declare dso_local i32 @COND(i32, i32) #1

declare dso_local i32 @hdmi_audio_infoframe_pack(%struct.hdmi_audio_infoframe*, i32*, i32) #1

declare dso_local i32 @HDMI_AUDIO_CFG_FIFO_WATERMARK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
