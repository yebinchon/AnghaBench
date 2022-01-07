; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_setup_touch_input_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_setup_touch_input_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32*, i32, i32, i32 }
%struct.wacom_wac = type { %struct.TYPE_4__*, %struct.wacom_features }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.wacom_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EV_KEY = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@WACOM_DEVICETYPE_TOUCH = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@WACOM_DEVICETYPE_DIRECT = common dso_local global i32 0, align 4
@INPUT_PROP_DIRECT = common dso_local global i32 0, align 4
@INPUT_PROP_POINTER = common dso_local global i32 0, align 4
@HID_GENERIC = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@EV_SW = common dso_local global i32 0, align 4
@SW_MUTE_DEVICE = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MINOR = common dso_local global i32 0, align 4
@INPUT_MT_POINTER = common dso_local global i32 0, align 4
@ABS_MT_WIDTH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_WIDTH_MINOR = common dso_local global i32 0, align 4
@ABS_MT_ORIENTATION = common dso_local global i32 0, align 4
@INPUT_MT_DIRECT = common dso_local global i32 0, align 4
@WACOM_PKGLEN_BBTOUCH3 = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wacom_setup_touch_input_capabilities(%struct.input_dev* %0, %struct.wacom_wac* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca %struct.wacom_wac*, align 8
  %6 = alloca %struct.wacom_features*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %4, align 8
  store %struct.wacom_wac* %1, %struct.wacom_wac** %5, align 8
  %7 = load %struct.wacom_wac*, %struct.wacom_wac** %5, align 8
  %8 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %7, i32 0, i32 1
  store %struct.wacom_features* %8, %struct.wacom_features** %6, align 8
  %9 = load i32, i32* @EV_KEY, align 4
  %10 = call i32 @BIT_MASK(i32 %9)
  %11 = load i32, i32* @EV_ABS, align 4
  %12 = call i32 @BIT_MASK(i32 %11)
  %13 = or i32 %10, %12
  %14 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %15 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %13
  store i32 %19, i32* %17, align 4
  %20 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %21 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @WACOM_DEVICETYPE_TOUCH, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %351

29:                                               ; preds = %2
  %30 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %31 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @WACOM_DEVICETYPE_DIRECT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load i32, i32* @INPUT_PROP_DIRECT, align 4
  %38 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %39 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @__set_bit(i32 %37, i32 %40)
  br label %48

42:                                               ; preds = %29
  %43 = load i32, i32* @INPUT_PROP_POINTER, align 4
  %44 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %45 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @__set_bit(i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %42, %36
  %49 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %50 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @HID_GENERIC, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %351

55:                                               ; preds = %48
  %56 = load i32, i32* @BTN_TOUCH, align 4
  %57 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %58 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @__set_bit(i32 %56, i32 %59)
  %61 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %62 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %96

65:                                               ; preds = %55
  %66 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %67 = load i32, i32* @ABS_X, align 4
  %68 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %69 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %72 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @input_set_abs_params(%struct.input_dev* %66, i32 %67, i32 0, i32 %70, i32 %73, i32 0)
  %75 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %76 = load i32, i32* @ABS_Y, align 4
  %77 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %78 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %81 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @input_set_abs_params(%struct.input_dev* %75, i32 %76, i32 0, i32 %79, i32 %82, i32 0)
  %84 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %85 = load i32, i32* @ABS_X, align 4
  %86 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %87 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @input_abs_set_res(%struct.input_dev* %84, i32 %85, i32 %88)
  %90 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %91 = load i32, i32* @ABS_Y, align 4
  %92 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %93 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @input_abs_set_res(%struct.input_dev* %90, i32 %91, i32 %94)
  br label %133

96:                                               ; preds = %55
  %97 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %98 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = icmp sgt i32 %99, 1
  br i1 %100, label %101, label %132

101:                                              ; preds = %96
  %102 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %103 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %104 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %105 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %108 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @input_set_abs_params(%struct.input_dev* %102, i32 %103, i32 0, i32 %106, i32 %109, i32 0)
  %111 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %112 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %113 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %114 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %117 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @input_set_abs_params(%struct.input_dev* %111, i32 %112, i32 0, i32 %115, i32 %118, i32 0)
  %120 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %121 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %122 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %123 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %122, i32 0, i32 7
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @input_abs_set_res(%struct.input_dev* %120, i32 %121, i32 %124)
  %126 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %127 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %128 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %129 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %128, i32 0, i32 8
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @input_abs_set_res(%struct.input_dev* %126, i32 %127, i32 %130)
  br label %132

132:                                              ; preds = %101, %96
  br label %133

133:                                              ; preds = %132, %65
  %134 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %135 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  switch i32 %136, label %350 [
    i32 139, label %137
    i32 140, label %137
    i32 145, label %207
    i32 144, label %207
    i32 137, label %207
    i32 138, label %207
    i32 143, label %207
    i32 136, label %207
    i32 129, label %226
    i32 128, label %248
    i32 135, label %285
    i32 134, label %285
    i32 133, label %285
    i32 131, label %285
    i32 132, label %292
    i32 130, label %292
    i32 142, label %293
    i32 141, label %293
    i32 147, label %307
    i32 146, label %307
    i32 148, label %333
  ]

137:                                              ; preds = %133, %133
  %138 = load i32, i32* @EV_SW, align 4
  %139 = call i32 @BIT_MASK(i32 %138)
  %140 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %141 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %139
  store i32 %145, i32* %143, align 4
  %146 = load i32, i32* @SW_MUTE_DEVICE, align 4
  %147 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %148 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @__set_bit(i32 %146, i32 %149)
  %151 = load %struct.wacom_wac*, %struct.wacom_wac** %5, align 8
  %152 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %151, i32 0, i32 0
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %157, 865
  br i1 %158, label %159, label %166

159:                                              ; preds = %137
  %160 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %161 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %162 = call i32 @input_set_abs_params(%struct.input_dev* %160, i32 %161, i32 0, i32 12440, i32 4, i32 0)
  %163 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %164 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %165 = call i32 @input_set_abs_params(%struct.input_dev* %163, i32 %164, i32 0, i32 8640, i32 4, i32 0)
  br label %200

166:                                              ; preds = %137
  %167 = load %struct.wacom_wac*, %struct.wacom_wac** %5, align 8
  %168 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %167, i32 0, i32 0
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = icmp eq i32 %173, 864
  br i1 %174, label %175, label %182

175:                                              ; preds = %166
  %176 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %177 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %178 = call i32 @input_set_abs_params(%struct.input_dev* %176, i32 %177, i32 0, i32 8960, i32 4, i32 0)
  %179 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %180 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %181 = call i32 @input_set_abs_params(%struct.input_dev* %179, i32 %180, i32 0, i32 5920, i32 4, i32 0)
  br label %199

182:                                              ; preds = %166
  %183 = load %struct.wacom_wac*, %struct.wacom_wac** %5, align 8
  %184 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %183, i32 0, i32 0
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = icmp eq i32 %189, 915
  br i1 %190, label %191, label %198

191:                                              ; preds = %182
  %192 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %193 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %194 = call i32 @input_set_abs_params(%struct.input_dev* %192, i32 %193, i32 0, i32 6400, i32 4, i32 0)
  %195 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %196 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %197 = call i32 @input_set_abs_params(%struct.input_dev* %195, i32 %196, i32 0, i32 4000, i32 4, i32 0)
  br label %198

198:                                              ; preds = %191, %182
  br label %199

199:                                              ; preds = %198, %175
  br label %200

200:                                              ; preds = %199, %159
  %201 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %202 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %203 = call i32 @input_abs_set_res(%struct.input_dev* %201, i32 %202, i32 40)
  %204 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %205 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %206 = call i32 @input_abs_set_res(%struct.input_dev* %204, i32 %205, i32 40)
  br label %207

207:                                              ; preds = %133, %133, %133, %133, %133, %133, %200
  %208 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %209 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %210 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %211 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @input_set_abs_params(%struct.input_dev* %208, i32 %209, i32 0, i32 %212, i32 0, i32 0)
  %214 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %215 = load i32, i32* @ABS_MT_TOUCH_MINOR, align 4
  %216 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %217 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %216, i32 0, i32 5
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @input_set_abs_params(%struct.input_dev* %214, i32 %215, i32 0, i32 %218, i32 0, i32 0)
  %220 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %221 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %222 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @INPUT_MT_POINTER, align 4
  %225 = call i32 @input_mt_init_slots(%struct.input_dev* %220, i32 %223, i32 %224)
  br label %350

226:                                              ; preds = %133
  %227 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %228 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %229 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %230 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @input_set_abs_params(%struct.input_dev* %227, i32 %228, i32 0, i32 %231, i32 0, i32 0)
  %233 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %234 = load i32, i32* @ABS_MT_WIDTH_MAJOR, align 4
  %235 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %236 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @input_set_abs_params(%struct.input_dev* %233, i32 %234, i32 0, i32 %237, i32 0, i32 0)
  %239 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %240 = load i32, i32* @ABS_MT_WIDTH_MINOR, align 4
  %241 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %242 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %241, i32 0, i32 5
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @input_set_abs_params(%struct.input_dev* %239, i32 %240, i32 0, i32 %243, i32 0, i32 0)
  %245 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %246 = load i32, i32* @ABS_MT_ORIENTATION, align 4
  %247 = call i32 @input_set_abs_params(%struct.input_dev* %245, i32 %246, i32 0, i32 1, i32 0, i32 0)
  br label %248

248:                                              ; preds = %133, %226
  %249 = load %struct.wacom_wac*, %struct.wacom_wac** %5, align 8
  %250 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %249, i32 0, i32 0
  %251 = load %struct.TYPE_4__*, %struct.TYPE_4__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 1
  %253 = load %struct.TYPE_3__*, %struct.TYPE_3__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = icmp eq i32 %255, 812
  br i1 %256, label %266, label %257

257:                                              ; preds = %248
  %258 = load %struct.wacom_wac*, %struct.wacom_wac** %5, align 8
  %259 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %258, i32 0, i32 0
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 1
  %262 = load %struct.TYPE_3__*, %struct.TYPE_3__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = icmp eq i32 %264, 246
  br i1 %265, label %266, label %284

266:                                              ; preds = %257, %248
  %267 = load i32, i32* @EV_SW, align 4
  %268 = call i32 @BIT_MASK(i32 %267)
  %269 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %270 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %269, i32 0, i32 0
  %271 = load i32*, i32** %270, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 0
  %273 = load i32, i32* %272, align 4
  %274 = or i32 %273, %268
  store i32 %274, i32* %272, align 4
  %275 = load i32, i32* @SW_MUTE_DEVICE, align 4
  %276 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %277 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @__set_bit(i32 %275, i32 %278)
  %280 = load %struct.wacom_wac*, %struct.wacom_wac** %5, align 8
  %281 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %280, i32 0, i32 0
  %282 = load %struct.TYPE_4__*, %struct.TYPE_4__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 0
  store i32 1, i32* %283, align 8
  br label %284

284:                                              ; preds = %266, %257
  br label %285

285:                                              ; preds = %133, %133, %133, %133, %284
  %286 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %287 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %288 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* @INPUT_MT_DIRECT, align 4
  %291 = call i32 @input_mt_init_slots(%struct.input_dev* %286, i32 %289, i32 %290)
  br label %292

292:                                              ; preds = %133, %133, %285
  br label %350

293:                                              ; preds = %133, %133
  %294 = load i32, i32* @EV_SW, align 4
  %295 = call i32 @BIT_MASK(i32 %294)
  %296 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %297 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %296, i32 0, i32 0
  %298 = load i32*, i32** %297, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 0
  %300 = load i32, i32* %299, align 4
  %301 = or i32 %300, %295
  store i32 %301, i32* %299, align 4
  %302 = load i32, i32* @SW_MUTE_DEVICE, align 4
  %303 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %304 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 4
  %306 = call i32 @__set_bit(i32 %302, i32 %305)
  br label %307

307:                                              ; preds = %133, %133, %293
  %308 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %309 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %308, i32 0, i32 9
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* @WACOM_PKGLEN_BBTOUCH3, align 4
  %312 = icmp eq i32 %310, %311
  br i1 %312, label %313, label %326

313:                                              ; preds = %307
  %314 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %315 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %316 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %317 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %316, i32 0, i32 3
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @input_set_abs_params(%struct.input_dev* %314, i32 %315, i32 0, i32 %318, i32 0, i32 0)
  %320 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %321 = load i32, i32* @ABS_MT_TOUCH_MINOR, align 4
  %322 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %323 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %322, i32 0, i32 5
  %324 = load i32, i32* %323, align 4
  %325 = call i32 @input_set_abs_params(%struct.input_dev* %320, i32 %321, i32 0, i32 %324, i32 0, i32 0)
  br label %326

326:                                              ; preds = %313, %307
  %327 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %328 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %329 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 4
  %331 = load i32, i32* @INPUT_MT_POINTER, align 4
  %332 = call i32 @input_mt_init_slots(%struct.input_dev* %327, i32 %330, i32 %331)
  br label %350

333:                                              ; preds = %133
  %334 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %335 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %336 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 4
  %338 = load i32, i32* @INPUT_MT_POINTER, align 4
  %339 = call i32 @input_mt_init_slots(%struct.input_dev* %334, i32 %337, i32 %338)
  %340 = load i32, i32* @BTN_LEFT, align 4
  %341 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %342 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 8
  %344 = call i32 @__set_bit(i32 %340, i32 %343)
  %345 = load i32, i32* @BTN_RIGHT, align 4
  %346 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %347 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 8
  %349 = call i32 @__set_bit(i32 %345, i32 %348)
  br label %350

350:                                              ; preds = %133, %333, %326, %292, %207
  store i32 0, i32* %3, align 4
  br label %351

351:                                              ; preds = %350, %54, %26
  %352 = load i32, i32* %3, align 4
  ret i32 %352
}

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_abs_set_res(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_mt_init_slots(%struct.input_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
