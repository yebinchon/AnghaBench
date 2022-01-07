; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_parse_power_table_4_5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_parse_power_table_4_5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_13__, %struct.TYPE_10__, %struct.radeon_mode_info }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.radeon_mode_info = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct._ATOM_PPLIB_NONCLOCK_INFO = type { i32 }
%union.pplib_power_state = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32* }
%union.pplib_clock_info = type { i32 }
%union.power_info = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@DATA = common dso_local global i32 0, align 4
@PowerPlayInfo = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RADEON_PM_MODE_NO_DISPLAY = common dso_local global i32 0, align 4
@POWER_STATE_TYPE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @radeon_atombios_parse_power_table_4_5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_atombios_parse_power_table_4_5(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_mode_info*, align 8
  %5 = alloca %struct._ATOM_PPLIB_NONCLOCK_INFO*, align 8
  %6 = alloca %union.pplib_power_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.pplib_clock_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %union.power_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %18 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 2
  store %struct.radeon_mode_info* %19, %struct.radeon_mode_info** %4, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %20 = load i32, i32* @DATA, align 4
  %21 = load i32, i32* @PowerPlayInfo, align 4
  %22 = call i32 @GetIndexIntoMasterTable(i32 %20, i32 %21)
  store i32 %22, i32* %14, align 4
  %23 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %24 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %23, i32 0, i32 0
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = load i32, i32* %14, align 4
  %27 = call i32 @atom_parse_data_header(%struct.TYPE_14__* %25, i32 %26, i32* null, i32* %16, i32* %17, i64* %15)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %2, align 4
  br label %350

31:                                               ; preds = %1
  %32 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %33 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %32, i32 0, i32 0
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %15, align 8
  %38 = add nsw i64 %36, %37
  %39 = inttoptr i64 %38 to %union.power_info*
  store %union.power_info* %39, %union.power_info** %13, align 8
  %40 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %41 = load %union.power_info*, %union.power_info** %13, align 8
  %42 = bitcast %union.power_info* %41 to %struct.TYPE_9__*
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 7
  %44 = call i32 @radeon_atombios_add_pplib_thermal_controller(%struct.radeon_device* %40, i32* %43)
  %45 = load %union.power_info*, %union.power_info** %13, align 8
  %46 = bitcast %union.power_info* %45 to %struct.TYPE_9__*
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %31
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %2, align 4
  br label %350

52:                                               ; preds = %31
  %53 = load %union.power_info*, %union.power_info** %13, align 8
  %54 = bitcast %union.power_info* %53 to %struct.TYPE_9__*
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i8* @kcalloc(i32 %56, i32 4, i32 %57)
  %59 = bitcast i8* %58 to %struct.TYPE_12__*
  %60 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %61 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  store %struct.TYPE_12__* %59, %struct.TYPE_12__** %62, align 8
  %63 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %64 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %65, align 8
  %67 = icmp ne %struct.TYPE_12__* %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %52
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %2, align 4
  br label %350

70:                                               ; preds = %52
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %279, %70
  %72 = load i32, i32* %7, align 4
  %73 = load %union.power_info*, %union.power_info** %13, align 8
  %74 = bitcast %union.power_info* %73 to %struct.TYPE_9__*
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %72, %76
  br i1 %77, label %78, label %282

78:                                               ; preds = %71
  store i32 0, i32* %10, align 4
  %79 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %80 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %79, i32 0, i32 0
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %15, align 8
  %85 = add nsw i64 %83, %84
  %86 = load %union.power_info*, %union.power_info** %13, align 8
  %87 = bitcast %union.power_info* %86 to %struct.TYPE_9__*
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @le16_to_cpu(i32 %89)
  %91 = add nsw i64 %85, %90
  %92 = load i32, i32* %7, align 4
  %93 = load %union.power_info*, %union.power_info** %13, align 8
  %94 = bitcast %union.power_info* %93 to %struct.TYPE_9__*
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 %92, %96
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %91, %98
  %100 = inttoptr i64 %99 to %union.pplib_power_state*
  store %union.pplib_power_state* %100, %union.pplib_power_state** %6, align 8
  %101 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %102 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %101, i32 0, i32 0
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %15, align 8
  %107 = add nsw i64 %105, %106
  %108 = load %union.power_info*, %union.power_info** %13, align 8
  %109 = bitcast %union.power_info* %108 to %struct.TYPE_9__*
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @le16_to_cpu(i32 %111)
  %113 = add nsw i64 %107, %112
  %114 = load %union.pplib_power_state*, %union.pplib_power_state** %6, align 8
  %115 = bitcast %union.pplib_power_state* %114 to %struct.TYPE_8__*
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %union.power_info*, %union.power_info** %13, align 8
  %119 = bitcast %union.power_info* %118 to %struct.TYPE_9__*
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = mul nsw i32 %117, %121
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %113, %123
  %125 = inttoptr i64 %124 to %struct._ATOM_PPLIB_NONCLOCK_INFO*
  store %struct._ATOM_PPLIB_NONCLOCK_INFO* %125, %struct._ATOM_PPLIB_NONCLOCK_INFO** %5, align 8
  %126 = load %union.power_info*, %union.power_info** %13, align 8
  %127 = bitcast %union.power_info* %126 to %struct.TYPE_9__*
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = sub nsw i32 %129, 1
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %78
  %133 = load %union.power_info*, %union.power_info** %13, align 8
  %134 = bitcast %union.power_info* %133 to %struct.TYPE_9__*
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = sub nsw i32 %136, 1
  br label %139

138:                                              ; preds = %78
  br label %139

139:                                              ; preds = %138, %132
  %140 = phi i32 [ %137, %132 ], [ 1, %138 ]
  %141 = load i32, i32* @GFP_KERNEL, align 4
  %142 = call i8* @kcalloc(i32 %140, i32 4, i32 %141)
  %143 = bitcast i8* %142 to %struct.TYPE_11__*
  %144 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %145 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %146, align 8
  %148 = load i32, i32* %7, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  store %struct.TYPE_11__* %143, %struct.TYPE_11__** %151, align 8
  %152 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %153 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %154, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %159, align 8
  %161 = icmp ne %struct.TYPE_11__* %160, null
  br i1 %161, label %164, label %162

162:                                              ; preds = %139
  %163 = load i32, i32* %9, align 4
  store i32 %163, i32* %2, align 4
  br label %350

164:                                              ; preds = %139
  %165 = load %union.power_info*, %union.power_info** %13, align 8
  %166 = bitcast %union.power_info* %165 to %struct.TYPE_9__*
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = sub nsw i32 %168, 1
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %225

171:                                              ; preds = %164
  store i32 0, i32* %8, align 4
  br label %172

172:                                              ; preds = %221, %171
  %173 = load i32, i32* %8, align 4
  %174 = load %union.power_info*, %union.power_info** %13, align 8
  %175 = bitcast %union.power_info* %174 to %struct.TYPE_9__*
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = sub nsw i32 %177, 1
  %179 = icmp slt i32 %173, %178
  br i1 %179, label %180, label %224

180:                                              ; preds = %172
  %181 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %182 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %181, i32 0, i32 0
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* %15, align 8
  %187 = add nsw i64 %185, %186
  %188 = load %union.power_info*, %union.power_info** %13, align 8
  %189 = bitcast %union.power_info* %188 to %struct.TYPE_9__*
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 4
  %192 = call i64 @le16_to_cpu(i32 %191)
  %193 = add nsw i64 %187, %192
  %194 = load %union.pplib_power_state*, %union.pplib_power_state** %6, align 8
  %195 = bitcast %union.pplib_power_state* %194 to %struct.TYPE_8__*
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %8, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load %union.power_info*, %union.power_info** %13, align 8
  %203 = bitcast %union.power_info* %202 to %struct.TYPE_9__*
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = mul nsw i32 %201, %205
  %207 = sext i32 %206 to i64
  %208 = add nsw i64 %193, %207
  %209 = inttoptr i64 %208 to %union.pplib_clock_info*
  store %union.pplib_clock_info* %209, %union.pplib_clock_info** %11, align 8
  %210 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %211 = load i32, i32* %9, align 4
  %212 = load i32, i32* %10, align 4
  %213 = load %union.pplib_clock_info*, %union.pplib_clock_info** %11, align 8
  %214 = call i32 @radeon_atombios_parse_pplib_clock_info(%struct.radeon_device* %210, i32 %211, i32 %212, %union.pplib_clock_info* %213)
  store i32 %214, i32* %12, align 4
  %215 = load i32, i32* %12, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %180
  %218 = load i32, i32* %10, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %10, align 4
  br label %220

220:                                              ; preds = %217, %180
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %8, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %8, align 4
  br label %172

224:                                              ; preds = %172
  br label %258

225:                                              ; preds = %164
  %226 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %227 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %231 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 1
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %232, align 8
  %234 = load i32, i32* %9, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 1
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i64 0
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 2
  store i32 %229, i32* %240, align 4
  %241 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %242 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %246 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 1
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %247, align 8
  %249 = load i32, i32* %9, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 1
  %253 = load %struct.TYPE_11__*, %struct.TYPE_11__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i64 0
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 1
  store i32 %244, i32* %255, align 4
  %256 = load i32, i32* %10, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %10, align 4
  br label %258

258:                                              ; preds = %225, %224
  %259 = load i32, i32* %10, align 4
  %260 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %261 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 1
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %262, align 8
  %264 = load i32, i32* %9, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 0
  store i32 %259, i32* %267, align 8
  %268 = load i32, i32* %10, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %278

270:                                              ; preds = %258
  %271 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %272 = load i32, i32* %9, align 4
  %273 = load i32, i32* %10, align 4
  %274 = load %struct._ATOM_PPLIB_NONCLOCK_INFO*, %struct._ATOM_PPLIB_NONCLOCK_INFO** %5, align 8
  %275 = call i32 @radeon_atombios_parse_pplib_non_clock_info(%struct.radeon_device* %271, i32 %272, i32 %273, %struct._ATOM_PPLIB_NONCLOCK_INFO* %274)
  %276 = load i32, i32* %9, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %9, align 4
  br label %278

278:                                              ; preds = %270, %258
  br label %279

279:                                              ; preds = %278
  %280 = load i32, i32* %7, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %7, align 4
  br label %71

282:                                              ; preds = %71
  store i32 0, i32* %7, align 4
  br label %283

283:                                              ; preds = %314, %282
  %284 = load i32, i32* %7, align 4
  %285 = load i32, i32* %9, align 4
  %286 = icmp slt i32 %284, %285
  br i1 %286, label %287, label %317

287:                                              ; preds = %283
  %288 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %289 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %289, i32 0, i32 1
  %291 = load %struct.TYPE_12__*, %struct.TYPE_12__** %290, align 8
  %292 = load i32, i32* %7, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %291, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = icmp sgt i32 %296, 1
  br i1 %297, label %298, label %313

298:                                              ; preds = %287
  %299 = load i32, i32* @RADEON_PM_MODE_NO_DISPLAY, align 4
  %300 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %301 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %301, i32 0, i32 1
  %303 = load %struct.TYPE_12__*, %struct.TYPE_12__** %302, align 8
  %304 = load i32, i32* %7, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %306, i32 0, i32 1
  %308 = load %struct.TYPE_11__*, %struct.TYPE_11__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %308, i64 0
  %310 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = or i32 %311, %299
  store i32 %312, i32* %310, align 4
  br label %313

313:                                              ; preds = %298, %287
  br label %314

314:                                              ; preds = %313
  %315 = load i32, i32* %7, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %7, align 4
  br label %283

317:                                              ; preds = %283
  %318 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %319 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = icmp eq i32 %321, -1
  br i1 %322, label %323, label %348

323:                                              ; preds = %317
  %324 = load i32, i32* @POWER_STATE_TYPE_DEFAULT, align 4
  %325 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %326 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %326, i32 0, i32 1
  %328 = load %struct.TYPE_12__*, %struct.TYPE_12__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %328, i64 0
  %330 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %329, i32 0, i32 3
  store i32 %324, i32* %330, align 8
  %331 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %332 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %332, i32 0, i32 0
  store i32 0, i32* %333, align 8
  %334 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %335 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %335, i32 0, i32 1
  %337 = load %struct.TYPE_12__*, %struct.TYPE_12__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %337, i64 0
  %339 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %338, i32 0, i32 1
  %340 = load %struct.TYPE_11__*, %struct.TYPE_11__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %340, i64 0
  %342 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %343 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %343, i32 0, i32 1
  %345 = load %struct.TYPE_12__*, %struct.TYPE_12__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %345, i64 0
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %346, i32 0, i32 2
  store %struct.TYPE_11__* %341, %struct.TYPE_11__** %347, align 8
  br label %348

348:                                              ; preds = %323, %317
  %349 = load i32, i32* %9, align 4
  store i32 %349, i32* %2, align 4
  br label %350

350:                                              ; preds = %348, %162, %68, %50, %29
  %351 = load i32, i32* %2, align 4
  ret i32 %351
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @atom_parse_data_header(%struct.TYPE_14__*, i32, i32*, i32*, i32*, i64*) #1

declare dso_local i32 @radeon_atombios_add_pplib_thermal_controller(%struct.radeon_device*, i32*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @radeon_atombios_parse_pplib_clock_info(%struct.radeon_device*, i32, i32, %union.pplib_clock_info*) #1

declare dso_local i32 @radeon_atombios_parse_pplib_non_clock_info(%struct.radeon_device*, i32, i32, %struct._ATOM_PPLIB_NONCLOCK_INFO*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
