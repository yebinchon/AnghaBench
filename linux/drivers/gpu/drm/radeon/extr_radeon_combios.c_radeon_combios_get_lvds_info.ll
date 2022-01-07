; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_combios_get_lvds_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_combios_get_lvds_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_encoder_lvds = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.radeon_encoder = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }

@COMBIOS_LCD_INFO_TABLE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Panel ID String: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Panel Size %dx%d\0A\00", align 1
@u16 = common dso_local global i32 0, align 4
@RADEON_LVDS_PANEL_FORMAT = common dso_local global i32 0, align 4
@RADEON_LVDS_PANEL_TYPE = common dso_local global i32 0, align 4
@RADEON_LVDS_NO_FM = common dso_local global i32 0, align 4
@RADEON_LVDS_2_GREY = common dso_local global i32 0, align 4
@RADEON_LVDS_4_GREY = common dso_local global i32 0, align 4
@RADEON_LVDS_FP_POL_LOW = common dso_local global i32 0, align 4
@RADEON_LVDS_LP_POL_LOW = common dso_local global i32 0, align 4
@RADEON_LVDS_DTM_POL_LOW = common dso_local global i32 0, align 4
@RADEON_LVDS_BL_CLK_SEL = common dso_local global i32 0, align 4
@CRTC_INTERLACE_HALVE_V = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"No panel info found in BIOS\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.radeon_encoder_lvds* @radeon_combios_get_lvds_info(%struct.radeon_encoder* %0) #0 {
  %2 = alloca %struct.radeon_encoder_lvds*, align 8
  %3 = alloca %struct.radeon_encoder*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [30 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.radeon_encoder_lvds*, align 8
  %12 = alloca i32, align 4
  store %struct.radeon_encoder* %0, %struct.radeon_encoder** %3, align 8
  %13 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %14 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %4, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load %struct.radeon_device*, %struct.radeon_device** %18, align 8
  store %struct.radeon_device* %19, %struct.radeon_device** %5, align 8
  store %struct.radeon_encoder_lvds* null, %struct.radeon_encoder_lvds** %11, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %21 = load i32, i32* @COMBIOS_LCD_INFO_TABLE, align 4
  %22 = call i32 @combios_get_table_offset(%struct.drm_device* %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %378

25:                                               ; preds = %1
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.radeon_encoder_lvds* @kzalloc(i32 88, i32 %26)
  store %struct.radeon_encoder_lvds* %27, %struct.radeon_encoder_lvds** %11, align 8
  %28 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %29 = icmp ne %struct.radeon_encoder_lvds* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store %struct.radeon_encoder_lvds* null, %struct.radeon_encoder_lvds** %2, align 8
  br label %394

31:                                               ; preds = %25
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %45, %31
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 24
  br i1 %34, label %35, label %48

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %36, %37
  %39 = add nsw i32 %38, 1
  %40 = call i32 @RBIOS8(i32 %39)
  %41 = trunc i32 %40 to i8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [30 x i8], [30 x i8]* %8, i64 0, i64 %43
  store i8 %41, i8* %44, align 1
  br label %45

45:                                               ; preds = %35
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %32

48:                                               ; preds = %32
  %49 = getelementptr inbounds [30 x i8], [30 x i8]* %8, i64 0, i64 24
  store i8 0, i8* %49, align 8
  %50 = getelementptr inbounds [30 x i8], [30 x i8]* %8, i64 0, i64 0
  %51 = call i32 (i8*, ...) @DRM_INFO(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %50)
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 25
  %54 = call i32 @RBIOS16(i32 %53)
  %55 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %56 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %55, i32 0, i32 9
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 27
  %60 = call i32 @RBIOS16(i32 %59)
  %61 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %62 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %61, i32 0, i32 9
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  %64 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %65 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %64, i32 0, i32 9
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %69 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %68, i32 0, i32 9
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i8*, ...) @DRM_INFO(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %71)
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 44
  %75 = call i32 @RBIOS16(i32 %74)
  %76 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %77 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @u16, align 4
  %79 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %80 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @min_t(i32 %78, i32 %81, i32 2000)
  %83 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %84 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 36
  %87 = call i32 @RBIOS8(i32 %86)
  %88 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %89 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 56
  %92 = call i32 @RBIOS16(i32 %91)
  %93 = and i32 %92, 15
  %94 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %95 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 56
  %98 = call i32 @RBIOS16(i32 %97)
  %99 = ashr i32 %98, 4
  %100 = and i32 %99, 15
  %101 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %102 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 46
  %105 = call i32 @RBIOS16(i32 %104)
  %106 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %107 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 48
  %110 = call i32 @RBIOS8(i32 %109)
  %111 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %112 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %111, i32 0, i32 5
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, 49
  %115 = call i32 @RBIOS16(i32 %114)
  %116 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %117 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %116, i32 0, i32 6
  store i32 %115, i32* %117, align 8
  %118 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %119 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %48
  %123 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %124 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 8
  %126 = icmp sgt i32 %125, 3
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %129 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %128, i32 0, i32 7
  store i32 1, i32* %129, align 4
  br label %130

130:                                              ; preds = %127, %122, %48
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 57
  %133 = call i32 @RBIOS32(i32 %132)
  store i32 %133, i32* %7, align 4
  %134 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %135 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %134, i32 0, i32 8
  store i32 65280, i32* %135, align 8
  %136 = load i32, i32* %7, align 4
  %137 = and i32 %136, 1
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %130
  %140 = load i32, i32* @RADEON_LVDS_PANEL_FORMAT, align 4
  %141 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %142 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %141, i32 0, i32 8
  %143 = load i32, i32* %142, align 8
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 8
  br label %145

145:                                              ; preds = %139, %130
  %146 = load i32, i32* %7, align 4
  %147 = ashr i32 %146, 4
  %148 = and i32 %147, 1
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %145
  %151 = load i32, i32* @RADEON_LVDS_PANEL_TYPE, align 4
  %152 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %153 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %152, i32 0, i32 8
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 8
  br label %156

156:                                              ; preds = %150, %145
  %157 = load i32, i32* %7, align 4
  %158 = ashr i32 %157, 8
  %159 = and i32 %158, 7
  switch i32 %159, label %178 [
    i32 0, label %160
    i32 1, label %166
    i32 2, label %172
  ]

160:                                              ; preds = %156
  %161 = load i32, i32* @RADEON_LVDS_NO_FM, align 4
  %162 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %163 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %162, i32 0, i32 8
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 8
  br label %179

166:                                              ; preds = %156
  %167 = load i32, i32* @RADEON_LVDS_2_GREY, align 4
  %168 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %169 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %168, i32 0, i32 8
  %170 = load i32, i32* %169, align 8
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 8
  br label %179

172:                                              ; preds = %156
  %173 = load i32, i32* @RADEON_LVDS_4_GREY, align 4
  %174 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %175 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %174, i32 0, i32 8
  %176 = load i32, i32* %175, align 8
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 8
  br label %179

178:                                              ; preds = %156
  br label %179

179:                                              ; preds = %178, %172, %166, %160
  %180 = load i32, i32* %7, align 4
  %181 = ashr i32 %180, 16
  %182 = and i32 %181, 1
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %179
  %185 = load i32, i32* @RADEON_LVDS_FP_POL_LOW, align 4
  %186 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %187 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %186, i32 0, i32 8
  %188 = load i32, i32* %187, align 8
  %189 = or i32 %188, %185
  store i32 %189, i32* %187, align 8
  br label %190

190:                                              ; preds = %184, %179
  %191 = load i32, i32* %7, align 4
  %192 = ashr i32 %191, 17
  %193 = and i32 %192, 1
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %190
  %196 = load i32, i32* @RADEON_LVDS_LP_POL_LOW, align 4
  %197 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %198 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %197, i32 0, i32 8
  %199 = load i32, i32* %198, align 8
  %200 = or i32 %199, %196
  store i32 %200, i32* %198, align 8
  br label %201

201:                                              ; preds = %195, %190
  %202 = load i32, i32* %7, align 4
  %203 = ashr i32 %202, 18
  %204 = and i32 %203, 1
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %201
  %207 = load i32, i32* @RADEON_LVDS_DTM_POL_LOW, align 4
  %208 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %209 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %208, i32 0, i32 8
  %210 = load i32, i32* %209, align 8
  %211 = or i32 %210, %207
  store i32 %211, i32* %209, align 8
  br label %212

212:                                              ; preds = %206, %201
  %213 = load i32, i32* %7, align 4
  %214 = ashr i32 %213, 23
  %215 = and i32 %214, 1
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %212
  %218 = load i32, i32* @RADEON_LVDS_BL_CLK_SEL, align 4
  %219 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %220 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %219, i32 0, i32 8
  %221 = load i32, i32* %220, align 8
  %222 = or i32 %221, %218
  store i32 %222, i32* %220, align 8
  br label %223

223:                                              ; preds = %217, %212
  %224 = load i32, i32* %7, align 4
  %225 = and i32 %224, -268435456
  %226 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %227 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %226, i32 0, i32 8
  %228 = load i32, i32* %227, align 8
  %229 = or i32 %228, %225
  store i32 %229, i32* %227, align 8
  store i32 0, i32* %10, align 4
  br label %230

230:                                              ; preds = %374, %223
  %231 = load i32, i32* %10, align 4
  %232 = icmp slt i32 %231, 32
  br i1 %232, label %233, label %377

233:                                              ; preds = %230
  %234 = load i32, i32* %6, align 4
  %235 = add nsw i32 %234, 64
  %236 = load i32, i32* %10, align 4
  %237 = mul nsw i32 %236, 2
  %238 = add nsw i32 %235, %237
  %239 = call i32 @RBIOS16(i32 %238)
  store i32 %239, i32* %9, align 4
  %240 = load i32, i32* %9, align 4
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %233
  br label %377

243:                                              ; preds = %233
  %244 = load i32, i32* %9, align 4
  %245 = call i32 @RBIOS16(i32 %244)
  %246 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %247 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %246, i32 0, i32 9
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = icmp eq i32 %245, %249
  br i1 %250, label %251, label %373

251:                                              ; preds = %243
  %252 = load i32, i32* %9, align 4
  %253 = add nsw i32 %252, 2
  %254 = call i32 @RBIOS16(i32 %253)
  %255 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %256 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %255, i32 0, i32 9
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = icmp eq i32 %254, %258
  br i1 %259, label %260, label %373

260:                                              ; preds = %251
  %261 = load i32, i32* %9, align 4
  %262 = add nsw i32 %261, 21
  %263 = call i32 @RBIOS16(i32 %262)
  %264 = load i32, i32* %9, align 4
  %265 = add nsw i32 %264, 19
  %266 = call i32 @RBIOS16(i32 %265)
  %267 = sub nsw i32 %263, %266
  %268 = sub nsw i32 %267, 1
  %269 = mul nsw i32 %268, 8
  store i32 %269, i32* %12, align 4
  %270 = load i32, i32* %12, align 4
  %271 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %272 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %271, i32 0, i32 9
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = icmp sgt i32 %270, %274
  br i1 %275, label %276, label %277

276:                                              ; preds = %260
  store i32 72, i32* %12, align 4
  br label %277

277:                                              ; preds = %276, %260
  %278 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %279 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %278, i32 0, i32 9
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* %9, align 4
  %283 = add nsw i32 %282, 17
  %284 = call i32 @RBIOS16(i32 %283)
  %285 = load i32, i32* %9, align 4
  %286 = add nsw i32 %285, 19
  %287 = call i32 @RBIOS16(i32 %286)
  %288 = sub nsw i32 %284, %287
  %289 = mul nsw i32 %288, 8
  %290 = add nsw i32 %281, %289
  %291 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %292 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %291, i32 0, i32 9
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 2
  store i32 %290, i32* %293, align 8
  %294 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %295 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %294, i32 0, i32 9
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = load i32, i32* %12, align 4
  %299 = add nsw i32 %297, %298
  %300 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %301 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %300, i32 0, i32 9
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %301, i32 0, i32 3
  store i32 %299, i32* %302, align 4
  %303 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %304 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %303, i32 0, i32 9
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %304, i32 0, i32 3
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* %9, align 4
  %308 = add nsw i32 %307, 23
  %309 = call i32 @RBIOS8(i32 %308)
  %310 = mul nsw i32 %309, 8
  %311 = add nsw i32 %306, %310
  %312 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %313 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %312, i32 0, i32 9
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i32 0, i32 4
  store i32 %311, i32* %314, align 8
  %315 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %316 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %315, i32 0, i32 9
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* %9, align 4
  %320 = add nsw i32 %319, 24
  %321 = call i32 @RBIOS16(i32 %320)
  %322 = load i32, i32* %9, align 4
  %323 = add nsw i32 %322, 26
  %324 = call i32 @RBIOS16(i32 %323)
  %325 = sub nsw i32 %321, %324
  %326 = add nsw i32 %318, %325
  %327 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %328 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %327, i32 0, i32 9
  %329 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %328, i32 0, i32 5
  store i32 %326, i32* %329, align 4
  %330 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %331 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %330, i32 0, i32 9
  %332 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = load i32, i32* %9, align 4
  %335 = add nsw i32 %334, 28
  %336 = call i32 @RBIOS16(i32 %335)
  %337 = and i32 %336, 2047
  %338 = load i32, i32* %9, align 4
  %339 = add nsw i32 %338, 26
  %340 = call i32 @RBIOS16(i32 %339)
  %341 = sub nsw i32 %337, %340
  %342 = add nsw i32 %333, %341
  %343 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %344 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %343, i32 0, i32 9
  %345 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %344, i32 0, i32 6
  store i32 %342, i32* %345, align 8
  %346 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %347 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %346, i32 0, i32 9
  %348 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %347, i32 0, i32 6
  %349 = load i32, i32* %348, align 8
  %350 = load i32, i32* %9, align 4
  %351 = add nsw i32 %350, 28
  %352 = call i32 @RBIOS16(i32 %351)
  %353 = and i32 %352, 63488
  %354 = ashr i32 %353, 11
  %355 = add nsw i32 %349, %354
  %356 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %357 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %356, i32 0, i32 9
  %358 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %357, i32 0, i32 7
  store i32 %355, i32* %358, align 4
  %359 = load i32, i32* %9, align 4
  %360 = add nsw i32 %359, 9
  %361 = call i32 @RBIOS16(i32 %360)
  %362 = mul nsw i32 %361, 10
  %363 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %364 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %363, i32 0, i32 9
  %365 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %364, i32 0, i32 8
  store i32 %362, i32* %365, align 8
  %366 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %367 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %366, i32 0, i32 9
  %368 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %367, i32 0, i32 9
  store i64 0, i64* %368, align 8
  %369 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %370 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %369, i32 0, i32 9
  %371 = load i32, i32* @CRTC_INTERLACE_HALVE_V, align 4
  %372 = call i32 @drm_mode_set_crtcinfo(%struct.TYPE_4__* %370, i32 %371)
  br label %373

373:                                              ; preds = %277, %251, %243
  br label %374

374:                                              ; preds = %373
  %375 = load i32, i32* %10, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %10, align 4
  br label %230

377:                                              ; preds = %242, %230
  br label %382

378:                                              ; preds = %1
  %379 = call i32 (i8*, ...) @DRM_INFO(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %380 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %381 = call %struct.radeon_encoder_lvds* @radeon_legacy_get_lvds_info_from_regs(%struct.radeon_device* %380)
  store %struct.radeon_encoder_lvds* %381, %struct.radeon_encoder_lvds** %11, align 8
  br label %382

382:                                              ; preds = %378, %377
  %383 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %384 = icmp ne %struct.radeon_encoder_lvds* %383, null
  br i1 %384, label %385, label %392

385:                                              ; preds = %382
  %386 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %387 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %386, i32 0, i32 0
  %388 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  %389 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %388, i32 0, i32 9
  %390 = bitcast %struct.TYPE_4__* %387 to i8*
  %391 = bitcast %struct.TYPE_4__* %389 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %390, i8* align 8 %391, i64 48, i1 false)
  br label %392

392:                                              ; preds = %385, %382
  %393 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %11, align 8
  store %struct.radeon_encoder_lvds* %393, %struct.radeon_encoder_lvds** %2, align 8
  br label %394

394:                                              ; preds = %392, %30
  %395 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %2, align 8
  ret %struct.radeon_encoder_lvds* %395
}

declare dso_local i32 @combios_get_table_offset(%struct.drm_device*, i32) #1

declare dso_local %struct.radeon_encoder_lvds* @kzalloc(i32, i32) #1

declare dso_local i32 @RBIOS8(i32) #1

declare dso_local i32 @DRM_INFO(i8*, ...) #1

declare dso_local i32 @RBIOS16(i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @RBIOS32(i32) #1

declare dso_local i32 @drm_mode_set_crtcinfo(%struct.TYPE_4__*, i32) #1

declare dso_local %struct.radeon_encoder_lvds* @radeon_legacy_get_lvds_info_from_regs(%struct.radeon_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
