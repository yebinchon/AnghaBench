; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_connect_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_connect_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidpp_device = type { i32, i32, i8*, i32, %struct.input_dev*, %struct.TYPE_2__, i32, %struct.hid_device* }
%struct.input_dev = type { i32 }
%struct.TYPE_2__ = type { i32, i64, i32, i32 }
%struct.hid_device = type { i8*, i32 }

@POWER_SUPPLY_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@POWER_SUPPLY_CAPACITY_LEVEL_UNKNOWN = common dso_local global i32 0, align 4
@HIDPP_QUIRK_CLASS_WTP = common dso_local global i32 0, align 4
@HIDPP_QUIRK_CLASS_M560 = common dso_local global i32 0, align 4
@HIDPP_QUIRK_CLASS_K400 = common dso_local global i32 0, align 4
@HIDPP_QUIRK_HIDPP_WHEELS = common dso_local global i32 0, align 4
@HIDPP_QUIRK_HIDPP_EXTRA_MOUSE_BTNS = common dso_local global i32 0, align 4
@HIDPP_QUIRK_HIDPP_CONSUMER_VENDOR_KEYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Can not get the protocol version.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@HIDPP_CAPABILITY_HIDPP10_BATTERY = common dso_local global i32 0, align 4
@HIDPP_CAPABILITY_BATTERY_MILEAGE = common dso_local global i32 0, align 4
@HIDPP_CAPABILITY_HIDPP20_BATTERY = common dso_local global i32 0, align 4
@HIDPP_QUIRK_HI_RES_SCROLL = common dso_local global i32 0, align 4
@HIDPP_QUIRK_NO_HIDINPUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"cannot allocate new input device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hidpp_device*)* @hidpp_connect_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hidpp_connect_event(%struct.hidpp_device* %0) #0 {
  %2 = alloca %struct.hidpp_device*, align 8
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.hidpp_device* %0, %struct.hidpp_device** %2, align 8
  %9 = load %struct.hidpp_device*, %struct.hidpp_device** %2, align 8
  %10 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %9, i32 0, i32 7
  %11 = load %struct.hid_device*, %struct.hid_device** %10, align 8
  store %struct.hid_device* %11, %struct.hid_device** %3, align 8
  store i32 0, i32* %4, align 4
  %12 = load %struct.hidpp_device*, %struct.hidpp_device** %2, align 8
  %13 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %12, i32 0, i32 6
  %14 = call i32 @atomic_read(i32* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %41, label %17

17:                                               ; preds = %1
  %18 = load %struct.hidpp_device*, %struct.hidpp_device** %2, align 8
  %19 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %17
  %24 = load %struct.hidpp_device*, %struct.hidpp_device** %2, align 8
  %25 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load i32, i32* @POWER_SUPPLY_STATUS_UNKNOWN, align 4
  %28 = load %struct.hidpp_device*, %struct.hidpp_device** %2, align 8
  %29 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_UNKNOWN, align 4
  %32 = load %struct.hidpp_device*, %struct.hidpp_device** %2, align 8
  %33 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 8
  %35 = load %struct.hidpp_device*, %struct.hidpp_device** %2, align 8
  %36 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @power_supply_changed(i64 %38)
  br label %40

40:                                               ; preds = %23, %17
  br label %273

41:                                               ; preds = %1
  %42 = load %struct.hidpp_device*, %struct.hidpp_device** %2, align 8
  %43 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @HIDPP_QUIRK_CLASS_WTP, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %41
  %49 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @wtp_connect(%struct.hid_device* %49, i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %273

55:                                               ; preds = %48
  br label %88

56:                                               ; preds = %41
  %57 = load %struct.hidpp_device*, %struct.hidpp_device** %2, align 8
  %58 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @HIDPP_QUIRK_CLASS_M560, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %56
  %64 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @m560_send_config_command(%struct.hid_device* %64, i32 %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %273

70:                                               ; preds = %63
  br label %87

71:                                               ; preds = %56
  %72 = load %struct.hidpp_device*, %struct.hidpp_device** %2, align 8
  %73 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @HIDPP_QUIRK_CLASS_K400, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %71
  %79 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @k400_connect(%struct.hid_device* %79, i32 %80)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %273

85:                                               ; preds = %78
  br label %86

86:                                               ; preds = %85, %71
  br label %87

87:                                               ; preds = %86, %70
  br label %88

88:                                               ; preds = %87, %55
  %89 = load %struct.hidpp_device*, %struct.hidpp_device** %2, align 8
  %90 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @HIDPP_QUIRK_HIDPP_WHEELS, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %88
  %96 = load %struct.hidpp_device*, %struct.hidpp_device** %2, align 8
  %97 = call i32 @hidpp10_wheel_connect(%struct.hidpp_device* %96)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %273

101:                                              ; preds = %95
  br label %102

102:                                              ; preds = %101, %88
  %103 = load %struct.hidpp_device*, %struct.hidpp_device** %2, align 8
  %104 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @HIDPP_QUIRK_HIDPP_EXTRA_MOUSE_BTNS, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %102
  %110 = load %struct.hidpp_device*, %struct.hidpp_device** %2, align 8
  %111 = call i32 @hidpp10_extra_mouse_buttons_connect(%struct.hidpp_device* %110)
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* %4, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %273

115:                                              ; preds = %109
  br label %116

116:                                              ; preds = %115, %102
  %117 = load %struct.hidpp_device*, %struct.hidpp_device** %2, align 8
  %118 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @HIDPP_QUIRK_HIDPP_CONSUMER_VENDOR_KEYS, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %116
  %124 = load %struct.hidpp_device*, %struct.hidpp_device** %2, align 8
  %125 = call i32 @hidpp10_consumer_keys_connect(%struct.hidpp_device* %124)
  store i32 %125, i32* %4, align 4
  %126 = load i32, i32* %4, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  br label %273

129:                                              ; preds = %123
  br label %130

130:                                              ; preds = %129, %116
  %131 = load %struct.hidpp_device*, %struct.hidpp_device** %2, align 8
  %132 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %144, label %135

135:                                              ; preds = %130
  %136 = load %struct.hidpp_device*, %struct.hidpp_device** %2, align 8
  %137 = call i32 @hidpp_root_get_protocol_version(%struct.hidpp_device* %136)
  store i32 %137, i32* %4, align 4
  %138 = load i32, i32* %4, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %142 = call i32 (%struct.hid_device*, i8*, ...) @hid_err(%struct.hid_device* %141, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %273

143:                                              ; preds = %135
  br label %144

144:                                              ; preds = %143, %130
  %145 = load %struct.hidpp_device*, %struct.hidpp_device** %2, align 8
  %146 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %145, i32 0, i32 2
  %147 = load i8*, i8** %146, align 8
  %148 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %149 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = icmp eq i8* %147, %150
  br i1 %151, label %152, label %178

152:                                              ; preds = %144
  %153 = load %struct.hidpp_device*, %struct.hidpp_device** %2, align 8
  %154 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp sge i32 %155, 2
  br i1 %156, label %157, label %178

157:                                              ; preds = %152
  %158 = load %struct.hidpp_device*, %struct.hidpp_device** %2, align 8
  %159 = call i8* @hidpp_get_device_name(%struct.hidpp_device* %158)
  store i8* %159, i8** %7, align 8
  %160 = load i8*, i8** %7, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %177

162:                                              ; preds = %157
  %163 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %164 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %163, i32 0, i32 1
  %165 = load i32, i32* @GFP_KERNEL, align 4
  %166 = load i8*, i8** %7, align 8
  %167 = call i8* @devm_kasprintf(i32* %164, i32 %165, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %166)
  store i8* %167, i8** %8, align 8
  %168 = load i8*, i8** %7, align 8
  %169 = call i32 @kfree(i8* %168)
  %170 = load i8*, i8** %8, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %173, label %172

172:                                              ; preds = %162
  br label %273

173:                                              ; preds = %162
  %174 = load i8*, i8** %8, align 8
  %175 = load %struct.hidpp_device*, %struct.hidpp_device** %2, align 8
  %176 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %175, i32 0, i32 2
  store i8* %174, i8** %176, align 8
  br label %177

177:                                              ; preds = %173, %157
  br label %178

178:                                              ; preds = %177, %152, %144
  %179 = load %struct.hidpp_device*, %struct.hidpp_device** %2, align 8
  %180 = call i32 @hidpp_initialize_battery(%struct.hidpp_device* %179)
  %181 = load %struct.hidpp_device*, %struct.hidpp_device** %2, align 8
  %182 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @HIDPP_CAPABILITY_HIDPP10_BATTERY, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %203

187:                                              ; preds = %178
  %188 = load %struct.hidpp_device*, %struct.hidpp_device** %2, align 8
  %189 = call i32 @hidpp10_enable_battery_reporting(%struct.hidpp_device* %188)
  %190 = load %struct.hidpp_device*, %struct.hidpp_device** %2, align 8
  %191 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @HIDPP_CAPABILITY_BATTERY_MILEAGE, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %187
  %197 = load %struct.hidpp_device*, %struct.hidpp_device** %2, align 8
  %198 = call i32 @hidpp10_query_battery_mileage(%struct.hidpp_device* %197)
  br label %202

199:                                              ; preds = %187
  %200 = load %struct.hidpp_device*, %struct.hidpp_device** %2, align 8
  %201 = call i32 @hidpp10_query_battery_status(%struct.hidpp_device* %200)
  br label %202

202:                                              ; preds = %199, %196
  br label %214

203:                                              ; preds = %178
  %204 = load %struct.hidpp_device*, %struct.hidpp_device** %2, align 8
  %205 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @HIDPP_CAPABILITY_HIDPP20_BATTERY, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %203
  %211 = load %struct.hidpp_device*, %struct.hidpp_device** %2, align 8
  %212 = call i32 @hidpp20_query_battery_info(%struct.hidpp_device* %211)
  br label %213

213:                                              ; preds = %210, %203
  br label %214

214:                                              ; preds = %213, %202
  %215 = load %struct.hidpp_device*, %struct.hidpp_device** %2, align 8
  %216 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %215, i32 0, i32 5
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %214
  %221 = load %struct.hidpp_device*, %struct.hidpp_device** %2, align 8
  %222 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %221, i32 0, i32 5
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = call i32 @power_supply_changed(i64 %224)
  br label %226

226:                                              ; preds = %220, %214
  %227 = load %struct.hidpp_device*, %struct.hidpp_device** %2, align 8
  %228 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @HIDPP_QUIRK_HI_RES_SCROLL, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %226
  %234 = load %struct.hidpp_device*, %struct.hidpp_device** %2, align 8
  %235 = call i32 @hi_res_scroll_enable(%struct.hidpp_device* %234)
  br label %236

236:                                              ; preds = %233, %226
  %237 = load %struct.hidpp_device*, %struct.hidpp_device** %2, align 8
  %238 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @HIDPP_QUIRK_NO_HIDINPUT, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %236
  %244 = load %struct.hidpp_device*, %struct.hidpp_device** %2, align 8
  %245 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %244, i32 0, i32 4
  %246 = load %struct.input_dev*, %struct.input_dev** %245, align 8
  %247 = icmp ne %struct.input_dev* %246, null
  br i1 %247, label %248, label %249

248:                                              ; preds = %243, %236
  br label %273

249:                                              ; preds = %243
  %250 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %251 = call %struct.input_dev* @hidpp_allocate_input(%struct.hid_device* %250)
  store %struct.input_dev* %251, %struct.input_dev** %6, align 8
  %252 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %253 = icmp ne %struct.input_dev* %252, null
  br i1 %253, label %258, label %254

254:                                              ; preds = %249
  %255 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %256 = load i32, i32* %4, align 4
  %257 = call i32 (%struct.hid_device*, i8*, ...) @hid_err(%struct.hid_device* %255, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %256)
  br label %273

258:                                              ; preds = %249
  %259 = load %struct.hidpp_device*, %struct.hidpp_device** %2, align 8
  %260 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %261 = call i32 @hidpp_populate_input(%struct.hidpp_device* %259, %struct.input_dev* %260)
  %262 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %263 = call i32 @input_register_device(%struct.input_dev* %262)
  store i32 %263, i32* %4, align 4
  %264 = load i32, i32* %4, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %258
  %267 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %268 = call i32 @input_free_device(%struct.input_dev* %267)
  br label %269

269:                                              ; preds = %266, %258
  %270 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %271 = load %struct.hidpp_device*, %struct.hidpp_device** %2, align 8
  %272 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %271, i32 0, i32 4
  store %struct.input_dev* %270, %struct.input_dev** %272, align 8
  br label %273

273:                                              ; preds = %269, %254, %248, %172, %140, %128, %114, %100, %84, %69, %54, %40
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @power_supply_changed(i64) #1

declare dso_local i32 @wtp_connect(%struct.hid_device*, i32) #1

declare dso_local i32 @m560_send_config_command(%struct.hid_device*, i32) #1

declare dso_local i32 @k400_connect(%struct.hid_device*, i32) #1

declare dso_local i32 @hidpp10_wheel_connect(%struct.hidpp_device*) #1

declare dso_local i32 @hidpp10_extra_mouse_buttons_connect(%struct.hidpp_device*) #1

declare dso_local i32 @hidpp10_consumer_keys_connect(%struct.hidpp_device*) #1

declare dso_local i32 @hidpp_root_get_protocol_version(%struct.hidpp_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*, ...) #1

declare dso_local i8* @hidpp_get_device_name(%struct.hidpp_device*) #1

declare dso_local i8* @devm_kasprintf(i32*, i32, i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @hidpp_initialize_battery(%struct.hidpp_device*) #1

declare dso_local i32 @hidpp10_enable_battery_reporting(%struct.hidpp_device*) #1

declare dso_local i32 @hidpp10_query_battery_mileage(%struct.hidpp_device*) #1

declare dso_local i32 @hidpp10_query_battery_status(%struct.hidpp_device*) #1

declare dso_local i32 @hidpp20_query_battery_info(%struct.hidpp_device*) #1

declare dso_local i32 @hi_res_scroll_enable(%struct.hidpp_device*) #1

declare dso_local %struct.input_dev* @hidpp_allocate_input(%struct.hid_device*) #1

declare dso_local i32 @hidpp_populate_input(%struct.hidpp_device*, %struct.input_dev*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
