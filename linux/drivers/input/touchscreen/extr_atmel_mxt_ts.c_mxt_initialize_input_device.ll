; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_initialize_input_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_initialize_input_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxt_data = type { i32, i32, i32, i32, %struct.input_dev*, i64, i64, i64, i64, i32, i64, i64, i64, %struct.TYPE_4__* }
%struct.input_dev = type { i8*, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.device }

@.str = private unnamed_addr constant [36 x i8] c"Failed to initialize T9 resolution\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to read T100 config\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Invalid multitouch object\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Touchscreen size X%uY%u\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Atmel maXTouch Touchscreen\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@mxt_input_open = common dso_local global i32 0, align 4
@mxt_input_close = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@INPUT_MT_POINTER = common dso_local global i32 0, align 4
@INPUT_MT_DIRECT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Error %d initialising slots\0A\00", align 1
@ABS_MT_TOOL_TYPE = common dso_local global i32 0, align 4
@MT_TOOL_MAX = common dso_local global i32 0, align 4
@ABS_MT_DISTANCE = common dso_local global i32 0, align 4
@MXT_DISTANCE_ACTIVE_TOUCH = common dso_local global i32 0, align 4
@MXT_DISTANCE_HOVERING = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@MXT_MAX_AREA = common dso_local global i32 0, align 4
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@ABS_MT_ORIENTATION = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"Error %d registering input device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxt_data*)* @mxt_initialize_input_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxt_initialize_input_device(%struct.mxt_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mxt_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mxt_data* %0, %struct.mxt_data** %3, align 8
  %9 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %10 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %9, i32 0, i32 13
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %14 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %46 [
    i32 128, label %16
    i32 129, label %34
  ]

16:                                               ; preds = %1
  %17 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %18 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %17, i32 0, i32 12
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %21 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %20, i32 0, i32 11
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %19, %22
  %24 = add nsw i64 %23, 1
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %7, align 4
  %26 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %27 = call i32 @mxt_read_t9_resolution(%struct.mxt_data* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %16
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = call i32 @dev_warn(%struct.device* %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %16
  br label %51

34:                                               ; preds = %1
  %35 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %36 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %7, align 4
  %38 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %39 = call i32 @mxt_read_t100_config(%struct.mxt_data* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = call i32 @dev_warn(%struct.device* %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %34
  br label %51

46:                                               ; preds = %1
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %292

51:                                               ; preds = %45, %33
  %52 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %53 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %58 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %57, i32 0, i32 2
  store i32 1023, i32* %58, align 8
  br label %59

59:                                               ; preds = %56, %51
  %60 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %61 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %66 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %65, i32 0, i32 3
  store i32 1023, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %59
  %68 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %69 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %68, i32 0, i32 10
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %74 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %77 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @swap(i32 %75, i32 %78)
  br label %80

80:                                               ; preds = %72, %67
  %81 = load %struct.device*, %struct.device** %4, align 8
  %82 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %83 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %86 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dev_info(%struct.device* %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %84, i32 %87)
  %89 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %89, %struct.input_dev** %5, align 8
  %90 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %91 = icmp ne %struct.input_dev* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %80
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %292

95:                                               ; preds = %80
  %96 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %97 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %96, i32 0, i32 0
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8** %97, align 8
  %98 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %99 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %98, i32 0, i32 9
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %102 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %101, i32 0, i32 5
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* @BUS_I2C, align 4
  %104 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %105 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 8
  %107 = load %struct.device*, %struct.device** %4, align 8
  %108 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %109 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  store %struct.device* %107, %struct.device** %110, align 8
  %111 = load i32, i32* @mxt_input_open, align 4
  %112 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %113 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @mxt_input_close, align 4
  %115 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %116 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 8
  %117 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %118 = load i32, i32* @EV_KEY, align 4
  %119 = load i32, i32* @BTN_TOUCH, align 4
  %120 = call i32 @input_set_capability(%struct.input_dev* %117, i32 %118, i32 %119)
  %121 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %122 = load i32, i32* @ABS_X, align 4
  %123 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %124 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @input_set_abs_params(%struct.input_dev* %121, i32 %122, i32 0, i32 %125, i32 0, i32 0)
  %127 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %128 = load i32, i32* @ABS_Y, align 4
  %129 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %130 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @input_set_abs_params(%struct.input_dev* %127, i32 %128, i32 0, i32 %131, i32 0, i32 0)
  %133 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %134 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp eq i32 %135, 128
  br i1 %136, label %147, label %137

137:                                              ; preds = %95
  %138 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %139 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp eq i32 %140, 129
  br i1 %141, label %142, label %151

142:                                              ; preds = %137
  %143 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %144 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %143, i32 0, i32 6
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %142, %95
  %148 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %149 = load i32, i32* @ABS_PRESSURE, align 4
  %150 = call i32 @input_set_abs_params(%struct.input_dev* %148, i32 %149, i32 0, i32 255, i32 0, i32 0)
  br label %151

151:                                              ; preds = %147, %142, %137
  %152 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %153 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %152, i32 0, i32 8
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %151
  %157 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %158 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %159 = call i32 @mxt_set_up_as_touchpad(%struct.input_dev* %157, %struct.mxt_data* %158)
  %160 = load i32, i32* @INPUT_MT_POINTER, align 4
  %161 = load i32, i32* %8, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %8, align 4
  br label %167

163:                                              ; preds = %151
  %164 = load i32, i32* @INPUT_MT_DIRECT, align 4
  %165 = load i32, i32* %8, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %8, align 4
  br label %167

167:                                              ; preds = %163, %156
  %168 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* %8, align 4
  %171 = call i32 @input_mt_init_slots(%struct.input_dev* %168, i32 %169, i32 %170)
  store i32 %171, i32* %6, align 4
  %172 = load i32, i32* %6, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %167
  %175 = load %struct.device*, %struct.device** %4, align 8
  %176 = load i32, i32* %6, align 4
  %177 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %175, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %176)
  br label %288

178:                                              ; preds = %167
  %179 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %180 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp eq i32 %181, 129
  br i1 %182, label %183, label %193

183:                                              ; preds = %178
  %184 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %185 = load i32, i32* @ABS_MT_TOOL_TYPE, align 4
  %186 = load i32, i32* @MT_TOOL_MAX, align 4
  %187 = call i32 @input_set_abs_params(%struct.input_dev* %184, i32 %185, i32 0, i32 %186, i32 0, i32 0)
  %188 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %189 = load i32, i32* @ABS_MT_DISTANCE, align 4
  %190 = load i32, i32* @MXT_DISTANCE_ACTIVE_TOUCH, align 4
  %191 = load i32, i32* @MXT_DISTANCE_HOVERING, align 4
  %192 = call i32 @input_set_abs_params(%struct.input_dev* %188, i32 %189, i32 %190, i32 %191, i32 0, i32 0)
  br label %193

193:                                              ; preds = %183, %178
  %194 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %195 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %196 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %197 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @input_set_abs_params(%struct.input_dev* %194, i32 %195, i32 0, i32 %198, i32 0, i32 0)
  %200 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %201 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %202 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %203 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @input_set_abs_params(%struct.input_dev* %200, i32 %201, i32 0, i32 %204, i32 0, i32 0)
  %206 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %207 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = icmp eq i32 %208, 128
  br i1 %209, label %220, label %210

210:                                              ; preds = %193
  %211 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %212 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = icmp eq i32 %213, 129
  br i1 %214, label %215, label %225

215:                                              ; preds = %210
  %216 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %217 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %216, i32 0, i32 7
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %215, %193
  %221 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %222 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %223 = load i32, i32* @MXT_MAX_AREA, align 4
  %224 = call i32 @input_set_abs_params(%struct.input_dev* %221, i32 %222, i32 0, i32 %223, i32 0, i32 0)
  br label %225

225:                                              ; preds = %220, %215, %210
  %226 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %227 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = icmp eq i32 %228, 128
  br i1 %229, label %240, label %230

230:                                              ; preds = %225
  %231 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %232 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = icmp eq i32 %233, 129
  br i1 %234, label %235, label %244

235:                                              ; preds = %230
  %236 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %237 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %236, i32 0, i32 6
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %235, %225
  %241 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %242 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %243 = call i32 @input_set_abs_params(%struct.input_dev* %241, i32 %242, i32 0, i32 255, i32 0, i32 0)
  br label %244

244:                                              ; preds = %240, %235, %230
  %245 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %246 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = icmp eq i32 %247, 129
  br i1 %248, label %249, label %258

249:                                              ; preds = %244
  %250 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %251 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %250, i32 0, i32 5
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %258

254:                                              ; preds = %249
  %255 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %256 = load i32, i32* @ABS_MT_ORIENTATION, align 4
  %257 = call i32 @input_set_abs_params(%struct.input_dev* %255, i32 %256, i32 0, i32 255, i32 0, i32 0)
  br label %258

258:                                              ; preds = %254, %249, %244
  %259 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %260 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = icmp eq i32 %261, 129
  br i1 %262, label %263, label %272

263:                                              ; preds = %258
  %264 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %265 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %264, i32 0, i32 5
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %272

268:                                              ; preds = %263
  %269 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %270 = load i32, i32* @ABS_MT_ORIENTATION, align 4
  %271 = call i32 @input_set_abs_params(%struct.input_dev* %269, i32 %270, i32 0, i32 255, i32 0, i32 0)
  br label %272

272:                                              ; preds = %268, %263, %258
  %273 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %274 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %275 = call i32 @input_set_drvdata(%struct.input_dev* %273, %struct.mxt_data* %274)
  %276 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %277 = call i32 @input_register_device(%struct.input_dev* %276)
  store i32 %277, i32* %6, align 4
  %278 = load i32, i32* %6, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %272
  %281 = load %struct.device*, %struct.device** %4, align 8
  %282 = load i32, i32* %6, align 4
  %283 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %281, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %282)
  br label %288

284:                                              ; preds = %272
  %285 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %286 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %287 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %286, i32 0, i32 4
  store %struct.input_dev* %285, %struct.input_dev** %287, align 8
  store i32 0, i32* %2, align 4
  br label %292

288:                                              ; preds = %280, %174
  %289 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %290 = call i32 @input_free_device(%struct.input_dev* %289)
  %291 = load i32, i32* %6, align 4
  store i32 %291, i32* %2, align 4
  br label %292

292:                                              ; preds = %288, %284, %92, %46
  %293 = load i32, i32* %2, align 4
  ret i32 %293
}

declare dso_local i32 @mxt_read_t9_resolution(%struct.mxt_data*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @mxt_read_t100_config(%struct.mxt_data*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @swap(i32, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mxt_set_up_as_touchpad(%struct.input_dev*, %struct.mxt_data*) #1

declare dso_local i32 @input_mt_init_slots(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.mxt_data*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
