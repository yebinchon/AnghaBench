; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-apple.c_hidinput_apple_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-apple.c_hidinput_apple_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apple_key_translation = type { i32, i64, i64 }
%struct.hid_device = type { i32, i64 }
%struct.input_dev = type { i32, i32 }
%struct.hid_usage = type { i32, i64 }
%struct.apple_sc = type { i32, i32, i32 }

@KEY_FN = common dso_local global i64 0, align 8
@fnmode = common dso_local global i32 0, align 4
@USB_DEVICE_ID_APPLE_WELLSPRING4_ANSI = common dso_local global i32 0, align 4
@USB_DEVICE_ID_APPLE_WELLSPRING4A_JIS = common dso_local global i32 0, align 4
@macbookair_fn_keys = common dso_local global %struct.apple_key_translation* null, align 8
@powerbook_fn_keys = common dso_local global %struct.apple_key_translation* null, align 8
@apple_fn_keys = common dso_local global %struct.apple_key_translation* null, align 8
@APPLE_FLAG_FKEY = common dso_local global i32 0, align 4
@APPLE_NUMLOCK_EMULATION = common dso_local global i32 0, align 4
@LED_NUML = common dso_local global i64 0, align 8
@powerbook_numlock_keys = common dso_local global %struct.apple_key_translation* null, align 8
@iso_layout = common dso_local global i64 0, align 8
@HID_COUNTRY_INTERNATIONAL_ISO = common dso_local global i64 0, align 8
@apple_iso_keyboard = common dso_local global %struct.apple_key_translation* null, align 8
@swap_opt_cmd = common dso_local global i64 0, align 8
@swapped_option_cmd_keys = common dso_local global %struct.apple_key_translation* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.input_dev*, %struct.hid_usage*, i64)* @hidinput_apple_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidinput_apple_event(%struct.hid_device* %0, %struct.input_dev* %1, %struct.hid_usage* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca %struct.hid_usage*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.apple_sc*, align 8
  %11 = alloca %struct.apple_key_translation*, align 8
  %12 = alloca %struct.apple_key_translation*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store %struct.input_dev* %1, %struct.input_dev** %7, align 8
  store %struct.hid_usage* %2, %struct.hid_usage** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %16 = call %struct.apple_sc* @hid_get_drvdata(%struct.hid_device* %15)
  store %struct.apple_sc* %16, %struct.apple_sc** %10, align 8
  store i64 0, i64* %14, align 8
  %17 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %18 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @KEY_FN, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %4
  %23 = load i64, i64* %9, align 8
  %24 = icmp ne i64 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = load %struct.apple_sc*, %struct.apple_sc** %10, align 8
  %29 = getelementptr inbounds %struct.apple_sc, %struct.apple_sc* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %31 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %32 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %35 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @input_event(%struct.input_dev* %30, i32 %33, i64 %36, i64 %37)
  store i32 1, i32* %5, align 4
  br label %270

39:                                               ; preds = %4
  %40 = load i32, i32* @fnmode, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %218

42:                                               ; preds = %39
  %43 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %44 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @USB_DEVICE_ID_APPLE_WELLSPRING4_ANSI, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %50 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @USB_DEVICE_ID_APPLE_WELLSPRING4A_JIS, align 4
  %53 = icmp sle i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load %struct.apple_key_translation*, %struct.apple_key_translation** @macbookair_fn_keys, align 8
  store %struct.apple_key_translation* %55, %struct.apple_key_translation** %12, align 8
  br label %71

56:                                               ; preds = %48, %42
  %57 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %58 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %59, 541
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %63 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp sge i32 %64, 768
  br i1 %65, label %66, label %68

66:                                               ; preds = %61, %56
  %67 = load %struct.apple_key_translation*, %struct.apple_key_translation** @powerbook_fn_keys, align 8
  store %struct.apple_key_translation* %67, %struct.apple_key_translation** %12, align 8
  br label %70

68:                                               ; preds = %61
  %69 = load %struct.apple_key_translation*, %struct.apple_key_translation** @apple_fn_keys, align 8
  store %struct.apple_key_translation* %69, %struct.apple_key_translation** %12, align 8
  br label %70

70:                                               ; preds = %68, %66
  br label %71

71:                                               ; preds = %70, %54
  %72 = load %struct.apple_key_translation*, %struct.apple_key_translation** %12, align 8
  %73 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %74 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call %struct.apple_key_translation* @apple_find_translation(%struct.apple_key_translation* %72, i64 %75)
  store %struct.apple_key_translation* %76, %struct.apple_key_translation** %11, align 8
  %77 = load %struct.apple_key_translation*, %struct.apple_key_translation** %11, align 8
  %78 = icmp ne %struct.apple_key_translation* %77, null
  br i1 %78, label %79, label %156

79:                                               ; preds = %71
  %80 = load %struct.apple_key_translation*, %struct.apple_key_translation** %11, align 8
  %81 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %84 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @test_bit(i64 %82, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %79
  %89 = load %struct.apple_key_translation*, %struct.apple_key_translation** %11, align 8
  %90 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %14, align 8
  br label %106

92:                                               ; preds = %79
  %93 = load %struct.apple_key_translation*, %struct.apple_key_translation** %11, align 8
  %94 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %97 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @test_bit(i64 %95, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %92
  %102 = load %struct.apple_key_translation*, %struct.apple_key_translation** %11, align 8
  %103 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %14, align 8
  br label %105

105:                                              ; preds = %101, %92
  br label %106

106:                                              ; preds = %105, %88
  %107 = load i64, i64* %14, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %148, label %109

109:                                              ; preds = %106
  %110 = load %struct.apple_key_translation*, %struct.apple_key_translation** %11, align 8
  %111 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @APPLE_FLAG_FKEY, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %131

116:                                              ; preds = %109
  %117 = load i32, i32* @fnmode, align 4
  switch i32 %117, label %129 [
    i32 1, label %118
    i32 2, label %125
  ]

118:                                              ; preds = %116
  %119 = load %struct.apple_sc*, %struct.apple_sc** %10, align 8
  %120 = getelementptr inbounds %struct.apple_sc, %struct.apple_sc* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  store i32 %124, i32* %13, align 4
  br label %130

125:                                              ; preds = %116
  %126 = load %struct.apple_sc*, %struct.apple_sc** %10, align 8
  %127 = getelementptr inbounds %struct.apple_sc, %struct.apple_sc* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %13, align 4
  br label %130

129:                                              ; preds = %116
  store i32 0, i32* %13, align 4
  br label %130

130:                                              ; preds = %129, %125, %118
  br label %135

131:                                              ; preds = %109
  %132 = load %struct.apple_sc*, %struct.apple_sc** %10, align 8
  %133 = getelementptr inbounds %struct.apple_sc, %struct.apple_sc* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %13, align 4
  br label %135

135:                                              ; preds = %131, %130
  %136 = load i32, i32* %13, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load %struct.apple_key_translation*, %struct.apple_key_translation** %11, align 8
  %140 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  br label %146

142:                                              ; preds = %135
  %143 = load %struct.apple_key_translation*, %struct.apple_key_translation** %11, align 8
  %144 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  br label %146

146:                                              ; preds = %142, %138
  %147 = phi i64 [ %141, %138 ], [ %145, %142 ]
  store i64 %147, i64* %14, align 8
  br label %148

148:                                              ; preds = %146, %106
  %149 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %150 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %151 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i64, i64* %14, align 8
  %154 = load i64, i64* %9, align 8
  %155 = call i32 @input_event(%struct.input_dev* %149, i32 %152, i64 %153, i64 %154)
  store i32 1, i32* %5, align 4
  br label %270

156:                                              ; preds = %71
  %157 = load %struct.apple_sc*, %struct.apple_sc** %10, align 8
  %158 = getelementptr inbounds %struct.apple_sc, %struct.apple_sc* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @APPLE_NUMLOCK_EMULATION, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %217

163:                                              ; preds = %156
  %164 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %165 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.apple_sc*, %struct.apple_sc** %10, align 8
  %168 = getelementptr inbounds %struct.apple_sc, %struct.apple_sc* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = call i64 @test_bit(i64 %166, i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %179, label %172

172:                                              ; preds = %163
  %173 = load i64, i64* @LED_NUML, align 8
  %174 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %175 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i64 @test_bit(i64 %173, i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %217

179:                                              ; preds = %172, %163
  %180 = load %struct.apple_key_translation*, %struct.apple_key_translation** @powerbook_numlock_keys, align 8
  %181 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %182 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = call %struct.apple_key_translation* @apple_find_translation(%struct.apple_key_translation* %180, i64 %183)
  store %struct.apple_key_translation* %184, %struct.apple_key_translation** %11, align 8
  %185 = load %struct.apple_key_translation*, %struct.apple_key_translation** %11, align 8
  %186 = icmp ne %struct.apple_key_translation* %185, null
  br i1 %186, label %187, label %216

187:                                              ; preds = %179
  %188 = load i64, i64* %9, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %198

190:                                              ; preds = %187
  %191 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %192 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.apple_sc*, %struct.apple_sc** %10, align 8
  %195 = getelementptr inbounds %struct.apple_sc, %struct.apple_sc* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @set_bit(i64 %193, i32 %196)
  br label %206

198:                                              ; preds = %187
  %199 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %200 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.apple_sc*, %struct.apple_sc** %10, align 8
  %203 = getelementptr inbounds %struct.apple_sc, %struct.apple_sc* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @clear_bit(i64 %201, i32 %204)
  br label %206

206:                                              ; preds = %198, %190
  %207 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %208 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %209 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.apple_key_translation*, %struct.apple_key_translation** %11, align 8
  %212 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* %9, align 8
  %215 = call i32 @input_event(%struct.input_dev* %207, i32 %210, i64 %213, i64 %214)
  br label %216

216:                                              ; preds = %206, %179
  store i32 1, i32* %5, align 4
  br label %270

217:                                              ; preds = %172, %156
  br label %218

218:                                              ; preds = %217, %39
  %219 = load i64, i64* @iso_layout, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %247

221:                                              ; preds = %218
  %222 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %223 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @HID_COUNTRY_INTERNATIONAL_ISO, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %246

227:                                              ; preds = %221
  %228 = load %struct.apple_key_translation*, %struct.apple_key_translation** @apple_iso_keyboard, align 8
  %229 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %230 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = call %struct.apple_key_translation* @apple_find_translation(%struct.apple_key_translation* %228, i64 %231)
  store %struct.apple_key_translation* %232, %struct.apple_key_translation** %11, align 8
  %233 = load %struct.apple_key_translation*, %struct.apple_key_translation** %11, align 8
  %234 = icmp ne %struct.apple_key_translation* %233, null
  br i1 %234, label %235, label %245

235:                                              ; preds = %227
  %236 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %237 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %238 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.apple_key_translation*, %struct.apple_key_translation** %11, align 8
  %241 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* %9, align 8
  %244 = call i32 @input_event(%struct.input_dev* %236, i32 %239, i64 %242, i64 %243)
  store i32 1, i32* %5, align 4
  br label %270

245:                                              ; preds = %227
  br label %246

246:                                              ; preds = %245, %221
  br label %247

247:                                              ; preds = %246, %218
  %248 = load i64, i64* @swap_opt_cmd, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %269

250:                                              ; preds = %247
  %251 = load %struct.apple_key_translation*, %struct.apple_key_translation** @swapped_option_cmd_keys, align 8
  %252 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %253 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = call %struct.apple_key_translation* @apple_find_translation(%struct.apple_key_translation* %251, i64 %254)
  store %struct.apple_key_translation* %255, %struct.apple_key_translation** %11, align 8
  %256 = load %struct.apple_key_translation*, %struct.apple_key_translation** %11, align 8
  %257 = icmp ne %struct.apple_key_translation* %256, null
  br i1 %257, label %258, label %268

258:                                              ; preds = %250
  %259 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %260 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %261 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.apple_key_translation*, %struct.apple_key_translation** %11, align 8
  %264 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* %9, align 8
  %267 = call i32 @input_event(%struct.input_dev* %259, i32 %262, i64 %265, i64 %266)
  store i32 1, i32* %5, align 4
  br label %270

268:                                              ; preds = %250
  br label %269

269:                                              ; preds = %268, %247
  store i32 0, i32* %5, align 4
  br label %270

270:                                              ; preds = %269, %258, %235, %216, %148, %22
  %271 = load i32, i32* %5, align 4
  ret i32 %271
}

declare dso_local %struct.apple_sc* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i64, i64) #1

declare dso_local %struct.apple_key_translation* @apple_find_translation(%struct.apple_key_translation*, i64) #1

declare dso_local i64 @test_bit(i64, i32) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @clear_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
