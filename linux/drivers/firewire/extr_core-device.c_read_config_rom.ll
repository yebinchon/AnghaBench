; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-device.c_read_config_rom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-device.c_read_config_rom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_device = type { i32, i32*, i32, i32, i32, i32, %struct.TYPE_2__*, %struct.fw_card* }
%struct.TYPE_2__ = type { i32 }
%struct.fw_card = type { i32, i64 }

@MAX_CONFIG_ROM_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SCODE_100 = common dso_local global i32 0, align 4
@RCODE_COMPLETE = common dso_local global i32 0, align 4
@RCODE_BUSY = common dso_local global i32 0, align 4
@SCODE_BETA = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"skipped invalid ROM block %x at %llx\0A\00", align 1
@CSR_REGISTER_BASE = common dso_local global i32 0, align 4
@CSR_CONFIG_ROM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"skipped unsupported ROM entry %x at %llx\0A\00", align 1
@fw_device_rwsem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_device*, i32)* @read_config_rom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_config_rom(%struct.fw_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fw_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fw_card*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.fw_device* %0, %struct.fw_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %19 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %18, i32 0, i32 7
  %20 = load %struct.fw_card*, %struct.fw_card** %19, align 8
  store %struct.fw_card* %20, %struct.fw_card** %6, align 8
  %21 = load i32, i32* @MAX_CONFIG_ROM_SIZE, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 4, %22
  %24 = load i32, i32* @MAX_CONFIG_ROM_SIZE, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 4, %25
  %27 = add i64 %23, %26
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32* @kmalloc(i32 %28, i32 %29)
  store i32* %30, i32** %9, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %350

36:                                               ; preds = %2
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* @MAX_CONFIG_ROM_SIZE, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32* %40, i32** %10, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* @MAX_CONFIG_ROM_SIZE, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 4, %43
  %45 = trunc i64 %44 to i32
  %46 = call i32 @memset(i32* %41, i32 0, i32 %45)
  %47 = load i32, i32* @SCODE_100, align 4
  %48 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %49 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  store i32 0, i32* %13, align 4
  br label %50

50:                                               ; preds = %79, %36
  %51 = load i32, i32* %13, align 4
  %52 = icmp slt i32 %51, 5
  br i1 %52, label %53, label %82

53:                                               ; preds = %50
  %54 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = call i32 @read_rom(%struct.fw_device* %54, i32 %55, i32 %56, i32* %60)
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* @RCODE_COMPLETE, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  br label %346

66:                                               ; preds = %53
  %67 = load i32, i32* %13, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* @RCODE_BUSY, align 4
  store i32 %77, i32* %16, align 4
  br label %346

78:                                               ; preds = %69, %66
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %13, align 4
  br label %50

82:                                               ; preds = %50
  %83 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %84 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %83, i32 0, i32 6
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %89 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 7
  %94 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %95 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %109, label %98

98:                                               ; preds = %82
  %99 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %100 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @SCODE_BETA, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %109, label %104

104:                                              ; preds = %98
  %105 = load %struct.fw_card*, %struct.fw_card** %6, align 8
  %106 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %141

109:                                              ; preds = %104, %98, %82
  %110 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %111 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @SCODE_BETA, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = load %struct.fw_card*, %struct.fw_card** %6, align 8
  %117 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %120 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  br label %121

121:                                              ; preds = %115, %109
  br label %122

122:                                              ; preds = %135, %121
  %123 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %124 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @SCODE_100, align 4
  %127 = icmp sgt i32 %125, %126
  br i1 %127, label %128, label %140

128:                                              ; preds = %122
  %129 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %130 = load i32, i32* %5, align 4
  %131 = call i32 @read_rom(%struct.fw_device* %129, i32 %130, i32 0, i32* %17)
  %132 = load i32, i32* @RCODE_COMPLETE, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  br label %140

135:                                              ; preds = %128
  %136 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %137 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %137, align 8
  br label %122

140:                                              ; preds = %134, %122
  br label %141

141:                                              ; preds = %140, %104
  %142 = load i32, i32* %13, align 4
  store i32 %142, i32* %15, align 4
  store i32 0, i32* %11, align 4
  %143 = load i32*, i32** %10, align 8
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %11, align 4
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds i32, i32* %143, i64 %146
  store i32 -1073741819, i32* %147, align 4
  br label %148

148:                                              ; preds = %298, %141
  %149 = load i32, i32* %11, align 4
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %299

151:                                              ; preds = %148
  %152 = load i32*, i32** %10, align 8
  %153 = load i32, i32* %11, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %11, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %152, i64 %155
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %12, align 4
  %158 = load i32, i32* %12, align 4
  %159 = and i32 %158, 16777215
  store i32 %159, i32* %13, align 4
  %160 = load i32, i32* %13, align 4
  %161 = load i32, i32* @MAX_CONFIG_ROM_SIZE, align 4
  %162 = icmp sge i32 %160, %161
  %163 = zext i1 %162 to i32
  %164 = call i64 @WARN_ON(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %151
  %167 = load i32, i32* @ENXIO, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %16, align 4
  br label %346

169:                                              ; preds = %151
  %170 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %171 = load i32, i32* %5, align 4
  %172 = load i32, i32* %13, align 4
  %173 = load i32*, i32** %9, align 8
  %174 = load i32, i32* %13, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = call i32 @read_rom(%struct.fw_device* %170, i32 %171, i32 %172, i32* %176)
  store i32 %177, i32* %16, align 4
  %178 = load i32, i32* %16, align 4
  %179 = load i32, i32* @RCODE_COMPLETE, align 4
  %180 = icmp ne i32 %178, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %169
  br label %346

182:                                              ; preds = %169
  %183 = load i32, i32* %13, align 4
  %184 = load i32*, i32** %9, align 8
  %185 = load i32, i32* %13, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = ashr i32 %188, 16
  %190 = add nsw i32 %183, %189
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %14, align 4
  %192 = load i32, i32* %14, align 4
  %193 = load i32, i32* @MAX_CONFIG_ROM_SIZE, align 4
  %194 = icmp sgt i32 %192, %193
  br i1 %194, label %195, label %214

195:                                              ; preds = %182
  %196 = load %struct.fw_card*, %struct.fw_card** %6, align 8
  %197 = load i32*, i32** %9, align 8
  %198 = load i32, i32* %13, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %13, align 4
  %203 = mul nsw i32 %202, 4
  %204 = load i32, i32* @CSR_REGISTER_BASE, align 4
  %205 = or i32 %203, %204
  %206 = load i32, i32* @CSR_CONFIG_ROM, align 4
  %207 = or i32 %205, %206
  %208 = call i32 @fw_err(%struct.fw_card* %196, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %201, i32 %207)
  %209 = load i32*, i32** %9, align 8
  %210 = load i32, i32* %13, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  store i32 0, i32* %212, align 4
  %213 = load i32, i32* %13, align 4
  store i32 %213, i32* %14, align 4
  br label %214

214:                                              ; preds = %195, %182
  %215 = load i32, i32* %13, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %13, align 4
  br label %217

217:                                              ; preds = %289, %214
  %218 = load i32, i32* %13, align 4
  %219 = load i32, i32* %14, align 4
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %221, label %292

221:                                              ; preds = %217
  %222 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %223 = load i32, i32* %5, align 4
  %224 = load i32, i32* %13, align 4
  %225 = load i32*, i32** %9, align 8
  %226 = load i32, i32* %13, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = call i32 @read_rom(%struct.fw_device* %222, i32 %223, i32 %224, i32* %228)
  store i32 %229, i32* %16, align 4
  %230 = load i32, i32* %16, align 4
  %231 = load i32, i32* @RCODE_COMPLETE, align 4
  %232 = icmp ne i32 %230, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %221
  br label %346

234:                                              ; preds = %221
  %235 = load i32, i32* %12, align 4
  %236 = ashr i32 %235, 30
  %237 = icmp ne i32 %236, 3
  br i1 %237, label %246, label %238

238:                                              ; preds = %234
  %239 = load i32*, i32** %9, align 8
  %240 = load i32, i32* %13, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = ashr i32 %243, 30
  %245 = icmp slt i32 %244, 2
  br i1 %245, label %246, label %247

246:                                              ; preds = %238, %234
  br label %289

247:                                              ; preds = %238
  %248 = load i32, i32* %13, align 4
  %249 = load i32*, i32** %9, align 8
  %250 = load i32, i32* %13, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = and i32 %253, 16777215
  %255 = add nsw i32 %248, %254
  %256 = load i32, i32* @MAX_CONFIG_ROM_SIZE, align 4
  %257 = icmp sge i32 %255, %256
  br i1 %257, label %258, label %276

258:                                              ; preds = %247
  %259 = load %struct.fw_card*, %struct.fw_card** %6, align 8
  %260 = load i32*, i32** %9, align 8
  %261 = load i32, i32* %13, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* %13, align 4
  %266 = mul nsw i32 %265, 4
  %267 = load i32, i32* @CSR_REGISTER_BASE, align 4
  %268 = or i32 %266, %267
  %269 = load i32, i32* @CSR_CONFIG_ROM, align 4
  %270 = or i32 %268, %269
  %271 = call i32 @fw_err(%struct.fw_card* %259, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %264, i32 %270)
  %272 = load i32*, i32** %9, align 8
  %273 = load i32, i32* %13, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  store i32 0, i32* %275, align 4
  br label %289

276:                                              ; preds = %247
  %277 = load i32, i32* %13, align 4
  %278 = load i32*, i32** %9, align 8
  %279 = load i32, i32* %13, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = add nsw i32 %277, %282
  %284 = load i32*, i32** %10, align 8
  %285 = load i32, i32* %11, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %11, align 4
  %287 = sext i32 %285 to i64
  %288 = getelementptr inbounds i32, i32* %284, i64 %287
  store i32 %283, i32* %288, align 4
  br label %289

289:                                              ; preds = %276, %258, %246
  %290 = load i32, i32* %13, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %13, align 4
  br label %217

292:                                              ; preds = %217
  %293 = load i32, i32* %15, align 4
  %294 = load i32, i32* %13, align 4
  %295 = icmp slt i32 %293, %294
  br i1 %295, label %296, label %298

296:                                              ; preds = %292
  %297 = load i32, i32* %13, align 4
  store i32 %297, i32* %15, align 4
  br label %298

298:                                              ; preds = %296, %292
  br label %148

299:                                              ; preds = %148
  %300 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %301 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %300, i32 0, i32 1
  %302 = load i32*, i32** %301, align 8
  store i32* %302, i32** %7, align 8
  %303 = load i32*, i32** %9, align 8
  %304 = load i32, i32* %15, align 4
  %305 = mul nsw i32 %304, 4
  %306 = load i32, i32* @GFP_KERNEL, align 4
  %307 = call i32* @kmemdup(i32* %303, i32 %305, i32 %306)
  store i32* %307, i32** %8, align 8
  %308 = load i32*, i32** %8, align 8
  %309 = icmp eq i32* %308, null
  br i1 %309, label %310, label %313

310:                                              ; preds = %299
  %311 = load i32, i32* @ENOMEM, align 4
  %312 = sub nsw i32 0, %311
  store i32 %312, i32* %16, align 4
  br label %346

313:                                              ; preds = %299
  %314 = call i32 @down_write(i32* @fw_device_rwsem)
  %315 = load i32*, i32** %8, align 8
  %316 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %317 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %316, i32 0, i32 1
  store i32* %315, i32** %317, align 8
  %318 = load i32, i32* %15, align 4
  %319 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %320 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %319, i32 0, i32 2
  store i32 %318, i32* %320, align 8
  %321 = call i32 @up_write(i32* @fw_device_rwsem)
  %322 = load i32*, i32** %7, align 8
  %323 = call i32 @kfree(i32* %322)
  %324 = load i32, i32* @RCODE_COMPLETE, align 4
  store i32 %324, i32* %16, align 4
  %325 = load i32*, i32** %9, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 2
  %327 = load i32, i32* %326, align 4
  %328 = ashr i32 %327, 12
  %329 = and i32 %328, 15
  %330 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %331 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %330, i32 0, i32 3
  store i32 %329, i32* %331, align 4
  %332 = load i32*, i32** %9, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 2
  %334 = load i32, i32* %333, align 4
  %335 = ashr i32 %334, 30
  %336 = and i32 %335, 1
  %337 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %338 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %337, i32 0, i32 4
  store i32 %336, i32* %338, align 8
  %339 = load i32*, i32** %9, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 2
  %341 = load i32, i32* %340, align 4
  %342 = ashr i32 %341, 31
  %343 = and i32 %342, 1
  %344 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %345 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %344, i32 0, i32 5
  store i32 %343, i32* %345, align 4
  br label %346

346:                                              ; preds = %313, %310, %233, %181, %166, %76, %65
  %347 = load i32*, i32** %9, align 8
  %348 = call i32 @kfree(i32* %347)
  %349 = load i32, i32* %16, align 4
  store i32 %349, i32* %3, align 4
  br label %350

350:                                              ; preds = %346, %33
  %351 = load i32, i32* %3, align 4
  ret i32 %351
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @read_rom(%struct.fw_device*, i32, i32, i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @fw_err(%struct.fw_card*, i8*, i32, i32) #1

declare dso_local i32* @kmemdup(i32*, i32, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
