; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_setup_pen_input_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_setup_pen_input_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32*, i32, i32, i32 }
%struct.wacom_wac = type { %struct.wacom_features }
%struct.wacom_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EV_KEY = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@WACOM_DEVICETYPE_PEN = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@WACOM_DEVICETYPE_DIRECT = common dso_local global i32 0, align 4
@INPUT_PROP_DIRECT = common dso_local global i32 0, align 4
@INPUT_PROP_POINTER = common dso_local global i32 0, align 4
@HID_GENERIC = common dso_local global i32 0, align 4
@BTN_STYLUS3 = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_MISC = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@ABS_DISTANCE = common dso_local global i32 0, align 4
@EV_REL = common dso_local global i32 0, align 4
@REL_WHEEL = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@BTN_TOOL_RUBBER = common dso_local global i32 0, align 4
@BTN_TOOL_PEN = common dso_local global i32 0, align 4
@BTN_TOOL_MOUSE = common dso_local global i32 0, align 4
@BTN_STYLUS = common dso_local global i32 0, align 4
@BTN_STYLUS2 = common dso_local global i32 0, align 4
@ABS_Z = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wacom_setup_pen_input_capabilities(%struct.input_dev* %0, %struct.wacom_wac* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca %struct.wacom_wac*, align 8
  %6 = alloca %struct.wacom_features*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %4, align 8
  store %struct.wacom_wac* %1, %struct.wacom_wac** %5, align 8
  %7 = load %struct.wacom_wac*, %struct.wacom_wac** %5, align 8
  %8 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %7, i32 0, i32 0
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
  %23 = load i32, i32* @WACOM_DEVICETYPE_PEN, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %331

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
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %56 = load i32, i32* @EV_KEY, align 4
  %57 = load i32, i32* @BTN_STYLUS3, align 4
  %58 = call i32 @input_set_capability(%struct.input_dev* %55, i32 %56, i32 %57)
  store i32 0, i32* %3, align 4
  br label %331

59:                                               ; preds = %48
  %60 = load i32, i32* @BTN_TOUCH, align 4
  %61 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %62 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @__set_bit(i32 %60, i32 %63)
  %65 = load i32, i32* @ABS_MISC, align 4
  %66 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %67 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @__set_bit(i32 %65, i32 %68)
  %70 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %71 = load i32, i32* @ABS_X, align 4
  %72 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %73 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 0, %74
  %76 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %77 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %80 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %78, %81
  %83 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %84 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %83, i32 0, i32 15
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @input_set_abs_params(%struct.input_dev* %70, i32 %71, i32 %75, i32 %82, i32 %85, i32 0)
  %87 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %88 = load i32, i32* @ABS_Y, align 4
  %89 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %90 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 0, %91
  %93 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %94 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %97 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %95, %98
  %100 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %101 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %100, i32 0, i32 14
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @input_set_abs_params(%struct.input_dev* %87, i32 %88, i32 %92, i32 %99, i32 %102, i32 0)
  %104 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %105 = load i32, i32* @ABS_PRESSURE, align 4
  %106 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %107 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %106, i32 0, i32 8
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %110 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %109, i32 0, i32 13
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @input_set_abs_params(%struct.input_dev* %104, i32 %105, i32 0, i32 %108, i32 %111, i32 0)
  %113 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %114 = load i32, i32* @ABS_X, align 4
  %115 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %116 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %115, i32 0, i32 9
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @input_abs_set_res(%struct.input_dev* %113, i32 %114, i32 %117)
  %119 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %120 = load i32, i32* @ABS_Y, align 4
  %121 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %122 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %121, i32 0, i32 10
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @input_abs_set_res(%struct.input_dev* %119, i32 %120, i32 %123)
  %125 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %126 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  switch i32 %127, label %330 [
    i32 166, label %128
    i32 128, label %134
    i32 129, label %134
    i32 167, label %144
    i32 132, label %189
    i32 134, label %189
    i32 171, label %189
    i32 135, label %189
    i32 136, label %189
    i32 130, label %189
    i32 174, label %189
    i32 137, label %189
    i32 172, label %189
    i32 173, label %189
    i32 164, label %198
    i32 163, label %198
    i32 162, label %198
    i32 161, label %198
    i32 158, label %198
    i32 160, label %198
    i32 159, label %198
    i32 165, label %205
    i32 157, label %208
    i32 156, label %208
    i32 148, label %208
    i32 149, label %208
    i32 155, label %208
    i32 147, label %208
    i32 150, label %208
    i32 151, label %208
    i32 133, label %226
    i32 131, label %226
    i32 146, label %226
    i32 145, label %226
    i32 144, label %226
    i32 139, label %226
    i32 140, label %226
    i32 138, label %226
    i32 169, label %232
    i32 168, label %232
    i32 142, label %232
    i32 170, label %232
    i32 141, label %253
    i32 143, label %259
    i32 154, label %275
    i32 175, label %275
    i32 176, label %275
    i32 153, label %275
    i32 152, label %275
    i32 177, label %324
  ]

128:                                              ; preds = %59
  %129 = load i32, i32* @ABS_MISC, align 4
  %130 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %131 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @__clear_bit(i32 %129, i32 %132)
  br label %134

134:                                              ; preds = %59, %59, %128
  %135 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %136 = load i32, i32* @ABS_DISTANCE, align 4
  %137 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %138 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %137, i32 0, i32 11
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %141 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %140, i32 0, i32 12
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @input_set_abs_params(%struct.input_dev* %135, i32 %136, i32 0, i32 %139, i32 %142, i32 0)
  br label %144

144:                                              ; preds = %59, %134
  %145 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %146 = load i32, i32* @EV_REL, align 4
  %147 = load i32, i32* @REL_WHEEL, align 4
  %148 = call i32 @input_set_capability(%struct.input_dev* %145, i32 %146, i32 %147)
  %149 = load i32, i32* @BTN_LEFT, align 4
  %150 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %151 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @__set_bit(i32 %149, i32 %152)
  %154 = load i32, i32* @BTN_RIGHT, align 4
  %155 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %156 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @__set_bit(i32 %154, i32 %157)
  %159 = load i32, i32* @BTN_MIDDLE, align 4
  %160 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %161 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @__set_bit(i32 %159, i32 %162)
  %164 = load i32, i32* @BTN_TOOL_RUBBER, align 4
  %165 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %166 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @__set_bit(i32 %164, i32 %167)
  %169 = load i32, i32* @BTN_TOOL_PEN, align 4
  %170 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %171 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @__set_bit(i32 %169, i32 %172)
  %174 = load i32, i32* @BTN_TOOL_MOUSE, align 4
  %175 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %176 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @__set_bit(i32 %174, i32 %177)
  %179 = load i32, i32* @BTN_STYLUS, align 4
  %180 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %181 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @__set_bit(i32 %179, i32 %182)
  %184 = load i32, i32* @BTN_STYLUS2, align 4
  %185 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %186 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @__set_bit(i32 %184, i32 %187)
  br label %330

189:                                              ; preds = %59, %59, %59, %59, %59, %59, %59, %59, %59, %59
  %190 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %191 = load i32, i32* @ABS_Z, align 4
  %192 = call i32 @input_set_abs_params(%struct.input_dev* %190, i32 %191, i32 -900, i32 899, i32 0, i32 0)
  %193 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %194 = load i32, i32* @ABS_Z, align 4
  %195 = call i32 @input_abs_set_res(%struct.input_dev* %193, i32 %194, i32 287)
  %196 = load %struct.wacom_wac*, %struct.wacom_wac** %5, align 8
  %197 = call i32 @wacom_setup_cintiq(%struct.wacom_wac* %196)
  br label %330

198:                                              ; preds = %59, %59, %59, %59, %59, %59, %59
  %199 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %200 = load i32, i32* @ABS_Z, align 4
  %201 = call i32 @input_set_abs_params(%struct.input_dev* %199, i32 %200, i32 -900, i32 899, i32 0, i32 0)
  %202 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %203 = load i32, i32* @ABS_Z, align 4
  %204 = call i32 @input_abs_set_res(%struct.input_dev* %202, i32 %203, i32 287)
  br label %205

205:                                              ; preds = %59, %198
  %206 = load %struct.wacom_wac*, %struct.wacom_wac** %5, align 8
  %207 = call i32 @wacom_setup_intuos(%struct.wacom_wac* %206)
  br label %330

208:                                              ; preds = %59, %59, %59, %59, %59, %59, %59, %59
  %209 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %210 = load i32, i32* @ABS_DISTANCE, align 4
  %211 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %212 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %211, i32 0, i32 11
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %215 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %214, i32 0, i32 12
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @input_set_abs_params(%struct.input_dev* %209, i32 %210, i32 0, i32 %213, i32 %216, i32 0)
  %218 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %219 = load i32, i32* @ABS_Z, align 4
  %220 = call i32 @input_set_abs_params(%struct.input_dev* %218, i32 %219, i32 -900, i32 899, i32 0, i32 0)
  %221 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %222 = load i32, i32* @ABS_Z, align 4
  %223 = call i32 @input_abs_set_res(%struct.input_dev* %221, i32 %222, i32 287)
  %224 = load %struct.wacom_wac*, %struct.wacom_wac** %5, align 8
  %225 = call i32 @wacom_setup_intuos(%struct.wacom_wac* %224)
  br label %330

226:                                              ; preds = %59, %59, %59, %59, %59, %59, %59, %59
  %227 = load i32, i32* @ABS_MISC, align 4
  %228 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %229 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @__clear_bit(i32 %227, i32 %230)
  br label %232

232:                                              ; preds = %59, %59, %59, %59, %226
  %233 = load i32, i32* @BTN_TOOL_PEN, align 4
  %234 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %235 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @__set_bit(i32 %233, i32 %236)
  %238 = load i32, i32* @BTN_TOOL_RUBBER, align 4
  %239 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %240 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @__set_bit(i32 %238, i32 %241)
  %243 = load i32, i32* @BTN_STYLUS, align 4
  %244 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %245 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @__set_bit(i32 %243, i32 %246)
  %248 = load i32, i32* @BTN_STYLUS2, align 4
  %249 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %250 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @__set_bit(i32 %248, i32 %251)
  br label %330

253:                                              ; preds = %59
  %254 = load i32, i32* @BTN_STYLUS2, align 4
  %255 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %256 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @__set_bit(i32 %254, i32 %257)
  br label %259

259:                                              ; preds = %59, %253
  %260 = load i32, i32* @BTN_TOOL_PEN, align 4
  %261 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %262 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @__set_bit(i32 %260, i32 %263)
  %265 = load i32, i32* @BTN_TOOL_RUBBER, align 4
  %266 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %267 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @__set_bit(i32 %265, i32 %268)
  %270 = load i32, i32* @BTN_STYLUS, align 4
  %271 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %272 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @__set_bit(i32 %270, i32 %273)
  br label %330

275:                                              ; preds = %59, %59, %59, %59, %59
  %276 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %277 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = icmp eq i32 %278, 153
  br i1 %279, label %285, label %280

280:                                              ; preds = %275
  %281 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %282 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = icmp eq i32 %283, 152
  br i1 %284, label %285, label %288

285:                                              ; preds = %280, %275
  %286 = load %struct.wacom_wac*, %struct.wacom_wac** %5, align 8
  %287 = call i32 @wacom_setup_basic_pro_pen(%struct.wacom_wac* %286)
  br label %323

288:                                              ; preds = %280
  %289 = load i32, i32* @ABS_MISC, align 4
  %290 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %291 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 8
  %293 = call i32 @__clear_bit(i32 %289, i32 %292)
  %294 = load i32, i32* @BTN_TOOL_PEN, align 4
  %295 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %296 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @__set_bit(i32 %294, i32 %297)
  %299 = load i32, i32* @BTN_TOOL_RUBBER, align 4
  %300 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %301 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @__set_bit(i32 %299, i32 %302)
  %304 = load i32, i32* @BTN_STYLUS, align 4
  %305 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %306 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @__set_bit(i32 %304, i32 %307)
  %309 = load i32, i32* @BTN_STYLUS2, align 4
  %310 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %311 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 4
  %313 = call i32 @__set_bit(i32 %309, i32 %312)
  %314 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %315 = load i32, i32* @ABS_DISTANCE, align 4
  %316 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %317 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %316, i32 0, i32 11
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %320 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %319, i32 0, i32 12
  %321 = load i32, i32* %320, align 4
  %322 = call i32 @input_set_abs_params(%struct.input_dev* %314, i32 %315, i32 0, i32 %318, i32 %321, i32 0)
  br label %323

323:                                              ; preds = %288, %285
  br label %330

324:                                              ; preds = %59
  %325 = load i32, i32* @ABS_MISC, align 4
  %326 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %327 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 8
  %329 = call i32 @__clear_bit(i32 %325, i32 %328)
  br label %330

330:                                              ; preds = %59, %324, %323, %259, %232, %208, %205, %189, %144
  store i32 0, i32* %3, align 4
  br label %331

331:                                              ; preds = %330, %54, %26
  %332 = load i32, i32* %3, align 4
  ret i32 %332
}

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_abs_set_res(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @wacom_setup_cintiq(%struct.wacom_wac*) #1

declare dso_local i32 @wacom_setup_intuos(%struct.wacom_wac*) #1

declare dso_local i32 @wacom_setup_basic_pro_pen(%struct.wacom_wac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
