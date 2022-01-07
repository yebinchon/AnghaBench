; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_combios_get_power_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_combios_get_power_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_16__, %struct.TYPE_12__, %struct.drm_device* }
%struct.TYPE_16__ = type { i32, i32, i32, i64, %struct.TYPE_15__*, %struct.TYPE_10__* }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i64, %struct.TYPE_14__*, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i64, i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i8*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i64, i64 }
%struct.drm_device = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.radeon_i2c_bus_rec = type { i32, i32, i32, i32 }
%struct.i2c_board_info = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@COMBIOS_OVERDRIVE_INFO_TABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Possible %s thermal controller at 0x%02x\0A\00", align 1
@thermal_controller_names = common dso_local global i8** null, align 8
@DDC_LCD = common dso_local global i32 0, align 4
@DDC_GPIO = common dso_local global i32 0, align 4
@DDC_MONID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"f75375\00", align 1
@RADEON_IS_MOBILITY = common dso_local global i32 0, align 4
@COMBIOS_POWERPLAY_INFO_TABLE = common dso_local global i32 0, align 4
@POWER_STATE_TYPE_BATTERY = common dso_local global i32 0, align 4
@VOLTAGE_GPIO = common dso_local global i8* null, align 8
@VOLTAGE_NONE = common dso_local global i8* null, align 8
@RADEON_PM_STATE_SINGLE_DISPLAY_ONLY = common dso_local global i64 0, align 8
@POWER_STATE_TYPE_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_combios_get_power_modes(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.radeon_i2c_bus_rec, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.radeon_i2c_bus_rec, align 4
  %18 = alloca %struct.radeon_i2c_bus_rec, align 4
  %19 = alloca %struct.i2c_board_info, align 4
  %20 = alloca i8*, align 8
  %21 = alloca %struct.radeon_i2c_bus_rec, align 4
  %22 = alloca %struct.i2c_board_info, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %26 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %27 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %26, i32 0, i32 3
  %28 = load %struct.drm_device*, %struct.drm_device** %27, align 8
  store %struct.drm_device* %28, %struct.drm_device** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %10, align 4
  %29 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %30 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  store i32 -1, i32* %31, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8* @kcalloc(i32 2, i32 4, i32 %32)
  %34 = bitcast i8* %33 to %struct.TYPE_15__*
  %35 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %36 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 4
  store %struct.TYPE_15__* %34, %struct.TYPE_15__** %37, align 8
  %38 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %39 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %40, align 8
  %42 = icmp ne %struct.TYPE_15__* %41, null
  br i1 %42, label %43, label %81

43:                                               ; preds = %1
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i8* @kcalloc(i32 1, i32 4, i32 %44)
  %46 = bitcast i8* %45 to %struct.TYPE_14__*
  %47 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %48 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 4
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 5
  store %struct.TYPE_14__* %46, %struct.TYPE_14__** %52, align 8
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i8* @kcalloc(i32 1, i32 4, i32 %53)
  %55 = bitcast i8* %54 to %struct.TYPE_14__*
  %56 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %57 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 4
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i64 1
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 5
  store %struct.TYPE_14__* %55, %struct.TYPE_14__** %61, align 8
  %62 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %63 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 4
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 5
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = icmp ne %struct.TYPE_14__* %68, null
  br i1 %69, label %70, label %79

70:                                               ; preds = %43
  %71 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %72 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 4
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i64 1
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 5
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = icmp ne %struct.TYPE_14__* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %70, %43
  br label %853

80:                                               ; preds = %70
  br label %82

81:                                               ; preds = %1
  br label %853

82:                                               ; preds = %80
  %83 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %84 = load i32, i32* @COMBIOS_OVERDRIVE_INFO_TABLE, align 4
  %85 = call i32 @combios_get_table_offset(%struct.drm_device* %83, i32 %84)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %228

88:                                               ; preds = %82
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @RBIOS8(i32 %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %88
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, 3
  %96 = call i32 @RBIOS8(i32 %95)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 4
  %99 = call i32 @RBIOS8(i32 %98)
  %100 = and i32 %99, 63
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, 5
  %103 = call i32 @RBIOS8(i32 %102)
  store i32 %103, i32* %14, align 4
  br label %140

104:                                              ; preds = %88
  %105 = load i32, i32* %7, align 4
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %118

107:                                              ; preds = %104
  %108 = load i32, i32* %4, align 4
  %109 = add nsw i32 %108, 4
  %110 = call i32 @RBIOS8(i32 %109)
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, 5
  %113 = call i32 @RBIOS8(i32 %112)
  %114 = and i32 %113, 63
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %4, align 4
  %116 = add nsw i32 %115, 6
  %117 = call i32 @RBIOS8(i32 %116)
  store i32 %117, i32* %14, align 4
  br label %139

118:                                              ; preds = %104
  %119 = load i32, i32* %7, align 4
  %120 = icmp eq i32 %119, 2
  br i1 %120, label %121, label %138

121:                                              ; preds = %118
  %122 = load i32, i32* %4, align 4
  %123 = add nsw i32 %122, 4
  %124 = call i32 @RBIOS8(i32 %123)
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %4, align 4
  %126 = add nsw i32 %125, 5
  %127 = call i32 @RBIOS8(i32 %126)
  %128 = and i32 %127, 63
  store i32 %128, i32* %13, align 4
  %129 = load i32, i32* %4, align 4
  %130 = add nsw i32 %129, 6
  %131 = call i32 @RBIOS8(i32 %130)
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %4, align 4
  %133 = add nsw i32 %132, 10
  %134 = call i32 @RBIOS8(i32 %133)
  store i32 %134, i32* %15, align 4
  %135 = load i32, i32* %4, align 4
  %136 = add nsw i32 %135, 11
  %137 = call i32 @RBIOS8(i32 %136)
  store i32 %137, i32* %16, align 4
  br label %138

138:                                              ; preds = %121, %118
  br label %139

139:                                              ; preds = %138, %107
  br label %140

140:                                              ; preds = %139, %93
  %141 = load i32, i32* %12, align 4
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %227

143:                                              ; preds = %140
  %144 = load i32, i32* %12, align 4
  %145 = icmp slt i32 %144, 3
  br i1 %145, label %146, label %227

146:                                              ; preds = %143
  %147 = load i8**, i8*** @thermal_controller_names, align 8
  %148 = load i32, i32* %12, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8*, i8** %147, i64 %149
  %151 = load i8*, i8** %150, align 8
  %152 = load i32, i32* %14, align 4
  %153 = ashr i32 %152, 1
  %154 = call i32 @DRM_INFO(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %151, i32 %153)
  %155 = load i32, i32* %13, align 4
  %156 = load i32, i32* @DDC_LCD, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %146
  %159 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %11, i32 0, i32 0
  store i32 1, i32* %159, align 4
  %160 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %11, i32 0, i32 1
  store i32 1, i32* %160, align 4
  %161 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %11, i32 0, i32 2
  store i32 1, i32* %161, align 4
  %162 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %11, i32 0, i32 3
  store i32 160, i32* %162, align 4
  br label %194

163:                                              ; preds = %146
  %164 = load i32, i32* %13, align 4
  %165 = load i32, i32* @DDC_GPIO, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %182

167:                                              ; preds = %163
  %168 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %169 = load i32, i32* %13, align 4
  %170 = load i32, i32* %15, align 4
  %171 = shl i32 1, %170
  %172 = load i32, i32* %16, align 4
  %173 = shl i32 1, %172
  %174 = call { i64, i64 } @combios_setup_i2c_bus(%struct.radeon_device* %168, i32 %169, i32 %171, i32 %173)
  %175 = bitcast %struct.radeon_i2c_bus_rec* %17 to { i64, i64 }*
  %176 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %175, i32 0, i32 0
  %177 = extractvalue { i64, i64 } %174, 0
  store i64 %177, i64* %176, align 4
  %178 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %175, i32 0, i32 1
  %179 = extractvalue { i64, i64 } %174, 1
  store i64 %179, i64* %178, align 4
  %180 = bitcast %struct.radeon_i2c_bus_rec* %11 to i8*
  %181 = bitcast %struct.radeon_i2c_bus_rec* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %180, i8* align 4 %181, i64 16, i1 false)
  br label %193

182:                                              ; preds = %163
  %183 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %184 = load i32, i32* %13, align 4
  %185 = call { i64, i64 } @combios_setup_i2c_bus(%struct.radeon_device* %183, i32 %184, i32 0, i32 0)
  %186 = bitcast %struct.radeon_i2c_bus_rec* %18 to { i64, i64 }*
  %187 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %186, i32 0, i32 0
  %188 = extractvalue { i64, i64 } %185, 0
  store i64 %188, i64* %187, align 4
  %189 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %186, i32 0, i32 1
  %190 = extractvalue { i64, i64 } %185, 1
  store i64 %190, i64* %189, align 4
  %191 = bitcast %struct.radeon_i2c_bus_rec* %11 to i8*
  %192 = bitcast %struct.radeon_i2c_bus_rec* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %191, i8* align 4 %192, i64 16, i1 false)
  br label %193

193:                                              ; preds = %182, %167
  br label %194

194:                                              ; preds = %193, %158
  %195 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %196 = call i8* @radeon_i2c_lookup(%struct.radeon_device* %195, %struct.radeon_i2c_bus_rec* %11)
  %197 = bitcast i8* %196 to %struct.TYPE_10__*
  %198 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %199 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 5
  store %struct.TYPE_10__* %197, %struct.TYPE_10__** %200, align 8
  %201 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %202 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 5
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %203, align 8
  %205 = icmp ne %struct.TYPE_10__* %204, null
  br i1 %205, label %206, label %226

206:                                              ; preds = %194
  %207 = bitcast %struct.i2c_board_info* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %207, i8 0, i64 8, i1 false)
  %208 = load i8**, i8*** @thermal_controller_names, align 8
  %209 = load i32, i32* %12, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8*, i8** %208, i64 %210
  %212 = load i8*, i8** %211, align 8
  store i8* %212, i8** %20, align 8
  %213 = load i32, i32* %14, align 4
  %214 = ashr i32 %213, 1
  %215 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %19, i32 0, i32 0
  store i32 %214, i32* %215, align 4
  %216 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %19, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load i8*, i8** %20, align 8
  %219 = call i32 @strlcpy(i32 %217, i8* %218, i32 4)
  %220 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %221 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 5
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 0
  %225 = call i32 @i2c_new_device(i32* %224, %struct.i2c_board_info* %19)
  br label %226

226:                                              ; preds = %206, %194
  br label %227

227:                                              ; preds = %226, %143, %140
  br label %290

228:                                              ; preds = %82
  %229 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %230 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %229, i32 0, i32 0
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = icmp eq i32 %233, 16722
  br i1 %234, label %235, label %289

235:                                              ; preds = %228
  %236 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %237 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %236, i32 0, i32 0
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = icmp eq i32 %240, 4163
  br i1 %241, label %242, label %289

242:                                              ; preds = %235
  %243 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %244 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %243, i32 0, i32 0
  %245 = load %struct.TYPE_9__*, %struct.TYPE_9__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = icmp eq i32 %247, 49154
  br i1 %248, label %249, label %289

249:                                              ; preds = %242
  %250 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %251 = load i32, i32* @DDC_MONID, align 4
  %252 = call { i64, i64 } @combios_setup_i2c_bus(%struct.radeon_device* %250, i32 %251, i32 0, i32 0)
  %253 = bitcast %struct.radeon_i2c_bus_rec* %21 to { i64, i64 }*
  %254 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %253, i32 0, i32 0
  %255 = extractvalue { i64, i64 } %252, 0
  store i64 %255, i64* %254, align 4
  %256 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %253, i32 0, i32 1
  %257 = extractvalue { i64, i64 } %252, 1
  store i64 %257, i64* %256, align 4
  %258 = bitcast %struct.radeon_i2c_bus_rec* %11 to i8*
  %259 = bitcast %struct.radeon_i2c_bus_rec* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %258, i8* align 4 %259, i64 16, i1 false)
  %260 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %261 = call i8* @radeon_i2c_lookup(%struct.radeon_device* %260, %struct.radeon_i2c_bus_rec* %11)
  %262 = bitcast i8* %261 to %struct.TYPE_10__*
  %263 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %264 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 5
  store %struct.TYPE_10__* %262, %struct.TYPE_10__** %265, align 8
  %266 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %267 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i32 0, i32 5
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** %268, align 8
  %270 = icmp ne %struct.TYPE_10__* %269, null
  br i1 %270, label %271, label %288

271:                                              ; preds = %249
  %272 = bitcast %struct.i2c_board_info* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %272, i8 0, i64 8, i1 false)
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %23, align 8
  %273 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %22, i32 0, i32 0
  store i32 40, i32* %273, align 4
  %274 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %22, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = load i8*, i8** %23, align 8
  %277 = call i32 @strlcpy(i32 %275, i8* %276, i32 4)
  %278 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %279 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %279, i32 0, i32 5
  %281 = load %struct.TYPE_10__*, %struct.TYPE_10__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i32 0, i32 0
  %283 = call i32 @i2c_new_device(i32* %282, %struct.i2c_board_info* %22)
  %284 = load i8*, i8** %23, align 8
  %285 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %22, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @DRM_INFO(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %284, i32 %286)
  br label %288

288:                                              ; preds = %271, %249
  br label %289

289:                                              ; preds = %288, %242, %235, %228
  br label %290

290:                                              ; preds = %289, %227
  %291 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %292 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* @RADEON_IS_MOBILITY, align 4
  %295 = and i32 %293, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %696

297:                                              ; preds = %290
  %298 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %299 = load i32, i32* @COMBIOS_POWERPLAY_INFO_TABLE, align 4
  %300 = call i32 @combios_get_table_offset(%struct.drm_device* %298, i32 %299)
  store i32 %300, i32* %4, align 4
  %301 = load i32, i32* %4, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %694

303:                                              ; preds = %297
  %304 = load i32, i32* %4, align 4
  %305 = call i32 @RBIOS8(i32 %304)
  store i32 %305, i32* %7, align 4
  %306 = load i32, i32* %4, align 4
  %307 = add nsw i32 %306, 2
  %308 = call i32 @RBIOS8(i32 %307)
  store i32 %308, i32* %8, align 4
  %309 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %310 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %310, i32 0, i32 4
  %312 = load %struct.TYPE_15__*, %struct.TYPE_15__** %311, align 8
  %313 = load i32, i32* %10, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %312, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %315, i32 0, i32 0
  store i32 1, i32* %316, align 8
  %317 = load i32, i32* %4, align 4
  %318 = add nsw i32 %317, 5
  %319 = add nsw i32 %318, 2
  %320 = call i8* @RBIOS32(i32 %319)
  %321 = ptrtoint i8* %320 to i64
  %322 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %323 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %323, i32 0, i32 4
  %325 = load %struct.TYPE_15__*, %struct.TYPE_15__** %324, align 8
  %326 = load i32, i32* %10, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %325, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %328, i32 0, i32 5
  %330 = load %struct.TYPE_14__*, %struct.TYPE_14__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %330, i64 0
  %332 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %331, i32 0, i32 0
  store i64 %321, i64* %332, align 8
  %333 = load i32, i32* %4, align 4
  %334 = add nsw i32 %333, 5
  %335 = add nsw i32 %334, 6
  %336 = call i8* @RBIOS32(i32 %335)
  %337 = ptrtoint i8* %336 to i64
  %338 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %339 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %338, i32 0, i32 1
  %340 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %339, i32 0, i32 4
  %341 = load %struct.TYPE_15__*, %struct.TYPE_15__** %340, align 8
  %342 = load i32, i32* %10, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %341, i64 %343
  %345 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %344, i32 0, i32 5
  %346 = load %struct.TYPE_14__*, %struct.TYPE_14__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %346, i64 0
  %348 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %347, i32 0, i32 1
  store i64 %337, i64* %348, align 8
  %349 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %350 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %349, i32 0, i32 1
  %351 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %350, i32 0, i32 4
  %352 = load %struct.TYPE_15__*, %struct.TYPE_15__** %351, align 8
  %353 = load i32, i32* %10, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %352, i64 %354
  %356 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %355, i32 0, i32 5
  %357 = load %struct.TYPE_14__*, %struct.TYPE_14__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %357, i64 0
  %359 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = icmp eq i64 %360, 0
  br i1 %361, label %376, label %362

362:                                              ; preds = %303
  %363 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %364 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %363, i32 0, i32 1
  %365 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %364, i32 0, i32 4
  %366 = load %struct.TYPE_15__*, %struct.TYPE_15__** %365, align 8
  %367 = load i32, i32* %10, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %366, i64 %368
  %370 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %369, i32 0, i32 5
  %371 = load %struct.TYPE_14__*, %struct.TYPE_14__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %371, i64 0
  %373 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %372, i32 0, i32 1
  %374 = load i64, i64* %373, align 8
  %375 = icmp eq i64 %374, 0
  br i1 %375, label %376, label %377

376:                                              ; preds = %362, %303
  br label %698

377:                                              ; preds = %362
  %378 = load i32, i32* @POWER_STATE_TYPE_BATTERY, align 4
  %379 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %380 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %379, i32 0, i32 1
  %381 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %380, i32 0, i32 4
  %382 = load %struct.TYPE_15__*, %struct.TYPE_15__** %381, align 8
  %383 = load i32, i32* %10, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %382, i64 %384
  %386 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %385, i32 0, i32 7
  store i32 %378, i32* %386, align 8
  %387 = load i32, i32* %4, align 4
  %388 = add nsw i32 %387, 5
  %389 = add nsw i32 %388, 0
  %390 = call i32 @RBIOS16(i32 %389)
  store i32 %390, i32* %5, align 4
  %391 = load i32, i32* %7, align 4
  %392 = icmp sgt i32 %391, 4
  br i1 %392, label %393, label %398

393:                                              ; preds = %377
  %394 = load i32, i32* %4, align 4
  %395 = add nsw i32 %394, 5
  %396 = add nsw i32 %395, 14
  %397 = call i32 @RBIOS16(i32 %396)
  store i32 %397, i32* %6, align 4
  br label %398

398:                                              ; preds = %393, %377
  %399 = load i32, i32* %5, align 4
  %400 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %401 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %400, i32 0, i32 1
  %402 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %401, i32 0, i32 4
  %403 = load %struct.TYPE_15__*, %struct.TYPE_15__** %402, align 8
  %404 = load i32, i32* %10, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %403, i64 %405
  %407 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %406, i32 0, i32 1
  store i32 %399, i32* %407, align 4
  %408 = load i32, i32* %6, align 4
  %409 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %410 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %409, i32 0, i32 1
  %411 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %410, i32 0, i32 4
  %412 = load %struct.TYPE_15__*, %struct.TYPE_15__** %411, align 8
  %413 = load i32, i32* %10, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %412, i64 %414
  %416 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %415, i32 0, i32 2
  store i32 %408, i32* %416, align 8
  %417 = load i32, i32* %5, align 4
  %418 = and i32 %417, 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %652

420:                                              ; preds = %398
  %421 = load i8*, i8** @VOLTAGE_GPIO, align 8
  %422 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %423 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %422, i32 0, i32 1
  %424 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %423, i32 0, i32 4
  %425 = load %struct.TYPE_15__*, %struct.TYPE_15__** %424, align 8
  %426 = load i32, i32* %10, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %425, i64 %427
  %429 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %428, i32 0, i32 5
  %430 = load %struct.TYPE_14__*, %struct.TYPE_14__** %429, align 8
  %431 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %430, i64 0
  %432 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %431, i32 0, i32 2
  %433 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %432, i32 0, i32 2
  store i8* %421, i8** %433, align 8
  %434 = load i32, i32* %5, align 4
  %435 = and i32 %434, 8
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %450

437:                                              ; preds = %420
  %438 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %439 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %438, i32 0, i32 1
  %440 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %439, i32 0, i32 4
  %441 = load %struct.TYPE_15__*, %struct.TYPE_15__** %440, align 8
  %442 = load i32, i32* %10, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %441, i64 %443
  %445 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %444, i32 0, i32 5
  %446 = load %struct.TYPE_14__*, %struct.TYPE_14__** %445, align 8
  %447 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %446, i64 0
  %448 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %447, i32 0, i32 2
  %449 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %448, i32 0, i32 0
  store i32 1, i32* %449, align 8
  br label %463

450:                                              ; preds = %420
  %451 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %452 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %451, i32 0, i32 1
  %453 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %452, i32 0, i32 4
  %454 = load %struct.TYPE_15__*, %struct.TYPE_15__** %453, align 8
  %455 = load i32, i32* %10, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %454, i64 %456
  %458 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %457, i32 0, i32 5
  %459 = load %struct.TYPE_14__*, %struct.TYPE_14__** %458, align 8
  %460 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %459, i64 0
  %461 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %460, i32 0, i32 2
  %462 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %461, i32 0, i32 0
  store i32 0, i32* %462, align 8
  br label %463

463:                                              ; preds = %450, %437
  %464 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %465 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %464, i32 0, i32 1
  %466 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %465, i32 0, i32 4
  %467 = load %struct.TYPE_15__*, %struct.TYPE_15__** %466, align 8
  %468 = load i32, i32* %10, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %467, i64 %469
  %471 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %470, i32 0, i32 5
  %472 = load %struct.TYPE_14__*, %struct.TYPE_14__** %471, align 8
  %473 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %472, i64 0
  %474 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %473, i32 0, i32 2
  %475 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %474, i32 0, i32 3
  %476 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %475, i32 0, i32 0
  store i32 1, i32* %476, align 8
  %477 = load i32, i32* %7, align 4
  %478 = icmp slt i32 %477, 6
  br i1 %478, label %479, label %517

479:                                              ; preds = %463
  %480 = load i32, i32* %4, align 4
  %481 = add nsw i32 %480, 5
  %482 = add nsw i32 %481, 11
  %483 = call i32 @RBIOS16(i32 %482)
  %484 = mul nsw i32 %483, 4
  %485 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %486 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %485, i32 0, i32 1
  %487 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %486, i32 0, i32 4
  %488 = load %struct.TYPE_15__*, %struct.TYPE_15__** %487, align 8
  %489 = load i32, i32* %10, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %488, i64 %490
  %492 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %491, i32 0, i32 5
  %493 = load %struct.TYPE_14__*, %struct.TYPE_14__** %492, align 8
  %494 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %493, i64 0
  %495 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %494, i32 0, i32 2
  %496 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %495, i32 0, i32 3
  %497 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %496, i32 0, i32 1
  store i32 %484, i32* %497, align 4
  %498 = load i32, i32* %4, align 4
  %499 = add nsw i32 %498, 5
  %500 = add nsw i32 %499, 13
  %501 = call i32 @RBIOS8(i32 %500)
  store i32 %501, i32* %9, align 4
  %502 = load i32, i32* %9, align 4
  %503 = shl i32 1, %502
  %504 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %505 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %504, i32 0, i32 1
  %506 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %505, i32 0, i32 4
  %507 = load %struct.TYPE_15__*, %struct.TYPE_15__** %506, align 8
  %508 = load i32, i32* %10, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %507, i64 %509
  %511 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %510, i32 0, i32 5
  %512 = load %struct.TYPE_14__*, %struct.TYPE_14__** %511, align 8
  %513 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %512, i64 0
  %514 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %513, i32 0, i32 2
  %515 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %514, i32 0, i32 3
  %516 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %515, i32 0, i32 2
  store i32 %503, i32* %516, align 8
  br label %581

517:                                              ; preds = %463
  %518 = load i32, i32* %4, align 4
  %519 = add nsw i32 %518, 5
  %520 = add nsw i32 %519, 11
  %521 = call i32 @RBIOS8(i32 %520)
  store i32 %521, i32* %24, align 4
  %522 = load i32, i32* %4, align 4
  %523 = add nsw i32 %522, 5
  %524 = add nsw i32 %523, 12
  %525 = call i32 @RBIOS16(i32 %524)
  store i32 %525, i32* %25, align 4
  %526 = load i32, i32* %24, align 4
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %528, label %566

528:                                              ; preds = %517
  %529 = load i32, i32* %25, align 4
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %531, label %566

531:                                              ; preds = %528
  %532 = load i32, i32* %25, align 4
  %533 = call i32 @RBIOS16(i32 %532)
  %534 = mul nsw i32 %533, 4
  %535 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %536 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %535, i32 0, i32 1
  %537 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %536, i32 0, i32 4
  %538 = load %struct.TYPE_15__*, %struct.TYPE_15__** %537, align 8
  %539 = load i32, i32* %10, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %538, i64 %540
  %542 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %541, i32 0, i32 5
  %543 = load %struct.TYPE_14__*, %struct.TYPE_14__** %542, align 8
  %544 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %543, i64 0
  %545 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %544, i32 0, i32 2
  %546 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %545, i32 0, i32 3
  %547 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %546, i32 0, i32 1
  store i32 %534, i32* %547, align 4
  %548 = load i32, i32* %25, align 4
  %549 = add nsw i32 %548, 2
  %550 = call i32 @RBIOS8(i32 %549)
  store i32 %550, i32* %9, align 4
  %551 = load i32, i32* %9, align 4
  %552 = shl i32 1, %551
  %553 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %554 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %553, i32 0, i32 1
  %555 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %554, i32 0, i32 4
  %556 = load %struct.TYPE_15__*, %struct.TYPE_15__** %555, align 8
  %557 = load i32, i32* %10, align 4
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %556, i64 %558
  %560 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %559, i32 0, i32 5
  %561 = load %struct.TYPE_14__*, %struct.TYPE_14__** %560, align 8
  %562 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %561, i64 0
  %563 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %562, i32 0, i32 2
  %564 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %563, i32 0, i32 3
  %565 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %564, i32 0, i32 2
  store i32 %552, i32* %565, align 8
  br label %580

566:                                              ; preds = %528, %517
  %567 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %568 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %567, i32 0, i32 1
  %569 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %568, i32 0, i32 4
  %570 = load %struct.TYPE_15__*, %struct.TYPE_15__** %569, align 8
  %571 = load i32, i32* %10, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %570, i64 %572
  %574 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %573, i32 0, i32 5
  %575 = load %struct.TYPE_14__*, %struct.TYPE_14__** %574, align 8
  %576 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %575, i64 0
  %577 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %576, i32 0, i32 2
  %578 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %577, i32 0, i32 3
  %579 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %578, i32 0, i32 0
  store i32 0, i32* %579, align 8
  br label %580

580:                                              ; preds = %566, %531
  br label %581

581:                                              ; preds = %580, %479
  %582 = load i32, i32* %6, align 4
  %583 = and i32 %582, 1792
  %584 = ashr i32 %583, 8
  switch i32 %584, label %586 [
    i32 0, label %585
    i32 1, label %599
    i32 2, label %612
    i32 3, label %625
    i32 4, label %638
  ]

585:                                              ; preds = %581
  br label %586

586:                                              ; preds = %581, %585
  %587 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %588 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %587, i32 0, i32 1
  %589 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %588, i32 0, i32 4
  %590 = load %struct.TYPE_15__*, %struct.TYPE_15__** %589, align 8
  %591 = load i32, i32* %10, align 4
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %590, i64 %592
  %594 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %593, i32 0, i32 5
  %595 = load %struct.TYPE_14__*, %struct.TYPE_14__** %594, align 8
  %596 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %595, i64 0
  %597 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %596, i32 0, i32 2
  %598 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %597, i32 0, i32 1
  store i32 0, i32* %598, align 4
  br label %651

599:                                              ; preds = %581
  %600 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %601 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %600, i32 0, i32 1
  %602 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %601, i32 0, i32 4
  %603 = load %struct.TYPE_15__*, %struct.TYPE_15__** %602, align 8
  %604 = load i32, i32* %10, align 4
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %603, i64 %605
  %607 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %606, i32 0, i32 5
  %608 = load %struct.TYPE_14__*, %struct.TYPE_14__** %607, align 8
  %609 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %608, i64 0
  %610 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %609, i32 0, i32 2
  %611 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %610, i32 0, i32 1
  store i32 33, i32* %611, align 4
  br label %651

612:                                              ; preds = %581
  %613 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %614 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %613, i32 0, i32 1
  %615 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %614, i32 0, i32 4
  %616 = load %struct.TYPE_15__*, %struct.TYPE_15__** %615, align 8
  %617 = load i32, i32* %10, align 4
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %616, i64 %618
  %620 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %619, i32 0, i32 5
  %621 = load %struct.TYPE_14__*, %struct.TYPE_14__** %620, align 8
  %622 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %621, i64 0
  %623 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %622, i32 0, i32 2
  %624 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %623, i32 0, i32 1
  store i32 66, i32* %624, align 4
  br label %651

625:                                              ; preds = %581
  %626 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %627 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %626, i32 0, i32 1
  %628 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %627, i32 0, i32 4
  %629 = load %struct.TYPE_15__*, %struct.TYPE_15__** %628, align 8
  %630 = load i32, i32* %10, align 4
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %629, i64 %631
  %633 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %632, i32 0, i32 5
  %634 = load %struct.TYPE_14__*, %struct.TYPE_14__** %633, align 8
  %635 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %634, i64 0
  %636 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %635, i32 0, i32 2
  %637 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %636, i32 0, i32 1
  store i32 99, i32* %637, align 4
  br label %651

638:                                              ; preds = %581
  %639 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %640 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %639, i32 0, i32 1
  %641 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %640, i32 0, i32 4
  %642 = load %struct.TYPE_15__*, %struct.TYPE_15__** %641, align 8
  %643 = load i32, i32* %10, align 4
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %642, i64 %644
  %646 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %645, i32 0, i32 5
  %647 = load %struct.TYPE_14__*, %struct.TYPE_14__** %646, align 8
  %648 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %647, i64 0
  %649 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %648, i32 0, i32 2
  %650 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %649, i32 0, i32 1
  store i32 132, i32* %650, align 4
  br label %651

651:                                              ; preds = %638, %625, %612, %599, %586
  br label %666

652:                                              ; preds = %398
  %653 = load i8*, i8** @VOLTAGE_NONE, align 8
  %654 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %655 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %654, i32 0, i32 1
  %656 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %655, i32 0, i32 4
  %657 = load %struct.TYPE_15__*, %struct.TYPE_15__** %656, align 8
  %658 = load i32, i32* %10, align 4
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %657, i64 %659
  %661 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %660, i32 0, i32 5
  %662 = load %struct.TYPE_14__*, %struct.TYPE_14__** %661, align 8
  %663 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %662, i64 0
  %664 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %663, i32 0, i32 2
  %665 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %664, i32 0, i32 2
  store i8* %653, i8** %665, align 8
  br label %666

666:                                              ; preds = %652, %651
  %667 = load i32, i32* %7, align 4
  %668 = icmp sgt i32 %667, 6
  br i1 %668, label %669, label %682

669:                                              ; preds = %666
  %670 = load i32, i32* %4, align 4
  %671 = add nsw i32 %670, 5
  %672 = add nsw i32 %671, 16
  %673 = call i32 @RBIOS8(i32 %672)
  %674 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %675 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %674, i32 0, i32 1
  %676 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %675, i32 0, i32 4
  %677 = load %struct.TYPE_15__*, %struct.TYPE_15__** %676, align 8
  %678 = load i32, i32* %10, align 4
  %679 = sext i32 %678 to i64
  %680 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %677, i64 %679
  %681 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %680, i32 0, i32 3
  store i32 %673, i32* %681, align 4
  br label %682

682:                                              ; preds = %669, %666
  %683 = load i64, i64* @RADEON_PM_STATE_SINGLE_DISPLAY_ONLY, align 8
  %684 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %685 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %684, i32 0, i32 1
  %686 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %685, i32 0, i32 4
  %687 = load %struct.TYPE_15__*, %struct.TYPE_15__** %686, align 8
  %688 = load i32, i32* %10, align 4
  %689 = sext i32 %688 to i64
  %690 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %687, i64 %689
  %691 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %690, i32 0, i32 4
  store i64 %683, i64* %691, align 8
  %692 = load i32, i32* %10, align 4
  %693 = add nsw i32 %692, 1
  store i32 %693, i32* %10, align 4
  br label %695

694:                                              ; preds = %297
  br label %695

695:                                              ; preds = %694, %682
  br label %697

696:                                              ; preds = %290
  br label %697

697:                                              ; preds = %696, %695
  br label %698

698:                                              ; preds = %697, %376
  %699 = load i32, i32* @POWER_STATE_TYPE_DEFAULT, align 4
  %700 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %701 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %700, i32 0, i32 1
  %702 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %701, i32 0, i32 4
  %703 = load %struct.TYPE_15__*, %struct.TYPE_15__** %702, align 8
  %704 = load i32, i32* %10, align 4
  %705 = sext i32 %704 to i64
  %706 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %703, i64 %705
  %707 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %706, i32 0, i32 7
  store i32 %699, i32* %707, align 8
  %708 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %709 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %708, i32 0, i32 1
  %710 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %709, i32 0, i32 4
  %711 = load %struct.TYPE_15__*, %struct.TYPE_15__** %710, align 8
  %712 = load i32, i32* %10, align 4
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %711, i64 %713
  %715 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %714, i32 0, i32 0
  store i32 1, i32* %715, align 8
  %716 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %717 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %716, i32 0, i32 2
  %718 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %717, i32 0, i32 0
  %719 = load i64, i64* %718, align 8
  %720 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %721 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %720, i32 0, i32 1
  %722 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %721, i32 0, i32 4
  %723 = load %struct.TYPE_15__*, %struct.TYPE_15__** %722, align 8
  %724 = load i32, i32* %10, align 4
  %725 = sext i32 %724 to i64
  %726 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %723, i64 %725
  %727 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %726, i32 0, i32 5
  %728 = load %struct.TYPE_14__*, %struct.TYPE_14__** %727, align 8
  %729 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %728, i64 0
  %730 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %729, i32 0, i32 0
  store i64 %719, i64* %730, align 8
  %731 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %732 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %731, i32 0, i32 2
  %733 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %732, i32 0, i32 1
  %734 = load i64, i64* %733, align 8
  %735 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %736 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %735, i32 0, i32 1
  %737 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %736, i32 0, i32 4
  %738 = load %struct.TYPE_15__*, %struct.TYPE_15__** %737, align 8
  %739 = load i32, i32* %10, align 4
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %738, i64 %740
  %742 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %741, i32 0, i32 5
  %743 = load %struct.TYPE_14__*, %struct.TYPE_14__** %742, align 8
  %744 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %743, i64 0
  %745 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %744, i32 0, i32 1
  store i64 %734, i64* %745, align 8
  %746 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %747 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %746, i32 0, i32 1
  %748 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %747, i32 0, i32 4
  %749 = load %struct.TYPE_15__*, %struct.TYPE_15__** %748, align 8
  %750 = load i32, i32* %10, align 4
  %751 = sext i32 %750 to i64
  %752 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %749, i64 %751
  %753 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %752, i32 0, i32 5
  %754 = load %struct.TYPE_14__*, %struct.TYPE_14__** %753, align 8
  %755 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %754, i64 0
  %756 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %757 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %756, i32 0, i32 1
  %758 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %757, i32 0, i32 4
  %759 = load %struct.TYPE_15__*, %struct.TYPE_15__** %758, align 8
  %760 = load i32, i32* %10, align 4
  %761 = sext i32 %760 to i64
  %762 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %759, i64 %761
  %763 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %762, i32 0, i32 6
  store %struct.TYPE_14__* %755, %struct.TYPE_14__** %763, align 8
  %764 = load i32, i32* %10, align 4
  %765 = icmp sgt i32 %764, 0
  br i1 %765, label %766, label %803

766:                                              ; preds = %698
  %767 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %768 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %767, i32 0, i32 1
  %769 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %768, i32 0, i32 4
  %770 = load %struct.TYPE_15__*, %struct.TYPE_15__** %769, align 8
  %771 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %770, i64 0
  %772 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %771, i32 0, i32 5
  %773 = load %struct.TYPE_14__*, %struct.TYPE_14__** %772, align 8
  %774 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %773, i64 0
  %775 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %774, i32 0, i32 2
  %776 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %775, i32 0, i32 2
  %777 = load i8*, i8** %776, align 8
  %778 = load i8*, i8** @VOLTAGE_GPIO, align 8
  %779 = icmp eq i8* %777, %778
  br i1 %779, label %780, label %803

780:                                              ; preds = %766
  %781 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %782 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %781, i32 0, i32 1
  %783 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %782, i32 0, i32 4
  %784 = load %struct.TYPE_15__*, %struct.TYPE_15__** %783, align 8
  %785 = load i32, i32* %10, align 4
  %786 = sext i32 %785 to i64
  %787 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %784, i64 %786
  %788 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %787, i32 0, i32 5
  %789 = load %struct.TYPE_14__*, %struct.TYPE_14__** %788, align 8
  %790 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %789, i64 0
  %791 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %790, i32 0, i32 2
  %792 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %793 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %792, i32 0, i32 1
  %794 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %793, i32 0, i32 4
  %795 = load %struct.TYPE_15__*, %struct.TYPE_15__** %794, align 8
  %796 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %795, i64 0
  %797 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %796, i32 0, i32 5
  %798 = load %struct.TYPE_14__*, %struct.TYPE_14__** %797, align 8
  %799 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %798, i64 0
  %800 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %799, i32 0, i32 2
  %801 = bitcast %struct.TYPE_13__* %791 to i8*
  %802 = bitcast %struct.TYPE_13__* %800 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %801, i8* align 8 %802, i64 32, i1 false)
  br label %817

803:                                              ; preds = %766, %698
  %804 = load i8*, i8** @VOLTAGE_NONE, align 8
  %805 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %806 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %805, i32 0, i32 1
  %807 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %806, i32 0, i32 4
  %808 = load %struct.TYPE_15__*, %struct.TYPE_15__** %807, align 8
  %809 = load i32, i32* %10, align 4
  %810 = sext i32 %809 to i64
  %811 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %808, i64 %810
  %812 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %811, i32 0, i32 5
  %813 = load %struct.TYPE_14__*, %struct.TYPE_14__** %812, align 8
  %814 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %813, i64 0
  %815 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %814, i32 0, i32 2
  %816 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %815, i32 0, i32 2
  store i8* %804, i8** %816, align 8
  br label %817

817:                                              ; preds = %803, %780
  %818 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %819 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %818, i32 0, i32 1
  %820 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %819, i32 0, i32 4
  %821 = load %struct.TYPE_15__*, %struct.TYPE_15__** %820, align 8
  %822 = load i32, i32* %10, align 4
  %823 = sext i32 %822 to i64
  %824 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %821, i64 %823
  %825 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %824, i32 0, i32 3
  store i32 16, i32* %825, align 4
  %826 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %827 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %826, i32 0, i32 1
  %828 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %827, i32 0, i32 4
  %829 = load %struct.TYPE_15__*, %struct.TYPE_15__** %828, align 8
  %830 = load i32, i32* %10, align 4
  %831 = sext i32 %830 to i64
  %832 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %829, i64 %831
  %833 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %832, i32 0, i32 4
  store i64 0, i64* %833, align 8
  %834 = load i32, i32* %10, align 4
  %835 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %836 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %835, i32 0, i32 1
  %837 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %836, i32 0, i32 0
  store i32 %834, i32* %837, align 8
  %838 = load i32, i32* %10, align 4
  %839 = add nsw i32 %838, 1
  %840 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %841 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %840, i32 0, i32 1
  %842 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %841, i32 0, i32 1
  store i32 %839, i32* %842, align 4
  %843 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %844 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %843, i32 0, i32 1
  %845 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %844, i32 0, i32 0
  %846 = load i32, i32* %845, align 8
  %847 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %848 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %847, i32 0, i32 1
  %849 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %848, i32 0, i32 2
  store i32 %846, i32* %849, align 8
  %850 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %851 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %850, i32 0, i32 1
  %852 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %851, i32 0, i32 3
  store i64 0, i64* %852, align 8
  br label %871

853:                                              ; preds = %81, %79
  %854 = load i32, i32* %10, align 4
  %855 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %856 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %855, i32 0, i32 1
  %857 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %856, i32 0, i32 0
  store i32 %854, i32* %857, align 8
  %858 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %859 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %858, i32 0, i32 1
  %860 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %859, i32 0, i32 1
  store i32 0, i32* %860, align 4
  %861 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %862 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %861, i32 0, i32 1
  %863 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %862, i32 0, i32 0
  %864 = load i32, i32* %863, align 8
  %865 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %866 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %865, i32 0, i32 1
  %867 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %866, i32 0, i32 2
  store i32 %864, i32* %867, align 8
  %868 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %869 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %868, i32 0, i32 1
  %870 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %869, i32 0, i32 3
  store i64 0, i64* %870, align 8
  br label %871

871:                                              ; preds = %853, %817
  ret void
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @combios_get_table_offset(%struct.drm_device*, i32) #1

declare dso_local i32 @RBIOS8(i32) #1

declare dso_local i32 @DRM_INFO(i8*, i8*, i32) #1

declare dso_local { i64, i64 } @combios_setup_i2c_bus(%struct.radeon_device*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @radeon_i2c_lookup(%struct.radeon_device*, %struct.radeon_i2c_bus_rec*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @i2c_new_device(i32*, %struct.i2c_board_info*) #1

declare dso_local i8* @RBIOS32(i32) #1

declare dso_local i32 @RBIOS16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
