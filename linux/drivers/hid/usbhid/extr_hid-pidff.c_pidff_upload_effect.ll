; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-pidff.c_pidff_upload_effect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-pidff.c_pidff_upload_effect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.pidff_device* }
%struct.pidff_device = type { i32, %struct.TYPE_12__*, i64*, i32* }
%struct.TYPE_12__ = type { i64* }
%struct.ff_effect = type { i64, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@PID_EFFECT_BLOCK_INDEX = common dso_local global i64 0, align 8
@PID_CONSTANT = common dso_local global i64 0, align 8
@PID_SQUARE = common dso_local global i32 0, align 4
@PID_TRIANGLE = common dso_local global i32 0, align 4
@PID_SINE = common dso_local global i32 0, align 4
@PID_SAW_UP = common dso_local global i32 0, align 4
@PID_SAW_DOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"invalid waveform\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PID_RAMP = common dso_local global i64 0, align 8
@PID_SPRING = common dso_local global i64 0, align 8
@PID_FRICTION = common dso_local global i64 0, align 8
@PID_DAMPER = common dso_local global i64 0, align 8
@PID_INERTIA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"invalid type\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"uploaded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, %struct.ff_effect*, %struct.ff_effect*)* @pidff_upload_effect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pidff_upload_effect(%struct.input_dev* %0, %struct.ff_effect* %1, %struct.ff_effect* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.ff_effect*, align 8
  %7 = alloca %struct.ff_effect*, align 8
  %8 = alloca %struct.pidff_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store %struct.ff_effect* %1, %struct.ff_effect** %6, align 8
  store %struct.ff_effect* %2, %struct.ff_effect** %7, align 8
  %11 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %12 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.pidff_device*, %struct.pidff_device** %14, align 8
  store %struct.pidff_device* %15, %struct.pidff_device** %8, align 8
  %16 = load %struct.pidff_device*, %struct.pidff_device** %8, align 8
  %17 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %16, i32 0, i32 1
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %19 = load i64, i64* @PID_EFFECT_BLOCK_INDEX, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %25 = icmp ne %struct.ff_effect* %24, null
  br i1 %25, label %26, label %43

26:                                               ; preds = %3
  %27 = load %struct.pidff_device*, %struct.pidff_device** %8, align 8
  %28 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %27, i32 0, i32 2
  %29 = load i64*, i64** %28, align 8
  %30 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %31 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i64, i64* %29, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.pidff_device*, %struct.pidff_device** %8, align 8
  %36 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %35, i32 0, i32 1
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = load i64, i64* @PID_EFFECT_BLOCK_INDEX, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  store i64 %34, i64* %42, align 8
  br label %43

43:                                               ; preds = %26, %3
  %44 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %45 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %428 [
    i32 139, label %47
    i32 135, label %110
    i32 134, label %197
    i32 130, label %260
    i32 137, label %302
    i32 138, label %344
    i32 136, label %386
  ]

47:                                               ; preds = %43
  %48 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %49 = icmp ne %struct.ff_effect* %48, null
  br i1 %49, label %64, label %50

50:                                               ; preds = %47
  %51 = load %struct.pidff_device*, %struct.pidff_device** %8, align 8
  %52 = load %struct.pidff_device*, %struct.pidff_device** %8, align 8
  %53 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @PID_CONSTANT, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pidff_request_effect_upload(%struct.pidff_device* %51, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %4, align 4
  br label %460

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %63, %47
  %65 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %66 = icmp ne %struct.ff_effect* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %69 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %70 = call i32 @pidff_needs_set_effect(%struct.ff_effect* %68, %struct.ff_effect* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67, %64
  %73 = load %struct.pidff_device*, %struct.pidff_device** %8, align 8
  %74 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %75 = call i32 @pidff_set_effect_report(%struct.pidff_device* %73, %struct.ff_effect* %74)
  br label %76

76:                                               ; preds = %72, %67
  %77 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %78 = icmp ne %struct.ff_effect* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %81 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %82 = call i32 @pidff_needs_set_constant(%struct.ff_effect* %80, %struct.ff_effect* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79, %76
  %85 = load %struct.pidff_device*, %struct.pidff_device** %8, align 8
  %86 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %87 = call i32 @pidff_set_constant_force_report(%struct.pidff_device* %85, %struct.ff_effect* %86)
  br label %88

88:                                               ; preds = %84, %79
  %89 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %90 = icmp ne %struct.ff_effect* %89, null
  br i1 %90, label %91, label %102

91:                                               ; preds = %88
  %92 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %93 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %97 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = call i32 @pidff_needs_set_envelope(i32* %95, i32* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %91, %88
  %103 = load %struct.pidff_device*, %struct.pidff_device** %8, align 8
  %104 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %105 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = call i32 @pidff_set_envelope_report(%struct.pidff_device* %103, i32* %107)
  br label %109

109:                                              ; preds = %102, %91
  br label %435

110:                                              ; preds = %43
  %111 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %112 = icmp ne %struct.ff_effect* %111, null
  br i1 %112, label %151, label %113

113:                                              ; preds = %110
  %114 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %115 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  switch i32 %118, label %129 [
    i32 129, label %119
    i32 128, label %121
    i32 131, label %123
    i32 132, label %125
    i32 133, label %127
  ]

119:                                              ; preds = %113
  %120 = load i32, i32* @PID_SQUARE, align 4
  store i32 %120, i32* %9, align 4
  br label %136

121:                                              ; preds = %113
  %122 = load i32, i32* @PID_TRIANGLE, align 4
  store i32 %122, i32* %9, align 4
  br label %136

123:                                              ; preds = %113
  %124 = load i32, i32* @PID_SINE, align 4
  store i32 %124, i32* %9, align 4
  br label %136

125:                                              ; preds = %113
  %126 = load i32, i32* @PID_SAW_UP, align 4
  store i32 %126, i32* %9, align 4
  br label %136

127:                                              ; preds = %113
  %128 = load i32, i32* @PID_SAW_DOWN, align 4
  store i32 %128, i32* %9, align 4
  br label %136

129:                                              ; preds = %113
  %130 = load %struct.pidff_device*, %struct.pidff_device** %8, align 8
  %131 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @hid_err(i32 %132, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %4, align 4
  br label %460

136:                                              ; preds = %127, %125, %123, %121, %119
  %137 = load %struct.pidff_device*, %struct.pidff_device** %8, align 8
  %138 = load %struct.pidff_device*, %struct.pidff_device** %8, align 8
  %139 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %138, i32 0, i32 3
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @pidff_request_effect_upload(%struct.pidff_device* %137, i32 %144)
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %10, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %136
  %149 = load i32, i32* %10, align 4
  store i32 %149, i32* %4, align 4
  br label %460

150:                                              ; preds = %136
  br label %151

151:                                              ; preds = %150, %110
  %152 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %153 = icmp ne %struct.ff_effect* %152, null
  br i1 %153, label %154, label %159

154:                                              ; preds = %151
  %155 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %156 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %157 = call i32 @pidff_needs_set_effect(%struct.ff_effect* %155, %struct.ff_effect* %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %154, %151
  %160 = load %struct.pidff_device*, %struct.pidff_device** %8, align 8
  %161 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %162 = call i32 @pidff_set_effect_report(%struct.pidff_device* %160, %struct.ff_effect* %161)
  br label %163

163:                                              ; preds = %159, %154
  %164 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %165 = icmp ne %struct.ff_effect* %164, null
  br i1 %165, label %166, label %171

166:                                              ; preds = %163
  %167 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %168 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %169 = call i32 @pidff_needs_set_periodic(%struct.ff_effect* %167, %struct.ff_effect* %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %166, %163
  %172 = load %struct.pidff_device*, %struct.pidff_device** %8, align 8
  %173 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %174 = call i32 @pidff_set_periodic_report(%struct.pidff_device* %172, %struct.ff_effect* %173)
  br label %175

175:                                              ; preds = %171, %166
  %176 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %177 = icmp ne %struct.ff_effect* %176, null
  br i1 %177, label %178, label %189

178:                                              ; preds = %175
  %179 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %180 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %184 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  %187 = call i32 @pidff_needs_set_envelope(i32* %182, i32* %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %178, %175
  %190 = load %struct.pidff_device*, %struct.pidff_device** %8, align 8
  %191 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %192 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  %195 = call i32 @pidff_set_envelope_report(%struct.pidff_device* %190, i32* %194)
  br label %196

196:                                              ; preds = %189, %178
  br label %435

197:                                              ; preds = %43
  %198 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %199 = icmp ne %struct.ff_effect* %198, null
  br i1 %199, label %214, label %200

200:                                              ; preds = %197
  %201 = load %struct.pidff_device*, %struct.pidff_device** %8, align 8
  %202 = load %struct.pidff_device*, %struct.pidff_device** %8, align 8
  %203 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %202, i32 0, i32 3
  %204 = load i32*, i32** %203, align 8
  %205 = load i64, i64* @PID_RAMP, align 8
  %206 = getelementptr inbounds i32, i32* %204, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @pidff_request_effect_upload(%struct.pidff_device* %201, i32 %207)
  store i32 %208, i32* %10, align 4
  %209 = load i32, i32* %10, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %200
  %212 = load i32, i32* %10, align 4
  store i32 %212, i32* %4, align 4
  br label %460

213:                                              ; preds = %200
  br label %214

214:                                              ; preds = %213, %197
  %215 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %216 = icmp ne %struct.ff_effect* %215, null
  br i1 %216, label %217, label %222

217:                                              ; preds = %214
  %218 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %219 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %220 = call i32 @pidff_needs_set_effect(%struct.ff_effect* %218, %struct.ff_effect* %219)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %217, %214
  %223 = load %struct.pidff_device*, %struct.pidff_device** %8, align 8
  %224 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %225 = call i32 @pidff_set_effect_report(%struct.pidff_device* %223, %struct.ff_effect* %224)
  br label %226

226:                                              ; preds = %222, %217
  %227 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %228 = icmp ne %struct.ff_effect* %227, null
  br i1 %228, label %229, label %234

229:                                              ; preds = %226
  %230 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %231 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %232 = call i32 @pidff_needs_set_ramp(%struct.ff_effect* %230, %struct.ff_effect* %231)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %238

234:                                              ; preds = %229, %226
  %235 = load %struct.pidff_device*, %struct.pidff_device** %8, align 8
  %236 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %237 = call i32 @pidff_set_ramp_force_report(%struct.pidff_device* %235, %struct.ff_effect* %236)
  br label %238

238:                                              ; preds = %234, %229
  %239 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %240 = icmp ne %struct.ff_effect* %239, null
  br i1 %240, label %241, label %252

241:                                              ; preds = %238
  %242 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %243 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 0
  %246 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %247 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 0
  %250 = call i32 @pidff_needs_set_envelope(i32* %245, i32* %249)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %259

252:                                              ; preds = %241, %238
  %253 = load %struct.pidff_device*, %struct.pidff_device** %8, align 8
  %254 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %255 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 0
  %258 = call i32 @pidff_set_envelope_report(%struct.pidff_device* %253, i32* %257)
  br label %259

259:                                              ; preds = %252, %241
  br label %435

260:                                              ; preds = %43
  %261 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %262 = icmp ne %struct.ff_effect* %261, null
  br i1 %262, label %277, label %263

263:                                              ; preds = %260
  %264 = load %struct.pidff_device*, %struct.pidff_device** %8, align 8
  %265 = load %struct.pidff_device*, %struct.pidff_device** %8, align 8
  %266 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %265, i32 0, i32 3
  %267 = load i32*, i32** %266, align 8
  %268 = load i64, i64* @PID_SPRING, align 8
  %269 = getelementptr inbounds i32, i32* %267, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @pidff_request_effect_upload(%struct.pidff_device* %264, i32 %270)
  store i32 %271, i32* %10, align 4
  %272 = load i32, i32* %10, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %276

274:                                              ; preds = %263
  %275 = load i32, i32* %10, align 4
  store i32 %275, i32* %4, align 4
  br label %460

276:                                              ; preds = %263
  br label %277

277:                                              ; preds = %276, %260
  %278 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %279 = icmp ne %struct.ff_effect* %278, null
  br i1 %279, label %280, label %285

280:                                              ; preds = %277
  %281 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %282 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %283 = call i32 @pidff_needs_set_effect(%struct.ff_effect* %281, %struct.ff_effect* %282)
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %289

285:                                              ; preds = %280, %277
  %286 = load %struct.pidff_device*, %struct.pidff_device** %8, align 8
  %287 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %288 = call i32 @pidff_set_effect_report(%struct.pidff_device* %286, %struct.ff_effect* %287)
  br label %289

289:                                              ; preds = %285, %280
  %290 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %291 = icmp ne %struct.ff_effect* %290, null
  br i1 %291, label %292, label %297

292:                                              ; preds = %289
  %293 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %294 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %295 = call i32 @pidff_needs_set_condition(%struct.ff_effect* %293, %struct.ff_effect* %294)
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %301

297:                                              ; preds = %292, %289
  %298 = load %struct.pidff_device*, %struct.pidff_device** %8, align 8
  %299 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %300 = call i32 @pidff_set_condition_report(%struct.pidff_device* %298, %struct.ff_effect* %299)
  br label %301

301:                                              ; preds = %297, %292
  br label %435

302:                                              ; preds = %43
  %303 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %304 = icmp ne %struct.ff_effect* %303, null
  br i1 %304, label %319, label %305

305:                                              ; preds = %302
  %306 = load %struct.pidff_device*, %struct.pidff_device** %8, align 8
  %307 = load %struct.pidff_device*, %struct.pidff_device** %8, align 8
  %308 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %307, i32 0, i32 3
  %309 = load i32*, i32** %308, align 8
  %310 = load i64, i64* @PID_FRICTION, align 8
  %311 = getelementptr inbounds i32, i32* %309, i64 %310
  %312 = load i32, i32* %311, align 4
  %313 = call i32 @pidff_request_effect_upload(%struct.pidff_device* %306, i32 %312)
  store i32 %313, i32* %10, align 4
  %314 = load i32, i32* %10, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %318

316:                                              ; preds = %305
  %317 = load i32, i32* %10, align 4
  store i32 %317, i32* %4, align 4
  br label %460

318:                                              ; preds = %305
  br label %319

319:                                              ; preds = %318, %302
  %320 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %321 = icmp ne %struct.ff_effect* %320, null
  br i1 %321, label %322, label %327

322:                                              ; preds = %319
  %323 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %324 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %325 = call i32 @pidff_needs_set_effect(%struct.ff_effect* %323, %struct.ff_effect* %324)
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %331

327:                                              ; preds = %322, %319
  %328 = load %struct.pidff_device*, %struct.pidff_device** %8, align 8
  %329 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %330 = call i32 @pidff_set_effect_report(%struct.pidff_device* %328, %struct.ff_effect* %329)
  br label %331

331:                                              ; preds = %327, %322
  %332 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %333 = icmp ne %struct.ff_effect* %332, null
  br i1 %333, label %334, label %339

334:                                              ; preds = %331
  %335 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %336 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %337 = call i32 @pidff_needs_set_condition(%struct.ff_effect* %335, %struct.ff_effect* %336)
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %343

339:                                              ; preds = %334, %331
  %340 = load %struct.pidff_device*, %struct.pidff_device** %8, align 8
  %341 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %342 = call i32 @pidff_set_condition_report(%struct.pidff_device* %340, %struct.ff_effect* %341)
  br label %343

343:                                              ; preds = %339, %334
  br label %435

344:                                              ; preds = %43
  %345 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %346 = icmp ne %struct.ff_effect* %345, null
  br i1 %346, label %361, label %347

347:                                              ; preds = %344
  %348 = load %struct.pidff_device*, %struct.pidff_device** %8, align 8
  %349 = load %struct.pidff_device*, %struct.pidff_device** %8, align 8
  %350 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %349, i32 0, i32 3
  %351 = load i32*, i32** %350, align 8
  %352 = load i64, i64* @PID_DAMPER, align 8
  %353 = getelementptr inbounds i32, i32* %351, i64 %352
  %354 = load i32, i32* %353, align 4
  %355 = call i32 @pidff_request_effect_upload(%struct.pidff_device* %348, i32 %354)
  store i32 %355, i32* %10, align 4
  %356 = load i32, i32* %10, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %360

358:                                              ; preds = %347
  %359 = load i32, i32* %10, align 4
  store i32 %359, i32* %4, align 4
  br label %460

360:                                              ; preds = %347
  br label %361

361:                                              ; preds = %360, %344
  %362 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %363 = icmp ne %struct.ff_effect* %362, null
  br i1 %363, label %364, label %369

364:                                              ; preds = %361
  %365 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %366 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %367 = call i32 @pidff_needs_set_effect(%struct.ff_effect* %365, %struct.ff_effect* %366)
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %373

369:                                              ; preds = %364, %361
  %370 = load %struct.pidff_device*, %struct.pidff_device** %8, align 8
  %371 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %372 = call i32 @pidff_set_effect_report(%struct.pidff_device* %370, %struct.ff_effect* %371)
  br label %373

373:                                              ; preds = %369, %364
  %374 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %375 = icmp ne %struct.ff_effect* %374, null
  br i1 %375, label %376, label %381

376:                                              ; preds = %373
  %377 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %378 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %379 = call i32 @pidff_needs_set_condition(%struct.ff_effect* %377, %struct.ff_effect* %378)
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %385

381:                                              ; preds = %376, %373
  %382 = load %struct.pidff_device*, %struct.pidff_device** %8, align 8
  %383 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %384 = call i32 @pidff_set_condition_report(%struct.pidff_device* %382, %struct.ff_effect* %383)
  br label %385

385:                                              ; preds = %381, %376
  br label %435

386:                                              ; preds = %43
  %387 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %388 = icmp ne %struct.ff_effect* %387, null
  br i1 %388, label %403, label %389

389:                                              ; preds = %386
  %390 = load %struct.pidff_device*, %struct.pidff_device** %8, align 8
  %391 = load %struct.pidff_device*, %struct.pidff_device** %8, align 8
  %392 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %391, i32 0, i32 3
  %393 = load i32*, i32** %392, align 8
  %394 = load i64, i64* @PID_INERTIA, align 8
  %395 = getelementptr inbounds i32, i32* %393, i64 %394
  %396 = load i32, i32* %395, align 4
  %397 = call i32 @pidff_request_effect_upload(%struct.pidff_device* %390, i32 %396)
  store i32 %397, i32* %10, align 4
  %398 = load i32, i32* %10, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %402

400:                                              ; preds = %389
  %401 = load i32, i32* %10, align 4
  store i32 %401, i32* %4, align 4
  br label %460

402:                                              ; preds = %389
  br label %403

403:                                              ; preds = %402, %386
  %404 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %405 = icmp ne %struct.ff_effect* %404, null
  br i1 %405, label %406, label %411

406:                                              ; preds = %403
  %407 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %408 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %409 = call i32 @pidff_needs_set_effect(%struct.ff_effect* %407, %struct.ff_effect* %408)
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %415

411:                                              ; preds = %406, %403
  %412 = load %struct.pidff_device*, %struct.pidff_device** %8, align 8
  %413 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %414 = call i32 @pidff_set_effect_report(%struct.pidff_device* %412, %struct.ff_effect* %413)
  br label %415

415:                                              ; preds = %411, %406
  %416 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %417 = icmp ne %struct.ff_effect* %416, null
  br i1 %417, label %418, label %423

418:                                              ; preds = %415
  %419 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %420 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %421 = call i32 @pidff_needs_set_condition(%struct.ff_effect* %419, %struct.ff_effect* %420)
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %427

423:                                              ; preds = %418, %415
  %424 = load %struct.pidff_device*, %struct.pidff_device** %8, align 8
  %425 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %426 = call i32 @pidff_set_condition_report(%struct.pidff_device* %424, %struct.ff_effect* %425)
  br label %427

427:                                              ; preds = %423, %418
  br label %435

428:                                              ; preds = %43
  %429 = load %struct.pidff_device*, %struct.pidff_device** %8, align 8
  %430 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 8
  %432 = call i32 @hid_err(i32 %431, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %433 = load i32, i32* @EINVAL, align 4
  %434 = sub nsw i32 0, %433
  store i32 %434, i32* %4, align 4
  br label %460

435:                                              ; preds = %427, %385, %343, %301, %259, %196, %109
  %436 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %437 = icmp ne %struct.ff_effect* %436, null
  br i1 %437, label %455, label %438

438:                                              ; preds = %435
  %439 = load %struct.pidff_device*, %struct.pidff_device** %8, align 8
  %440 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %439, i32 0, i32 1
  %441 = load %struct.TYPE_12__*, %struct.TYPE_12__** %440, align 8
  %442 = load i64, i64* @PID_EFFECT_BLOCK_INDEX, align 8
  %443 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %441, i64 %442
  %444 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %443, i32 0, i32 0
  %445 = load i64*, i64** %444, align 8
  %446 = getelementptr inbounds i64, i64* %445, i64 0
  %447 = load i64, i64* %446, align 8
  %448 = load %struct.pidff_device*, %struct.pidff_device** %8, align 8
  %449 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %448, i32 0, i32 2
  %450 = load i64*, i64** %449, align 8
  %451 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %452 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %451, i32 0, i32 0
  %453 = load i64, i64* %452, align 8
  %454 = getelementptr inbounds i64, i64* %450, i64 %453
  store i64 %447, i64* %454, align 8
  br label %455

455:                                              ; preds = %438, %435
  %456 = load %struct.pidff_device*, %struct.pidff_device** %8, align 8
  %457 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %456, i32 0, i32 0
  %458 = load i32, i32* %457, align 8
  %459 = call i32 @hid_dbg(i32 %458, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %460

460:                                              ; preds = %455, %428, %400, %358, %316, %274, %211, %148, %129, %61
  %461 = load i32, i32* %4, align 4
  ret i32 %461
}

declare dso_local i32 @pidff_request_effect_upload(%struct.pidff_device*, i32) #1

declare dso_local i32 @pidff_needs_set_effect(%struct.ff_effect*, %struct.ff_effect*) #1

declare dso_local i32 @pidff_set_effect_report(%struct.pidff_device*, %struct.ff_effect*) #1

declare dso_local i32 @pidff_needs_set_constant(%struct.ff_effect*, %struct.ff_effect*) #1

declare dso_local i32 @pidff_set_constant_force_report(%struct.pidff_device*, %struct.ff_effect*) #1

declare dso_local i32 @pidff_needs_set_envelope(i32*, i32*) #1

declare dso_local i32 @pidff_set_envelope_report(%struct.pidff_device*, i32*) #1

declare dso_local i32 @hid_err(i32, i8*) #1

declare dso_local i32 @pidff_needs_set_periodic(%struct.ff_effect*, %struct.ff_effect*) #1

declare dso_local i32 @pidff_set_periodic_report(%struct.pidff_device*, %struct.ff_effect*) #1

declare dso_local i32 @pidff_needs_set_ramp(%struct.ff_effect*, %struct.ff_effect*) #1

declare dso_local i32 @pidff_set_ramp_force_report(%struct.pidff_device*, %struct.ff_effect*) #1

declare dso_local i32 @pidff_needs_set_condition(%struct.ff_effect*, %struct.ff_effect*) #1

declare dso_local i32 @pidff_set_condition_report(%struct.pidff_device*, %struct.ff_effect*) #1

declare dso_local i32 @hid_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
