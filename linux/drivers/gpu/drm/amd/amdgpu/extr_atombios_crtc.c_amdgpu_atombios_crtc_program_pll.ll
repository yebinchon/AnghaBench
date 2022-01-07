; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_crtc.c_amdgpu_atombios_crtc_program_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_crtc.c_amdgpu_atombios_crtc_program_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.amdgpu_atom_ss = type { i32 }
%union.set_pixel_clock = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i8*, i8*, i8* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i8*, i8*, i8* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i8* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i8* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i8* }

@COMMAND = common dso_local global i32 0, align 4
@SetPixelClock = common dso_local global i32 0, align 4
@ATOM_DISABLE = common dso_local global i32 0, align 4
@ATOM_CRTC2 = common dso_local global i32 0, align 4
@PIXEL_CLOCK_MISC_CRTC_SEL_CRTC2 = common dso_local global i32 0, align 4
@PIXEL_CLOCK_MISC_CRTC_SEL_CRTC1 = common dso_local global i32 0, align 4
@ATOM_EXTERNAL_SS_MASK = common dso_local global i32 0, align 4
@PIXEL_CLOCK_MISC_REF_DIV_SRC = common dso_local global i32 0, align 4
@ATOM_EXT_PLL1 = common dso_local global i32 0, align 4
@PIXEL_CLOCK_V5_MISC_REF_DIV_SRC = common dso_local global i32 0, align 4
@ATOM_ENCODER_MODE_HDMI = common dso_local global i32 0, align 4
@PIXEL_CLOCK_V5_MISC_HDMI_24BPP = common dso_local global i32 0, align 4
@PIXEL_CLOCK_V5_MISC_HDMI_32BPP = common dso_local global i32 0, align 4
@PIXEL_CLOCK_V5_MISC_HDMI_30BPP = common dso_local global i32 0, align 4
@PIXEL_CLOCK_V6_MISC_REF_DIV_SRC = common dso_local global i32 0, align 4
@PIXEL_CLOCK_V6_MISC_HDMI_24BPP = common dso_local global i32 0, align 4
@PIXEL_CLOCK_V6_MISC_HDMI_30BPP_V6 = common dso_local global i32 0, align 4
@PIXEL_CLOCK_V6_MISC_HDMI_36BPP_V6 = common dso_local global i32 0, align 4
@PIXEL_CLOCK_V6_MISC_HDMI_48BPP = common dso_local global i32 0, align 4
@ATOM_ENCODER_MODE_DVI = common dso_local global i32 0, align 4
@PIXEL_CLOCK_V7_MISC_DVI_DUALLINK_EN = common dso_local global i32 0, align 4
@PIXEL_CLOCK_V7_DEEPCOLOR_RATIO_DIS = common dso_local global i32 0, align 4
@PIXEL_CLOCK_V7_DEEPCOLOR_RATIO_5_4 = common dso_local global i32 0, align 4
@PIXEL_CLOCK_V7_DEEPCOLOR_RATIO_3_2 = common dso_local global i32 0, align 4
@PIXEL_CLOCK_V7_DEEPCOLOR_RATIO_2_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unknown table version %d %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_atombios_crtc_program_pll(%struct.drm_crtc* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, %struct.amdgpu_atom_ss* %12) #0 {
  %14 = alloca %struct.drm_crtc*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.amdgpu_atom_ss*, align 8
  %27 = alloca %struct.drm_device*, align 8
  %28 = alloca %struct.amdgpu_device*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %union.set_pixel_clock, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %14, align 8
  store i32 %1, i32* %15, align 4
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  store %struct.amdgpu_atom_ss* %12, %struct.amdgpu_atom_ss** %26, align 8
  %33 = load %struct.drm_crtc*, %struct.drm_crtc** %14, align 8
  %34 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %33, i32 0, i32 0
  %35 = load %struct.drm_device*, %struct.drm_device** %34, align 8
  store %struct.drm_device* %35, %struct.drm_device** %27, align 8
  %36 = load %struct.drm_device*, %struct.drm_device** %27, align 8
  %37 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %36, i32 0, i32 0
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %37, align 8
  store %struct.amdgpu_device* %38, %struct.amdgpu_device** %28, align 8
  %39 = load i32, i32* @COMMAND, align 4
  %40 = load i32, i32* @SetPixelClock, align 4
  %41 = call i32 @GetIndexIntoMasterTable(i32 %39, i32 %40)
  store i32 %41, i32* %31, align 4
  %42 = call i32 @memset(%union.set_pixel_clock* %32, i32 0, i32 56)
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %28, align 8
  %44 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %31, align 4
  %48 = call i32 @amdgpu_atom_parse_cmd_header(i32 %46, i32 %47, i32* %29, i32* %30)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %13
  br label %420

51:                                               ; preds = %13
  %52 = load i32, i32* %29, align 4
  switch i32 %52, label %408 [
    i32 1, label %53
  ]

53:                                               ; preds = %51
  %54 = load i32, i32* %30, align 4
  switch i32 %54, label %403 [
    i32 1, label %55
    i32 2, label %88
    i32 3, label %116
    i32 5, label %173
    i32 6, label %254
    i32 7, label %346
  ]

55:                                               ; preds = %53
  %56 = load i32, i32* %19, align 4
  %57 = load i32, i32* @ATOM_DISABLE, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %420

60:                                               ; preds = %55
  %61 = load i32, i32* %19, align 4
  %62 = sdiv i32 %61, 10
  %63 = call i8* @cpu_to_le16(i32 %62)
  %64 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_11__*
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 7
  store i8* %63, i8** %65, align 8
  %66 = load i32, i32* %20, align 4
  %67 = call i8* @cpu_to_le16(i32 %66)
  %68 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_11__*
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 6
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* %21, align 4
  %71 = call i8* @cpu_to_le16(i32 %70)
  %72 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_11__*
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 5
  store i8* %71, i8** %73, align 8
  %74 = load i32, i32* %22, align 4
  %75 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_11__*
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %23, align 4
  %78 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_11__*
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %16, align 4
  %81 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_11__*
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* %15, align 4
  %84 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_11__*
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_11__*
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 4
  store i32 1, i32* %87, align 8
  br label %407

88:                                               ; preds = %53
  %89 = load i32, i32* %19, align 4
  %90 = sdiv i32 %89, 10
  %91 = call i8* @cpu_to_le16(i32 %90)
  %92 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_12__*
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 7
  store i8* %91, i8** %93, align 8
  %94 = load i32, i32* %20, align 4
  %95 = call i8* @cpu_to_le16(i32 %94)
  %96 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_12__*
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 6
  store i8* %95, i8** %97, align 8
  %98 = load i32, i32* %21, align 4
  %99 = call i8* @cpu_to_le16(i32 %98)
  %100 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_12__*
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 5
  store i8* %99, i8** %101, align 8
  %102 = load i32, i32* %22, align 4
  %103 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_12__*
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* %23, align 4
  %106 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_12__*
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %16, align 4
  %109 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_12__*
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* %15, align 4
  %112 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_12__*
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  %114 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_12__*
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 4
  store i32 1, i32* %115, align 8
  br label %407

116:                                              ; preds = %53
  %117 = load i32, i32* %19, align 4
  %118 = sdiv i32 %117, 10
  %119 = call i8* @cpu_to_le16(i32 %118)
  %120 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_13__*
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 8
  store i8* %119, i8** %121, align 8
  %122 = load i32, i32* %20, align 4
  %123 = call i8* @cpu_to_le16(i32 %122)
  %124 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_13__*
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 7
  store i8* %123, i8** %125, align 8
  %126 = load i32, i32* %21, align 4
  %127 = call i8* @cpu_to_le16(i32 %126)
  %128 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_13__*
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 6
  store i8* %127, i8** %129, align 8
  %130 = load i32, i32* %22, align 4
  %131 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_13__*
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  %133 = load i32, i32* %23, align 4
  %134 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_13__*
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* %16, align 4
  %137 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_13__*
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 8
  %139 = load i32, i32* %15, align 4
  %140 = load i32, i32* @ATOM_CRTC2, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %116
  %143 = load i32, i32* @PIXEL_CLOCK_MISC_CRTC_SEL_CRTC2, align 4
  %144 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_13__*
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 5
  store i32 %143, i32* %145, align 4
  br label %150

146:                                              ; preds = %116
  %147 = load i32, i32* @PIXEL_CLOCK_MISC_CRTC_SEL_CRTC1, align 4
  %148 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_13__*
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 5
  store i32 %147, i32* %149, align 4
  br label %150

150:                                              ; preds = %146, %142
  %151 = load i32, i32* %25, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %166

153:                                              ; preds = %150
  %154 = load %struct.amdgpu_atom_ss*, %struct.amdgpu_atom_ss** %26, align 8
  %155 = getelementptr inbounds %struct.amdgpu_atom_ss, %struct.amdgpu_atom_ss* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @ATOM_EXTERNAL_SS_MASK, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %153
  %161 = load i32, i32* @PIXEL_CLOCK_MISC_REF_DIV_SRC, align 4
  %162 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_13__*
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %160, %153, %150
  %167 = load i32, i32* %18, align 4
  %168 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_13__*
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 3
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* %17, align 4
  %171 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_13__*
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 4
  store i32 %170, i32* %172, align 8
  br label %407

173:                                              ; preds = %53
  %174 = load i32, i32* %15, align 4
  %175 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_14__*
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 8
  %177 = load i32, i32* %19, align 4
  %178 = sdiv i32 %177, 10
  %179 = call i8* @cpu_to_le16(i32 %178)
  %180 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_14__*
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 9
  store i8* %179, i8** %181, align 8
  %182 = load i32, i32* %20, align 4
  %183 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_14__*
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 4
  %185 = load i32, i32* %21, align 4
  %186 = call i8* @cpu_to_le16(i32 %185)
  %187 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_14__*
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 8
  store i8* %186, i8** %188, align 8
  %189 = load i32, i32* %22, align 4
  %190 = mul nsw i32 %189, 100000
  %191 = call i8* @cpu_to_le32(i32 %190)
  %192 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_14__*
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 7
  store i8* %191, i8** %193, align 8
  %194 = load i32, i32* %23, align 4
  %195 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_14__*
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 2
  store i32 %194, i32* %196, align 8
  %197 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_14__*
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 6
  store i32 0, i32* %198, align 8
  %199 = load i32, i32* %25, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %218

201:                                              ; preds = %173
  %202 = load %struct.amdgpu_atom_ss*, %struct.amdgpu_atom_ss** %26, align 8
  %203 = getelementptr inbounds %struct.amdgpu_atom_ss, %struct.amdgpu_atom_ss* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @ATOM_EXTERNAL_SS_MASK, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %218

208:                                              ; preds = %201
  %209 = load i32, i32* %16, align 4
  %210 = load i32, i32* @ATOM_EXT_PLL1, align 4
  %211 = icmp slt i32 %209, %210
  br i1 %211, label %212, label %218

212:                                              ; preds = %208
  %213 = load i32, i32* @PIXEL_CLOCK_V5_MISC_REF_DIV_SRC, align 4
  %214 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_14__*
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 6
  %216 = load i32, i32* %215, align 8
  %217 = or i32 %216, %213
  store i32 %217, i32* %215, align 8
  br label %218

218:                                              ; preds = %212, %208, %201, %173
  %219 = load i32, i32* %17, align 4
  %220 = load i32, i32* @ATOM_ENCODER_MODE_HDMI, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %222, label %244

222:                                              ; preds = %218
  %223 = load i32, i32* %24, align 4
  switch i32 %223, label %225 [
    i32 8, label %224
    i32 10, label %231
    i32 12, label %237
  ]

224:                                              ; preds = %222
  br label %225

225:                                              ; preds = %222, %224
  %226 = load i32, i32* @PIXEL_CLOCK_V5_MISC_HDMI_24BPP, align 4
  %227 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_14__*
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 6
  %229 = load i32, i32* %228, align 8
  %230 = or i32 %229, %226
  store i32 %230, i32* %228, align 8
  br label %243

231:                                              ; preds = %222
  %232 = load i32, i32* @PIXEL_CLOCK_V5_MISC_HDMI_32BPP, align 4
  %233 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_14__*
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 6
  %235 = load i32, i32* %234, align 8
  %236 = or i32 %235, %232
  store i32 %236, i32* %234, align 8
  br label %243

237:                                              ; preds = %222
  %238 = load i32, i32* @PIXEL_CLOCK_V5_MISC_HDMI_30BPP, align 4
  %239 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_14__*
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 6
  %241 = load i32, i32* %240, align 8
  %242 = or i32 %241, %238
  store i32 %242, i32* %240, align 8
  br label %243

243:                                              ; preds = %237, %231, %225
  br label %244

244:                                              ; preds = %243, %218
  %245 = load i32, i32* %18, align 4
  %246 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_14__*
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 3
  store i32 %245, i32* %247, align 4
  %248 = load i32, i32* %17, align 4
  %249 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_14__*
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 4
  store i32 %248, i32* %250, align 8
  %251 = load i32, i32* %16, align 4
  %252 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_14__*
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 5
  store i32 %251, i32* %253, align 4
  br label %407

254:                                              ; preds = %53
  %255 = load i32, i32* %15, align 4
  %256 = shl i32 %255, 24
  %257 = load i32, i32* %19, align 4
  %258 = sdiv i32 %257, 10
  %259 = or i32 %256, %258
  %260 = call i8* @cpu_to_le32(i32 %259)
  %261 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_8__*
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 8
  store i8* %260, i8** %262, align 8
  %263 = load i32, i32* %20, align 4
  %264 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_8__*
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 0
  store i32 %263, i32* %265, align 8
  %266 = load i32, i32* %21, align 4
  %267 = call i8* @cpu_to_le16(i32 %266)
  %268 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_8__*
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 7
  store i8* %267, i8** %269, align 8
  %270 = load i32, i32* %22, align 4
  %271 = mul nsw i32 %270, 100000
  %272 = call i8* @cpu_to_le32(i32 %271)
  %273 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_8__*
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 6
  store i8* %272, i8** %274, align 8
  %275 = load i32, i32* %23, align 4
  %276 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_8__*
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 1
  store i32 %275, i32* %277, align 4
  %278 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_8__*
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 5
  store i32 0, i32* %279, align 4
  %280 = load i32, i32* %25, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %304

282:                                              ; preds = %254
  %283 = load %struct.amdgpu_atom_ss*, %struct.amdgpu_atom_ss** %26, align 8
  %284 = getelementptr inbounds %struct.amdgpu_atom_ss, %struct.amdgpu_atom_ss* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @ATOM_EXTERNAL_SS_MASK, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %304

289:                                              ; preds = %282
  %290 = load i32, i32* %16, align 4
  %291 = load i32, i32* @ATOM_EXT_PLL1, align 4
  %292 = icmp slt i32 %290, %291
  br i1 %292, label %293, label %304

293:                                              ; preds = %289
  %294 = load i32, i32* %17, align 4
  %295 = load i32, i32* %16, align 4
  %296 = call i32 @is_pixel_clock_source_from_pll(i32 %294, i32 %295)
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %304, label %298

298:                                              ; preds = %293
  %299 = load i32, i32* @PIXEL_CLOCK_V6_MISC_REF_DIV_SRC, align 4
  %300 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_8__*
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 5
  %302 = load i32, i32* %301, align 4
  %303 = or i32 %302, %299
  store i32 %303, i32* %301, align 4
  br label %304

304:                                              ; preds = %298, %293, %289, %282, %254
  %305 = load i32, i32* %17, align 4
  %306 = load i32, i32* @ATOM_ENCODER_MODE_HDMI, align 4
  %307 = icmp eq i32 %305, %306
  br i1 %307, label %308, label %336

308:                                              ; preds = %304
  %309 = load i32, i32* %24, align 4
  switch i32 %309, label %311 [
    i32 8, label %310
    i32 10, label %317
    i32 12, label %323
    i32 16, label %329
  ]

310:                                              ; preds = %308
  br label %311

311:                                              ; preds = %308, %310
  %312 = load i32, i32* @PIXEL_CLOCK_V6_MISC_HDMI_24BPP, align 4
  %313 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_8__*
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %313, i32 0, i32 5
  %315 = load i32, i32* %314, align 4
  %316 = or i32 %315, %312
  store i32 %316, i32* %314, align 4
  br label %335

317:                                              ; preds = %308
  %318 = load i32, i32* @PIXEL_CLOCK_V6_MISC_HDMI_30BPP_V6, align 4
  %319 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_8__*
  %320 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %319, i32 0, i32 5
  %321 = load i32, i32* %320, align 4
  %322 = or i32 %321, %318
  store i32 %322, i32* %320, align 4
  br label %335

323:                                              ; preds = %308
  %324 = load i32, i32* @PIXEL_CLOCK_V6_MISC_HDMI_36BPP_V6, align 4
  %325 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_8__*
  %326 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %325, i32 0, i32 5
  %327 = load i32, i32* %326, align 4
  %328 = or i32 %327, %324
  store i32 %328, i32* %326, align 4
  br label %335

329:                                              ; preds = %308
  %330 = load i32, i32* @PIXEL_CLOCK_V6_MISC_HDMI_48BPP, align 4
  %331 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_8__*
  %332 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %331, i32 0, i32 5
  %333 = load i32, i32* %332, align 4
  %334 = or i32 %333, %330
  store i32 %334, i32* %332, align 4
  br label %335

335:                                              ; preds = %329, %323, %317, %311
  br label %336

336:                                              ; preds = %335, %304
  %337 = load i32, i32* %18, align 4
  %338 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_8__*
  %339 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %338, i32 0, i32 2
  store i32 %337, i32* %339, align 8
  %340 = load i32, i32* %17, align 4
  %341 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_8__*
  %342 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %341, i32 0, i32 3
  store i32 %340, i32* %342, align 4
  %343 = load i32, i32* %16, align 4
  %344 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_8__*
  %345 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %344, i32 0, i32 4
  store i32 %343, i32* %345, align 8
  br label %407

346:                                              ; preds = %53
  %347 = load i32, i32* %19, align 4
  %348 = mul nsw i32 %347, 10
  %349 = call i8* @cpu_to_le32(i32 %348)
  %350 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_9__*
  %351 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %350, i32 0, i32 6
  store i8* %349, i8** %351, align 8
  %352 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_9__*
  %353 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %352, i32 0, i32 5
  store i32 0, i32* %353, align 4
  %354 = load i32, i32* %17, align 4
  %355 = load i32, i32* @ATOM_ENCODER_MODE_DVI, align 4
  %356 = icmp eq i32 %354, %355
  br i1 %356, label %357, label %366

357:                                              ; preds = %346
  %358 = load i32, i32* %19, align 4
  %359 = icmp sgt i32 %358, 165000
  br i1 %359, label %360, label %366

360:                                              ; preds = %357
  %361 = load i32, i32* @PIXEL_CLOCK_V7_MISC_DVI_DUALLINK_EN, align 4
  %362 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_9__*
  %363 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %362, i32 0, i32 5
  %364 = load i32, i32* %363, align 4
  %365 = or i32 %364, %361
  store i32 %365, i32* %363, align 4
  br label %366

366:                                              ; preds = %360, %357, %346
  %367 = load i32, i32* %15, align 4
  %368 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_9__*
  %369 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %368, i32 0, i32 0
  store i32 %367, i32* %369, align 8
  %370 = load i32, i32* %17, align 4
  %371 = load i32, i32* @ATOM_ENCODER_MODE_HDMI, align 4
  %372 = icmp eq i32 %370, %371
  br i1 %372, label %373, label %393

373:                                              ; preds = %366
  %374 = load i32, i32* %24, align 4
  switch i32 %374, label %376 [
    i32 8, label %375
    i32 10, label %380
    i32 12, label %384
    i32 16, label %388
  ]

375:                                              ; preds = %373
  br label %376

376:                                              ; preds = %373, %375
  %377 = load i32, i32* @PIXEL_CLOCK_V7_DEEPCOLOR_RATIO_DIS, align 4
  %378 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_9__*
  %379 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %378, i32 0, i32 4
  store i32 %377, i32* %379, align 8
  br label %392

380:                                              ; preds = %373
  %381 = load i32, i32* @PIXEL_CLOCK_V7_DEEPCOLOR_RATIO_5_4, align 4
  %382 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_9__*
  %383 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %382, i32 0, i32 4
  store i32 %381, i32* %383, align 8
  br label %392

384:                                              ; preds = %373
  %385 = load i32, i32* @PIXEL_CLOCK_V7_DEEPCOLOR_RATIO_3_2, align 4
  %386 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_9__*
  %387 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %386, i32 0, i32 4
  store i32 %385, i32* %387, align 8
  br label %392

388:                                              ; preds = %373
  %389 = load i32, i32* @PIXEL_CLOCK_V7_DEEPCOLOR_RATIO_2_1, align 4
  %390 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_9__*
  %391 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %390, i32 0, i32 4
  store i32 %389, i32* %391, align 8
  br label %392

392:                                              ; preds = %388, %384, %380, %376
  br label %393

393:                                              ; preds = %392, %366
  %394 = load i32, i32* %18, align 4
  %395 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_9__*
  %396 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %395, i32 0, i32 1
  store i32 %394, i32* %396, align 4
  %397 = load i32, i32* %17, align 4
  %398 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_9__*
  %399 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %398, i32 0, i32 2
  store i32 %397, i32* %399, align 8
  %400 = load i32, i32* %16, align 4
  %401 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_9__*
  %402 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %401, i32 0, i32 3
  store i32 %400, i32* %402, align 4
  br label %407

403:                                              ; preds = %53
  %404 = load i32, i32* %29, align 4
  %405 = load i32, i32* %30, align 4
  %406 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %404, i32 %405)
  br label %420

407:                                              ; preds = %393, %336, %244, %166, %88, %60
  br label %412

408:                                              ; preds = %51
  %409 = load i32, i32* %29, align 4
  %410 = load i32, i32* %30, align 4
  %411 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %409, i32 %410)
  br label %420

412:                                              ; preds = %407
  %413 = load %struct.amdgpu_device*, %struct.amdgpu_device** %28, align 8
  %414 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %413, i32 0, i32 0
  %415 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 4
  %417 = load i32, i32* %31, align 4
  %418 = bitcast %union.set_pixel_clock* %32 to i32*
  %419 = call i32 @amdgpu_atom_execute_table(i32 %416, i32 %417, i32* %418)
  br label %420

420:                                              ; preds = %412, %408, %403, %59, %50
  ret void
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @memset(%union.set_pixel_clock*, i32, i32) #1

declare dso_local i32 @amdgpu_atom_parse_cmd_header(i32, i32, i32*, i32*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @is_pixel_clock_source_from_pll(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

declare dso_local i32 @amdgpu_atom_execute_table(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
