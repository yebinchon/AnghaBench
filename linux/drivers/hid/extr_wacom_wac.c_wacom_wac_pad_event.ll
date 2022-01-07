; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_wac_pad_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_wac_pad_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, i32 }
%struct.hid_field = type { i64, i32 }
%struct.hid_usage = type { i64, i32, i32 }
%struct.wacom = type { %struct.TYPE_5__, %struct.wacom_wac }
%struct.TYPE_5__ = type { i32 }
%struct.wacom_wac = type { i32, %struct.TYPE_6__, %struct.TYPE_4__*, %struct.wacom_features, %struct.input_dev* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.wacom_features = type { i32 }
%struct.input_dev = type { i32 }

@HID_DG_TABLETFUNCTIONKEY = common dso_local global i32 0, align 4
@SW_MUTE_DEVICE = common dso_local global i32 0, align 4
@WACOM_WORKER_MODE_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)* @wacom_wac_pad_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_wac_pad_event(%struct.hid_device* %0, %struct.hid_field* %1, %struct.hid_usage* %2, i32 %3) #0 {
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca %struct.hid_field*, align 8
  %7 = alloca %struct.hid_usage*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wacom*, align 8
  %10 = alloca %struct.wacom_wac*, align 8
  %11 = alloca %struct.input_dev*, align 8
  %12 = alloca %struct.wacom_features*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %5, align 8
  store %struct.hid_field* %1, %struct.hid_field** %6, align 8
  store %struct.hid_usage* %2, %struct.hid_usage** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %18 = call %struct.wacom* @hid_get_drvdata(%struct.hid_device* %17)
  store %struct.wacom* %18, %struct.wacom** %9, align 8
  %19 = load %struct.wacom*, %struct.wacom** %9, align 8
  %20 = getelementptr inbounds %struct.wacom, %struct.wacom* %19, i32 0, i32 1
  store %struct.wacom_wac* %20, %struct.wacom_wac** %10, align 8
  %21 = load %struct.wacom_wac*, %struct.wacom_wac** %10, align 8
  %22 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %21, i32 0, i32 4
  %23 = load %struct.input_dev*, %struct.input_dev** %22, align 8
  store %struct.input_dev* %23, %struct.input_dev** %11, align 8
  %24 = load %struct.wacom_wac*, %struct.wacom_wac** %10, align 8
  %25 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %24, i32 0, i32 3
  store %struct.wacom_features* %25, %struct.wacom_features** %12, align 8
  %26 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %27 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @wacom_equivalent_usage(i64 %28)
  store i32 %29, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %30 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %31 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 132
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %278

38:                                               ; preds = %34, %4
  %39 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %40 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @wacom_equivalent_usage(i64 %41)
  %43 = load i32, i32* @HID_DG_TABLETFUNCTIONKEY, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %38
  %46 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %47 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 129
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.wacom_wac*, %struct.wacom_wac** %10, align 8
  %53 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %51
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %50, %45
  br label %58

58:                                               ; preds = %57, %38
  %59 = load i32, i32* %13, align 4
  switch i32 %59, label %257 [
    i32 129, label %60
    i32 128, label %158
    i32 131, label %171
    i32 130, label %171
    i32 132, label %222
    i32 133, label %237
  ]

60:                                               ; preds = %58
  %61 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %62 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 1386
  br i1 %64, label %65, label %152

65:                                               ; preds = %60
  %66 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %67 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 845
  br i1 %69, label %100, label %70

70:                                               ; preds = %65
  %71 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %72 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 846
  br i1 %74, label %100, label %75

75:                                               ; preds = %70
  %76 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %77 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 855
  br i1 %79, label %100, label %80

80:                                               ; preds = %75
  %81 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %82 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 856
  br i1 %84, label %100, label %85

85:                                               ; preds = %80
  %86 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %87 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 914
  br i1 %89, label %100, label %90

90:                                               ; preds = %85
  %91 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %92 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 920
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %97 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 921
  br i1 %99, label %100, label %152

100:                                              ; preds = %95, %90, %85, %80, %75, %70, %65
  %101 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %102 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sub nsw i32 %103, %104
  store i32 %105, i32* %8, align 4
  %106 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %107 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 855
  br i1 %109, label %120, label %110

110:                                              ; preds = %100
  %111 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %112 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 856
  br i1 %114, label %120, label %115

115:                                              ; preds = %110
  %116 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %117 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 914
  br i1 %119, label %120, label %125

120:                                              ; preds = %115, %110, %100
  %121 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %122 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @wacom_offset_rotation(%struct.input_dev* %121, %struct.hid_usage* %122, i32 %123, i32 3, i32 16)
  store i32 %124, i32* %8, align 4
  br label %151

125:                                              ; preds = %115
  %126 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %127 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 845
  br i1 %129, label %145, label %130

130:                                              ; preds = %125
  %131 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %132 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 846
  br i1 %134, label %145, label %135

135:                                              ; preds = %130
  %136 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %137 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %138, 920
  br i1 %139, label %145, label %140

140:                                              ; preds = %135
  %141 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %142 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %143, 921
  br i1 %144, label %145, label %150

145:                                              ; preds = %140, %135, %130, %125
  %146 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %147 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %148 = load i32, i32* %8, align 4
  %149 = call i32 @wacom_offset_rotation(%struct.input_dev* %146, %struct.hid_usage* %147, i32 %148, i32 1, i32 2)
  store i32 %149, i32* %8, align 4
  br label %150

150:                                              ; preds = %145, %140
  br label %151

151:                                              ; preds = %150, %120
  br label %157

152:                                              ; preds = %95, %60
  %153 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %154 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %155 = load i32, i32* %8, align 4
  %156 = call i32 @wacom_offset_rotation(%struct.input_dev* %153, %struct.hid_usage* %154, i32 %155, i32 1, i32 4)
  store i32 %156, i32* %8, align 4
  br label %157

157:                                              ; preds = %152, %151
  store i32 1, i32* %15, align 4
  br label %258

158:                                              ; preds = %58
  %159 = load i32, i32* %8, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %170, label %161

161:                                              ; preds = %158
  %162 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %163 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %164 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %167 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @input_event(%struct.input_dev* %162, i32 %165, i32 %168, i32 0)
  br label %170

170:                                              ; preds = %161, %158
  br label %258

171:                                              ; preds = %58, %58
  %172 = load %struct.wacom_wac*, %struct.wacom_wac** %10, align 8
  %173 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %172, i32 0, i32 2
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %221

178:                                              ; preds = %171
  %179 = load %struct.wacom_wac*, %struct.wacom_wac** %10, align 8
  %180 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %179, i32 0, i32 2
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  store i32* %182, i32** %16, align 8
  %183 = load i32, i32* %13, align 4
  %184 = icmp eq i32 %183, 131
  br i1 %184, label %185, label %195

185:                                              ; preds = %178
  %186 = load i32, i32* %8, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %185
  %189 = load i32*, i32** %16, align 8
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  %192 = xor i1 %191, true
  %193 = zext i1 %192 to i32
  %194 = load i32*, i32** %16, align 8
  store i32 %193, i32* %194, align 4
  br label %202

195:                                              ; preds = %185, %178
  %196 = load i32, i32* %13, align 4
  %197 = icmp eq i32 %196, 130
  br i1 %197, label %198, label %201

198:                                              ; preds = %195
  %199 = load i32, i32* %8, align 4
  %200 = load i32*, i32** %16, align 8
  store i32 %199, i32* %200, align 4
  br label %201

201:                                              ; preds = %198, %195
  br label %202

202:                                              ; preds = %201, %188
  %203 = load %struct.wacom_wac*, %struct.wacom_wac** %10, align 8
  %204 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %203, i32 0, i32 2
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @SW_MUTE_DEVICE, align 4
  %209 = load i32*, i32** %16, align 8
  %210 = load i32, i32* %209, align 4
  %211 = icmp ne i32 %210, 0
  %212 = xor i1 %211, true
  %213 = zext i1 %212 to i32
  %214 = call i32 @input_report_switch(i32 %207, i32 %208, i32 %213)
  %215 = load %struct.wacom_wac*, %struct.wacom_wac** %10, align 8
  %216 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %215, i32 0, i32 2
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @input_sync(i32 %219)
  br label %221

221:                                              ; preds = %202, %171
  br label %258

222:                                              ; preds = %58
  %223 = load %struct.wacom_wac*, %struct.wacom_wac** %10, align 8
  %224 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* %8, align 4
  %227 = icmp ne i32 %225, %226
  br i1 %227, label %228, label %236

228:                                              ; preds = %222
  %229 = load i32, i32* %8, align 4
  %230 = load %struct.wacom_wac*, %struct.wacom_wac** %10, align 8
  %231 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %230, i32 0, i32 0
  store i32 %229, i32* %231, align 8
  %232 = load %struct.wacom*, %struct.wacom** %9, align 8
  %233 = getelementptr inbounds %struct.wacom, %struct.wacom* %232, i32 0, i32 1
  %234 = load i32, i32* @WACOM_WORKER_MODE_CHANGE, align 4
  %235 = call i32 @wacom_schedule_work(%struct.wacom_wac* %233, i32 %234)
  br label %236

236:                                              ; preds = %228, %222
  br label %258

237:                                              ; preds = %58
  store i32 0, i32* %14, align 4
  br label %238

238:                                              ; preds = %253, %237
  %239 = load i32, i32* %14, align 4
  %240 = load %struct.wacom*, %struct.wacom** %9, align 8
  %241 = getelementptr inbounds %struct.wacom, %struct.wacom* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = icmp slt i32 %239, %243
  br i1 %244, label %245, label %256

245:                                              ; preds = %238
  %246 = load %struct.wacom*, %struct.wacom** %9, align 8
  %247 = load %struct.wacom_features*, %struct.wacom_features** %12, align 8
  %248 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* %8, align 4
  %251 = load i32, i32* %14, align 4
  %252 = call i32 @wacom_update_led(%struct.wacom* %246, i32 %249, i32 %250, i32 %251)
  br label %253

253:                                              ; preds = %245
  %254 = load i32, i32* %14, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %14, align 4
  br label %238

256:                                              ; preds = %238
  br label %257

257:                                              ; preds = %58, %256
  store i32 1, i32* %15, align 4
  br label %258

258:                                              ; preds = %257, %236, %221, %170, %157
  %259 = load i32, i32* %15, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %278

261:                                              ; preds = %258
  %262 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %263 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %264 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %267 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* %8, align 4
  %270 = call i32 @input_event(%struct.input_dev* %262, i32 %265, i32 %268, i32 %269)
  %271 = load i32, i32* %8, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %277

273:                                              ; preds = %261
  %274 = load %struct.wacom_wac*, %struct.wacom_wac** %10, align 8
  %275 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 1
  store i32 1, i32* %276, align 4
  br label %277

277:                                              ; preds = %273, %261
  br label %278

278:                                              ; preds = %37, %277, %258
  ret void
}

declare dso_local %struct.wacom* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @wacom_equivalent_usage(i64) #1

declare dso_local i32 @wacom_offset_rotation(%struct.input_dev*, %struct.hid_usage*, i32, i32, i32) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @input_report_switch(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @wacom_schedule_work(%struct.wacom_wac*, i32) #1

declare dso_local i32 @wacom_update_led(%struct.wacom*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
