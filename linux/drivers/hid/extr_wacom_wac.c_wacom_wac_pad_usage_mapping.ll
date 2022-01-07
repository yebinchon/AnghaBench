; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_wac_pad_usage_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_wac_pad_usage_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_field = type { i32 }
%struct.hid_usage = type { i32, i32, i32 }
%struct.wacom = type { %struct.wacom_wac }
%struct.wacom_wac = type { i32, i32, i32, %struct.input_dev*, %struct.wacom_features }
%struct.input_dev = type { i32, i32 }
%struct.wacom_features = type { i32, i32 }

@INPUT_PROP_ACCELEROMETER = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@WACOM_DEVICETYPE_PAD = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_Z = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_SW = common dso_local global i32 0, align 4
@SW_MUTE_DEVICE = common dso_local global i32 0, align 4
@ABS_RX = common dso_local global i32 0, align 4
@ABS_RY = common dso_local global i32 0, align 4
@ABS_WHEEL = common dso_local global i32 0, align 4
@KEY_BUTTONCONFIG = common dso_local global i32 0, align 4
@KEY_ONSCREEN_KEYBOARD = common dso_local global i32 0, align 4
@KEY_CONTROLPANEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*)* @wacom_wac_pad_usage_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_wac_pad_usage_mapping(%struct.hid_device* %0, %struct.hid_field* %1, %struct.hid_usage* %2) #0 {
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_field*, align 8
  %6 = alloca %struct.hid_usage*, align 8
  %7 = alloca %struct.wacom*, align 8
  %8 = alloca %struct.wacom_wac*, align 8
  %9 = alloca %struct.wacom_features*, align 8
  %10 = alloca %struct.input_dev*, align 8
  %11 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_field* %1, %struct.hid_field** %5, align 8
  store %struct.hid_usage* %2, %struct.hid_usage** %6, align 8
  %12 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %13 = call %struct.wacom* @hid_get_drvdata(%struct.hid_device* %12)
  store %struct.wacom* %13, %struct.wacom** %7, align 8
  %14 = load %struct.wacom*, %struct.wacom** %7, align 8
  %15 = getelementptr inbounds %struct.wacom, %struct.wacom* %14, i32 0, i32 0
  store %struct.wacom_wac* %15, %struct.wacom_wac** %8, align 8
  %16 = load %struct.wacom_wac*, %struct.wacom_wac** %8, align 8
  %17 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %16, i32 0, i32 4
  store %struct.wacom_features* %17, %struct.wacom_features** %9, align 8
  %18 = load %struct.wacom_wac*, %struct.wacom_wac** %8, align 8
  %19 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %18, i32 0, i32 3
  %20 = load %struct.input_dev*, %struct.input_dev** %19, align 8
  store %struct.input_dev* %20, %struct.input_dev** %10, align 8
  %21 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %22 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @wacom_equivalent_usage(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  switch i32 %25, label %215 [
    i32 147, label %26
    i32 146, label %43
    i32 145, label %60
    i32 144, label %77
    i32 141, label %77
    i32 138, label %77
    i32 142, label %77
    i32 140, label %77
    i32 139, label %77
    i32 132, label %96
    i32 134, label %96
    i32 129, label %110
    i32 128, label %122
    i32 131, label %134
    i32 130, label %146
    i32 143, label %163
    i32 133, label %175
    i32 137, label %187
    i32 135, label %199
  ]

26:                                               ; preds = %3
  %27 = load i32, i32* @INPUT_PROP_ACCELEROMETER, align 4
  %28 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %29 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @__set_bit(i32 %27, i32 %30)
  %32 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %33 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %34 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %35 = load i32, i32* @EV_ABS, align 4
  %36 = load i32, i32* @ABS_X, align 4
  %37 = call i32 @wacom_map_usage(%struct.input_dev* %32, %struct.hid_usage* %33, %struct.hid_field* %34, i32 %35, i32 %36, i32 0)
  %38 = load i32, i32* @WACOM_DEVICETYPE_PAD, align 4
  %39 = load %struct.wacom_features*, %struct.wacom_features** %9, align 8
  %40 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %215

43:                                               ; preds = %3
  %44 = load i32, i32* @INPUT_PROP_ACCELEROMETER, align 4
  %45 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %46 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @__set_bit(i32 %44, i32 %47)
  %49 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %50 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %51 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %52 = load i32, i32* @EV_ABS, align 4
  %53 = load i32, i32* @ABS_Y, align 4
  %54 = call i32 @wacom_map_usage(%struct.input_dev* %49, %struct.hid_usage* %50, %struct.hid_field* %51, i32 %52, i32 %53, i32 0)
  %55 = load i32, i32* @WACOM_DEVICETYPE_PAD, align 4
  %56 = load %struct.wacom_features*, %struct.wacom_features** %9, align 8
  %57 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %215

60:                                               ; preds = %3
  %61 = load i32, i32* @INPUT_PROP_ACCELEROMETER, align 4
  %62 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %63 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @__set_bit(i32 %61, i32 %64)
  %66 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %67 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %68 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %69 = load i32, i32* @EV_ABS, align 4
  %70 = load i32, i32* @ABS_Z, align 4
  %71 = call i32 @wacom_map_usage(%struct.input_dev* %66, %struct.hid_usage* %67, %struct.hid_field* %68, i32 %69, i32 %70, i32 0)
  %72 = load i32, i32* @WACOM_DEVICETYPE_PAD, align 4
  %73 = load %struct.wacom_features*, %struct.wacom_features** %9, align 8
  %74 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %215

77:                                               ; preds = %3, %3, %3, %3, %3, %3
  %78 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %79 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %80 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %81 = load i32, i32* @EV_KEY, align 4
  %82 = load %struct.wacom_features*, %struct.wacom_features** %9, align 8
  %83 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @wacom_numbered_button_to_key(i32 %84)
  %86 = call i32 @wacom_map_usage(%struct.input_dev* %78, %struct.hid_usage* %79, %struct.hid_field* %80, i32 %81, i32 %85, i32 0)
  %87 = load %struct.wacom_features*, %struct.wacom_features** %9, align 8
  %88 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  %91 = load i32, i32* @WACOM_DEVICETYPE_PAD, align 4
  %92 = load %struct.wacom_features*, %struct.wacom_features** %9, align 8
  %93 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  br label %215

96:                                               ; preds = %3, %3
  %97 = load %struct.wacom_wac*, %struct.wacom_wac** %8, align 8
  %98 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %97, i32 0, i32 0
  store i32 1, i32* %98, align 8
  %99 = load i32, i32* @EV_SW, align 4
  %100 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %101 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @SW_MUTE_DEVICE, align 4
  %103 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %104 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* @WACOM_DEVICETYPE_PAD, align 4
  %106 = load %struct.wacom_features*, %struct.wacom_features** %9, align 8
  %107 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 4
  br label %215

110:                                              ; preds = %3
  %111 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %112 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %113 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %114 = load i32, i32* @EV_ABS, align 4
  %115 = load i32, i32* @ABS_RX, align 4
  %116 = call i32 @wacom_map_usage(%struct.input_dev* %111, %struct.hid_usage* %112, %struct.hid_field* %113, i32 %114, i32 %115, i32 0)
  %117 = load i32, i32* @WACOM_DEVICETYPE_PAD, align 4
  %118 = load %struct.wacom_features*, %struct.wacom_features** %9, align 8
  %119 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 4
  br label %215

122:                                              ; preds = %3
  %123 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %124 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %125 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %126 = load i32, i32* @EV_ABS, align 4
  %127 = load i32, i32* @ABS_RY, align 4
  %128 = call i32 @wacom_map_usage(%struct.input_dev* %123, %struct.hid_usage* %124, %struct.hid_field* %125, i32 %126, i32 %127, i32 0)
  %129 = load i32, i32* @WACOM_DEVICETYPE_PAD, align 4
  %130 = load %struct.wacom_features*, %struct.wacom_features** %9, align 8
  %131 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 4
  br label %215

134:                                              ; preds = %3
  %135 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %136 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %137 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %138 = load i32, i32* @EV_ABS, align 4
  %139 = load i32, i32* @ABS_WHEEL, align 4
  %140 = call i32 @wacom_map_usage(%struct.input_dev* %135, %struct.hid_usage* %136, %struct.hid_field* %137, i32 %138, i32 %139, i32 0)
  %141 = load i32, i32* @WACOM_DEVICETYPE_PAD, align 4
  %142 = load %struct.wacom_features*, %struct.wacom_features** %9, align 8
  %143 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 4
  br label %215

146:                                              ; preds = %3
  %147 = load i32, i32* @EV_ABS, align 4
  %148 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %149 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* @ABS_WHEEL, align 4
  %151 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %152 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* @EV_ABS, align 4
  %154 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %155 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @set_bit(i32 %153, i32 %156)
  %158 = load i32, i32* @WACOM_DEVICETYPE_PAD, align 4
  %159 = load %struct.wacom_features*, %struct.wacom_features** %9, align 8
  %160 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 4
  br label %215

163:                                              ; preds = %3
  %164 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %165 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %166 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %167 = load i32, i32* @EV_KEY, align 4
  %168 = load i32, i32* @KEY_BUTTONCONFIG, align 4
  %169 = call i32 @wacom_map_usage(%struct.input_dev* %164, %struct.hid_usage* %165, %struct.hid_field* %166, i32 %167, i32 %168, i32 0)
  %170 = load i32, i32* @WACOM_DEVICETYPE_PAD, align 4
  %171 = load %struct.wacom_features*, %struct.wacom_features** %9, align 8
  %172 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = or i32 %173, %170
  store i32 %174, i32* %172, align 4
  br label %215

175:                                              ; preds = %3
  %176 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %177 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %178 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %179 = load i32, i32* @EV_KEY, align 4
  %180 = load i32, i32* @KEY_ONSCREEN_KEYBOARD, align 4
  %181 = call i32 @wacom_map_usage(%struct.input_dev* %176, %struct.hid_usage* %177, %struct.hid_field* %178, i32 %179, i32 %180, i32 0)
  %182 = load i32, i32* @WACOM_DEVICETYPE_PAD, align 4
  %183 = load %struct.wacom_features*, %struct.wacom_features** %9, align 8
  %184 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 4
  br label %215

187:                                              ; preds = %3
  %188 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %189 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %190 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %191 = load i32, i32* @EV_KEY, align 4
  %192 = load i32, i32* @KEY_CONTROLPANEL, align 4
  %193 = call i32 @wacom_map_usage(%struct.input_dev* %188, %struct.hid_usage* %189, %struct.hid_field* %190, i32 %191, i32 %192, i32 0)
  %194 = load i32, i32* @WACOM_DEVICETYPE_PAD, align 4
  %195 = load %struct.wacom_features*, %struct.wacom_features** %9, align 8
  %196 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = or i32 %197, %194
  store i32 %198, i32* %196, align 4
  br label %215

199:                                              ; preds = %3
  %200 = load %struct.wacom_wac*, %struct.wacom_wac** %8, align 8
  %201 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %209, label %204

204:                                              ; preds = %199
  %205 = load %struct.wacom_wac*, %struct.wacom_wac** %8, align 8
  %206 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %205, i32 0, i32 1
  store i32 1, i32* %206, align 4
  %207 = load %struct.wacom_wac*, %struct.wacom_wac** %8, align 8
  %208 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %207, i32 0, i32 2
  store i32 1, i32* %208, align 8
  br label %209

209:                                              ; preds = %204, %199
  %210 = load i32, i32* @WACOM_DEVICETYPE_PAD, align 4
  %211 = load %struct.wacom_features*, %struct.wacom_features** %9, align 8
  %212 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = or i32 %213, %210
  store i32 %214, i32* %212, align 4
  br label %215

215:                                              ; preds = %3, %209, %187, %175, %163, %146, %134, %122, %110, %96, %77, %60, %43, %26
  %216 = load i32, i32* %11, align 4
  %217 = and i32 %216, -16
  switch i32 %217, label %237 [
    i32 136, label %218
  ]

218:                                              ; preds = %215
  %219 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %220 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %221 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %222 = load i32, i32* @EV_KEY, align 4
  %223 = load %struct.wacom_features*, %struct.wacom_features** %9, align 8
  %224 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @wacom_numbered_button_to_key(i32 %225)
  %227 = call i32 @wacom_map_usage(%struct.input_dev* %219, %struct.hid_usage* %220, %struct.hid_field* %221, i32 %222, i32 %226, i32 0)
  %228 = load %struct.wacom_features*, %struct.wacom_features** %9, align 8
  %229 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %229, align 4
  %232 = load i32, i32* @WACOM_DEVICETYPE_PAD, align 4
  %233 = load %struct.wacom_features*, %struct.wacom_features** %9, align 8
  %234 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = or i32 %235, %232
  store i32 %236, i32* %234, align 4
  br label %237

237:                                              ; preds = %215, %218
  ret void
}

declare dso_local %struct.wacom* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @wacom_equivalent_usage(i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @wacom_map_usage(%struct.input_dev*, %struct.hid_usage*, %struct.hid_field*, i32, i32, i32) #1

declare dso_local i32 @wacom_numbered_button_to_key(i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
