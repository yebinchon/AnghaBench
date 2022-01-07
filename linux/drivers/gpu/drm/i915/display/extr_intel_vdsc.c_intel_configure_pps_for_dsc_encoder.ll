; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_vdsc.c_intel_configure_pps_for_dsc_encoder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_vdsc.c_intel_configure_pps_for_dsc_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.intel_crtc_state = type { i32, %struct.TYPE_8__, %struct.drm_dsc_config, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64 }
%struct.drm_dsc_config = type { i32, i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_7__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.intel_crtc = type { i32 }
%struct.drm_i915_private = type { i32 }

@DSC_VER_MAJ = common dso_local global i32 0, align 4
@DSC_VER_MIN_SHIFT = common dso_local global i32 0, align 4
@DSC_BPC_SHIFT = common dso_local global i32 0, align 4
@DSC_LINE_BUF_DEPTH_SHIFT = common dso_local global i32 0, align 4
@DSC_BLOCK_PREDICTION = common dso_local global i32 0, align 4
@DSC_COLOR_SPACE_CONVERSION = common dso_local global i32 0, align 4
@DSC_422_ENABLE = common dso_local global i32 0, align 4
@DSC_VBR_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"PPS0 = 0x%08x\0A\00", align 1
@TRANSCODER_EDP = common dso_local global i32 0, align 4
@DSCA_PICTURE_PARAMETER_SET_0 = common dso_local global i32 0, align 4
@DSCC_PICTURE_PARAMETER_SET_0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"PPS1 = 0x%08x\0A\00", align 1
@DSCA_PICTURE_PARAMETER_SET_1 = common dso_local global i32 0, align 4
@DSCC_PICTURE_PARAMETER_SET_1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"PPS2 = 0x%08x\0A\00", align 1
@DSCA_PICTURE_PARAMETER_SET_2 = common dso_local global i32 0, align 4
@DSCC_PICTURE_PARAMETER_SET_2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"PPS3 = 0x%08x\0A\00", align 1
@DSCA_PICTURE_PARAMETER_SET_3 = common dso_local global i32 0, align 4
@DSCC_PICTURE_PARAMETER_SET_3 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"PPS4 = 0x%08x\0A\00", align 1
@DSCA_PICTURE_PARAMETER_SET_4 = common dso_local global i32 0, align 4
@DSCC_PICTURE_PARAMETER_SET_4 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"PPS5 = 0x%08x\0A\00", align 1
@DSCA_PICTURE_PARAMETER_SET_5 = common dso_local global i32 0, align 4
@DSCC_PICTURE_PARAMETER_SET_5 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"PPS6 = 0x%08x\0A\00", align 1
@DSCA_PICTURE_PARAMETER_SET_6 = common dso_local global i32 0, align 4
@DSCC_PICTURE_PARAMETER_SET_6 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"PPS7 = 0x%08x\0A\00", align 1
@DSCA_PICTURE_PARAMETER_SET_7 = common dso_local global i32 0, align 4
@DSCC_PICTURE_PARAMETER_SET_7 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"PPS8 = 0x%08x\0A\00", align 1
@DSCA_PICTURE_PARAMETER_SET_8 = common dso_local global i32 0, align 4
@DSCC_PICTURE_PARAMETER_SET_8 = common dso_local global i32 0, align 4
@DSC_RC_MODEL_SIZE_CONST = common dso_local global i32 0, align 4
@DSC_RC_EDGE_FACTOR_CONST = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"PPS9 = 0x%08x\0A\00", align 1
@DSCA_PICTURE_PARAMETER_SET_9 = common dso_local global i32 0, align 4
@DSCC_PICTURE_PARAMETER_SET_9 = common dso_local global i32 0, align 4
@DSC_RC_TGT_OFFSET_HI_CONST = common dso_local global i32 0, align 4
@DSC_RC_TGT_OFFSET_LO_CONST = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"PPS10 = 0x%08x\0A\00", align 1
@DSCA_PICTURE_PARAMETER_SET_10 = common dso_local global i32 0, align 4
@DSCC_PICTURE_PARAMETER_SET_10 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"PPS16 = 0x%08x\0A\00", align 1
@DSCA_PICTURE_PARAMETER_SET_16 = common dso_local global i32 0, align 4
@DSCC_PICTURE_PARAMETER_SET_16 = common dso_local global i32 0, align 4
@DSC_NUM_BUF_RANGES = common dso_local global i32 0, align 4
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c" RC_BUF_THRESH%d = 0x%08x\0A\00", align 1
@DSCA_RC_BUF_THRESH_0 = common dso_local global i32 0, align 4
@DSCA_RC_BUF_THRESH_0_UDW = common dso_local global i32 0, align 4
@DSCA_RC_BUF_THRESH_1 = common dso_local global i32 0, align 4
@DSCA_RC_BUF_THRESH_1_UDW = common dso_local global i32 0, align 4
@DSCC_RC_BUF_THRESH_0 = common dso_local global i32 0, align 4
@DSCC_RC_BUF_THRESH_0_UDW = common dso_local global i32 0, align 4
@DSCC_RC_BUF_THRESH_1 = common dso_local global i32 0, align 4
@DSCC_RC_BUF_THRESH_1_UDW = common dso_local global i32 0, align 4
@RC_BPG_OFFSET_SHIFT = common dso_local global i32 0, align 4
@RC_MAX_QP_SHIFT = common dso_local global i32 0, align 4
@RC_MIN_QP_SHIFT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [29 x i8] c" RC_RANGE_PARAM_%d = 0x%08x\0A\00", align 1
@DSCA_RC_RANGE_PARAMETERS_0 = common dso_local global i32 0, align 4
@DSCA_RC_RANGE_PARAMETERS_0_UDW = common dso_local global i32 0, align 4
@DSCA_RC_RANGE_PARAMETERS_1 = common dso_local global i32 0, align 4
@DSCA_RC_RANGE_PARAMETERS_1_UDW = common dso_local global i32 0, align 4
@DSCA_RC_RANGE_PARAMETERS_2 = common dso_local global i32 0, align 4
@DSCA_RC_RANGE_PARAMETERS_2_UDW = common dso_local global i32 0, align 4
@DSCA_RC_RANGE_PARAMETERS_3 = common dso_local global i32 0, align 4
@DSCA_RC_RANGE_PARAMETERS_3_UDW = common dso_local global i32 0, align 4
@DSCC_RC_RANGE_PARAMETERS_0 = common dso_local global i32 0, align 4
@DSCC_RC_RANGE_PARAMETERS_0_UDW = common dso_local global i32 0, align 4
@DSCC_RC_RANGE_PARAMETERS_1 = common dso_local global i32 0, align 4
@DSCC_RC_RANGE_PARAMETERS_1_UDW = common dso_local global i32 0, align 4
@DSCC_RC_RANGE_PARAMETERS_2 = common dso_local global i32 0, align 4
@DSCC_RC_RANGE_PARAMETERS_2_UDW = common dso_local global i32 0, align 4
@DSCC_RC_RANGE_PARAMETERS_3 = common dso_local global i32 0, align 4
@DSCC_RC_RANGE_PARAMETERS_3_UDW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*)* @intel_configure_pps_for_dsc_encoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_configure_pps_for_dsc_encoder(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.intel_crtc*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.drm_dsc_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x i32], align 16
  %12 = alloca [8 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %15 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %16 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.intel_crtc* @to_intel_crtc(i32 %18)
  store %struct.intel_crtc* %19, %struct.intel_crtc** %5, align 8
  %20 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %21 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.drm_i915_private* @to_i915(i32 %23)
  store %struct.drm_i915_private* %24, %struct.drm_i915_private** %6, align 8
  %25 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %26 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %25, i32 0, i32 2
  store %struct.drm_dsc_config* %26, %struct.drm_dsc_config** %7, align 8
  %27 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %28 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %31 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %33 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %34 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 2, i32 1
  store i32 %39, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %40 = load i32, i32* @DSC_VER_MAJ, align 4
  %41 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %7, align 8
  %42 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @DSC_VER_MIN_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = or i32 %40, %45
  %47 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %7, align 8
  %48 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @DSC_BPC_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = or i32 %46, %51
  %53 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %7, align 8
  %54 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @DSC_LINE_BUF_DEPTH_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = or i32 %52, %57
  store i32 %58, i32* %10, align 4
  %59 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %7, align 8
  %60 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %59, i32 0, i32 28
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %2
  %64 = load i32, i32* @DSC_BLOCK_PREDICTION, align 4
  %65 = load i32, i32* %10, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %63, %2
  %68 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %7, align 8
  %69 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %68, i32 0, i32 27
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i32, i32* @DSC_COLOR_SPACE_CONVERSION, align 4
  %74 = load i32, i32* %10, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %72, %67
  %77 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %7, align 8
  %78 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %77, i32 0, i32 26
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i32, i32* @DSC_422_ENABLE, align 4
  %83 = load i32, i32* %10, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %81, %76
  %86 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %7, align 8
  %87 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %86, i32 0, i32 25
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load i32, i32* @DSC_VBR_ENABLE, align 4
  %92 = load i32, i32* %10, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %90, %85
  %95 = load i32, i32* %10, align 4
  %96 = call i32 (i8*, i32, ...) @DRM_INFO(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @TRANSCODER_EDP, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %114

100:                                              ; preds = %94
  %101 = load i32, i32* @DSCA_PICTURE_PARAMETER_SET_0, align 4
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @I915_WRITE(i32 %101, i32 %102)
  %104 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %105 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %100
  %110 = load i32, i32* @DSCC_PICTURE_PARAMETER_SET_0, align 4
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @I915_WRITE(i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %109, %100
  br label %130

114:                                              ; preds = %94
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @ICL_DSC0_PICTURE_PARAMETER_SET_0(i32 %115)
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @I915_WRITE(i32 %116, i32 %117)
  %119 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %120 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %114
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @ICL_DSC1_PICTURE_PARAMETER_SET_0(i32 %125)
  %127 = load i32, i32* %10, align 4
  %128 = call i32 @I915_WRITE(i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %124, %114
  br label %130

130:                                              ; preds = %129, %113
  store i32 0, i32* %10, align 4
  %131 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %7, align 8
  %132 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %131, i32 0, i32 24
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @DSC_BPP(i32 %133)
  %135 = load i32, i32* %10, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* %10, align 4
  %138 = call i32 (i8*, i32, ...) @DRM_INFO(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* @TRANSCODER_EDP, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %156

142:                                              ; preds = %130
  %143 = load i32, i32* @DSCA_PICTURE_PARAMETER_SET_1, align 4
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @I915_WRITE(i32 %143, i32 %144)
  %146 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %147 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %142
  %152 = load i32, i32* @DSCC_PICTURE_PARAMETER_SET_1, align 4
  %153 = load i32, i32* %10, align 4
  %154 = call i32 @I915_WRITE(i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %151, %142
  br label %172

156:                                              ; preds = %130
  %157 = load i32, i32* %8, align 4
  %158 = call i32 @ICL_DSC0_PICTURE_PARAMETER_SET_1(i32 %157)
  %159 = load i32, i32* %10, align 4
  %160 = call i32 @I915_WRITE(i32 %158, i32 %159)
  %161 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %162 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %156
  %167 = load i32, i32* %8, align 4
  %168 = call i32 @ICL_DSC1_PICTURE_PARAMETER_SET_1(i32 %167)
  %169 = load i32, i32* %10, align 4
  %170 = call i32 @I915_WRITE(i32 %168, i32 %169)
  br label %171

171:                                              ; preds = %166, %156
  br label %172

172:                                              ; preds = %171, %155
  store i32 0, i32* %10, align 4
  %173 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %7, align 8
  %174 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @DSC_PIC_HEIGHT(i32 %175)
  %177 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %7, align 8
  %178 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* %13, align 4
  %181 = sdiv i32 %179, %180
  %182 = call i32 @DSC_PIC_WIDTH(i32 %181)
  %183 = or i32 %176, %182
  %184 = load i32, i32* %10, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %10, align 4
  %186 = load i32, i32* %10, align 4
  %187 = call i32 (i8*, i32, ...) @DRM_INFO(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %186)
  %188 = load i32, i32* %9, align 4
  %189 = load i32, i32* @TRANSCODER_EDP, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %205

191:                                              ; preds = %172
  %192 = load i32, i32* @DSCA_PICTURE_PARAMETER_SET_2, align 4
  %193 = load i32, i32* %10, align 4
  %194 = call i32 @I915_WRITE(i32 %192, i32 %193)
  %195 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %196 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %191
  %201 = load i32, i32* @DSCC_PICTURE_PARAMETER_SET_2, align 4
  %202 = load i32, i32* %10, align 4
  %203 = call i32 @I915_WRITE(i32 %201, i32 %202)
  br label %204

204:                                              ; preds = %200, %191
  br label %221

205:                                              ; preds = %172
  %206 = load i32, i32* %8, align 4
  %207 = call i32 @ICL_DSC0_PICTURE_PARAMETER_SET_2(i32 %206)
  %208 = load i32, i32* %10, align 4
  %209 = call i32 @I915_WRITE(i32 %207, i32 %208)
  %210 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %211 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %205
  %216 = load i32, i32* %8, align 4
  %217 = call i32 @ICL_DSC1_PICTURE_PARAMETER_SET_2(i32 %216)
  %218 = load i32, i32* %10, align 4
  %219 = call i32 @I915_WRITE(i32 %217, i32 %218)
  br label %220

220:                                              ; preds = %215, %205
  br label %221

221:                                              ; preds = %220, %204
  store i32 0, i32* %10, align 4
  %222 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %7, align 8
  %223 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @DSC_SLICE_HEIGHT(i32 %224)
  %226 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %7, align 8
  %227 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %226, i32 0, i32 6
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @DSC_SLICE_WIDTH(i32 %228)
  %230 = or i32 %225, %229
  %231 = load i32, i32* %10, align 4
  %232 = or i32 %231, %230
  store i32 %232, i32* %10, align 4
  %233 = load i32, i32* %10, align 4
  %234 = call i32 (i8*, i32, ...) @DRM_INFO(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %233)
  %235 = load i32, i32* %9, align 4
  %236 = load i32, i32* @TRANSCODER_EDP, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %252

238:                                              ; preds = %221
  %239 = load i32, i32* @DSCA_PICTURE_PARAMETER_SET_3, align 4
  %240 = load i32, i32* %10, align 4
  %241 = call i32 @I915_WRITE(i32 %239, i32 %240)
  %242 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %243 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %238
  %248 = load i32, i32* @DSCC_PICTURE_PARAMETER_SET_3, align 4
  %249 = load i32, i32* %10, align 4
  %250 = call i32 @I915_WRITE(i32 %248, i32 %249)
  br label %251

251:                                              ; preds = %247, %238
  br label %268

252:                                              ; preds = %221
  %253 = load i32, i32* %8, align 4
  %254 = call i32 @ICL_DSC0_PICTURE_PARAMETER_SET_3(i32 %253)
  %255 = load i32, i32* %10, align 4
  %256 = call i32 @I915_WRITE(i32 %254, i32 %255)
  %257 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %258 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %267

262:                                              ; preds = %252
  %263 = load i32, i32* %8, align 4
  %264 = call i32 @ICL_DSC1_PICTURE_PARAMETER_SET_3(i32 %263)
  %265 = load i32, i32* %10, align 4
  %266 = call i32 @I915_WRITE(i32 %264, i32 %265)
  br label %267

267:                                              ; preds = %262, %252
  br label %268

268:                                              ; preds = %267, %251
  store i32 0, i32* %10, align 4
  %269 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %7, align 8
  %270 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %269, i32 0, i32 23
  %271 = load i32, i32* %270, align 8
  %272 = call i32 @DSC_INITIAL_XMIT_DELAY(i32 %271)
  %273 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %7, align 8
  %274 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %273, i32 0, i32 22
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @DSC_INITIAL_DEC_DELAY(i32 %275)
  %277 = or i32 %272, %276
  %278 = load i32, i32* %10, align 4
  %279 = or i32 %278, %277
  store i32 %279, i32* %10, align 4
  %280 = load i32, i32* %10, align 4
  %281 = call i32 (i8*, i32, ...) @DRM_INFO(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %280)
  %282 = load i32, i32* %9, align 4
  %283 = load i32, i32* @TRANSCODER_EDP, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %285, label %299

285:                                              ; preds = %268
  %286 = load i32, i32* @DSCA_PICTURE_PARAMETER_SET_4, align 4
  %287 = load i32, i32* %10, align 4
  %288 = call i32 @I915_WRITE(i32 %286, i32 %287)
  %289 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %290 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %298

294:                                              ; preds = %285
  %295 = load i32, i32* @DSCC_PICTURE_PARAMETER_SET_4, align 4
  %296 = load i32, i32* %10, align 4
  %297 = call i32 @I915_WRITE(i32 %295, i32 %296)
  br label %298

298:                                              ; preds = %294, %285
  br label %315

299:                                              ; preds = %268
  %300 = load i32, i32* %8, align 4
  %301 = call i32 @ICL_DSC0_PICTURE_PARAMETER_SET_4(i32 %300)
  %302 = load i32, i32* %10, align 4
  %303 = call i32 @I915_WRITE(i32 %301, i32 %302)
  %304 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %305 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %314

309:                                              ; preds = %299
  %310 = load i32, i32* %8, align 4
  %311 = call i32 @ICL_DSC1_PICTURE_PARAMETER_SET_4(i32 %310)
  %312 = load i32, i32* %10, align 4
  %313 = call i32 @I915_WRITE(i32 %311, i32 %312)
  br label %314

314:                                              ; preds = %309, %299
  br label %315

315:                                              ; preds = %314, %298
  store i32 0, i32* %10, align 4
  %316 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %7, align 8
  %317 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %316, i32 0, i32 21
  %318 = load i32, i32* %317, align 8
  %319 = call i32 @DSC_SCALE_INC_INT(i32 %318)
  %320 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %7, align 8
  %321 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %320, i32 0, i32 20
  %322 = load i32, i32* %321, align 4
  %323 = call i32 @DSC_SCALE_DEC_INT(i32 %322)
  %324 = or i32 %319, %323
  %325 = load i32, i32* %10, align 4
  %326 = or i32 %325, %324
  store i32 %326, i32* %10, align 4
  %327 = load i32, i32* %10, align 4
  %328 = call i32 (i8*, i32, ...) @DRM_INFO(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %327)
  %329 = load i32, i32* %9, align 4
  %330 = load i32, i32* @TRANSCODER_EDP, align 4
  %331 = icmp eq i32 %329, %330
  br i1 %331, label %332, label %346

332:                                              ; preds = %315
  %333 = load i32, i32* @DSCA_PICTURE_PARAMETER_SET_5, align 4
  %334 = load i32, i32* %10, align 4
  %335 = call i32 @I915_WRITE(i32 %333, i32 %334)
  %336 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %337 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %337, i32 0, i32 0
  %339 = load i64, i64* %338, align 8
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %345

341:                                              ; preds = %332
  %342 = load i32, i32* @DSCC_PICTURE_PARAMETER_SET_5, align 4
  %343 = load i32, i32* %10, align 4
  %344 = call i32 @I915_WRITE(i32 %342, i32 %343)
  br label %345

345:                                              ; preds = %341, %332
  br label %362

346:                                              ; preds = %315
  %347 = load i32, i32* %8, align 4
  %348 = call i32 @ICL_DSC0_PICTURE_PARAMETER_SET_5(i32 %347)
  %349 = load i32, i32* %10, align 4
  %350 = call i32 @I915_WRITE(i32 %348, i32 %349)
  %351 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %352 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %351, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %361

356:                                              ; preds = %346
  %357 = load i32, i32* %8, align 4
  %358 = call i32 @ICL_DSC1_PICTURE_PARAMETER_SET_5(i32 %357)
  %359 = load i32, i32* %10, align 4
  %360 = call i32 @I915_WRITE(i32 %358, i32 %359)
  br label %361

361:                                              ; preds = %356, %346
  br label %362

362:                                              ; preds = %361, %345
  store i32 0, i32* %10, align 4
  %363 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %7, align 8
  %364 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %363, i32 0, i32 19
  %365 = load i32, i32* %364, align 8
  %366 = call i32 @DSC_INITIAL_SCALE_VALUE(i32 %365)
  %367 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %7, align 8
  %368 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %367, i32 0, i32 18
  %369 = load i32, i32* %368, align 4
  %370 = call i32 @DSC_FIRST_LINE_BPG_OFFSET(i32 %369)
  %371 = or i32 %366, %370
  %372 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %7, align 8
  %373 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %372, i32 0, i32 17
  %374 = load i32, i32* %373, align 8
  %375 = call i32 @DSC_FLATNESS_MIN_QP(i32 %374)
  %376 = or i32 %371, %375
  %377 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %7, align 8
  %378 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %377, i32 0, i32 16
  %379 = load i32, i32* %378, align 4
  %380 = call i32 @DSC_FLATNESS_MAX_QP(i32 %379)
  %381 = or i32 %376, %380
  %382 = load i32, i32* %10, align 4
  %383 = or i32 %382, %381
  store i32 %383, i32* %10, align 4
  %384 = load i32, i32* %10, align 4
  %385 = call i32 (i8*, i32, ...) @DRM_INFO(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %384)
  %386 = load i32, i32* %9, align 4
  %387 = load i32, i32* @TRANSCODER_EDP, align 4
  %388 = icmp eq i32 %386, %387
  br i1 %388, label %389, label %403

389:                                              ; preds = %362
  %390 = load i32, i32* @DSCA_PICTURE_PARAMETER_SET_6, align 4
  %391 = load i32, i32* %10, align 4
  %392 = call i32 @I915_WRITE(i32 %390, i32 %391)
  %393 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %394 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %393, i32 0, i32 1
  %395 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %394, i32 0, i32 0
  %396 = load i64, i64* %395, align 8
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %402

398:                                              ; preds = %389
  %399 = load i32, i32* @DSCC_PICTURE_PARAMETER_SET_6, align 4
  %400 = load i32, i32* %10, align 4
  %401 = call i32 @I915_WRITE(i32 %399, i32 %400)
  br label %402

402:                                              ; preds = %398, %389
  br label %419

403:                                              ; preds = %362
  %404 = load i32, i32* %8, align 4
  %405 = call i32 @ICL_DSC0_PICTURE_PARAMETER_SET_6(i32 %404)
  %406 = load i32, i32* %10, align 4
  %407 = call i32 @I915_WRITE(i32 %405, i32 %406)
  %408 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %409 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %408, i32 0, i32 1
  %410 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %409, i32 0, i32 0
  %411 = load i64, i64* %410, align 8
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %418

413:                                              ; preds = %403
  %414 = load i32, i32* %8, align 4
  %415 = call i32 @ICL_DSC1_PICTURE_PARAMETER_SET_6(i32 %414)
  %416 = load i32, i32* %10, align 4
  %417 = call i32 @I915_WRITE(i32 %415, i32 %416)
  br label %418

418:                                              ; preds = %413, %403
  br label %419

419:                                              ; preds = %418, %402
  store i32 0, i32* %10, align 4
  %420 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %7, align 8
  %421 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %420, i32 0, i32 15
  %422 = load i32, i32* %421, align 8
  %423 = call i32 @DSC_SLICE_BPG_OFFSET(i32 %422)
  %424 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %7, align 8
  %425 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %424, i32 0, i32 14
  %426 = load i32, i32* %425, align 4
  %427 = call i32 @DSC_NFL_BPG_OFFSET(i32 %426)
  %428 = or i32 %423, %427
  %429 = load i32, i32* %10, align 4
  %430 = or i32 %429, %428
  store i32 %430, i32* %10, align 4
  %431 = load i32, i32* %10, align 4
  %432 = call i32 (i8*, i32, ...) @DRM_INFO(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %431)
  %433 = load i32, i32* %9, align 4
  %434 = load i32, i32* @TRANSCODER_EDP, align 4
  %435 = icmp eq i32 %433, %434
  br i1 %435, label %436, label %450

436:                                              ; preds = %419
  %437 = load i32, i32* @DSCA_PICTURE_PARAMETER_SET_7, align 4
  %438 = load i32, i32* %10, align 4
  %439 = call i32 @I915_WRITE(i32 %437, i32 %438)
  %440 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %441 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %440, i32 0, i32 1
  %442 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %441, i32 0, i32 0
  %443 = load i64, i64* %442, align 8
  %444 = icmp ne i64 %443, 0
  br i1 %444, label %445, label %449

445:                                              ; preds = %436
  %446 = load i32, i32* @DSCC_PICTURE_PARAMETER_SET_7, align 4
  %447 = load i32, i32* %10, align 4
  %448 = call i32 @I915_WRITE(i32 %446, i32 %447)
  br label %449

449:                                              ; preds = %445, %436
  br label %466

450:                                              ; preds = %419
  %451 = load i32, i32* %8, align 4
  %452 = call i32 @ICL_DSC0_PICTURE_PARAMETER_SET_7(i32 %451)
  %453 = load i32, i32* %10, align 4
  %454 = call i32 @I915_WRITE(i32 %452, i32 %453)
  %455 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %456 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %455, i32 0, i32 1
  %457 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %456, i32 0, i32 0
  %458 = load i64, i64* %457, align 8
  %459 = icmp ne i64 %458, 0
  br i1 %459, label %460, label %465

460:                                              ; preds = %450
  %461 = load i32, i32* %8, align 4
  %462 = call i32 @ICL_DSC1_PICTURE_PARAMETER_SET_7(i32 %461)
  %463 = load i32, i32* %10, align 4
  %464 = call i32 @I915_WRITE(i32 %462, i32 %463)
  br label %465

465:                                              ; preds = %460, %450
  br label %466

466:                                              ; preds = %465, %449
  store i32 0, i32* %10, align 4
  %467 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %7, align 8
  %468 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %467, i32 0, i32 13
  %469 = load i32, i32* %468, align 8
  %470 = call i32 @DSC_FINAL_OFFSET(i32 %469)
  %471 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %7, align 8
  %472 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %471, i32 0, i32 12
  %473 = load i32, i32* %472, align 4
  %474 = call i32 @DSC_INITIAL_OFFSET(i32 %473)
  %475 = or i32 %470, %474
  %476 = load i32, i32* %10, align 4
  %477 = or i32 %476, %475
  store i32 %477, i32* %10, align 4
  %478 = load i32, i32* %10, align 4
  %479 = call i32 (i8*, i32, ...) @DRM_INFO(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %478)
  %480 = load i32, i32* %9, align 4
  %481 = load i32, i32* @TRANSCODER_EDP, align 4
  %482 = icmp eq i32 %480, %481
  br i1 %482, label %483, label %497

483:                                              ; preds = %466
  %484 = load i32, i32* @DSCA_PICTURE_PARAMETER_SET_8, align 4
  %485 = load i32, i32* %10, align 4
  %486 = call i32 @I915_WRITE(i32 %484, i32 %485)
  %487 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %488 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %487, i32 0, i32 1
  %489 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %488, i32 0, i32 0
  %490 = load i64, i64* %489, align 8
  %491 = icmp ne i64 %490, 0
  br i1 %491, label %492, label %496

492:                                              ; preds = %483
  %493 = load i32, i32* @DSCC_PICTURE_PARAMETER_SET_8, align 4
  %494 = load i32, i32* %10, align 4
  %495 = call i32 @I915_WRITE(i32 %493, i32 %494)
  br label %496

496:                                              ; preds = %492, %483
  br label %513

497:                                              ; preds = %466
  %498 = load i32, i32* %8, align 4
  %499 = call i32 @ICL_DSC0_PICTURE_PARAMETER_SET_8(i32 %498)
  %500 = load i32, i32* %10, align 4
  %501 = call i32 @I915_WRITE(i32 %499, i32 %500)
  %502 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %503 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %502, i32 0, i32 1
  %504 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %503, i32 0, i32 0
  %505 = load i64, i64* %504, align 8
  %506 = icmp ne i64 %505, 0
  br i1 %506, label %507, label %512

507:                                              ; preds = %497
  %508 = load i32, i32* %8, align 4
  %509 = call i32 @ICL_DSC1_PICTURE_PARAMETER_SET_8(i32 %508)
  %510 = load i32, i32* %10, align 4
  %511 = call i32 @I915_WRITE(i32 %509, i32 %510)
  br label %512

512:                                              ; preds = %507, %497
  br label %513

513:                                              ; preds = %512, %496
  store i32 0, i32* %10, align 4
  %514 = load i32, i32* @DSC_RC_MODEL_SIZE_CONST, align 4
  %515 = call i32 @DSC_RC_MODEL_SIZE(i32 %514)
  %516 = load i32, i32* @DSC_RC_EDGE_FACTOR_CONST, align 4
  %517 = call i32 @DSC_RC_EDGE_FACTOR(i32 %516)
  %518 = or i32 %515, %517
  %519 = load i32, i32* %10, align 4
  %520 = or i32 %519, %518
  store i32 %520, i32* %10, align 4
  %521 = load i32, i32* %10, align 4
  %522 = call i32 (i8*, i32, ...) @DRM_INFO(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %521)
  %523 = load i32, i32* %9, align 4
  %524 = load i32, i32* @TRANSCODER_EDP, align 4
  %525 = icmp eq i32 %523, %524
  br i1 %525, label %526, label %540

526:                                              ; preds = %513
  %527 = load i32, i32* @DSCA_PICTURE_PARAMETER_SET_9, align 4
  %528 = load i32, i32* %10, align 4
  %529 = call i32 @I915_WRITE(i32 %527, i32 %528)
  %530 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %531 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %530, i32 0, i32 1
  %532 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %531, i32 0, i32 0
  %533 = load i64, i64* %532, align 8
  %534 = icmp ne i64 %533, 0
  br i1 %534, label %535, label %539

535:                                              ; preds = %526
  %536 = load i32, i32* @DSCC_PICTURE_PARAMETER_SET_9, align 4
  %537 = load i32, i32* %10, align 4
  %538 = call i32 @I915_WRITE(i32 %536, i32 %537)
  br label %539

539:                                              ; preds = %535, %526
  br label %556

540:                                              ; preds = %513
  %541 = load i32, i32* %8, align 4
  %542 = call i32 @ICL_DSC0_PICTURE_PARAMETER_SET_9(i32 %541)
  %543 = load i32, i32* %10, align 4
  %544 = call i32 @I915_WRITE(i32 %542, i32 %543)
  %545 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %546 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %545, i32 0, i32 1
  %547 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %546, i32 0, i32 0
  %548 = load i64, i64* %547, align 8
  %549 = icmp ne i64 %548, 0
  br i1 %549, label %550, label %555

550:                                              ; preds = %540
  %551 = load i32, i32* %8, align 4
  %552 = call i32 @ICL_DSC1_PICTURE_PARAMETER_SET_9(i32 %551)
  %553 = load i32, i32* %10, align 4
  %554 = call i32 @I915_WRITE(i32 %552, i32 %553)
  br label %555

555:                                              ; preds = %550, %540
  br label %556

556:                                              ; preds = %555, %539
  store i32 0, i32* %10, align 4
  %557 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %7, align 8
  %558 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %557, i32 0, i32 11
  %559 = load i32, i32* %558, align 8
  %560 = call i32 @DSC_RC_QUANT_INC_LIMIT0(i32 %559)
  %561 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %7, align 8
  %562 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %561, i32 0, i32 10
  %563 = load i32, i32* %562, align 4
  %564 = call i32 @DSC_RC_QUANT_INC_LIMIT1(i32 %563)
  %565 = or i32 %560, %564
  %566 = load i32, i32* @DSC_RC_TGT_OFFSET_HI_CONST, align 4
  %567 = call i32 @DSC_RC_TARGET_OFF_HIGH(i32 %566)
  %568 = or i32 %565, %567
  %569 = load i32, i32* @DSC_RC_TGT_OFFSET_LO_CONST, align 4
  %570 = call i32 @DSC_RC_TARGET_OFF_LOW(i32 %569)
  %571 = or i32 %568, %570
  %572 = load i32, i32* %10, align 4
  %573 = or i32 %572, %571
  store i32 %573, i32* %10, align 4
  %574 = load i32, i32* %10, align 4
  %575 = call i32 (i8*, i32, ...) @DRM_INFO(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %574)
  %576 = load i32, i32* %9, align 4
  %577 = load i32, i32* @TRANSCODER_EDP, align 4
  %578 = icmp eq i32 %576, %577
  br i1 %578, label %579, label %593

579:                                              ; preds = %556
  %580 = load i32, i32* @DSCA_PICTURE_PARAMETER_SET_10, align 4
  %581 = load i32, i32* %10, align 4
  %582 = call i32 @I915_WRITE(i32 %580, i32 %581)
  %583 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %584 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %583, i32 0, i32 1
  %585 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %584, i32 0, i32 0
  %586 = load i64, i64* %585, align 8
  %587 = icmp ne i64 %586, 0
  br i1 %587, label %588, label %592

588:                                              ; preds = %579
  %589 = load i32, i32* @DSCC_PICTURE_PARAMETER_SET_10, align 4
  %590 = load i32, i32* %10, align 4
  %591 = call i32 @I915_WRITE(i32 %589, i32 %590)
  br label %592

592:                                              ; preds = %588, %579
  br label %609

593:                                              ; preds = %556
  %594 = load i32, i32* %8, align 4
  %595 = call i32 @ICL_DSC0_PICTURE_PARAMETER_SET_10(i32 %594)
  %596 = load i32, i32* %10, align 4
  %597 = call i32 @I915_WRITE(i32 %595, i32 %596)
  %598 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %599 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %598, i32 0, i32 1
  %600 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %599, i32 0, i32 0
  %601 = load i64, i64* %600, align 8
  %602 = icmp ne i64 %601, 0
  br i1 %602, label %603, label %608

603:                                              ; preds = %593
  %604 = load i32, i32* %8, align 4
  %605 = call i32 @ICL_DSC1_PICTURE_PARAMETER_SET_10(i32 %604)
  %606 = load i32, i32* %10, align 4
  %607 = call i32 @I915_WRITE(i32 %605, i32 %606)
  br label %608

608:                                              ; preds = %603, %593
  br label %609

609:                                              ; preds = %608, %592
  store i32 0, i32* %10, align 4
  %610 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %7, align 8
  %611 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %610, i32 0, i32 9
  %612 = load i32, i32* %611, align 8
  %613 = call i32 @DSC_SLICE_CHUNK_SIZE(i32 %612)
  %614 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %7, align 8
  %615 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %614, i32 0, i32 4
  %616 = load i32, i32* %615, align 8
  %617 = load i32, i32* %13, align 4
  %618 = sdiv i32 %616, %617
  %619 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %7, align 8
  %620 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %619, i32 0, i32 6
  %621 = load i32, i32* %620, align 8
  %622 = sdiv i32 %618, %621
  %623 = call i32 @DSC_SLICE_PER_LINE(i32 %622)
  %624 = or i32 %613, %623
  %625 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %7, align 8
  %626 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %625, i32 0, i32 3
  %627 = load i32, i32* %626, align 4
  %628 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %7, align 8
  %629 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %628, i32 0, i32 5
  %630 = load i32, i32* %629, align 4
  %631 = sdiv i32 %627, %630
  %632 = call i32 @DSC_SLICE_ROW_PER_FRAME(i32 %631)
  %633 = or i32 %624, %632
  %634 = load i32, i32* %10, align 4
  %635 = or i32 %634, %633
  store i32 %635, i32* %10, align 4
  %636 = load i32, i32* %10, align 4
  %637 = call i32 (i8*, i32, ...) @DRM_INFO(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 %636)
  %638 = load i32, i32* %9, align 4
  %639 = load i32, i32* @TRANSCODER_EDP, align 4
  %640 = icmp eq i32 %638, %639
  br i1 %640, label %641, label %655

641:                                              ; preds = %609
  %642 = load i32, i32* @DSCA_PICTURE_PARAMETER_SET_16, align 4
  %643 = load i32, i32* %10, align 4
  %644 = call i32 @I915_WRITE(i32 %642, i32 %643)
  %645 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %646 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %645, i32 0, i32 1
  %647 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %646, i32 0, i32 0
  %648 = load i64, i64* %647, align 8
  %649 = icmp ne i64 %648, 0
  br i1 %649, label %650, label %654

650:                                              ; preds = %641
  %651 = load i32, i32* @DSCC_PICTURE_PARAMETER_SET_16, align 4
  %652 = load i32, i32* %10, align 4
  %653 = call i32 @I915_WRITE(i32 %651, i32 %652)
  br label %654

654:                                              ; preds = %650, %641
  br label %671

655:                                              ; preds = %609
  %656 = load i32, i32* %8, align 4
  %657 = call i32 @ICL_DSC0_PICTURE_PARAMETER_SET_16(i32 %656)
  %658 = load i32, i32* %10, align 4
  %659 = call i32 @I915_WRITE(i32 %657, i32 %658)
  %660 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %661 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %660, i32 0, i32 1
  %662 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %661, i32 0, i32 0
  %663 = load i64, i64* %662, align 8
  %664 = icmp ne i64 %663, 0
  br i1 %664, label %665, label %670

665:                                              ; preds = %655
  %666 = load i32, i32* %8, align 4
  %667 = call i32 @ICL_DSC1_PICTURE_PARAMETER_SET_16(i32 %666)
  %668 = load i32, i32* %10, align 4
  %669 = call i32 @I915_WRITE(i32 %667, i32 %668)
  br label %670

670:                                              ; preds = %665, %655
  br label %671

671:                                              ; preds = %670, %654
  %672 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %673 = call i32 @memset(i32* %672, i32 0, i32 16)
  store i32 0, i32* %14, align 4
  br label %674

674:                                              ; preds = %705, %671
  %675 = load i32, i32* %14, align 4
  %676 = load i32, i32* @DSC_NUM_BUF_RANGES, align 4
  %677 = sub nsw i32 %676, 1
  %678 = icmp slt i32 %675, %677
  br i1 %678, label %679, label %708

679:                                              ; preds = %674
  %680 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %7, align 8
  %681 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %680, i32 0, i32 7
  %682 = load i32*, i32** %681, align 8
  %683 = load i32, i32* %14, align 4
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds i32, i32* %682, i64 %684
  %686 = load i32, i32* %685, align 4
  %687 = load i32, i32* @BITS_PER_BYTE, align 4
  %688 = load i32, i32* %14, align 4
  %689 = srem i32 %688, 4
  %690 = mul nsw i32 %687, %689
  %691 = shl i32 %686, %690
  %692 = load i32, i32* %14, align 4
  %693 = sdiv i32 %692, 4
  %694 = sext i32 %693 to i64
  %695 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %694
  %696 = load i32, i32* %695, align 4
  %697 = or i32 %696, %691
  store i32 %697, i32* %695, align 4
  %698 = load i32, i32* %14, align 4
  %699 = load i32, i32* %14, align 4
  %700 = sdiv i32 %699, 4
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %701
  %703 = load i32, i32* %702, align 4
  %704 = call i32 (i8*, i32, ...) @DRM_INFO(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32 %698, i32 %703)
  br label %705

705:                                              ; preds = %679
  %706 = load i32, i32* %14, align 4
  %707 = add nsw i32 %706, 1
  store i32 %707, i32* %14, align 4
  br label %674

708:                                              ; preds = %674
  %709 = load i32, i32* %9, align 4
  %710 = load i32, i32* @TRANSCODER_EDP, align 4
  %711 = icmp eq i32 %709, %710
  br i1 %711, label %712, label %752

712:                                              ; preds = %708
  %713 = load i32, i32* @DSCA_RC_BUF_THRESH_0, align 4
  %714 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %715 = load i32, i32* %714, align 16
  %716 = call i32 @I915_WRITE(i32 %713, i32 %715)
  %717 = load i32, i32* @DSCA_RC_BUF_THRESH_0_UDW, align 4
  %718 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  %719 = load i32, i32* %718, align 4
  %720 = call i32 @I915_WRITE(i32 %717, i32 %719)
  %721 = load i32, i32* @DSCA_RC_BUF_THRESH_1, align 4
  %722 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  %723 = load i32, i32* %722, align 8
  %724 = call i32 @I915_WRITE(i32 %721, i32 %723)
  %725 = load i32, i32* @DSCA_RC_BUF_THRESH_1_UDW, align 4
  %726 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 3
  %727 = load i32, i32* %726, align 4
  %728 = call i32 @I915_WRITE(i32 %725, i32 %727)
  %729 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %730 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %729, i32 0, i32 1
  %731 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %730, i32 0, i32 0
  %732 = load i64, i64* %731, align 8
  %733 = icmp ne i64 %732, 0
  br i1 %733, label %734, label %751

734:                                              ; preds = %712
  %735 = load i32, i32* @DSCC_RC_BUF_THRESH_0, align 4
  %736 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %737 = load i32, i32* %736, align 16
  %738 = call i32 @I915_WRITE(i32 %735, i32 %737)
  %739 = load i32, i32* @DSCC_RC_BUF_THRESH_0_UDW, align 4
  %740 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  %741 = load i32, i32* %740, align 4
  %742 = call i32 @I915_WRITE(i32 %739, i32 %741)
  %743 = load i32, i32* @DSCC_RC_BUF_THRESH_1, align 4
  %744 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  %745 = load i32, i32* %744, align 8
  %746 = call i32 @I915_WRITE(i32 %743, i32 %745)
  %747 = load i32, i32* @DSCC_RC_BUF_THRESH_1_UDW, align 4
  %748 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 3
  %749 = load i32, i32* %748, align 4
  %750 = call i32 @I915_WRITE(i32 %747, i32 %749)
  br label %751

751:                                              ; preds = %734, %712
  br label %800

752:                                              ; preds = %708
  %753 = load i32, i32* %8, align 4
  %754 = call i32 @ICL_DSC0_RC_BUF_THRESH_0(i32 %753)
  %755 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %756 = load i32, i32* %755, align 16
  %757 = call i32 @I915_WRITE(i32 %754, i32 %756)
  %758 = load i32, i32* %8, align 4
  %759 = call i32 @ICL_DSC0_RC_BUF_THRESH_0_UDW(i32 %758)
  %760 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  %761 = load i32, i32* %760, align 4
  %762 = call i32 @I915_WRITE(i32 %759, i32 %761)
  %763 = load i32, i32* %8, align 4
  %764 = call i32 @ICL_DSC0_RC_BUF_THRESH_1(i32 %763)
  %765 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  %766 = load i32, i32* %765, align 8
  %767 = call i32 @I915_WRITE(i32 %764, i32 %766)
  %768 = load i32, i32* %8, align 4
  %769 = call i32 @ICL_DSC0_RC_BUF_THRESH_1_UDW(i32 %768)
  %770 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 3
  %771 = load i32, i32* %770, align 4
  %772 = call i32 @I915_WRITE(i32 %769, i32 %771)
  %773 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %774 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %773, i32 0, i32 1
  %775 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %774, i32 0, i32 0
  %776 = load i64, i64* %775, align 8
  %777 = icmp ne i64 %776, 0
  br i1 %777, label %778, label %799

778:                                              ; preds = %752
  %779 = load i32, i32* %8, align 4
  %780 = call i32 @ICL_DSC1_RC_BUF_THRESH_0(i32 %779)
  %781 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %782 = load i32, i32* %781, align 16
  %783 = call i32 @I915_WRITE(i32 %780, i32 %782)
  %784 = load i32, i32* %8, align 4
  %785 = call i32 @ICL_DSC1_RC_BUF_THRESH_0_UDW(i32 %784)
  %786 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  %787 = load i32, i32* %786, align 4
  %788 = call i32 @I915_WRITE(i32 %785, i32 %787)
  %789 = load i32, i32* %8, align 4
  %790 = call i32 @ICL_DSC1_RC_BUF_THRESH_1(i32 %789)
  %791 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  %792 = load i32, i32* %791, align 8
  %793 = call i32 @I915_WRITE(i32 %790, i32 %792)
  %794 = load i32, i32* %8, align 4
  %795 = call i32 @ICL_DSC1_RC_BUF_THRESH_1_UDW(i32 %794)
  %796 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 3
  %797 = load i32, i32* %796, align 4
  %798 = call i32 @I915_WRITE(i32 %795, i32 %797)
  br label %799

799:                                              ; preds = %778, %752
  br label %800

800:                                              ; preds = %799, %751
  %801 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %802 = call i32 @memset(i32* %801, i32 0, i32 32)
  store i32 0, i32* %14, align 4
  br label %803

803:                                              ; preds = %857, %800
  %804 = load i32, i32* %14, align 4
  %805 = load i32, i32* @DSC_NUM_BUF_RANGES, align 4
  %806 = icmp slt i32 %804, %805
  br i1 %806, label %807, label %860

807:                                              ; preds = %803
  %808 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %7, align 8
  %809 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %808, i32 0, i32 8
  %810 = load %struct.TYPE_7__*, %struct.TYPE_7__** %809, align 8
  %811 = load i32, i32* %14, align 4
  %812 = sext i32 %811 to i64
  %813 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %810, i64 %812
  %814 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %813, i32 0, i32 0
  %815 = load i32, i32* %814, align 4
  %816 = load i32, i32* @RC_BPG_OFFSET_SHIFT, align 4
  %817 = shl i32 %815, %816
  %818 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %7, align 8
  %819 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %818, i32 0, i32 8
  %820 = load %struct.TYPE_7__*, %struct.TYPE_7__** %819, align 8
  %821 = load i32, i32* %14, align 4
  %822 = sext i32 %821 to i64
  %823 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %820, i64 %822
  %824 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %823, i32 0, i32 1
  %825 = load i32, i32* %824, align 4
  %826 = load i32, i32* @RC_MAX_QP_SHIFT, align 4
  %827 = shl i32 %825, %826
  %828 = or i32 %817, %827
  %829 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %7, align 8
  %830 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %829, i32 0, i32 8
  %831 = load %struct.TYPE_7__*, %struct.TYPE_7__** %830, align 8
  %832 = load i32, i32* %14, align 4
  %833 = sext i32 %832 to i64
  %834 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %831, i64 %833
  %835 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %834, i32 0, i32 2
  %836 = load i32, i32* %835, align 4
  %837 = load i32, i32* @RC_MIN_QP_SHIFT, align 4
  %838 = shl i32 %836, %837
  %839 = or i32 %828, %838
  %840 = load i32, i32* %14, align 4
  %841 = srem i32 %840, 2
  %842 = mul nsw i32 16, %841
  %843 = shl i32 %839, %842
  %844 = load i32, i32* %14, align 4
  %845 = sdiv i32 %844, 2
  %846 = sext i32 %845 to i64
  %847 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 %846
  %848 = load i32, i32* %847, align 4
  %849 = or i32 %848, %843
  store i32 %849, i32* %847, align 4
  %850 = load i32, i32* %14, align 4
  %851 = load i32, i32* %14, align 4
  %852 = sdiv i32 %851, 2
  %853 = sext i32 %852 to i64
  %854 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 %853
  %855 = load i32, i32* %854, align 4
  %856 = call i32 (i8*, i32, ...) @DRM_INFO(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i32 %850, i32 %855)
  br label %857

857:                                              ; preds = %807
  %858 = load i32, i32* %14, align 4
  %859 = add nsw i32 %858, 1
  store i32 %859, i32* %14, align 4
  br label %803

860:                                              ; preds = %803
  %861 = load i32, i32* %9, align 4
  %862 = load i32, i32* @TRANSCODER_EDP, align 4
  %863 = icmp eq i32 %861, %862
  br i1 %863, label %864, label %936

864:                                              ; preds = %860
  %865 = load i32, i32* @DSCA_RC_RANGE_PARAMETERS_0, align 4
  %866 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %867 = load i32, i32* %866, align 16
  %868 = call i32 @I915_WRITE(i32 %865, i32 %867)
  %869 = load i32, i32* @DSCA_RC_RANGE_PARAMETERS_0_UDW, align 4
  %870 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 1
  %871 = load i32, i32* %870, align 4
  %872 = call i32 @I915_WRITE(i32 %869, i32 %871)
  %873 = load i32, i32* @DSCA_RC_RANGE_PARAMETERS_1, align 4
  %874 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 2
  %875 = load i32, i32* %874, align 8
  %876 = call i32 @I915_WRITE(i32 %873, i32 %875)
  %877 = load i32, i32* @DSCA_RC_RANGE_PARAMETERS_1_UDW, align 4
  %878 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 3
  %879 = load i32, i32* %878, align 4
  %880 = call i32 @I915_WRITE(i32 %877, i32 %879)
  %881 = load i32, i32* @DSCA_RC_RANGE_PARAMETERS_2, align 4
  %882 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 4
  %883 = load i32, i32* %882, align 16
  %884 = call i32 @I915_WRITE(i32 %881, i32 %883)
  %885 = load i32, i32* @DSCA_RC_RANGE_PARAMETERS_2_UDW, align 4
  %886 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 5
  %887 = load i32, i32* %886, align 4
  %888 = call i32 @I915_WRITE(i32 %885, i32 %887)
  %889 = load i32, i32* @DSCA_RC_RANGE_PARAMETERS_3, align 4
  %890 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 6
  %891 = load i32, i32* %890, align 8
  %892 = call i32 @I915_WRITE(i32 %889, i32 %891)
  %893 = load i32, i32* @DSCA_RC_RANGE_PARAMETERS_3_UDW, align 4
  %894 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 7
  %895 = load i32, i32* %894, align 4
  %896 = call i32 @I915_WRITE(i32 %893, i32 %895)
  %897 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %898 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %897, i32 0, i32 1
  %899 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %898, i32 0, i32 0
  %900 = load i64, i64* %899, align 8
  %901 = icmp ne i64 %900, 0
  br i1 %901, label %902, label %935

902:                                              ; preds = %864
  %903 = load i32, i32* @DSCC_RC_RANGE_PARAMETERS_0, align 4
  %904 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %905 = load i32, i32* %904, align 16
  %906 = call i32 @I915_WRITE(i32 %903, i32 %905)
  %907 = load i32, i32* @DSCC_RC_RANGE_PARAMETERS_0_UDW, align 4
  %908 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 1
  %909 = load i32, i32* %908, align 4
  %910 = call i32 @I915_WRITE(i32 %907, i32 %909)
  %911 = load i32, i32* @DSCC_RC_RANGE_PARAMETERS_1, align 4
  %912 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 2
  %913 = load i32, i32* %912, align 8
  %914 = call i32 @I915_WRITE(i32 %911, i32 %913)
  %915 = load i32, i32* @DSCC_RC_RANGE_PARAMETERS_1_UDW, align 4
  %916 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 3
  %917 = load i32, i32* %916, align 4
  %918 = call i32 @I915_WRITE(i32 %915, i32 %917)
  %919 = load i32, i32* @DSCC_RC_RANGE_PARAMETERS_2, align 4
  %920 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 4
  %921 = load i32, i32* %920, align 16
  %922 = call i32 @I915_WRITE(i32 %919, i32 %921)
  %923 = load i32, i32* @DSCC_RC_RANGE_PARAMETERS_2_UDW, align 4
  %924 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 5
  %925 = load i32, i32* %924, align 4
  %926 = call i32 @I915_WRITE(i32 %923, i32 %925)
  %927 = load i32, i32* @DSCC_RC_RANGE_PARAMETERS_3, align 4
  %928 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 6
  %929 = load i32, i32* %928, align 8
  %930 = call i32 @I915_WRITE(i32 %927, i32 %929)
  %931 = load i32, i32* @DSCC_RC_RANGE_PARAMETERS_3_UDW, align 4
  %932 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 7
  %933 = load i32, i32* %932, align 4
  %934 = call i32 @I915_WRITE(i32 %931, i32 %933)
  br label %935

935:                                              ; preds = %902, %864
  br label %1024

936:                                              ; preds = %860
  %937 = load i32, i32* %8, align 4
  %938 = call i32 @ICL_DSC0_RC_RANGE_PARAMETERS_0(i32 %937)
  %939 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %940 = load i32, i32* %939, align 16
  %941 = call i32 @I915_WRITE(i32 %938, i32 %940)
  %942 = load i32, i32* %8, align 4
  %943 = call i32 @ICL_DSC0_RC_RANGE_PARAMETERS_0_UDW(i32 %942)
  %944 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 1
  %945 = load i32, i32* %944, align 4
  %946 = call i32 @I915_WRITE(i32 %943, i32 %945)
  %947 = load i32, i32* %8, align 4
  %948 = call i32 @ICL_DSC0_RC_RANGE_PARAMETERS_1(i32 %947)
  %949 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 2
  %950 = load i32, i32* %949, align 8
  %951 = call i32 @I915_WRITE(i32 %948, i32 %950)
  %952 = load i32, i32* %8, align 4
  %953 = call i32 @ICL_DSC0_RC_RANGE_PARAMETERS_1_UDW(i32 %952)
  %954 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 3
  %955 = load i32, i32* %954, align 4
  %956 = call i32 @I915_WRITE(i32 %953, i32 %955)
  %957 = load i32, i32* %8, align 4
  %958 = call i32 @ICL_DSC0_RC_RANGE_PARAMETERS_2(i32 %957)
  %959 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 4
  %960 = load i32, i32* %959, align 16
  %961 = call i32 @I915_WRITE(i32 %958, i32 %960)
  %962 = load i32, i32* %8, align 4
  %963 = call i32 @ICL_DSC0_RC_RANGE_PARAMETERS_2_UDW(i32 %962)
  %964 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 5
  %965 = load i32, i32* %964, align 4
  %966 = call i32 @I915_WRITE(i32 %963, i32 %965)
  %967 = load i32, i32* %8, align 4
  %968 = call i32 @ICL_DSC0_RC_RANGE_PARAMETERS_3(i32 %967)
  %969 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 6
  %970 = load i32, i32* %969, align 8
  %971 = call i32 @I915_WRITE(i32 %968, i32 %970)
  %972 = load i32, i32* %8, align 4
  %973 = call i32 @ICL_DSC0_RC_RANGE_PARAMETERS_3_UDW(i32 %972)
  %974 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 7
  %975 = load i32, i32* %974, align 4
  %976 = call i32 @I915_WRITE(i32 %973, i32 %975)
  %977 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %978 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %977, i32 0, i32 1
  %979 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %978, i32 0, i32 0
  %980 = load i64, i64* %979, align 8
  %981 = icmp ne i64 %980, 0
  br i1 %981, label %982, label %1023

982:                                              ; preds = %936
  %983 = load i32, i32* %8, align 4
  %984 = call i32 @ICL_DSC1_RC_RANGE_PARAMETERS_0(i32 %983)
  %985 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %986 = load i32, i32* %985, align 16
  %987 = call i32 @I915_WRITE(i32 %984, i32 %986)
  %988 = load i32, i32* %8, align 4
  %989 = call i32 @ICL_DSC1_RC_RANGE_PARAMETERS_0_UDW(i32 %988)
  %990 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 1
  %991 = load i32, i32* %990, align 4
  %992 = call i32 @I915_WRITE(i32 %989, i32 %991)
  %993 = load i32, i32* %8, align 4
  %994 = call i32 @ICL_DSC1_RC_RANGE_PARAMETERS_1(i32 %993)
  %995 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 2
  %996 = load i32, i32* %995, align 8
  %997 = call i32 @I915_WRITE(i32 %994, i32 %996)
  %998 = load i32, i32* %8, align 4
  %999 = call i32 @ICL_DSC1_RC_RANGE_PARAMETERS_1_UDW(i32 %998)
  %1000 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 3
  %1001 = load i32, i32* %1000, align 4
  %1002 = call i32 @I915_WRITE(i32 %999, i32 %1001)
  %1003 = load i32, i32* %8, align 4
  %1004 = call i32 @ICL_DSC1_RC_RANGE_PARAMETERS_2(i32 %1003)
  %1005 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 4
  %1006 = load i32, i32* %1005, align 16
  %1007 = call i32 @I915_WRITE(i32 %1004, i32 %1006)
  %1008 = load i32, i32* %8, align 4
  %1009 = call i32 @ICL_DSC1_RC_RANGE_PARAMETERS_2_UDW(i32 %1008)
  %1010 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 5
  %1011 = load i32, i32* %1010, align 4
  %1012 = call i32 @I915_WRITE(i32 %1009, i32 %1011)
  %1013 = load i32, i32* %8, align 4
  %1014 = call i32 @ICL_DSC1_RC_RANGE_PARAMETERS_3(i32 %1013)
  %1015 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 6
  %1016 = load i32, i32* %1015, align 8
  %1017 = call i32 @I915_WRITE(i32 %1014, i32 %1016)
  %1018 = load i32, i32* %8, align 4
  %1019 = call i32 @ICL_DSC1_RC_RANGE_PARAMETERS_3_UDW(i32 %1018)
  %1020 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 7
  %1021 = load i32, i32* %1020, align 4
  %1022 = call i32 @I915_WRITE(i32 %1019, i32 %1021)
  br label %1023

1023:                                             ; preds = %982, %936
  br label %1024

1024:                                             ; preds = %1023, %935
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @DRM_INFO(i8*, i32, ...) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @ICL_DSC0_PICTURE_PARAMETER_SET_0(i32) #1

declare dso_local i32 @ICL_DSC1_PICTURE_PARAMETER_SET_0(i32) #1

declare dso_local i32 @DSC_BPP(i32) #1

declare dso_local i32 @ICL_DSC0_PICTURE_PARAMETER_SET_1(i32) #1

declare dso_local i32 @ICL_DSC1_PICTURE_PARAMETER_SET_1(i32) #1

declare dso_local i32 @DSC_PIC_HEIGHT(i32) #1

declare dso_local i32 @DSC_PIC_WIDTH(i32) #1

declare dso_local i32 @ICL_DSC0_PICTURE_PARAMETER_SET_2(i32) #1

declare dso_local i32 @ICL_DSC1_PICTURE_PARAMETER_SET_2(i32) #1

declare dso_local i32 @DSC_SLICE_HEIGHT(i32) #1

declare dso_local i32 @DSC_SLICE_WIDTH(i32) #1

declare dso_local i32 @ICL_DSC0_PICTURE_PARAMETER_SET_3(i32) #1

declare dso_local i32 @ICL_DSC1_PICTURE_PARAMETER_SET_3(i32) #1

declare dso_local i32 @DSC_INITIAL_XMIT_DELAY(i32) #1

declare dso_local i32 @DSC_INITIAL_DEC_DELAY(i32) #1

declare dso_local i32 @ICL_DSC0_PICTURE_PARAMETER_SET_4(i32) #1

declare dso_local i32 @ICL_DSC1_PICTURE_PARAMETER_SET_4(i32) #1

declare dso_local i32 @DSC_SCALE_INC_INT(i32) #1

declare dso_local i32 @DSC_SCALE_DEC_INT(i32) #1

declare dso_local i32 @ICL_DSC0_PICTURE_PARAMETER_SET_5(i32) #1

declare dso_local i32 @ICL_DSC1_PICTURE_PARAMETER_SET_5(i32) #1

declare dso_local i32 @DSC_INITIAL_SCALE_VALUE(i32) #1

declare dso_local i32 @DSC_FIRST_LINE_BPG_OFFSET(i32) #1

declare dso_local i32 @DSC_FLATNESS_MIN_QP(i32) #1

declare dso_local i32 @DSC_FLATNESS_MAX_QP(i32) #1

declare dso_local i32 @ICL_DSC0_PICTURE_PARAMETER_SET_6(i32) #1

declare dso_local i32 @ICL_DSC1_PICTURE_PARAMETER_SET_6(i32) #1

declare dso_local i32 @DSC_SLICE_BPG_OFFSET(i32) #1

declare dso_local i32 @DSC_NFL_BPG_OFFSET(i32) #1

declare dso_local i32 @ICL_DSC0_PICTURE_PARAMETER_SET_7(i32) #1

declare dso_local i32 @ICL_DSC1_PICTURE_PARAMETER_SET_7(i32) #1

declare dso_local i32 @DSC_FINAL_OFFSET(i32) #1

declare dso_local i32 @DSC_INITIAL_OFFSET(i32) #1

declare dso_local i32 @ICL_DSC0_PICTURE_PARAMETER_SET_8(i32) #1

declare dso_local i32 @ICL_DSC1_PICTURE_PARAMETER_SET_8(i32) #1

declare dso_local i32 @DSC_RC_MODEL_SIZE(i32) #1

declare dso_local i32 @DSC_RC_EDGE_FACTOR(i32) #1

declare dso_local i32 @ICL_DSC0_PICTURE_PARAMETER_SET_9(i32) #1

declare dso_local i32 @ICL_DSC1_PICTURE_PARAMETER_SET_9(i32) #1

declare dso_local i32 @DSC_RC_QUANT_INC_LIMIT0(i32) #1

declare dso_local i32 @DSC_RC_QUANT_INC_LIMIT1(i32) #1

declare dso_local i32 @DSC_RC_TARGET_OFF_HIGH(i32) #1

declare dso_local i32 @DSC_RC_TARGET_OFF_LOW(i32) #1

declare dso_local i32 @ICL_DSC0_PICTURE_PARAMETER_SET_10(i32) #1

declare dso_local i32 @ICL_DSC1_PICTURE_PARAMETER_SET_10(i32) #1

declare dso_local i32 @DSC_SLICE_CHUNK_SIZE(i32) #1

declare dso_local i32 @DSC_SLICE_PER_LINE(i32) #1

declare dso_local i32 @DSC_SLICE_ROW_PER_FRAME(i32) #1

declare dso_local i32 @ICL_DSC0_PICTURE_PARAMETER_SET_16(i32) #1

declare dso_local i32 @ICL_DSC1_PICTURE_PARAMETER_SET_16(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ICL_DSC0_RC_BUF_THRESH_0(i32) #1

declare dso_local i32 @ICL_DSC0_RC_BUF_THRESH_0_UDW(i32) #1

declare dso_local i32 @ICL_DSC0_RC_BUF_THRESH_1(i32) #1

declare dso_local i32 @ICL_DSC0_RC_BUF_THRESH_1_UDW(i32) #1

declare dso_local i32 @ICL_DSC1_RC_BUF_THRESH_0(i32) #1

declare dso_local i32 @ICL_DSC1_RC_BUF_THRESH_0_UDW(i32) #1

declare dso_local i32 @ICL_DSC1_RC_BUF_THRESH_1(i32) #1

declare dso_local i32 @ICL_DSC1_RC_BUF_THRESH_1_UDW(i32) #1

declare dso_local i32 @ICL_DSC0_RC_RANGE_PARAMETERS_0(i32) #1

declare dso_local i32 @ICL_DSC0_RC_RANGE_PARAMETERS_0_UDW(i32) #1

declare dso_local i32 @ICL_DSC0_RC_RANGE_PARAMETERS_1(i32) #1

declare dso_local i32 @ICL_DSC0_RC_RANGE_PARAMETERS_1_UDW(i32) #1

declare dso_local i32 @ICL_DSC0_RC_RANGE_PARAMETERS_2(i32) #1

declare dso_local i32 @ICL_DSC0_RC_RANGE_PARAMETERS_2_UDW(i32) #1

declare dso_local i32 @ICL_DSC0_RC_RANGE_PARAMETERS_3(i32) #1

declare dso_local i32 @ICL_DSC0_RC_RANGE_PARAMETERS_3_UDW(i32) #1

declare dso_local i32 @ICL_DSC1_RC_RANGE_PARAMETERS_0(i32) #1

declare dso_local i32 @ICL_DSC1_RC_RANGE_PARAMETERS_0_UDW(i32) #1

declare dso_local i32 @ICL_DSC1_RC_RANGE_PARAMETERS_1(i32) #1

declare dso_local i32 @ICL_DSC1_RC_RANGE_PARAMETERS_1_UDW(i32) #1

declare dso_local i32 @ICL_DSC1_RC_RANGE_PARAMETERS_2(i32) #1

declare dso_local i32 @ICL_DSC1_RC_RANGE_PARAMETERS_2_UDW(i32) #1

declare dso_local i32 @ICL_DSC1_RC_RANGE_PARAMETERS_3(i32) #1

declare dso_local i32 @ICL_DSC1_RC_RANGE_PARAMETERS_3_UDW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
