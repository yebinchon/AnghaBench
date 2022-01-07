; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_cs.c_r600_cs_common_vline_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_cs.c_r600_cs_common_vline_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_cs_parser = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }
%struct.drm_crtc = type { i32 }
%struct.radeon_crtc = type { i32 }
%struct.radeon_cs_packet = type { i64, i64, i32, i32 }

@RADEON_PACKET_TYPE3 = common dso_local global i64 0, align 8
@PACKET3_WAIT_REG_MEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"vline wait missing WAIT_REG_MEM segment\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"vline WAIT_REG_MEM waiting on MEM instead of REG\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"vline WAIT_REG_MEM waiting on PFP instead of ME\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"vline WAIT_REG_MEM function not equal\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"vline WAIT_REG_MEM bad reg\0A\00", align 1
@RADEON_VLINE_STAT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"vline WAIT_REG_MEM bad bit mask\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"cannot find crtc %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@R600_CP_PACKET0_REG_MASK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"unknown crtc reloc\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r600_cs_common_vline_parse(%struct.radeon_cs_parser* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_cs_parser*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.drm_crtc*, align 8
  %9 = alloca %struct.radeon_crtc*, align 8
  %10 = alloca %struct.radeon_cs_packet, align 8
  %11 = alloca %struct.radeon_cs_packet, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.radeon_cs_parser* %0, %struct.radeon_cs_parser** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %19 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %20 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %18, align 8
  %23 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %24 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %25 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @radeon_cs_packet_parse(%struct.radeon_cs_parser* %23, %struct.radeon_cs_packet* %11, i32 %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %4, align 4
  br label %257

32:                                               ; preds = %3
  %33 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %11, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @RADEON_PACKET_TYPE3, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %11, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PACKET3_WAIT_REG_MEM, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %37, %32
  %43 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %257

46:                                               ; preds = %37
  %47 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %48 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %11, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  %51 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %47, i32 %50)
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* %17, align 4
  %53 = and i32 %52, 16
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %257

59:                                               ; preds = %46
  %60 = load i32, i32* %17, align 4
  %61 = and i32 %60, 256
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %257

67:                                               ; preds = %59
  %68 = load i32, i32* %17, align 4
  %69 = and i32 %68, 7
  %70 = icmp ne i32 %69, 3
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %257

75:                                               ; preds = %67
  %76 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %77 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %11, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 2
  %80 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %76, i32 %79)
  %81 = shl i32 %80, 2
  %82 = load i32*, i32** %7, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %81, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %75
  %87 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %257

90:                                               ; preds = %75
  %91 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %92 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %11, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 5
  %95 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %91, i32 %94)
  %96 = load i32, i32* @RADEON_VLINE_STAT, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %90
  %99 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %257

102:                                              ; preds = %90
  %103 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %104 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %105 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %11, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %106, %108
  %110 = add nsw i32 %109, 2
  %111 = call i32 @radeon_cs_packet_parse(%struct.radeon_cs_parser* %103, %struct.radeon_cs_packet* %10, i32 %110)
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %102
  %115 = load i32, i32* %13, align 4
  store i32 %115, i32* %4, align 4
  br label %257

116:                                              ; preds = %102
  %117 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %118 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sub nsw i32 %119, 2
  store i32 %120, i32* %15, align 4
  %121 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %11, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 2
  %124 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %125 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %126, %123
  store i32 %127, i32* %125, align 8
  %128 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %10, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, 2
  %131 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %132 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, %130
  store i32 %134, i32* %132, align 8
  %135 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %136 = load i32, i32* %15, align 4
  %137 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %135, i32 %136)
  store i32 %137, i32* %14, align 4
  %138 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %139 = load i32, i32* %15, align 4
  %140 = add nsw i32 %139, 2
  %141 = add nsw i32 %140, 7
  %142 = add nsw i32 %141, 1
  %143 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %138, i32 %142)
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %14, align 4
  %145 = call i32 @R600_CP_PACKET0_GET_REG(i32 %144)
  store i32 %145, i32* %16, align 4
  %146 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %147 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %146, i32 0, i32 2
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %152 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %12, align 4
  %155 = call %struct.drm_crtc* @drm_crtc_find(i32 %150, i32 %153, i32 %154)
  store %struct.drm_crtc* %155, %struct.drm_crtc** %8, align 8
  %156 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %157 = icmp ne %struct.drm_crtc* %156, null
  br i1 %157, label %163, label %158

158:                                              ; preds = %116
  %159 = load i32, i32* %12, align 4
  %160 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %159)
  %161 = load i32, i32* @ENOENT, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %4, align 4
  br label %257

163:                                              ; preds = %116
  %164 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %165 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %164)
  store %struct.radeon_crtc* %165, %struct.radeon_crtc** %9, align 8
  %166 = load %struct.radeon_crtc*, %struct.radeon_crtc** %9, align 8
  %167 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %12, align 4
  %169 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %170 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %216, label %173

173:                                              ; preds = %163
  %174 = call i32 @PACKET2(i32 0)
  %175 = load i32*, i32** %18, align 8
  %176 = load i32, i32* %15, align 4
  %177 = add nsw i32 %176, 2
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %175, i64 %178
  store volatile i32 %174, i32* %179, align 4
  %180 = call i32 @PACKET2(i32 0)
  %181 = load i32*, i32** %18, align 8
  %182 = load i32, i32* %15, align 4
  %183 = add nsw i32 %182, 3
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %181, i64 %184
  store volatile i32 %180, i32* %185, align 4
  %186 = call i32 @PACKET2(i32 0)
  %187 = load i32*, i32** %18, align 8
  %188 = load i32, i32* %15, align 4
  %189 = add nsw i32 %188, 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %187, i64 %190
  store volatile i32 %186, i32* %191, align 4
  %192 = call i32 @PACKET2(i32 0)
  %193 = load i32*, i32** %18, align 8
  %194 = load i32, i32* %15, align 4
  %195 = add nsw i32 %194, 5
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %193, i64 %196
  store volatile i32 %192, i32* %197, align 4
  %198 = call i32 @PACKET2(i32 0)
  %199 = load i32*, i32** %18, align 8
  %200 = load i32, i32* %15, align 4
  %201 = add nsw i32 %200, 6
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %199, i64 %202
  store volatile i32 %198, i32* %203, align 4
  %204 = call i32 @PACKET2(i32 0)
  %205 = load i32*, i32** %18, align 8
  %206 = load i32, i32* %15, align 4
  %207 = add nsw i32 %206, 7
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %205, i64 %208
  store volatile i32 %204, i32* %209, align 4
  %210 = call i32 @PACKET2(i32 0)
  %211 = load i32*, i32** %18, align 8
  %212 = load i32, i32* %15, align 4
  %213 = add nsw i32 %212, 8
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %211, i64 %214
  store volatile i32 %210, i32* %215, align 4
  br label %256

216:                                              ; preds = %163
  %217 = load i32, i32* %16, align 4
  %218 = load i32*, i32** %6, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 0
  %220 = load i32, i32* %219, align 4
  %221 = icmp eq i32 %217, %220
  br i1 %221, label %222, label %251

222:                                              ; preds = %216
  %223 = load i32, i32* @R600_CP_PACKET0_REG_MASK, align 4
  %224 = xor i32 %223, -1
  %225 = load i32, i32* %14, align 4
  %226 = and i32 %225, %224
  store i32 %226, i32* %14, align 4
  %227 = load i32*, i32** %6, align 8
  %228 = load i32, i32* %12, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = ashr i32 %231, 2
  %233 = load i32, i32* %14, align 4
  %234 = or i32 %233, %232
  store i32 %234, i32* %14, align 4
  %235 = load i32, i32* %14, align 4
  %236 = load i32*, i32** %18, align 8
  %237 = load i32, i32* %15, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  store volatile i32 %235, i32* %239, align 4
  %240 = load i32*, i32** %7, align 8
  %241 = load i32, i32* %12, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = ashr i32 %244, 2
  %246 = load i32*, i32** %18, align 8
  %247 = load i32, i32* %15, align 4
  %248 = add nsw i32 %247, 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %246, i64 %249
  store volatile i32 %245, i32* %250, align 4
  br label %255

251:                                              ; preds = %216
  %252 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %253 = load i32, i32* @EINVAL, align 4
  %254 = sub nsw i32 0, %253
  store i32 %254, i32* %4, align 4
  br label %257

255:                                              ; preds = %222
  br label %256

256:                                              ; preds = %255, %173
  store i32 0, i32* %4, align 4
  br label %257

257:                                              ; preds = %256, %251, %158, %114, %98, %86, %71, %63, %55, %42, %30
  %258 = load i32, i32* %4, align 4
  ret i32 %258
}

declare dso_local i32 @radeon_cs_packet_parse(%struct.radeon_cs_parser*, %struct.radeon_cs_packet*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @radeon_get_ib_value(%struct.radeon_cs_parser*, i32) #1

declare dso_local i32 @R600_CP_PACKET0_GET_REG(i32) #1

declare dso_local %struct.drm_crtc* @drm_crtc_find(i32, i32, i32) #1

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @PACKET2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
