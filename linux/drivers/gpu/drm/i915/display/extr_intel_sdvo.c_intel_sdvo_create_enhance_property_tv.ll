; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_create_enhance_property_tv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_create_enhance_property_tv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sdvo = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_sdvo_connector = type { i32, i32, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.drm_connector }
%struct.drm_connector = type { i32, %struct.drm_connector_state* }
%struct.drm_connector_state = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.intel_sdvo_enhancements_reply = type { i64, i64, i64 }
%struct.intel_sdvo_connector_state = type { %struct.TYPE_8__ }

@SDVO_CMD_GET_MAX_OVERSCAN_H = common dso_local global i32 0, align 4
@SDVO_CMD_GET_OVERSCAN_H = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"left_margin\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"right_margin\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"h_overscan: max %d, default %d, current %d\0A\00", align 1
@SDVO_CMD_GET_MAX_OVERSCAN_V = common dso_local global i32 0, align 4
@SDVO_CMD_GET_OVERSCAN_V = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"top_margin\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"bottom_margin\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"v_overscan: max %d, default %d, current %d\0A\00", align 1
@hpos = common dso_local global i32 0, align 4
@HPOS = common dso_local global i32 0, align 4
@vpos = common dso_local global i32 0, align 4
@VPOS = common dso_local global i32 0, align 4
@saturation = common dso_local global i32 0, align 4
@SATURATION = common dso_local global i32 0, align 4
@contrast = common dso_local global i32 0, align 4
@CONTRAST = common dso_local global i32 0, align 4
@hue = common dso_local global i32 0, align 4
@HUE = common dso_local global i32 0, align 4
@brightness = common dso_local global i32 0, align 4
@BRIGHTNESS = common dso_local global i32 0, align 4
@sharpness = common dso_local global i32 0, align 4
@SHARPNESS = common dso_local global i32 0, align 4
@flicker_filter = common dso_local global i32 0, align 4
@FLICKER_FILTER = common dso_local global i32 0, align 4
@flicker_filter_adaptive = common dso_local global i32 0, align 4
@FLICKER_FILTER_ADAPTIVE = common dso_local global i32 0, align 4
@flicker_filter_2d = common dso_local global i32 0, align 4
@FLICKER_FILTER_2D = common dso_local global i32 0, align 4
@tv_chroma_filter = common dso_local global i32 0, align 4
@TV_CHROMA_FILTER = common dso_local global i32 0, align 4
@tv_luma_filter = common dso_local global i32 0, align 4
@TV_LUMA_FILTER = common dso_local global i32 0, align 4
@SDVO_CMD_GET_DOT_CRAWL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"dot_crawl\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"dot crawl: current %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_sdvo*, %struct.intel_sdvo_connector*, %struct.intel_sdvo_enhancements_reply*)* @intel_sdvo_create_enhance_property_tv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sdvo_create_enhance_property_tv(%struct.intel_sdvo* %0, %struct.intel_sdvo_connector* %1, %struct.intel_sdvo_enhancements_reply* byval(%struct.intel_sdvo_enhancements_reply) align 8 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_sdvo*, align 8
  %6 = alloca %struct.intel_sdvo_connector*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_connector*, align 8
  %9 = alloca %struct.drm_connector_state*, align 8
  %10 = alloca %struct.intel_sdvo_connector_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  store %struct.intel_sdvo* %0, %struct.intel_sdvo** %5, align 8
  store %struct.intel_sdvo_connector* %1, %struct.intel_sdvo_connector** %6, align 8
  %13 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %14 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  store %struct.drm_device* %17, %struct.drm_device** %7, align 8
  %18 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %19 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %18, i32 0, i32 7
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store %struct.drm_connector* %20, %struct.drm_connector** %8, align 8
  %21 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %22 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %21, i32 0, i32 1
  %23 = load %struct.drm_connector_state*, %struct.drm_connector_state** %22, align 8
  store %struct.drm_connector_state* %23, %struct.drm_connector_state** %9, align 8
  %24 = load %struct.drm_connector_state*, %struct.drm_connector_state** %9, align 8
  %25 = call %struct.intel_sdvo_connector_state* @to_intel_sdvo_connector_state(%struct.drm_connector_state* %24)
  store %struct.intel_sdvo_connector_state* %25, %struct.intel_sdvo_connector_state** %10, align 8
  %26 = getelementptr inbounds %struct.intel_sdvo_enhancements_reply, %struct.intel_sdvo_enhancements_reply* %2, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %92

29:                                               ; preds = %3
  %30 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %31 = load i32, i32* @SDVO_CMD_GET_MAX_OVERSCAN_H, align 4
  %32 = call i32 (%struct.intel_sdvo*, i32, ...) @intel_sdvo_get_value(%struct.intel_sdvo* %30, i32 %31, [2 x i32]* %12, i32 4)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %258

35:                                               ; preds = %29
  %36 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %37 = load i32, i32* @SDVO_CMD_GET_OVERSCAN_H, align 4
  %38 = call i32 (%struct.intel_sdvo*, i32, ...) @intel_sdvo_get_value(%struct.intel_sdvo* %36, i32 %37, i32* %11, i32 2)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %258

41:                                               ; preds = %35
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %10, align 8
  %44 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %49 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @drm_property_create_range(%struct.drm_device* %50, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0, i32 %52)
  %54 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %55 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %54, i32 0, i32 6
  store i8* %53, i8** %55, align 8
  %56 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %57 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %56, i32 0, i32 6
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %258

61:                                               ; preds = %41
  %62 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %63 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %62, i32 0, i32 0
  %64 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %65 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %64, i32 0, i32 6
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @drm_object_attach_property(i32* %63, i8* %66, i32 0)
  %68 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @drm_property_create_range(%struct.drm_device* %68, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %70)
  %72 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %73 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %72, i32 0, i32 5
  store i8* %71, i8** %73, align 8
  %74 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %75 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %74, i32 0, i32 5
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %258

79:                                               ; preds = %61
  %80 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %81 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %80, i32 0, i32 0
  %82 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %83 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %82, i32 0, i32 5
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @drm_object_attach_property(i32* %81, i8* %84, i32 0)
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %11, align 4
  %91 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %87, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %79, %3
  %93 = getelementptr inbounds %struct.intel_sdvo_enhancements_reply, %struct.intel_sdvo_enhancements_reply* %2, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %159

96:                                               ; preds = %92
  %97 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %98 = load i32, i32* @SDVO_CMD_GET_MAX_OVERSCAN_V, align 4
  %99 = call i32 (%struct.intel_sdvo*, i32, ...) @intel_sdvo_get_value(%struct.intel_sdvo* %97, i32 %98, [2 x i32]* %12, i32 4)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %96
  store i32 0, i32* %4, align 4
  br label %258

102:                                              ; preds = %96
  %103 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %104 = load i32, i32* @SDVO_CMD_GET_OVERSCAN_V, align 4
  %105 = call i32 (%struct.intel_sdvo*, i32, ...) @intel_sdvo_get_value(%struct.intel_sdvo* %103, i32 %104, i32* %11, i32 2)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %102
  store i32 0, i32* %4, align 4
  br label %258

108:                                              ; preds = %102
  %109 = load i32, i32* %11, align 4
  %110 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %10, align 8
  %111 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  store i32 %109, i32* %112, align 4
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %116 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %118 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = call i8* @drm_property_create_range(%struct.drm_device* %117, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 %119)
  %121 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %122 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %121, i32 0, i32 4
  store i8* %120, i8** %122, align 8
  %123 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %124 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %123, i32 0, i32 4
  %125 = load i8*, i8** %124, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %108
  store i32 0, i32* %4, align 4
  br label %258

128:                                              ; preds = %108
  %129 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %130 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %129, i32 0, i32 0
  %131 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %132 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %131, i32 0, i32 4
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @drm_object_attach_property(i32* %130, i8* %133, i32 0)
  %135 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %136 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = call i8* @drm_property_create_range(%struct.drm_device* %135, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 %137)
  %139 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %140 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %139, i32 0, i32 3
  store i8* %138, i8** %140, align 8
  %141 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %142 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %141, i32 0, i32 3
  %143 = load i8*, i8** %142, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %146, label %145

145:                                              ; preds = %128
  store i32 0, i32* %4, align 4
  br label %258

146:                                              ; preds = %128
  %147 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %148 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %147, i32 0, i32 0
  %149 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %150 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %149, i32 0, i32 3
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @drm_object_attach_property(i32* %148, i8* %151, i32 0)
  %153 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %11, align 4
  %158 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %154, i32 %156, i32 %157)
  br label %159

159:                                              ; preds = %146, %92
  %160 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %10, align 8
  %161 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %160, i32 0, i32 0
  %162 = load i32, i32* @hpos, align 4
  %163 = load i32, i32* @HPOS, align 4
  %164 = call i32 @ENHANCEMENT(%struct.TYPE_8__* %161, i32 %162, i32 %163)
  %165 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %10, align 8
  %166 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %165, i32 0, i32 0
  %167 = load i32, i32* @vpos, align 4
  %168 = load i32, i32* @VPOS, align 4
  %169 = call i32 @ENHANCEMENT(%struct.TYPE_8__* %166, i32 %167, i32 %168)
  %170 = load %struct.drm_connector_state*, %struct.drm_connector_state** %9, align 8
  %171 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %170, i32 0, i32 0
  %172 = load i32, i32* @saturation, align 4
  %173 = load i32, i32* @SATURATION, align 4
  %174 = call i32 @ENHANCEMENT(%struct.TYPE_8__* %171, i32 %172, i32 %173)
  %175 = load %struct.drm_connector_state*, %struct.drm_connector_state** %9, align 8
  %176 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %175, i32 0, i32 0
  %177 = load i32, i32* @contrast, align 4
  %178 = load i32, i32* @CONTRAST, align 4
  %179 = call i32 @ENHANCEMENT(%struct.TYPE_8__* %176, i32 %177, i32 %178)
  %180 = load %struct.drm_connector_state*, %struct.drm_connector_state** %9, align 8
  %181 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %180, i32 0, i32 0
  %182 = load i32, i32* @hue, align 4
  %183 = load i32, i32* @HUE, align 4
  %184 = call i32 @ENHANCEMENT(%struct.TYPE_8__* %181, i32 %182, i32 %183)
  %185 = load %struct.drm_connector_state*, %struct.drm_connector_state** %9, align 8
  %186 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %185, i32 0, i32 0
  %187 = load i32, i32* @brightness, align 4
  %188 = load i32, i32* @BRIGHTNESS, align 4
  %189 = call i32 @ENHANCEMENT(%struct.TYPE_8__* %186, i32 %187, i32 %188)
  %190 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %10, align 8
  %191 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %190, i32 0, i32 0
  %192 = load i32, i32* @sharpness, align 4
  %193 = load i32, i32* @SHARPNESS, align 4
  %194 = call i32 @ENHANCEMENT(%struct.TYPE_8__* %191, i32 %192, i32 %193)
  %195 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %10, align 8
  %196 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %195, i32 0, i32 0
  %197 = load i32, i32* @flicker_filter, align 4
  %198 = load i32, i32* @FLICKER_FILTER, align 4
  %199 = call i32 @ENHANCEMENT(%struct.TYPE_8__* %196, i32 %197, i32 %198)
  %200 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %10, align 8
  %201 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %200, i32 0, i32 0
  %202 = load i32, i32* @flicker_filter_adaptive, align 4
  %203 = load i32, i32* @FLICKER_FILTER_ADAPTIVE, align 4
  %204 = call i32 @ENHANCEMENT(%struct.TYPE_8__* %201, i32 %202, i32 %203)
  %205 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %10, align 8
  %206 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %205, i32 0, i32 0
  %207 = load i32, i32* @flicker_filter_2d, align 4
  %208 = load i32, i32* @FLICKER_FILTER_2D, align 4
  %209 = call i32 @ENHANCEMENT(%struct.TYPE_8__* %206, i32 %207, i32 %208)
  %210 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %10, align 8
  %211 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @tv_chroma_filter, align 4
  %215 = load i32, i32* @TV_CHROMA_FILTER, align 4
  %216 = call i32 @_ENHANCEMENT(i32 %213, i32 %214, i32 %215)
  %217 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %10, align 8
  %218 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @tv_luma_filter, align 4
  %222 = load i32, i32* @TV_LUMA_FILTER, align 4
  %223 = call i32 @_ENHANCEMENT(i32 %220, i32 %221, i32 %222)
  %224 = getelementptr inbounds %struct.intel_sdvo_enhancements_reply, %struct.intel_sdvo_enhancements_reply* %2, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %257

227:                                              ; preds = %159
  %228 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %229 = load i32, i32* @SDVO_CMD_GET_DOT_CRAWL, align 4
  %230 = call i32 (%struct.intel_sdvo*, i32, ...) @intel_sdvo_get_value(%struct.intel_sdvo* %228, i32 %229, i32* %11, i32 2)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %233, label %232

232:                                              ; preds = %227
  store i32 0, i32* %4, align 4
  br label %258

233:                                              ; preds = %227
  %234 = load i32, i32* %11, align 4
  %235 = and i32 %234, 1
  %236 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %10, align 8
  %237 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 2
  store i32 %235, i32* %238, align 4
  %239 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %240 = call i8* @drm_property_create_range(%struct.drm_device* %239, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 0, i32 1)
  %241 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %242 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %241, i32 0, i32 2
  store i8* %240, i8** %242, align 8
  %243 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %244 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %243, i32 0, i32 2
  %245 = load i8*, i8** %244, align 8
  %246 = icmp ne i8* %245, null
  br i1 %246, label %248, label %247

247:                                              ; preds = %233
  store i32 0, i32* %4, align 4
  br label %258

248:                                              ; preds = %233
  %249 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %250 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %249, i32 0, i32 0
  %251 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %252 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %251, i32 0, i32 2
  %253 = load i8*, i8** %252, align 8
  %254 = call i32 @drm_object_attach_property(i32* %250, i8* %253, i32 0)
  %255 = load i32, i32* %11, align 4
  %256 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %255)
  br label %257

257:                                              ; preds = %248, %159
  store i32 1, i32* %4, align 4
  br label %258

258:                                              ; preds = %257, %247, %232, %145, %127, %107, %101, %78, %60, %40, %34
  %259 = load i32, i32* %4, align 4
  ret i32 %259
}

declare dso_local %struct.intel_sdvo_connector_state* @to_intel_sdvo_connector_state(%struct.drm_connector_state*) #1

declare dso_local i32 @intel_sdvo_get_value(%struct.intel_sdvo*, i32, ...) #1

declare dso_local i8* @drm_property_create_range(%struct.drm_device*, i32, i8*, i32, i32) #1

declare dso_local i32 @drm_object_attach_property(i32*, i8*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, ...) #1

declare dso_local i32 @ENHANCEMENT(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @_ENHANCEMENT(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
