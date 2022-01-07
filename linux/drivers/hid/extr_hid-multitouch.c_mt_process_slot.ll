; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-multitouch.c_mt_process_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-multitouch.c_mt_process_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt_device = type { i32, i32 }
%struct.input_dev = type { %struct.input_mt* }
%struct.input_mt = type { %struct.input_mt_slot* }
%struct.input_mt_slot = type { i32 }
%struct.mt_application = type { i32, i64, i64, i64, i32* }
%struct.mt_usages = type { i32*, i32*, i32*, i64*, i64*, i32*, i32*, i32*, i32*, i32*, i32* }

@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MT_QUIRK_CONTACT_CNT_ACCURATE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@MT_QUIRK_ALWAYS_VALID = common dso_local global i32 0, align 4
@MT_QUIRK_VALID_IS_INRANGE = common dso_local global i32 0, align 4
@MT_QUIRK_NOT_SEEN_MEANS_UP = common dso_local global i32 0, align 4
@MT_QUIRK_VALID_IS_CONFIDENCE = common dso_local global i32 0, align 4
@MT_QUIRK_IGNORE_DUPLICATES = common dso_local global i32 0, align 4
@MT_QUIRK_CONFIDENCE = common dso_local global i32 0, align 4
@MT_QUIRK_HOVERING = common dso_local global i32 0, align 4
@HID_GD_SYSTEM_MULTIAXIS = common dso_local global i64 0, align 8
@MT_TOOL_DIAL = common dso_local global i32 0, align 4
@MT_TOOL_PALM = common dso_local global i32 0, align 4
@DEFAULT_ZERO = common dso_local global i32* null, align 8
@ABS_MT_ORIENTATION = common dso_local global i32 0, align 4
@MT_QUIRK_TOUCH_SIZE_SCALING = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_TOOL_X = common dso_local global i32 0, align 4
@ABS_MT_TOOL_Y = common dso_local global i32 0, align 4
@ABS_MT_DISTANCE = common dso_local global i32 0, align 4
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MINOR = common dso_local global i32 0, align 4
@MT_IO_FLAGS_ACTIVE_SLOTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt_device*, %struct.input_dev*, %struct.mt_application*, %struct.mt_usages*)* @mt_process_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt_process_slot(%struct.mt_device* %0, %struct.input_dev* %1, %struct.mt_application* %2, %struct.mt_usages* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mt_device*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca %struct.mt_application*, align 8
  %9 = alloca %struct.mt_usages*, align 8
  %10 = alloca %struct.input_mt*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.input_mt_slot*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.mt_device* %0, %struct.mt_device** %6, align 8
  store %struct.input_dev* %1, %struct.input_dev** %7, align 8
  store %struct.mt_application* %2, %struct.mt_application** %8, align 8
  store %struct.mt_usages* %3, %struct.mt_usages** %9, align 8
  %25 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %26 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %25, i32 0, i32 0
  %27 = load %struct.input_mt*, %struct.input_mt** %26, align 8
  store %struct.input_mt* %27, %struct.input_mt** %10, align 8
  %28 = load %struct.mt_application*, %struct.mt_application** %8, align 8
  %29 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %31 = load i32, i32* @MT_TOOL_FINGER, align 4
  store i32 %31, i32* %17, align 4
  %32 = load %struct.mt_usages*, %struct.mt_usages** %9, align 8
  %33 = icmp ne %struct.mt_usages* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %349

37:                                               ; preds = %4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @MT_QUIRK_CONTACT_CNT_ACCURATE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = load %struct.mt_application*, %struct.mt_application** %8, align 8
  %44 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.mt_application*, %struct.mt_application** %8, align 8
  %47 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp sge i64 %45, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* @EAGAIN, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %349

53:                                               ; preds = %42, %37
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @MT_QUIRK_ALWAYS_VALID, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %93, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @MT_QUIRK_VALID_IS_INRANGE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.mt_usages*, %struct.mt_usages** %9, align 8
  %65 = getelementptr inbounds %struct.mt_usages, %struct.mt_usages* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %63, %58
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @MT_QUIRK_NOT_SEEN_MEANS_UP, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.mt_usages*, %struct.mt_usages** %9, align 8
  %75 = getelementptr inbounds %struct.mt_usages, %struct.mt_usages* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %73, %68
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @MT_QUIRK_VALID_IS_CONFIDENCE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load %struct.mt_usages*, %struct.mt_usages** %9, align 8
  %85 = getelementptr inbounds %struct.mt_usages, %struct.mt_usages* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %12, align 4
  br label %88

88:                                               ; preds = %83, %78
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %88
  store i32 0, i32* %5, align 4
  br label %349

92:                                               ; preds = %88
  br label %93

93:                                               ; preds = %92, %53
  %94 = load %struct.mt_device*, %struct.mt_device** %6, align 8
  %95 = load %struct.mt_application*, %struct.mt_application** %8, align 8
  %96 = load %struct.mt_usages*, %struct.mt_usages** %9, align 8
  %97 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %98 = call i32 @mt_compute_slot(%struct.mt_device* %94, %struct.mt_application* %95, %struct.mt_usages* %96, %struct.input_dev* %97)
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* %16, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %93
  %102 = load i32, i32* %16, align 4
  %103 = load %struct.mt_device*, %struct.mt_device** %6, align 8
  %104 = getelementptr inbounds %struct.mt_device, %struct.mt_device* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp sge i32 %102, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %101, %93
  store i32 0, i32* %5, align 4
  br label %349

108:                                              ; preds = %101
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* @MT_QUIRK_IGNORE_DUPLICATES, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %135

113:                                              ; preds = %108
  %114 = load %struct.input_mt*, %struct.input_mt** %10, align 8
  %115 = icmp ne %struct.input_mt* %114, null
  br i1 %115, label %116, label %135

116:                                              ; preds = %113
  %117 = load %struct.input_mt*, %struct.input_mt** %10, align 8
  %118 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %117, i32 0, i32 0
  %119 = load %struct.input_mt_slot*, %struct.input_mt_slot** %118, align 8
  %120 = load i32, i32* %16, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.input_mt_slot, %struct.input_mt_slot* %119, i64 %121
  store %struct.input_mt_slot* %122, %struct.input_mt_slot** %18, align 8
  %123 = load %struct.input_mt_slot*, %struct.input_mt_slot** %18, align 8
  %124 = call i64 @input_mt_is_active(%struct.input_mt_slot* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %116
  %127 = load %struct.input_mt*, %struct.input_mt** %10, align 8
  %128 = load %struct.input_mt_slot*, %struct.input_mt_slot** %18, align 8
  %129 = call i64 @input_mt_is_used(%struct.input_mt* %127, %struct.input_mt_slot* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = load i32, i32* @EAGAIN, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %5, align 4
  br label %349

134:                                              ; preds = %126, %116
  br label %135

135:                                              ; preds = %134, %113, %108
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* @MT_QUIRK_CONFIDENCE, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = load %struct.mt_usages*, %struct.mt_usages** %9, align 8
  %142 = getelementptr inbounds %struct.mt_usages, %struct.mt_usages* %141, i32 0, i32 2
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %13, align 4
  br label %145

145:                                              ; preds = %140, %135
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* @MT_QUIRK_HOVERING, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load %struct.mt_usages*, %struct.mt_usages** %9, align 8
  %152 = getelementptr inbounds %struct.mt_usages, %struct.mt_usages* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %14, align 4
  br label %155

155:                                              ; preds = %150, %145
  %156 = load %struct.mt_usages*, %struct.mt_usages** %9, align 8
  %157 = getelementptr inbounds %struct.mt_usages, %struct.mt_usages* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %155
  %162 = load i32, i32* %14, align 4
  %163 = icmp ne i32 %162, 0
  br label %164

164:                                              ; preds = %161, %155
  %165 = phi i1 [ true, %155 ], [ %163, %161 ]
  %166 = zext i1 %165 to i32
  store i32 %166, i32* %15, align 4
  %167 = load %struct.mt_application*, %struct.mt_application** %8, align 8
  %168 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @HID_GD_SYSTEM_MULTIAXIS, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %164
  %173 = load i32, i32* @MT_TOOL_DIAL, align 4
  store i32 %173, i32* %17, align 4
  br label %202

174:                                              ; preds = %164
  %175 = load i32, i32* %13, align 4
  %176 = icmp ne i32 %175, 0
  %177 = xor i1 %176, true
  %178 = zext i1 %177 to i32
  %179 = call i64 @unlikely(i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %201

181:                                              ; preds = %174
  %182 = load i32, i32* @MT_TOOL_PALM, align 4
  store i32 %182, i32* %17, align 4
  %183 = load i32, i32* %15, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %200, label %185

185:                                              ; preds = %181
  %186 = load %struct.input_mt*, %struct.input_mt** %10, align 8
  %187 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %186, i32 0, i32 0
  %188 = load %struct.input_mt_slot*, %struct.input_mt_slot** %187, align 8
  %189 = load i32, i32* %16, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.input_mt_slot, %struct.input_mt_slot* %188, i64 %190
  %192 = call i64 @input_mt_is_active(%struct.input_mt_slot* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %185
  store i32 1, i32* %15, align 4
  %195 = load i32, i32* %16, align 4
  %196 = load %struct.mt_application*, %struct.mt_application** %8, align 8
  %197 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %196, i32 0, i32 4
  %198 = load i32*, i32** %197, align 8
  %199 = call i32 @set_bit(i32 %195, i32* %198)
  br label %200

200:                                              ; preds = %194, %185, %181
  br label %201

201:                                              ; preds = %200, %174
  br label %202

202:                                              ; preds = %201, %172
  %203 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %204 = load i32, i32* %16, align 4
  %205 = call i32 @input_mt_slot(%struct.input_dev* %203, i32 %204)
  %206 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %207 = load i32, i32* %17, align 4
  %208 = load i32, i32* %15, align 4
  %209 = call i32 @input_mt_report_slot_state(%struct.input_dev* %206, i32 %207, i32 %208)
  %210 = load i32, i32* %15, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %348

212:                                              ; preds = %202
  %213 = load %struct.mt_usages*, %struct.mt_usages** %9, align 8
  %214 = getelementptr inbounds %struct.mt_usages, %struct.mt_usages* %213, i32 0, i32 3
  %215 = load i64*, i64** %214, align 8
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.mt_usages*, %struct.mt_usages** %9, align 8
  %218 = getelementptr inbounds %struct.mt_usages, %struct.mt_usages* %217, i32 0, i32 4
  %219 = load i64*, i64** %218, align 8
  %220 = load i64, i64* %219, align 8
  %221 = icmp sgt i64 %216, %220
  %222 = zext i1 %221 to i32
  store i32 %222, i32* %19, align 4
  %223 = load %struct.mt_usages*, %struct.mt_usages** %9, align 8
  %224 = getelementptr inbounds %struct.mt_usages, %struct.mt_usages* %223, i32 0, i32 3
  %225 = load i64*, i64** %224, align 8
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.mt_usages*, %struct.mt_usages** %9, align 8
  %228 = getelementptr inbounds %struct.mt_usages, %struct.mt_usages* %227, i32 0, i32 4
  %229 = load i64*, i64** %228, align 8
  %230 = load i64, i64* %229, align 8
  %231 = call i32 @max(i64 %226, i64 %230)
  store i32 %231, i32* %20, align 4
  %232 = load %struct.mt_usages*, %struct.mt_usages** %9, align 8
  %233 = getelementptr inbounds %struct.mt_usages, %struct.mt_usages* %232, i32 0, i32 3
  %234 = load i64*, i64** %233, align 8
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.mt_usages*, %struct.mt_usages** %9, align 8
  %237 = getelementptr inbounds %struct.mt_usages, %struct.mt_usages* %236, i32 0, i32 4
  %238 = load i64*, i64** %237, align 8
  %239 = load i64, i64* %238, align 8
  %240 = call i32 @min(i64 %235, i64 %239)
  store i32 %240, i32* %21, align 4
  %241 = load i32, i32* %19, align 4
  store i32 %241, i32* %22, align 4
  %242 = load %struct.mt_usages*, %struct.mt_usages** %9, align 8
  %243 = getelementptr inbounds %struct.mt_usages, %struct.mt_usages* %242, i32 0, i32 5
  %244 = load i32*, i32** %243, align 8
  %245 = load i32*, i32** @DEFAULT_ZERO, align 8
  %246 = icmp ne i32* %244, %245
  br i1 %246, label %247, label %267

247:                                              ; preds = %212
  %248 = load %struct.mt_usages*, %struct.mt_usages** %9, align 8
  %249 = getelementptr inbounds %struct.mt_usages, %struct.mt_usages* %248, i32 0, i32 5
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %250, align 4
  store i32 %251, i32* %24, align 4
  %252 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %253 = load i32, i32* @ABS_MT_ORIENTATION, align 4
  %254 = call i32 @input_abs_get_max(%struct.input_dev* %252, i32 %253)
  store i32 %254, i32* %23, align 4
  %255 = load i32, i32* %24, align 4
  %256 = load i32, i32* %23, align 4
  %257 = mul nsw i32 %256, 2
  %258 = icmp sgt i32 %255, %257
  br i1 %258, label %259, label %264

259:                                              ; preds = %247
  %260 = load i32, i32* %23, align 4
  %261 = mul nsw i32 %260, 4
  %262 = load i32, i32* %24, align 4
  %263 = sub nsw i32 %262, %261
  store i32 %263, i32* %24, align 4
  br label %264

264:                                              ; preds = %259, %247
  %265 = load i32, i32* %24, align 4
  %266 = sub nsw i32 0, %265
  store i32 %266, i32* %22, align 4
  br label %267

267:                                              ; preds = %264, %212
  %268 = load i32, i32* %11, align 4
  %269 = load i32, i32* @MT_QUIRK_TOUCH_SIZE_SCALING, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %277

272:                                              ; preds = %267
  %273 = load i32, i32* %20, align 4
  %274 = ashr i32 %273, 1
  store i32 %274, i32* %20, align 4
  %275 = load i32, i32* %21, align 4
  %276 = ashr i32 %275, 1
  store i32 %276, i32* %21, align 4
  br label %277

277:                                              ; preds = %272, %267
  %278 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %279 = load i32, i32* @EV_ABS, align 4
  %280 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %281 = load %struct.mt_usages*, %struct.mt_usages** %9, align 8
  %282 = getelementptr inbounds %struct.mt_usages, %struct.mt_usages* %281, i32 0, i32 6
  %283 = load i32*, i32** %282, align 8
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @input_event(%struct.input_dev* %278, i32 %279, i32 %280, i32 %284)
  %286 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %287 = load i32, i32* @EV_ABS, align 4
  %288 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %289 = load %struct.mt_usages*, %struct.mt_usages** %9, align 8
  %290 = getelementptr inbounds %struct.mt_usages, %struct.mt_usages* %289, i32 0, i32 7
  %291 = load i32*, i32** %290, align 8
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @input_event(%struct.input_dev* %286, i32 %287, i32 %288, i32 %292)
  %294 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %295 = load i32, i32* @EV_ABS, align 4
  %296 = load i32, i32* @ABS_MT_TOOL_X, align 4
  %297 = load %struct.mt_usages*, %struct.mt_usages** %9, align 8
  %298 = getelementptr inbounds %struct.mt_usages, %struct.mt_usages* %297, i32 0, i32 8
  %299 = load i32*, i32** %298, align 8
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @input_event(%struct.input_dev* %294, i32 %295, i32 %296, i32 %300)
  %302 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %303 = load i32, i32* @EV_ABS, align 4
  %304 = load i32, i32* @ABS_MT_TOOL_Y, align 4
  %305 = load %struct.mt_usages*, %struct.mt_usages** %9, align 8
  %306 = getelementptr inbounds %struct.mt_usages, %struct.mt_usages* %305, i32 0, i32 9
  %307 = load i32*, i32** %306, align 8
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @input_event(%struct.input_dev* %302, i32 %303, i32 %304, i32 %308)
  %310 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %311 = load i32, i32* @EV_ABS, align 4
  %312 = load i32, i32* @ABS_MT_DISTANCE, align 4
  %313 = load %struct.mt_usages*, %struct.mt_usages** %9, align 8
  %314 = getelementptr inbounds %struct.mt_usages, %struct.mt_usages* %313, i32 0, i32 1
  %315 = load i32*, i32** %314, align 8
  %316 = load i32, i32* %315, align 4
  %317 = icmp ne i32 %316, 0
  %318 = xor i1 %317, true
  %319 = zext i1 %318 to i32
  %320 = call i32 @input_event(%struct.input_dev* %310, i32 %311, i32 %312, i32 %319)
  %321 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %322 = load i32, i32* @EV_ABS, align 4
  %323 = load i32, i32* @ABS_MT_ORIENTATION, align 4
  %324 = load i32, i32* %22, align 4
  %325 = call i32 @input_event(%struct.input_dev* %321, i32 %322, i32 %323, i32 %324)
  %326 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %327 = load i32, i32* @EV_ABS, align 4
  %328 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %329 = load %struct.mt_usages*, %struct.mt_usages** %9, align 8
  %330 = getelementptr inbounds %struct.mt_usages, %struct.mt_usages* %329, i32 0, i32 10
  %331 = load i32*, i32** %330, align 8
  %332 = load i32, i32* %331, align 4
  %333 = call i32 @input_event(%struct.input_dev* %326, i32 %327, i32 %328, i32 %332)
  %334 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %335 = load i32, i32* @EV_ABS, align 4
  %336 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %337 = load i32, i32* %20, align 4
  %338 = call i32 @input_event(%struct.input_dev* %334, i32 %335, i32 %336, i32 %337)
  %339 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %340 = load i32, i32* @EV_ABS, align 4
  %341 = load i32, i32* @ABS_MT_TOUCH_MINOR, align 4
  %342 = load i32, i32* %21, align 4
  %343 = call i32 @input_event(%struct.input_dev* %339, i32 %340, i32 %341, i32 %342)
  %344 = load i32, i32* @MT_IO_FLAGS_ACTIVE_SLOTS, align 4
  %345 = load %struct.mt_device*, %struct.mt_device** %6, align 8
  %346 = getelementptr inbounds %struct.mt_device, %struct.mt_device* %345, i32 0, i32 1
  %347 = call i32 @set_bit(i32 %344, i32* %346)
  br label %348

348:                                              ; preds = %277, %202
  store i32 0, i32* %5, align 4
  br label %349

349:                                              ; preds = %348, %131, %107, %91, %50, %34
  %350 = load i32, i32* %5, align 4
  ret i32 %350
}

declare dso_local i32 @mt_compute_slot(%struct.mt_device*, %struct.mt_application*, %struct.mt_usages*, %struct.input_dev*) #1

declare dso_local i64 @input_mt_is_active(%struct.input_mt_slot*) #1

declare dso_local i64 @input_mt_is_used(%struct.input_mt*, %struct.input_mt_slot*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @input_mt_slot(%struct.input_dev*, i32) #1

declare dso_local i32 @input_mt_report_slot_state(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @max(i64, i64) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @input_abs_get_max(%struct.input_dev*, i32) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
