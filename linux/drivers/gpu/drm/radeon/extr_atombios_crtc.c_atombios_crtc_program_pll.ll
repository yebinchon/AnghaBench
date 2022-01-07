; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_crtc.c_atombios_crtc_program_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_crtc.c_atombios_crtc_program_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.radeon_atom_ss = type { i32 }
%union.set_pixel_clock = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i8*, i8*, i8* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i8*, i8*, i8* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i8* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i8* }

@COMMAND = common dso_local global i32 0, align 4
@SetPixelClock = common dso_local global i32 0, align 4
@ATOM_DISABLE = common dso_local global i32 0, align 4
@ATOM_CRTC2 = common dso_local global i32 0, align 4
@PIXEL_CLOCK_MISC_CRTC_SEL_CRTC2 = common dso_local global i32 0, align 4
@PIXEL_CLOCK_MISC_CRTC_SEL_CRTC1 = common dso_local global i32 0, align 4
@ATOM_EXTERNAL_SS_MASK = common dso_local global i32 0, align 4
@PIXEL_CLOCK_MISC_REF_DIV_SRC = common dso_local global i32 0, align 4
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
@.str = private unnamed_addr constant [29 x i8] c"Unknown table version %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.radeon_atom_ss*)* @atombios_crtc_program_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atombios_crtc_program_pll(%struct.drm_crtc* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, %struct.radeon_atom_ss* %12) #0 {
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
  %26 = alloca %struct.radeon_atom_ss*, align 8
  %27 = alloca %struct.drm_device*, align 8
  %28 = alloca %struct.radeon_device*, align 8
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
  store %struct.radeon_atom_ss* %12, %struct.radeon_atom_ss** %26, align 8
  %33 = load %struct.drm_crtc*, %struct.drm_crtc** %14, align 8
  %34 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %33, i32 0, i32 0
  %35 = load %struct.drm_device*, %struct.drm_device** %34, align 8
  store %struct.drm_device* %35, %struct.drm_device** %27, align 8
  %36 = load %struct.drm_device*, %struct.drm_device** %27, align 8
  %37 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %36, i32 0, i32 0
  %38 = load %struct.radeon_device*, %struct.radeon_device** %37, align 8
  store %struct.radeon_device* %38, %struct.radeon_device** %28, align 8
  %39 = load i32, i32* @COMMAND, align 4
  %40 = load i32, i32* @SetPixelClock, align 4
  %41 = call i32 @GetIndexIntoMasterTable(i32 %39, i32 %40)
  store i32 %41, i32* %31, align 4
  %42 = call i32 @memset(%union.set_pixel_clock* %32, i32 0, i32 56)
  %43 = load %struct.radeon_device*, %struct.radeon_device** %28, align 8
  %44 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %31, align 4
  %48 = call i32 @atom_parse_cmd_header(i32 %46, i32 %47, i32* %29, i32* %30)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %13
  br label %350

51:                                               ; preds = %13
  %52 = load i32, i32* %29, align 4
  switch i32 %52, label %338 [
    i32 1, label %53
  ]

53:                                               ; preds = %51
  %54 = load i32, i32* %30, align 4
  switch i32 %54, label %333 [
    i32 1, label %55
    i32 2, label %88
    i32 3, label %116
    i32 5, label %173
    i32 6, label %250
  ]

55:                                               ; preds = %53
  %56 = load i32, i32* %19, align 4
  %57 = load i32, i32* @ATOM_DISABLE, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %350

60:                                               ; preds = %55
  %61 = load i32, i32* %19, align 4
  %62 = sdiv i32 %61, 10
  %63 = call i8* @cpu_to_le16(i32 %62)
  %64 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_8__*
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 7
  store i8* %63, i8** %65, align 8
  %66 = load i32, i32* %20, align 4
  %67 = call i8* @cpu_to_le16(i32 %66)
  %68 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_8__*
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 6
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* %21, align 4
  %71 = call i8* @cpu_to_le16(i32 %70)
  %72 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_8__*
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 5
  store i8* %71, i8** %73, align 8
  %74 = load i32, i32* %22, align 4
  %75 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_8__*
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %23, align 4
  %78 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_8__*
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %16, align 4
  %81 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_8__*
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* %15, align 4
  %84 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_8__*
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_8__*
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 4
  store i32 1, i32* %87, align 8
  br label %337

88:                                               ; preds = %53
  %89 = load i32, i32* %19, align 4
  %90 = sdiv i32 %89, 10
  %91 = call i8* @cpu_to_le16(i32 %90)
  %92 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_9__*
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 7
  store i8* %91, i8** %93, align 8
  %94 = load i32, i32* %20, align 4
  %95 = call i8* @cpu_to_le16(i32 %94)
  %96 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_9__*
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 6
  store i8* %95, i8** %97, align 8
  %98 = load i32, i32* %21, align 4
  %99 = call i8* @cpu_to_le16(i32 %98)
  %100 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_9__*
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 5
  store i8* %99, i8** %101, align 8
  %102 = load i32, i32* %22, align 4
  %103 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_9__*
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* %23, align 4
  %106 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_9__*
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %16, align 4
  %109 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_9__*
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* %15, align 4
  %112 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_9__*
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  %114 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_9__*
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 4
  store i32 1, i32* %115, align 8
  br label %337

116:                                              ; preds = %53
  %117 = load i32, i32* %19, align 4
  %118 = sdiv i32 %117, 10
  %119 = call i8* @cpu_to_le16(i32 %118)
  %120 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_10__*
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 8
  store i8* %119, i8** %121, align 8
  %122 = load i32, i32* %20, align 4
  %123 = call i8* @cpu_to_le16(i32 %122)
  %124 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_10__*
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 7
  store i8* %123, i8** %125, align 8
  %126 = load i32, i32* %21, align 4
  %127 = call i8* @cpu_to_le16(i32 %126)
  %128 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_10__*
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 6
  store i8* %127, i8** %129, align 8
  %130 = load i32, i32* %22, align 4
  %131 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_10__*
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  %133 = load i32, i32* %23, align 4
  %134 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_10__*
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* %16, align 4
  %137 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_10__*
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 8
  %139 = load i32, i32* %15, align 4
  %140 = load i32, i32* @ATOM_CRTC2, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %116
  %143 = load i32, i32* @PIXEL_CLOCK_MISC_CRTC_SEL_CRTC2, align 4
  %144 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_10__*
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 5
  store i32 %143, i32* %145, align 4
  br label %150

146:                                              ; preds = %116
  %147 = load i32, i32* @PIXEL_CLOCK_MISC_CRTC_SEL_CRTC1, align 4
  %148 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_10__*
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 5
  store i32 %147, i32* %149, align 4
  br label %150

150:                                              ; preds = %146, %142
  %151 = load i32, i32* %25, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %166

153:                                              ; preds = %150
  %154 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %26, align 8
  %155 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @ATOM_EXTERNAL_SS_MASK, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %153
  %161 = load i32, i32* @PIXEL_CLOCK_MISC_REF_DIV_SRC, align 4
  %162 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_10__*
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %160, %153, %150
  %167 = load i32, i32* %18, align 4
  %168 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_10__*
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 3
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* %17, align 4
  %171 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_10__*
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 4
  store i32 %170, i32* %172, align 8
  br label %337

173:                                              ; preds = %53
  %174 = load i32, i32* %15, align 4
  %175 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_11__*
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 8
  %177 = load i32, i32* %19, align 4
  %178 = sdiv i32 %177, 10
  %179 = call i8* @cpu_to_le16(i32 %178)
  %180 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_11__*
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 9
  store i8* %179, i8** %181, align 8
  %182 = load i32, i32* %20, align 4
  %183 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_11__*
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 4
  %185 = load i32, i32* %21, align 4
  %186 = call i8* @cpu_to_le16(i32 %185)
  %187 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_11__*
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 8
  store i8* %186, i8** %188, align 8
  %189 = load i32, i32* %22, align 4
  %190 = mul nsw i32 %189, 100000
  %191 = call i8* @cpu_to_le32(i32 %190)
  %192 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_11__*
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 7
  store i8* %191, i8** %193, align 8
  %194 = load i32, i32* %23, align 4
  %195 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_11__*
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 2
  store i32 %194, i32* %196, align 8
  %197 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_11__*
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 6
  store i32 0, i32* %198, align 8
  %199 = load i32, i32* %25, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %214

201:                                              ; preds = %173
  %202 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %26, align 8
  %203 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @ATOM_EXTERNAL_SS_MASK, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %201
  %209 = load i32, i32* @PIXEL_CLOCK_V5_MISC_REF_DIV_SRC, align 4
  %210 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_11__*
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 6
  %212 = load i32, i32* %211, align 8
  %213 = or i32 %212, %209
  store i32 %213, i32* %211, align 8
  br label %214

214:                                              ; preds = %208, %201, %173
  %215 = load i32, i32* %17, align 4
  %216 = load i32, i32* @ATOM_ENCODER_MODE_HDMI, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %240

218:                                              ; preds = %214
  %219 = load i32, i32* %24, align 4
  switch i32 %219, label %221 [
    i32 8, label %220
    i32 10, label %227
    i32 12, label %233
  ]

220:                                              ; preds = %218
  br label %221

221:                                              ; preds = %218, %220
  %222 = load i32, i32* @PIXEL_CLOCK_V5_MISC_HDMI_24BPP, align 4
  %223 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_11__*
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 6
  %225 = load i32, i32* %224, align 8
  %226 = or i32 %225, %222
  store i32 %226, i32* %224, align 8
  br label %239

227:                                              ; preds = %218
  %228 = load i32, i32* @PIXEL_CLOCK_V5_MISC_HDMI_32BPP, align 4
  %229 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_11__*
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 6
  %231 = load i32, i32* %230, align 8
  %232 = or i32 %231, %228
  store i32 %232, i32* %230, align 8
  br label %239

233:                                              ; preds = %218
  %234 = load i32, i32* @PIXEL_CLOCK_V5_MISC_HDMI_30BPP, align 4
  %235 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_11__*
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 6
  %237 = load i32, i32* %236, align 8
  %238 = or i32 %237, %234
  store i32 %238, i32* %236, align 8
  br label %239

239:                                              ; preds = %233, %227, %221
  br label %240

240:                                              ; preds = %239, %214
  %241 = load i32, i32* %18, align 4
  %242 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_11__*
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 3
  store i32 %241, i32* %243, align 4
  %244 = load i32, i32* %17, align 4
  %245 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_11__*
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 4
  store i32 %244, i32* %246, align 8
  %247 = load i32, i32* %16, align 4
  %248 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_11__*
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 5
  store i32 %247, i32* %249, align 4
  br label %337

250:                                              ; preds = %53
  %251 = load i32, i32* %15, align 4
  %252 = shl i32 %251, 24
  %253 = load i32, i32* %19, align 4
  %254 = sdiv i32 %253, 10
  %255 = or i32 %252, %254
  %256 = call i8* @cpu_to_le32(i32 %255)
  %257 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_12__*
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 8
  store i8* %256, i8** %258, align 8
  %259 = load i32, i32* %20, align 4
  %260 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_12__*
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 0
  store i32 %259, i32* %261, align 8
  %262 = load i32, i32* %21, align 4
  %263 = call i8* @cpu_to_le16(i32 %262)
  %264 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_12__*
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 7
  store i8* %263, i8** %265, align 8
  %266 = load i32, i32* %22, align 4
  %267 = mul nsw i32 %266, 100000
  %268 = call i8* @cpu_to_le32(i32 %267)
  %269 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_12__*
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 6
  store i8* %268, i8** %270, align 8
  %271 = load i32, i32* %23, align 4
  %272 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_12__*
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 1
  store i32 %271, i32* %273, align 4
  %274 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_12__*
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %274, i32 0, i32 5
  store i32 0, i32* %275, align 4
  %276 = load i32, i32* %25, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %291

278:                                              ; preds = %250
  %279 = load %struct.radeon_atom_ss*, %struct.radeon_atom_ss** %26, align 8
  %280 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @ATOM_EXTERNAL_SS_MASK, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %291

285:                                              ; preds = %278
  %286 = load i32, i32* @PIXEL_CLOCK_V6_MISC_REF_DIV_SRC, align 4
  %287 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_12__*
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 5
  %289 = load i32, i32* %288, align 4
  %290 = or i32 %289, %286
  store i32 %290, i32* %288, align 4
  br label %291

291:                                              ; preds = %285, %278, %250
  %292 = load i32, i32* %17, align 4
  %293 = load i32, i32* @ATOM_ENCODER_MODE_HDMI, align 4
  %294 = icmp eq i32 %292, %293
  br i1 %294, label %295, label %323

295:                                              ; preds = %291
  %296 = load i32, i32* %24, align 4
  switch i32 %296, label %298 [
    i32 8, label %297
    i32 10, label %304
    i32 12, label %310
    i32 16, label %316
  ]

297:                                              ; preds = %295
  br label %298

298:                                              ; preds = %295, %297
  %299 = load i32, i32* @PIXEL_CLOCK_V6_MISC_HDMI_24BPP, align 4
  %300 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_12__*
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %300, i32 0, i32 5
  %302 = load i32, i32* %301, align 4
  %303 = or i32 %302, %299
  store i32 %303, i32* %301, align 4
  br label %322

304:                                              ; preds = %295
  %305 = load i32, i32* @PIXEL_CLOCK_V6_MISC_HDMI_30BPP_V6, align 4
  %306 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_12__*
  %307 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %306, i32 0, i32 5
  %308 = load i32, i32* %307, align 4
  %309 = or i32 %308, %305
  store i32 %309, i32* %307, align 4
  br label %322

310:                                              ; preds = %295
  %311 = load i32, i32* @PIXEL_CLOCK_V6_MISC_HDMI_36BPP_V6, align 4
  %312 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_12__*
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i32 0, i32 5
  %314 = load i32, i32* %313, align 4
  %315 = or i32 %314, %311
  store i32 %315, i32* %313, align 4
  br label %322

316:                                              ; preds = %295
  %317 = load i32, i32* @PIXEL_CLOCK_V6_MISC_HDMI_48BPP, align 4
  %318 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_12__*
  %319 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %318, i32 0, i32 5
  %320 = load i32, i32* %319, align 4
  %321 = or i32 %320, %317
  store i32 %321, i32* %319, align 4
  br label %322

322:                                              ; preds = %316, %310, %304, %298
  br label %323

323:                                              ; preds = %322, %291
  %324 = load i32, i32* %18, align 4
  %325 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_12__*
  %326 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %325, i32 0, i32 2
  store i32 %324, i32* %326, align 8
  %327 = load i32, i32* %17, align 4
  %328 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_12__*
  %329 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %328, i32 0, i32 3
  store i32 %327, i32* %329, align 4
  %330 = load i32, i32* %16, align 4
  %331 = bitcast %union.set_pixel_clock* %32 to %struct.TYPE_12__*
  %332 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %331, i32 0, i32 4
  store i32 %330, i32* %332, align 8
  br label %337

333:                                              ; preds = %53
  %334 = load i32, i32* %29, align 4
  %335 = load i32, i32* %30, align 4
  %336 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %334, i32 %335)
  br label %350

337:                                              ; preds = %323, %240, %166, %88, %60
  br label %342

338:                                              ; preds = %51
  %339 = load i32, i32* %29, align 4
  %340 = load i32, i32* %30, align 4
  %341 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %339, i32 %340)
  br label %350

342:                                              ; preds = %337
  %343 = load %struct.radeon_device*, %struct.radeon_device** %28, align 8
  %344 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = load i32, i32* %31, align 4
  %348 = bitcast %union.set_pixel_clock* %32 to i32*
  %349 = call i32 @atom_execute_table(i32 %346, i32 %347, i32* %348)
  br label %350

350:                                              ; preds = %342, %338, %333, %59, %50
  ret void
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @memset(%union.set_pixel_clock*, i32, i32) #1

declare dso_local i32 @atom_parse_cmd_header(i32, i32, i32*, i32*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

declare dso_local i32 @atom_execute_table(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
