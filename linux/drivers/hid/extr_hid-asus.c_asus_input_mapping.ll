; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-asus.c_asus_input_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-asus.c_asus_input_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_input = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hid_field = type { i32 }
%struct.hid_usage = type { i32 }
%struct.asus_drvdata = type { i32, i32 }

@QUIRK_SKIP_INPUT_MAPPING = common dso_local global i32 0, align 4
@QUIRK_T100CHI = common dso_local global i32 0, align 4
@QUIRK_T90CHI = common dso_local global i32 0, align 4
@HID_UP_GENDESK = common dso_local global i32 0, align 4
@HID_UP_GENDEVCTRLS = common dso_local global i32 0, align 4
@HID_GD_MOUSE = common dso_local global i32 0, align 4
@HID_UP_BUTTON = common dso_local global i32 0, align 4
@HID_USAGE_PAGE = common dso_local global i32 0, align 4
@EV_REP = common dso_local global i32 0, align 4
@HID_USAGE = common dso_local global i32 0, align 4
@KEY_BRIGHTNESSDOWN = common dso_local global i32 0, align 4
@KEY_BRIGHTNESSUP = common dso_local global i32 0, align 4
@KEY_DISPLAY_OFF = common dso_local global i32 0, align 4
@KEY_SLEEP = common dso_local global i32 0, align 4
@KEY_MICMUTE = common dso_local global i32 0, align 4
@KEY_CAMERA = common dso_local global i32 0, align 4
@KEY_RFKILL = common dso_local global i32 0, align 4
@KEY_CALC = common dso_local global i32 0, align 4
@KEY_KBDILLUMUP = common dso_local global i32 0, align 4
@KEY_KBDILLUMDOWN = common dso_local global i32 0, align 4
@KEY_F21 = common dso_local global i32 0, align 4
@KEY_PROG1 = common dso_local global i32 0, align 4
@KEY_PROG2 = common dso_local global i32 0, align 4
@KEY_PROG3 = common dso_local global i32 0, align 4
@KEY_PROG4 = common dso_local global i32 0, align 4
@QUIRK_USE_KBD_BACKLIGHT = common dso_local global i32 0, align 4
@HID_UP_MSVENDOR = common dso_local global i32 0, align 4
@BTN_1 = common dso_local global i32 0, align 4
@BTN_2 = common dso_local global i32 0, align 4
@BTN_3 = common dso_local global i32 0, align 4
@BTN_4 = common dso_local global i32 0, align 4
@BTN_5 = common dso_local global i32 0, align 4
@BTN_6 = common dso_local global i32 0, align 4
@BTN_7 = common dso_local global i32 0, align 4
@BTN_8 = common dso_local global i32 0, align 4
@BTN_9 = common dso_local global i32 0, align 4
@BTN_A = common dso_local global i32 0, align 4
@BTN_B = common dso_local global i32 0, align 4
@KEY_WLAN = common dso_local global i32 0, align 4
@QUIRK_NO_CONSUMER_USAGES = common dso_local global i32 0, align 4
@HID_UP_CONSUMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* @asus_input_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_input_mapping(%struct.hid_device* %0, %struct.hid_input* %1, %struct.hid_field* %2, %struct.hid_usage* %3, i64** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hid_device*, align 8
  %9 = alloca %struct.hid_input*, align 8
  %10 = alloca %struct.hid_field*, align 8
  %11 = alloca %struct.hid_usage*, align 8
  %12 = alloca i64**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.asus_drvdata*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %8, align 8
  store %struct.hid_input* %1, %struct.hid_input** %9, align 8
  store %struct.hid_field* %2, %struct.hid_field** %10, align 8
  store %struct.hid_usage* %3, %struct.hid_usage** %11, align 8
  store i64** %4, i64*** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %16 = call %struct.asus_drvdata* @hid_get_drvdata(%struct.hid_device* %15)
  store %struct.asus_drvdata* %16, %struct.asus_drvdata** %14, align 8
  %17 = load %struct.asus_drvdata*, %struct.asus_drvdata** %14, align 8
  %18 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @QUIRK_SKIP_INPUT_MAPPING, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %252

24:                                               ; preds = %6
  %25 = load %struct.asus_drvdata*, %struct.asus_drvdata** %14, align 8
  %26 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @QUIRK_T100CHI, align 4
  %29 = load i32, i32* @QUIRK_T90CHI, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %77

33:                                               ; preds = %24
  %34 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %35 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @HID_UP_GENDESK, align 4
  %38 = or i32 %37, 128
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %61, label %40

40:                                               ; preds = %33
  %41 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %42 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @HID_UP_GENDEVCTRLS, align 4
  %45 = or i32 %44, 36
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %61, label %47

47:                                               ; preds = %40
  %48 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %49 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @HID_UP_GENDEVCTRLS, align 4
  %52 = or i32 %51, 37
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %61, label %54

54:                                               ; preds = %47
  %55 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %56 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @HID_UP_GENDEVCTRLS, align 4
  %59 = or i32 %58, 38
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %54, %47, %40, %33
  store i32 -1, i32* %7, align 4
  br label %252

62:                                               ; preds = %54
  %63 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %64 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @HID_GD_MOUSE, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %62
  %69 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %70 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @HID_UP_BUTTON, align 4
  %73 = or i32 %72, 1
  %74 = icmp ne i32 %71, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  store i32 -1, i32* %7, align 4
  br label %252

76:                                               ; preds = %68, %62
  br label %77

77:                                               ; preds = %76, %24
  %78 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %79 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @HID_USAGE_PAGE, align 4
  %82 = and i32 %80, %81
  %83 = icmp eq i32 %82, -13565952
  br i1 %83, label %84, label %154

84:                                               ; preds = %77
  %85 = load i32, i32* @EV_REP, align 4
  %86 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %87 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @set_bit(i32 %85, i32 %90)
  %92 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %93 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @HID_USAGE, align 4
  %96 = and i32 %94, %95
  switch i32 %96, label %142 [
    i32 16, label %97
    i32 32, label %100
    i32 53, label %103
    i32 108, label %106
    i32 124, label %109
    i32 130, label %112
    i32 136, label %115
    i32 181, label %118
    i32 196, label %121
    i32 197, label %124
    i32 107, label %127
    i32 56, label %130
    i32 186, label %133
    i32 92, label %136
    i32 153, label %139
  ]

97:                                               ; preds = %84
  %98 = load i32, i32* @KEY_BRIGHTNESSDOWN, align 4
  %99 = call i32 @asus_map_key_clear(i32 %98)
  br label %143

100:                                              ; preds = %84
  %101 = load i32, i32* @KEY_BRIGHTNESSUP, align 4
  %102 = call i32 @asus_map_key_clear(i32 %101)
  br label %143

103:                                              ; preds = %84
  %104 = load i32, i32* @KEY_DISPLAY_OFF, align 4
  %105 = call i32 @asus_map_key_clear(i32 %104)
  br label %143

106:                                              ; preds = %84
  %107 = load i32, i32* @KEY_SLEEP, align 4
  %108 = call i32 @asus_map_key_clear(i32 %107)
  br label %143

109:                                              ; preds = %84
  %110 = load i32, i32* @KEY_MICMUTE, align 4
  %111 = call i32 @asus_map_key_clear(i32 %110)
  br label %143

112:                                              ; preds = %84
  %113 = load i32, i32* @KEY_CAMERA, align 4
  %114 = call i32 @asus_map_key_clear(i32 %113)
  br label %143

115:                                              ; preds = %84
  %116 = load i32, i32* @KEY_RFKILL, align 4
  %117 = call i32 @asus_map_key_clear(i32 %116)
  br label %143

118:                                              ; preds = %84
  %119 = load i32, i32* @KEY_CALC, align 4
  %120 = call i32 @asus_map_key_clear(i32 %119)
  br label %143

121:                                              ; preds = %84
  %122 = load i32, i32* @KEY_KBDILLUMUP, align 4
  %123 = call i32 @asus_map_key_clear(i32 %122)
  br label %143

124:                                              ; preds = %84
  %125 = load i32, i32* @KEY_KBDILLUMDOWN, align 4
  %126 = call i32 @asus_map_key_clear(i32 %125)
  br label %143

127:                                              ; preds = %84
  %128 = load i32, i32* @KEY_F21, align 4
  %129 = call i32 @asus_map_key_clear(i32 %128)
  br label %143

130:                                              ; preds = %84
  %131 = load i32, i32* @KEY_PROG1, align 4
  %132 = call i32 @asus_map_key_clear(i32 %131)
  br label %143

133:                                              ; preds = %84
  %134 = load i32, i32* @KEY_PROG2, align 4
  %135 = call i32 @asus_map_key_clear(i32 %134)
  br label %143

136:                                              ; preds = %84
  %137 = load i32, i32* @KEY_PROG3, align 4
  %138 = call i32 @asus_map_key_clear(i32 %137)
  br label %143

139:                                              ; preds = %84
  %140 = load i32, i32* @KEY_PROG4, align 4
  %141 = call i32 @asus_map_key_clear(i32 %140)
  br label %143

142:                                              ; preds = %84
  store i32 -1, i32* %7, align 4
  br label %252

143:                                              ; preds = %139, %136, %133, %130, %127, %124, %121, %118, %115, %112, %109, %106, %103, %100, %97
  %144 = load %struct.asus_drvdata*, %struct.asus_drvdata** %14, align 8
  %145 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @QUIRK_USE_KBD_BACKLIGHT, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %143
  %151 = load %struct.asus_drvdata*, %struct.asus_drvdata** %14, align 8
  %152 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %151, i32 0, i32 1
  store i32 1, i32* %152, align 4
  br label %153

153:                                              ; preds = %150, %143
  store i32 1, i32* %7, align 4
  br label %252

154:                                              ; preds = %77
  %155 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %156 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @HID_USAGE_PAGE, align 4
  %159 = and i32 %157, %158
  %160 = load i32, i32* @HID_UP_MSVENDOR, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %228

162:                                              ; preds = %154
  %163 = load i32, i32* @EV_REP, align 4
  %164 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %165 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %164, i32 0, i32 0
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @set_bit(i32 %163, i32 %168)
  %170 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %171 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @HID_USAGE, align 4
  %174 = and i32 %172, %173
  switch i32 %174, label %226 [
    i32 65281, label %175
    i32 65282, label %178
    i32 65283, label %181
    i32 65284, label %184
    i32 65285, label %187
    i32 65286, label %190
    i32 65287, label %193
    i32 65288, label %196
    i32 65289, label %199
    i32 65290, label %202
    i32 65291, label %205
    i32 241, label %208
    i32 242, label %211
    i32 243, label %214
    i32 244, label %217
    i32 247, label %220
    i32 248, label %223
  ]

175:                                              ; preds = %162
  %176 = load i32, i32* @BTN_1, align 4
  %177 = call i32 @asus_map_key_clear(i32 %176)
  br label %227

178:                                              ; preds = %162
  %179 = load i32, i32* @BTN_2, align 4
  %180 = call i32 @asus_map_key_clear(i32 %179)
  br label %227

181:                                              ; preds = %162
  %182 = load i32, i32* @BTN_3, align 4
  %183 = call i32 @asus_map_key_clear(i32 %182)
  br label %227

184:                                              ; preds = %162
  %185 = load i32, i32* @BTN_4, align 4
  %186 = call i32 @asus_map_key_clear(i32 %185)
  br label %227

187:                                              ; preds = %162
  %188 = load i32, i32* @BTN_5, align 4
  %189 = call i32 @asus_map_key_clear(i32 %188)
  br label %227

190:                                              ; preds = %162
  %191 = load i32, i32* @BTN_6, align 4
  %192 = call i32 @asus_map_key_clear(i32 %191)
  br label %227

193:                                              ; preds = %162
  %194 = load i32, i32* @BTN_7, align 4
  %195 = call i32 @asus_map_key_clear(i32 %194)
  br label %227

196:                                              ; preds = %162
  %197 = load i32, i32* @BTN_8, align 4
  %198 = call i32 @asus_map_key_clear(i32 %197)
  br label %227

199:                                              ; preds = %162
  %200 = load i32, i32* @BTN_9, align 4
  %201 = call i32 @asus_map_key_clear(i32 %200)
  br label %227

202:                                              ; preds = %162
  %203 = load i32, i32* @BTN_A, align 4
  %204 = call i32 @asus_map_key_clear(i32 %203)
  br label %227

205:                                              ; preds = %162
  %206 = load i32, i32* @BTN_B, align 4
  %207 = call i32 @asus_map_key_clear(i32 %206)
  br label %227

208:                                              ; preds = %162
  %209 = load i32, i32* @KEY_WLAN, align 4
  %210 = call i32 @asus_map_key_clear(i32 %209)
  br label %227

211:                                              ; preds = %162
  %212 = load i32, i32* @KEY_BRIGHTNESSDOWN, align 4
  %213 = call i32 @asus_map_key_clear(i32 %212)
  br label %227

214:                                              ; preds = %162
  %215 = load i32, i32* @KEY_BRIGHTNESSUP, align 4
  %216 = call i32 @asus_map_key_clear(i32 %215)
  br label %227

217:                                              ; preds = %162
  %218 = load i32, i32* @KEY_DISPLAY_OFF, align 4
  %219 = call i32 @asus_map_key_clear(i32 %218)
  br label %227

220:                                              ; preds = %162
  %221 = load i32, i32* @KEY_CAMERA, align 4
  %222 = call i32 @asus_map_key_clear(i32 %221)
  br label %227

223:                                              ; preds = %162
  %224 = load i32, i32* @KEY_PROG1, align 4
  %225 = call i32 @asus_map_key_clear(i32 %224)
  br label %227

226:                                              ; preds = %162
  store i32 0, i32* %7, align 4
  br label %252

227:                                              ; preds = %223, %220, %217, %214, %211, %208, %205, %202, %199, %196, %193, %190, %187, %184, %181, %178, %175
  store i32 1, i32* %7, align 4
  br label %252

228:                                              ; preds = %154
  %229 = load %struct.asus_drvdata*, %struct.asus_drvdata** %14, align 8
  %230 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @QUIRK_NO_CONSUMER_USAGES, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %251

235:                                              ; preds = %228
  %236 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %237 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @HID_USAGE_PAGE, align 4
  %240 = and i32 %238, %239
  %241 = load i32, i32* @HID_UP_CONSUMER, align 4
  %242 = icmp eq i32 %240, %241
  br i1 %242, label %243, label %251

243:                                              ; preds = %235
  %244 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %245 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @HID_USAGE, align 4
  %248 = and i32 %246, %247
  switch i32 %248, label %250 [
    i32 226, label %249
    i32 233, label %249
    i32 234, label %249
  ]

249:                                              ; preds = %243, %243, %243
  store i32 0, i32* %7, align 4
  br label %252

250:                                              ; preds = %243
  store i32 -1, i32* %7, align 4
  br label %252

251:                                              ; preds = %235, %228
  store i32 0, i32* %7, align 4
  br label %252

252:                                              ; preds = %251, %250, %249, %227, %226, %153, %142, %75, %61, %23
  %253 = load i32, i32* %7, align 4
  ret i32 %253
}

declare dso_local %struct.asus_drvdata* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @asus_map_key_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
