; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elantech.c_elantech_set_input_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elantech.c_elantech_set_input_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.elantech_data*, %struct.input_dev* }
%struct.elantech_data = type { i32, i32, %struct.elantech_device_info }
%struct.elantech_device_info = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i64 }
%struct.input_dev = type { i32, i32, i32 }

@INPUT_PROP_POINTER = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@EV_REL = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@BTN_TOOL_FINGER = common dso_local global i32 0, align 4
@BTN_TOOL_DOUBLETAP = common dso_local global i32 0, align 4
@BTN_TOOL_TRIPLETAP = common dso_local global i32 0, align 4
@ETP_CAP_HAS_ROCKER = common dso_local global i32 0, align 4
@BTN_FORWARD = common dso_local global i32 0, align 4
@BTN_BACK = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@BTN_TOOL_QUADTAP = common dso_local global i32 0, align 4
@INPUT_PROP_SEMI_MT = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@ETP_PMIN_V2 = common dso_local global i32 0, align 4
@ETP_PMAX_V2 = common dso_local global i32 0, align 4
@ABS_TOOL_WIDTH = common dso_local global i32 0, align 4
@ETP_WMIN_V2 = common dso_local global i32 0, align 4
@ETP_WMAX_V2 = common dso_local global i32 0, align 4
@INPUT_MT_SEMI_MT = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ETP_MAX_FINGERS = common dso_local global i32 0, align 4
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @elantech_set_input_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elantech_set_input_params(%struct.psmouse* %0) #0 {
  %2 = alloca %struct.psmouse*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.elantech_data*, align 8
  %5 = alloca %struct.elantech_device_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %2, align 8
  %11 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %12 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %11, i32 0, i32 1
  %13 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  store %struct.input_dev* %13, %struct.input_dev** %3, align 8
  %14 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %15 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %14, i32 0, i32 0
  %16 = load %struct.elantech_data*, %struct.elantech_data** %15, align 8
  store %struct.elantech_data* %16, %struct.elantech_data** %4, align 8
  %17 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %18 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %17, i32 0, i32 2
  store %struct.elantech_device_info* %18, %struct.elantech_device_info** %5, align 8
  %19 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %20 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %6, align 4
  %22 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %23 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %26 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %8, align 4
  %28 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %29 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %32 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* @INPUT_PROP_POINTER, align 4
  %35 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %36 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @__set_bit(i32 %34, i32 %37)
  %39 = load i32, i32* @EV_KEY, align 4
  %40 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %41 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @__set_bit(i32 %39, i32 %42)
  %44 = load i32, i32* @EV_ABS, align 4
  %45 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %46 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @__set_bit(i32 %44, i32 %47)
  %49 = load i32, i32* @EV_REL, align 4
  %50 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %51 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @__clear_bit(i32 %49, i32 %52)
  %54 = load i32, i32* @BTN_LEFT, align 4
  %55 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %56 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @__set_bit(i32 %54, i32 %57)
  %59 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %60 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %59, i32 0, i32 11
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %1
  %64 = load i32, i32* @BTN_MIDDLE, align 4
  %65 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %66 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @__set_bit(i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %63, %1
  %70 = load i32, i32* @BTN_RIGHT, align 4
  %71 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %72 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @__set_bit(i32 %70, i32 %73)
  %75 = load i32, i32* @BTN_TOUCH, align 4
  %76 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %77 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @__set_bit(i32 %75, i32 %78)
  %80 = load i32, i32* @BTN_TOOL_FINGER, align 4
  %81 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %82 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @__set_bit(i32 %80, i32 %83)
  %85 = load i32, i32* @BTN_TOOL_DOUBLETAP, align 4
  %86 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %87 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @__set_bit(i32 %85, i32 %88)
  %90 = load i32, i32* @BTN_TOOL_TRIPLETAP, align 4
  %91 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %92 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @__set_bit(i32 %90, i32 %93)
  %95 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %96 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  switch i32 %97, label %245 [
    i32 1, label %98
    i32 2, label %134
    i32 3, label %145
    i32 4, label %193
  ]

98:                                               ; preds = %69
  %99 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %100 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %101, 131072
  br i1 %102, label %103, label %123

103:                                              ; preds = %98
  %104 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %105 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %104, i32 0, i32 7
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @ETP_CAP_HAS_ROCKER, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %103
  %113 = load i32, i32* @BTN_FORWARD, align 4
  %114 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %115 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @__set_bit(i32 %113, i32 %116)
  %118 = load i32, i32* @BTN_BACK, align 4
  %119 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %120 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @__set_bit(i32 %118, i32 %121)
  br label %123

123:                                              ; preds = %112, %103, %98
  %124 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %125 = load i32, i32* @ABS_X, align 4
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @input_set_abs_params(%struct.input_dev* %124, i32 %125, i32 %126, i32 %127, i32 0, i32 0)
  %129 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %130 = load i32, i32* @ABS_Y, align 4
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @input_set_abs_params(%struct.input_dev* %129, i32 %130, i32 %131, i32 %132, i32 0, i32 0)
  br label %245

134:                                              ; preds = %69
  %135 = load i32, i32* @BTN_TOOL_QUADTAP, align 4
  %136 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %137 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @__set_bit(i32 %135, i32 %138)
  %140 = load i32, i32* @INPUT_PROP_SEMI_MT, align 4
  %141 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %142 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @__set_bit(i32 %140, i32 %143)
  br label %145

145:                                              ; preds = %69, %134
  %146 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %147 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 3
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %152 = call i32 @elantech_set_buttonpad_prop(%struct.psmouse* %151)
  br label %153

153:                                              ; preds = %150, %145
  %154 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %155 = load i32, i32* @ABS_X, align 4
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* %8, align 4
  %158 = call i32 @input_set_abs_params(%struct.input_dev* %154, i32 %155, i32 %156, i32 %157, i32 0, i32 0)
  %159 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %160 = load i32, i32* @ABS_Y, align 4
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* %9, align 4
  %163 = call i32 @input_set_abs_params(%struct.input_dev* %159, i32 %160, i32 %161, i32 %162, i32 0, i32 0)
  %164 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %165 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %164, i32 0, i32 10
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %179

168:                                              ; preds = %153
  %169 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %170 = load i32, i32* @ABS_PRESSURE, align 4
  %171 = load i32, i32* @ETP_PMIN_V2, align 4
  %172 = load i32, i32* @ETP_PMAX_V2, align 4
  %173 = call i32 @input_set_abs_params(%struct.input_dev* %169, i32 %170, i32 %171, i32 %172, i32 0, i32 0)
  %174 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %175 = load i32, i32* @ABS_TOOL_WIDTH, align 4
  %176 = load i32, i32* @ETP_WMIN_V2, align 4
  %177 = load i32, i32* @ETP_WMAX_V2, align 4
  %178 = call i32 @input_set_abs_params(%struct.input_dev* %174, i32 %175, i32 %176, i32 %177, i32 0, i32 0)
  br label %179

179:                                              ; preds = %168, %153
  %180 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %181 = load i32, i32* @INPUT_MT_SEMI_MT, align 4
  %182 = call i32 @input_mt_init_slots(%struct.input_dev* %180, i32 2, i32 %181)
  %183 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %184 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %185 = load i32, i32* %6, align 4
  %186 = load i32, i32* %8, align 4
  %187 = call i32 @input_set_abs_params(%struct.input_dev* %183, i32 %184, i32 %185, i32 %186, i32 0, i32 0)
  %188 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %189 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %190 = load i32, i32* %7, align 4
  %191 = load i32, i32* %9, align 4
  %192 = call i32 @input_set_abs_params(%struct.input_dev* %188, i32 %189, i32 %190, i32 %191, i32 0, i32 0)
  br label %245

193:                                              ; preds = %69
  %194 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %195 = call i32 @elantech_set_buttonpad_prop(%struct.psmouse* %194)
  %196 = load i32, i32* @BTN_TOOL_QUADTAP, align 4
  %197 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %198 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @__set_bit(i32 %196, i32 %199)
  %201 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %202 = load i32, i32* @ABS_X, align 4
  %203 = load i32, i32* %6, align 4
  %204 = load i32, i32* %8, align 4
  %205 = call i32 @input_set_abs_params(%struct.input_dev* %201, i32 %202, i32 %203, i32 %204, i32 0, i32 0)
  %206 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %207 = load i32, i32* @ABS_Y, align 4
  %208 = load i32, i32* %7, align 4
  %209 = load i32, i32* %9, align 4
  %210 = call i32 @input_set_abs_params(%struct.input_dev* %206, i32 %207, i32 %208, i32 %209, i32 0, i32 0)
  %211 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %212 = load i32, i32* @ABS_PRESSURE, align 4
  %213 = load i32, i32* @ETP_PMIN_V2, align 4
  %214 = load i32, i32* @ETP_PMAX_V2, align 4
  %215 = call i32 @input_set_abs_params(%struct.input_dev* %211, i32 %212, i32 %213, i32 %214, i32 0, i32 0)
  %216 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %217 = load i32, i32* @ABS_TOOL_WIDTH, align 4
  %218 = load i32, i32* @ETP_WMIN_V2, align 4
  %219 = load i32, i32* @ETP_WMAX_V2, align 4
  %220 = call i32 @input_set_abs_params(%struct.input_dev* %216, i32 %217, i32 %218, i32 %219, i32 0, i32 0)
  %221 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %222 = load i32, i32* @ETP_MAX_FINGERS, align 4
  %223 = call i32 @input_mt_init_slots(%struct.input_dev* %221, i32 %222, i32 0)
  %224 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %225 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %226 = load i32, i32* %6, align 4
  %227 = load i32, i32* %8, align 4
  %228 = call i32 @input_set_abs_params(%struct.input_dev* %224, i32 %225, i32 %226, i32 %227, i32 0, i32 0)
  %229 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %230 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %231 = load i32, i32* %7, align 4
  %232 = load i32, i32* %9, align 4
  %233 = call i32 @input_set_abs_params(%struct.input_dev* %229, i32 %230, i32 %231, i32 %232, i32 0, i32 0)
  %234 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %235 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %236 = load i32, i32* @ETP_PMIN_V2, align 4
  %237 = load i32, i32* @ETP_PMAX_V2, align 4
  %238 = call i32 @input_set_abs_params(%struct.input_dev* %234, i32 %235, i32 %236, i32 %237, i32 0, i32 0)
  %239 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %240 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %241 = load i32, i32* @ETP_WMAX_V2, align 4
  %242 = load i32, i32* %10, align 4
  %243 = mul i32 %241, %242
  %244 = call i32 @input_set_abs_params(%struct.input_dev* %239, i32 %240, i32 0, i32 %243, i32 0, i32 0)
  br label %245

245:                                              ; preds = %69, %193, %179, %123
  %246 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %247 = load i32, i32* @ABS_X, align 4
  %248 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %249 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %248, i32 0, i32 9
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @input_abs_set_res(%struct.input_dev* %246, i32 %247, i32 %250)
  %252 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %253 = load i32, i32* @ABS_Y, align 4
  %254 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %255 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %254, i32 0, i32 8
  %256 = load i32, i32* %255, align 8
  %257 = call i32 @input_abs_set_res(%struct.input_dev* %252, i32 %253, i32 %256)
  %258 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %259 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %258, i32 0, i32 5
  %260 = load i32, i32* %259, align 4
  %261 = icmp sgt i32 %260, 1
  br i1 %261, label %262, label %275

262:                                              ; preds = %245
  %263 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %264 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %265 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %266 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %265, i32 0, i32 9
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @input_abs_set_res(%struct.input_dev* %263, i32 %264, i32 %267)
  %269 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %270 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %271 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %272 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %271, i32 0, i32 8
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @input_abs_set_res(%struct.input_dev* %269, i32 %270, i32 %273)
  br label %275

275:                                              ; preds = %262, %245
  %276 = load i32, i32* %9, align 4
  %277 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %278 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %277, i32 0, i32 0
  store i32 %276, i32* %278, align 8
  %279 = load i32, i32* %10, align 4
  %280 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %281 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %280, i32 0, i32 1
  store i32 %279, i32* %281, align 4
  ret i32 0
}

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @elantech_set_buttonpad_prop(%struct.psmouse*) #1

declare dso_local i32 @input_mt_init_slots(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_abs_set_res(%struct.input_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
