; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_sumo_rlc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_sumo_rlc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32*, i32, i32, i32*, i32, i32, i32*, i32, i32, i32*, i32, i32*, i32*, %struct.cs_section_def* }
%struct.cs_section_def = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32*, i32, i32 }

@CHIP_BONAIRE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@RADEON_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"(%d) create RLC sr bo failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"(%d) pin RLC sr bo failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"(%d) map RLC sr bo failed\0A\00", align 1
@CHIP_TAHITI = common dso_local global i64 0, align 8
@RLC_SAVE_RESTORE_LIST_END_MARKER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"(%d) create RLC c bo failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"(%d) pin RLC c bo failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"(%d) map RLC c bo failed\0A\00", align 1
@RLC_CLEAR_STATE_END_MARKER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"(%d) create RLC cp table bo failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"(%d) reserve RLC cp table bo failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"(%d) pin RLC cp_table bo failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"(%d) map RLC cp table bo failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sumo_rlc_init(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
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
  %16 = alloca %struct.cs_section_def*, align 8
  %17 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 0, i32* %14, align 4
  %18 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %4, align 8
  %22 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %6, align 4
  %26 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %27 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CHIP_BONAIRE, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 240
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %31, %1
  %35 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %36 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 13
  %38 = load %struct.cs_section_def*, %struct.cs_section_def** %37, align 8
  store %struct.cs_section_def* %38, %struct.cs_section_def** %16, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %224

41:                                               ; preds = %34
  %42 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %43 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 12
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %67

47:                                               ; preds = %41
  %48 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %49 = load i32, i32* %6, align 4
  %50 = mul nsw i32 %49, 4
  %51 = load i32, i32* @PAGE_SIZE, align 4
  %52 = load i32, i32* @RADEON_GEM_DOMAIN_VRAM, align 4
  %53 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %54 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 12
  %56 = call i32 @radeon_bo_create(%struct.radeon_device* %48, i32 %50, i32 %51, i32 1, i32 %52, i32 0, i32* null, i32* null, i32** %55)
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %17, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %47
  %60 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %61 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %17, align 4
  %64 = call i32 @dev_warn(i32 %62, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %17, align 4
  store i32 %65, i32* %2, align 4
  br label %725

66:                                               ; preds = %47
  br label %67

67:                                               ; preds = %66, %41
  %68 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %69 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 12
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @radeon_bo_reserve(i32* %71, i32 0)
  store i32 %72, i32* %17, align 4
  %73 = load i32, i32* %17, align 4
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %67
  %79 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %80 = call i32 @sumo_rlc_fini(%struct.radeon_device* %79)
  %81 = load i32, i32* %17, align 4
  store i32 %81, i32* %2, align 4
  br label %725

82:                                               ; preds = %67
  %83 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %84 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 12
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* @RADEON_GEM_DOMAIN_VRAM, align 4
  %88 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %89 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  %91 = call i32 @radeon_bo_pin(i32* %86, i32 %87, i32* %90)
  store i32 %91, i32* %17, align 4
  %92 = load i32, i32* %17, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %82
  %95 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %96 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 12
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @radeon_bo_unreserve(i32* %98)
  %100 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %101 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %17, align 4
  %104 = call i32 @dev_warn(i32 %102, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  %105 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %106 = call i32 @sumo_rlc_fini(%struct.radeon_device* %105)
  %107 = load i32, i32* %17, align 4
  store i32 %107, i32* %2, align 4
  br label %725

108:                                              ; preds = %82
  %109 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %110 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 12
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %114 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 3
  %116 = bitcast i32** %115 to i8**
  %117 = call i32 @radeon_bo_kmap(i32* %112, i8** %116)
  store i32 %117, i32* %17, align 4
  %118 = load i32, i32* %17, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %108
  %121 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %122 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %17, align 4
  %125 = call i32 @dev_warn(i32 %123, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %124)
  %126 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %127 = call i32 @sumo_rlc_fini(%struct.radeon_device* %126)
  %128 = load i32, i32* %17, align 4
  store i32 %128, i32* %2, align 4
  br label %725

129:                                              ; preds = %108
  %130 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %131 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 3
  %133 = load i32*, i32** %132, align 8
  store i32* %133, i32** %5, align 8
  %134 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %135 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @CHIP_TAHITI, align 8
  %138 = icmp sge i64 %136, %137
  br i1 %138, label %139, label %162

139:                                              ; preds = %129
  store i32 0, i32* %8, align 4
  br label %140

140:                                              ; preds = %158, %139
  %141 = load i32, i32* %8, align 4
  %142 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %143 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = icmp slt i32 %141, %145
  br i1 %146, label %147, label %161

147:                                              ; preds = %140
  %148 = load i32*, i32** %4, align 8
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @cpu_to_le32(i32 %152)
  %154 = load i32*, i32** %5, align 8
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  store volatile i32 %153, i32* %157, align 4
  br label %158

158:                                              ; preds = %147
  %159 = load i32, i32* %8, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %8, align 4
  br label %140

161:                                              ; preds = %140
  br label %213

162:                                              ; preds = %129
  store i32 0, i32* %8, align 4
  br label %163

163:                                              ; preds = %200, %162
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* %6, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %203

167:                                              ; preds = %163
  %168 = load i32*, i32** %4, align 8
  %169 = load i32, i32* %8, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = ashr i32 %172, 2
  store i32 %173, i32* %7, align 4
  %174 = load i32, i32* %8, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %8, align 4
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* %6, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %189

179:                                              ; preds = %167
  %180 = load i32*, i32** %4, align 8
  %181 = load i32, i32* %8, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = ashr i32 %184, 2
  %186 = shl i32 %185, 16
  %187 = load i32, i32* %7, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %7, align 4
  br label %189

189:                                              ; preds = %179, %167
  %190 = load i32, i32* %8, align 4
  %191 = sub nsw i32 %190, 1
  %192 = mul nsw i32 %191, 3
  %193 = sdiv i32 %192, 2
  store i32 %193, i32* %9, align 4
  %194 = load i32, i32* %7, align 4
  %195 = call i32 @cpu_to_le32(i32 %194)
  %196 = load i32*, i32** %5, align 8
  %197 = load i32, i32* %9, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  store volatile i32 %195, i32* %199, align 4
  br label %200

200:                                              ; preds = %189
  %201 = load i32, i32* %8, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %8, align 4
  br label %163

203:                                              ; preds = %163
  %204 = load i32, i32* %8, align 4
  %205 = mul nsw i32 %204, 3
  %206 = sdiv i32 %205, 2
  store i32 %206, i32* %9, align 4
  %207 = load i32, i32* @RLC_SAVE_RESTORE_LIST_END_MARKER, align 4
  %208 = call i32 @cpu_to_le32(i32 %207)
  %209 = load i32*, i32** %5, align 8
  %210 = load i32, i32* %9, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  store volatile i32 %208, i32* %212, align 4
  br label %213

213:                                              ; preds = %203, %161
  %214 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %215 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 12
  %217 = load i32*, i32** %216, align 8
  %218 = call i32 @radeon_bo_kunmap(i32* %217)
  %219 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %220 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 12
  %222 = load i32*, i32** %221, align 8
  %223 = call i32 @radeon_bo_unreserve(i32* %222)
  br label %224

224:                                              ; preds = %213, %34
  %225 = load %struct.cs_section_def*, %struct.cs_section_def** %16, align 8
  %226 = icmp ne %struct.cs_section_def* %225, null
  br i1 %226, label %227, label %608

227:                                              ; preds = %224
  %228 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %229 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @CHIP_BONAIRE, align 8
  %232 = icmp sge i64 %230, %231
  br i1 %232, label %233, label %239

233:                                              ; preds = %227
  %234 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %235 = call i32 @cik_get_csb_size(%struct.radeon_device* %234)
  store i32 %235, i32* %6, align 4
  %236 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %237 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 4
  store i32 %235, i32* %238, align 8
  br label %314

239:                                              ; preds = %227
  %240 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %241 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @CHIP_TAHITI, align 8
  %244 = icmp sge i64 %242, %243
  br i1 %244, label %245, label %256

245:                                              ; preds = %239
  %246 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %247 = call i32 @si_get_csb_size(%struct.radeon_device* %246)
  %248 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %249 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 4
  store i32 %247, i32* %250, align 8
  %251 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %252 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 4
  %254 = load i32, i32* %253, align 8
  %255 = add nsw i32 %254, 64
  store i32 %255, i32* %6, align 4
  br label %313

256:                                              ; preds = %239
  store i32 0, i32* %12, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %257

257:                                              ; preds = %299, %256
  %258 = load %struct.cs_section_def*, %struct.cs_section_def** %16, align 8
  %259 = load i32, i32* %8, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %258, i64 %260
  %262 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %261, i32 0, i32 0
  %263 = load %struct.TYPE_3__*, %struct.TYPE_3__** %262, align 8
  %264 = icmp ne %struct.TYPE_3__* %263, null
  br i1 %264, label %265, label %302

265:                                              ; preds = %257
  store i32 0, i32* %9, align 4
  br label %266

266:                                              ; preds = %295, %265
  %267 = load %struct.cs_section_def*, %struct.cs_section_def** %16, align 8
  %268 = load i32, i32* %8, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %267, i64 %269
  %271 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %270, i32 0, i32 0
  %272 = load %struct.TYPE_3__*, %struct.TYPE_3__** %271, align 8
  %273 = load i32, i32* %9, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %275, i32 0, i32 0
  %277 = load i32*, i32** %276, align 8
  %278 = icmp ne i32* %277, null
  br i1 %278, label %279, label %298

279:                                              ; preds = %266
  %280 = load i32, i32* %12, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %12, align 4
  %282 = load %struct.cs_section_def*, %struct.cs_section_def** %16, align 8
  %283 = load i32, i32* %8, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %282, i64 %284
  %286 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %285, i32 0, i32 0
  %287 = load %struct.TYPE_3__*, %struct.TYPE_3__** %286, align 8
  %288 = load i32, i32* %9, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* %6, align 4
  %294 = add nsw i32 %293, %292
  store i32 %294, i32* %6, align 4
  br label %295

295:                                              ; preds = %279
  %296 = load i32, i32* %9, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %9, align 4
  br label %266

298:                                              ; preds = %266
  br label %299

299:                                              ; preds = %298
  %300 = load i32, i32* %8, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %8, align 4
  br label %257

302:                                              ; preds = %257
  %303 = load i32, i32* %12, align 4
  %304 = mul nsw i32 3, %303
  %305 = add nsw i32 %304, 2
  store i32 %305, i32* %14, align 4
  %306 = load i32, i32* %14, align 4
  %307 = load i32, i32* %6, align 4
  %308 = add nsw i32 %307, %306
  store i32 %308, i32* %6, align 4
  %309 = load i32, i32* %6, align 4
  %310 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %311 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %311, i32 0, i32 4
  store i32 %309, i32* %312, align 8
  br label %313

313:                                              ; preds = %302, %245
  br label %314

314:                                              ; preds = %313, %233
  %315 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %316 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i32 0, i32 11
  %318 = load i32*, i32** %317, align 8
  %319 = icmp eq i32* %318, null
  br i1 %319, label %320, label %342

320:                                              ; preds = %314
  %321 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %322 = load i32, i32* %6, align 4
  %323 = mul nsw i32 %322, 4
  %324 = load i32, i32* @PAGE_SIZE, align 4
  %325 = load i32, i32* @RADEON_GEM_DOMAIN_VRAM, align 4
  %326 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %327 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %326, i32 0, i32 1
  %328 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %327, i32 0, i32 11
  %329 = call i32 @radeon_bo_create(%struct.radeon_device* %321, i32 %323, i32 %324, i32 1, i32 %325, i32 0, i32* null, i32* null, i32** %328)
  store i32 %329, i32* %17, align 4
  %330 = load i32, i32* %17, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %341

332:                                              ; preds = %320
  %333 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %334 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 8
  %336 = load i32, i32* %17, align 4
  %337 = call i32 @dev_warn(i32 %335, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %336)
  %338 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %339 = call i32 @sumo_rlc_fini(%struct.radeon_device* %338)
  %340 = load i32, i32* %17, align 4
  store i32 %340, i32* %2, align 4
  br label %725

341:                                              ; preds = %320
  br label %342

342:                                              ; preds = %341, %314
  %343 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %344 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %344, i32 0, i32 11
  %346 = load i32*, i32** %345, align 8
  %347 = call i32 @radeon_bo_reserve(i32* %346, i32 0)
  store i32 %347, i32* %17, align 4
  %348 = load i32, i32* %17, align 4
  %349 = icmp ne i32 %348, 0
  %350 = zext i1 %349 to i32
  %351 = call i64 @unlikely(i32 %350)
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %357

353:                                              ; preds = %342
  %354 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %355 = call i32 @sumo_rlc_fini(%struct.radeon_device* %354)
  %356 = load i32, i32* %17, align 4
  store i32 %356, i32* %2, align 4
  br label %725

357:                                              ; preds = %342
  %358 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %359 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %358, i32 0, i32 1
  %360 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %359, i32 0, i32 11
  %361 = load i32*, i32** %360, align 8
  %362 = load i32, i32* @RADEON_GEM_DOMAIN_VRAM, align 4
  %363 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %364 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %363, i32 0, i32 1
  %365 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %364, i32 0, i32 5
  %366 = call i32 @radeon_bo_pin(i32* %361, i32 %362, i32* %365)
  store i32 %366, i32* %17, align 4
  %367 = load i32, i32* %17, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %383

369:                                              ; preds = %357
  %370 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %371 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %370, i32 0, i32 1
  %372 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %371, i32 0, i32 11
  %373 = load i32*, i32** %372, align 8
  %374 = call i32 @radeon_bo_unreserve(i32* %373)
  %375 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %376 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %375, i32 0, i32 2
  %377 = load i32, i32* %376, align 8
  %378 = load i32, i32* %17, align 4
  %379 = call i32 @dev_warn(i32 %377, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %378)
  %380 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %381 = call i32 @sumo_rlc_fini(%struct.radeon_device* %380)
  %382 = load i32, i32* %17, align 4
  store i32 %382, i32* %2, align 4
  br label %725

383:                                              ; preds = %357
  %384 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %385 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %384, i32 0, i32 1
  %386 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %385, i32 0, i32 11
  %387 = load i32*, i32** %386, align 8
  %388 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %389 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %388, i32 0, i32 1
  %390 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %389, i32 0, i32 6
  %391 = bitcast i32** %390 to i8**
  %392 = call i32 @radeon_bo_kmap(i32* %387, i8** %391)
  store i32 %392, i32* %17, align 4
  %393 = load i32, i32* %17, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %404

395:                                              ; preds = %383
  %396 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %397 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %396, i32 0, i32 2
  %398 = load i32, i32* %397, align 8
  %399 = load i32, i32* %17, align 4
  %400 = call i32 @dev_warn(i32 %398, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %399)
  %401 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %402 = call i32 @sumo_rlc_fini(%struct.radeon_device* %401)
  %403 = load i32, i32* %17, align 4
  store i32 %403, i32* %2, align 4
  br label %725

404:                                              ; preds = %383
  %405 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %406 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %405, i32 0, i32 1
  %407 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %406, i32 0, i32 6
  %408 = load i32*, i32** %407, align 8
  store i32* %408, i32** %5, align 8
  %409 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %410 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %409, i32 0, i32 0
  %411 = load i64, i64* %410, align 8
  %412 = load i64, i64* @CHIP_BONAIRE, align 8
  %413 = icmp sge i64 %411, %412
  br i1 %413, label %414, label %418

414:                                              ; preds = %404
  %415 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %416 = load i32*, i32** %5, align 8
  %417 = call i32 @cik_get_csb_buffer(%struct.radeon_device* %415, i32* %416)
  br label %597

418:                                              ; preds = %404
  %419 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %420 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %419, i32 0, i32 0
  %421 = load i64, i64* %420, align 8
  %422 = load i64, i64* @CHIP_TAHITI, align 8
  %423 = icmp sge i64 %421, %422
  br i1 %423, label %424, label %451

424:                                              ; preds = %418
  %425 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %426 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %425, i32 0, i32 1
  %427 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %426, i32 0, i32 5
  %428 = load i32, i32* %427, align 4
  %429 = add nsw i32 %428, 256
  store i32 %429, i32* %15, align 4
  %430 = load i32, i32* %15, align 4
  %431 = call i32 @upper_32_bits(i32 %430)
  %432 = call i32 @cpu_to_le32(i32 %431)
  %433 = load i32*, i32** %5, align 8
  %434 = getelementptr inbounds i32, i32* %433, i64 0
  store volatile i32 %432, i32* %434, align 4
  %435 = load i32, i32* %15, align 4
  %436 = call i32 @lower_32_bits(i32 %435)
  %437 = call i32 @cpu_to_le32(i32 %436)
  %438 = load i32*, i32** %5, align 8
  %439 = getelementptr inbounds i32, i32* %438, i64 1
  store volatile i32 %437, i32* %439, align 4
  %440 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %441 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %440, i32 0, i32 1
  %442 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %441, i32 0, i32 4
  %443 = load i32, i32* %442, align 8
  %444 = call i32 @cpu_to_le32(i32 %443)
  %445 = load i32*, i32** %5, align 8
  %446 = getelementptr inbounds i32, i32* %445, i64 2
  store volatile i32 %444, i32* %446, align 4
  %447 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %448 = load i32*, i32** %5, align 8
  %449 = getelementptr inbounds i32, i32* %448, i64 64
  %450 = call i32 @si_get_csb_buffer(%struct.radeon_device* %447, i32* %449)
  br label %596

451:                                              ; preds = %418
  store i32 0, i32* %13, align 4
  %452 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %453 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %452, i32 0, i32 1
  %454 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %453, i32 0, i32 5
  %455 = load i32, i32* %454, align 4
  %456 = load i32, i32* %14, align 4
  %457 = mul nsw i32 %456, 4
  %458 = add nsw i32 %455, %457
  store i32 %458, i32* %15, align 4
  %459 = load i32, i32* %15, align 4
  %460 = call i32 @upper_32_bits(i32 %459)
  store i32 %460, i32* %7, align 4
  %461 = load i32, i32* %7, align 4
  %462 = call i32 @cpu_to_le32(i32 %461)
  %463 = load i32*, i32** %5, align 8
  %464 = load i32, i32* %13, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i32, i32* %463, i64 %465
  store volatile i32 %462, i32* %466, align 4
  %467 = load i32, i32* %13, align 4
  %468 = add nsw i32 %467, 1
  store i32 %468, i32* %13, align 4
  store i32 0, i32* %8, align 4
  br label %469

469:                                              ; preds = %586, %451
  %470 = load %struct.cs_section_def*, %struct.cs_section_def** %16, align 8
  %471 = load i32, i32* %8, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %470, i64 %472
  %474 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %473, i32 0, i32 0
  %475 = load %struct.TYPE_3__*, %struct.TYPE_3__** %474, align 8
  %476 = icmp ne %struct.TYPE_3__* %475, null
  br i1 %476, label %477, label %589

477:                                              ; preds = %469
  store i32 0, i32* %9, align 4
  br label %478

478:                                              ; preds = %582, %477
  %479 = load %struct.cs_section_def*, %struct.cs_section_def** %16, align 8
  %480 = load i32, i32* %8, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %479, i64 %481
  %483 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %482, i32 0, i32 0
  %484 = load %struct.TYPE_3__*, %struct.TYPE_3__** %483, align 8
  %485 = load i32, i32* %9, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %484, i64 %486
  %488 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %487, i32 0, i32 0
  %489 = load i32*, i32** %488, align 8
  %490 = icmp ne i32* %489, null
  br i1 %490, label %491, label %585

491:                                              ; preds = %478
  %492 = load %struct.cs_section_def*, %struct.cs_section_def** %16, align 8
  %493 = load i32, i32* %8, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %492, i64 %494
  %496 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %495, i32 0, i32 0
  %497 = load %struct.TYPE_3__*, %struct.TYPE_3__** %496, align 8
  %498 = load i32, i32* %9, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %497, i64 %499
  %501 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %500, i32 0, i32 1
  %502 = load i32, i32* %501, align 8
  store i32 %502, i32* %11, align 4
  %503 = load i32, i32* %15, align 4
  store i32 %503, i32* %7, align 4
  %504 = load i32, i32* %7, align 4
  %505 = call i32 @cpu_to_le32(i32 %504)
  %506 = load i32*, i32** %5, align 8
  %507 = load i32, i32* %13, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds i32, i32* %506, i64 %508
  store volatile i32 %505, i32* %509, align 4
  %510 = load i32, i32* %13, align 4
  %511 = add nsw i32 %510, 1
  store i32 %511, i32* %13, align 4
  %512 = load %struct.cs_section_def*, %struct.cs_section_def** %16, align 8
  %513 = load i32, i32* %8, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %512, i64 %514
  %516 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %515, i32 0, i32 0
  %517 = load %struct.TYPE_3__*, %struct.TYPE_3__** %516, align 8
  %518 = load i32, i32* %9, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %517, i64 %519
  %521 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %520, i32 0, i32 2
  %522 = load i32, i32* %521, align 4
  %523 = mul nsw i32 %522, 4
  store i32 %523, i32* %7, align 4
  %524 = load i32, i32* %7, align 4
  %525 = call i32 @cpu_to_le32(i32 %524)
  %526 = load i32*, i32** %5, align 8
  %527 = load i32, i32* %13, align 4
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds i32, i32* %526, i64 %528
  store volatile i32 %525, i32* %529, align 4
  %530 = load i32, i32* %13, align 4
  %531 = add nsw i32 %530, 1
  store i32 %531, i32* %13, align 4
  %532 = load i32, i32* %11, align 4
  %533 = mul nsw i32 %532, 4
  %534 = or i32 134217728, %533
  store i32 %534, i32* %7, align 4
  %535 = load i32, i32* %7, align 4
  %536 = call i32 @cpu_to_le32(i32 %535)
  %537 = load i32*, i32** %5, align 8
  %538 = load i32, i32* %13, align 4
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds i32, i32* %537, i64 %539
  store volatile i32 %536, i32* %540, align 4
  %541 = load i32, i32* %13, align 4
  %542 = add nsw i32 %541, 1
  store i32 %542, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %543

543:                                              ; preds = %571, %491
  %544 = load i32, i32* %10, align 4
  %545 = load i32, i32* %11, align 4
  %546 = icmp slt i32 %544, %545
  br i1 %546, label %547, label %574

547:                                              ; preds = %543
  %548 = load %struct.cs_section_def*, %struct.cs_section_def** %16, align 8
  %549 = load i32, i32* %8, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %548, i64 %550
  %552 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %551, i32 0, i32 0
  %553 = load %struct.TYPE_3__*, %struct.TYPE_3__** %552, align 8
  %554 = load i32, i32* %9, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %553, i64 %555
  %557 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %556, i32 0, i32 0
  %558 = load i32*, i32** %557, align 8
  %559 = load i32, i32* %10, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds i32, i32* %558, i64 %560
  %562 = load i32, i32* %561, align 4
  store i32 %562, i32* %7, align 4
  %563 = load i32, i32* %7, align 4
  %564 = call i32 @cpu_to_le32(i32 %563)
  %565 = load i32*, i32** %5, align 8
  %566 = load i32, i32* %14, align 4
  %567 = load i32, i32* %10, align 4
  %568 = add nsw i32 %566, %567
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds i32, i32* %565, i64 %569
  store volatile i32 %564, i32* %570, align 4
  br label %571

571:                                              ; preds = %547
  %572 = load i32, i32* %10, align 4
  %573 = add nsw i32 %572, 1
  store i32 %573, i32* %10, align 4
  br label %543

574:                                              ; preds = %543
  %575 = load i32, i32* %11, align 4
  %576 = mul nsw i32 %575, 4
  %577 = load i32, i32* %15, align 4
  %578 = add nsw i32 %577, %576
  store i32 %578, i32* %15, align 4
  %579 = load i32, i32* %11, align 4
  %580 = load i32, i32* %14, align 4
  %581 = add nsw i32 %580, %579
  store i32 %581, i32* %14, align 4
  br label %582

582:                                              ; preds = %574
  %583 = load i32, i32* %9, align 4
  %584 = add nsw i32 %583, 1
  store i32 %584, i32* %9, align 4
  br label %478

585:                                              ; preds = %478
  br label %586

586:                                              ; preds = %585
  %587 = load i32, i32* %8, align 4
  %588 = add nsw i32 %587, 1
  store i32 %588, i32* %8, align 4
  br label %469

589:                                              ; preds = %469
  %590 = load i32, i32* @RLC_CLEAR_STATE_END_MARKER, align 4
  %591 = call i32 @cpu_to_le32(i32 %590)
  %592 = load i32*, i32** %5, align 8
  %593 = load i32, i32* %13, align 4
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds i32, i32* %592, i64 %594
  store volatile i32 %591, i32* %595, align 4
  br label %596

596:                                              ; preds = %589, %424
  br label %597

597:                                              ; preds = %596, %414
  %598 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %599 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %598, i32 0, i32 1
  %600 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %599, i32 0, i32 11
  %601 = load i32*, i32** %600, align 8
  %602 = call i32 @radeon_bo_kunmap(i32* %601)
  %603 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %604 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %603, i32 0, i32 1
  %605 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %604, i32 0, i32 11
  %606 = load i32*, i32** %605, align 8
  %607 = call i32 @radeon_bo_unreserve(i32* %606)
  br label %608

608:                                              ; preds = %597, %224
  %609 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %610 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %609, i32 0, i32 1
  %611 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %610, i32 0, i32 7
  %612 = load i32, i32* %611, align 8
  %613 = icmp ne i32 %612, 0
  br i1 %613, label %614, label %724

614:                                              ; preds = %608
  %615 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %616 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %615, i32 0, i32 1
  %617 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %616, i32 0, i32 9
  %618 = load i32*, i32** %617, align 8
  %619 = icmp eq i32* %618, null
  br i1 %619, label %620, label %644

620:                                              ; preds = %614
  %621 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %622 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %623 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %622, i32 0, i32 1
  %624 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %623, i32 0, i32 7
  %625 = load i32, i32* %624, align 8
  %626 = load i32, i32* @PAGE_SIZE, align 4
  %627 = load i32, i32* @RADEON_GEM_DOMAIN_VRAM, align 4
  %628 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %629 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %628, i32 0, i32 1
  %630 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %629, i32 0, i32 9
  %631 = call i32 @radeon_bo_create(%struct.radeon_device* %621, i32 %625, i32 %626, i32 1, i32 %627, i32 0, i32* null, i32* null, i32** %630)
  store i32 %631, i32* %17, align 4
  %632 = load i32, i32* %17, align 4
  %633 = icmp ne i32 %632, 0
  br i1 %633, label %634, label %643

634:                                              ; preds = %620
  %635 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %636 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %635, i32 0, i32 2
  %637 = load i32, i32* %636, align 8
  %638 = load i32, i32* %17, align 4
  %639 = call i32 @dev_warn(i32 %637, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %638)
  %640 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %641 = call i32 @sumo_rlc_fini(%struct.radeon_device* %640)
  %642 = load i32, i32* %17, align 4
  store i32 %642, i32* %2, align 4
  br label %725

643:                                              ; preds = %620
  br label %644

644:                                              ; preds = %643, %614
  %645 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %646 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %645, i32 0, i32 1
  %647 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %646, i32 0, i32 9
  %648 = load i32*, i32** %647, align 8
  %649 = call i32 @radeon_bo_reserve(i32* %648, i32 0)
  store i32 %649, i32* %17, align 4
  %650 = load i32, i32* %17, align 4
  %651 = icmp ne i32 %650, 0
  %652 = zext i1 %651 to i32
  %653 = call i64 @unlikely(i32 %652)
  %654 = icmp ne i64 %653, 0
  br i1 %654, label %655, label %664

655:                                              ; preds = %644
  %656 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %657 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %656, i32 0, i32 2
  %658 = load i32, i32* %657, align 8
  %659 = load i32, i32* %17, align 4
  %660 = call i32 @dev_warn(i32 %658, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %659)
  %661 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %662 = call i32 @sumo_rlc_fini(%struct.radeon_device* %661)
  %663 = load i32, i32* %17, align 4
  store i32 %663, i32* %2, align 4
  br label %725

664:                                              ; preds = %644
  %665 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %666 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %665, i32 0, i32 1
  %667 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %666, i32 0, i32 9
  %668 = load i32*, i32** %667, align 8
  %669 = load i32, i32* @RADEON_GEM_DOMAIN_VRAM, align 4
  %670 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %671 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %670, i32 0, i32 1
  %672 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %671, i32 0, i32 8
  %673 = call i32 @radeon_bo_pin(i32* %668, i32 %669, i32* %672)
  store i32 %673, i32* %17, align 4
  %674 = load i32, i32* %17, align 4
  %675 = icmp ne i32 %674, 0
  br i1 %675, label %676, label %690

676:                                              ; preds = %664
  %677 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %678 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %677, i32 0, i32 1
  %679 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %678, i32 0, i32 9
  %680 = load i32*, i32** %679, align 8
  %681 = call i32 @radeon_bo_unreserve(i32* %680)
  %682 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %683 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %682, i32 0, i32 2
  %684 = load i32, i32* %683, align 8
  %685 = load i32, i32* %17, align 4
  %686 = call i32 @dev_warn(i32 %684, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %685)
  %687 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %688 = call i32 @sumo_rlc_fini(%struct.radeon_device* %687)
  %689 = load i32, i32* %17, align 4
  store i32 %689, i32* %2, align 4
  br label %725

690:                                              ; preds = %664
  %691 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %692 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %691, i32 0, i32 1
  %693 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %692, i32 0, i32 9
  %694 = load i32*, i32** %693, align 8
  %695 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %696 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %695, i32 0, i32 1
  %697 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %696, i32 0, i32 10
  %698 = bitcast i32* %697 to i8**
  %699 = call i32 @radeon_bo_kmap(i32* %694, i8** %698)
  store i32 %699, i32* %17, align 4
  %700 = load i32, i32* %17, align 4
  %701 = icmp ne i32 %700, 0
  br i1 %701, label %702, label %711

702:                                              ; preds = %690
  %703 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %704 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %703, i32 0, i32 2
  %705 = load i32, i32* %704, align 8
  %706 = load i32, i32* %17, align 4
  %707 = call i32 @dev_warn(i32 %705, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %706)
  %708 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %709 = call i32 @sumo_rlc_fini(%struct.radeon_device* %708)
  %710 = load i32, i32* %17, align 4
  store i32 %710, i32* %2, align 4
  br label %725

711:                                              ; preds = %690
  %712 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %713 = call i32 @cik_init_cp_pg_table(%struct.radeon_device* %712)
  %714 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %715 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %714, i32 0, i32 1
  %716 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %715, i32 0, i32 9
  %717 = load i32*, i32** %716, align 8
  %718 = call i32 @radeon_bo_kunmap(i32* %717)
  %719 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %720 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %719, i32 0, i32 1
  %721 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %720, i32 0, i32 9
  %722 = load i32*, i32** %721, align 8
  %723 = call i32 @radeon_bo_unreserve(i32* %722)
  br label %724

724:                                              ; preds = %711, %608
  store i32 0, i32* %2, align 4
  br label %725

725:                                              ; preds = %724, %702, %676, %655, %634, %395, %369, %353, %332, %120, %94, %78, %59
  %726 = load i32, i32* %2, align 4
  ret i32 %726
}

declare dso_local i32 @radeon_bo_create(%struct.radeon_device*, i32, i32, i32, i32, i32, i32*, i32*, i32**) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @radeon_bo_reserve(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sumo_rlc_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_bo_pin(i32*, i32, i32*) #1

declare dso_local i32 @radeon_bo_unreserve(i32*) #1

declare dso_local i32 @radeon_bo_kmap(i32*, i8**) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @radeon_bo_kunmap(i32*) #1

declare dso_local i32 @cik_get_csb_size(%struct.radeon_device*) #1

declare dso_local i32 @si_get_csb_size(%struct.radeon_device*) #1

declare dso_local i32 @cik_get_csb_buffer(%struct.radeon_device*, i32*) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @si_get_csb_buffer(%struct.radeon_device*, i32*) #1

declare dso_local i32 @cik_init_cp_pg_table(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
