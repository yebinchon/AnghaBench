; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_hideep.c_hideep_init_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_hideep.c_hideep_init_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hideep_ts = type { i32, %struct.TYPE_13__*, i32*, %struct.TYPE_14__, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i32, i32, i32*, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_11__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"failed to allocate input device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HIDEEP_TS_NAME = common dso_local global i32 0, align 4
@BUS_I2C = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_TOOL_TYPE = common dso_local global i32 0, align 4
@MT_TOOL_MAX = common dso_local global i32 0, align 4
@HIDEEP_MT_MAX = common dso_local global i32 0, align 4
@INPUT_MT_DIRECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"linux,keycodes\00", align 1
@HIDEEP_KEY_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"too many keys defined: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"missing or malformed 'linux,keycodes' property\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"failed to read keymap: %d\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"failed to register input device: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hideep_ts*)* @hideep_init_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hideep_init_input(%struct.hideep_ts* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hideep_ts*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hideep_ts* %0, %struct.hideep_ts** %3, align 8
  %7 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %8 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %7, i32 0, i32 4
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.TYPE_13__* @devm_input_allocate_device(%struct.device* %11)
  %13 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %14 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %13, i32 0, i32 1
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %14, align 8
  %15 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %16 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %15, i32 0, i32 1
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %18 = icmp ne %struct.TYPE_13__* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %208

24:                                               ; preds = %1
  %25 = load i32, i32* @HIDEEP_TS_NAME, align 4
  %26 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %27 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %26, i32 0, i32 1
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 4
  store i32 %25, i32* %29, align 4
  %30 = load i32, i32* @BUS_I2C, align 4
  %31 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %32 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %31, i32 0, i32 1
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  store i32 %30, i32* %35, align 8
  %36 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %37 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %36, i32 0, i32 1
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %40 = call i32 @input_set_drvdata(%struct.TYPE_13__* %38, %struct.hideep_ts* %39)
  %41 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %42 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %41, i32 0, i32 1
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = load i32, i32* @EV_ABS, align 4
  %45 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %46 = call i32 @input_set_capability(%struct.TYPE_13__* %43, i32 %44, i32 %45)
  %47 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %48 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %47, i32 0, i32 1
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %48, align 8
  %50 = load i32, i32* @EV_ABS, align 4
  %51 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %52 = call i32 @input_set_capability(%struct.TYPE_13__* %49, i32 %50, i32 %51)
  %53 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %54 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %53, i32 0, i32 1
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %57 = call i32 @input_set_abs_params(%struct.TYPE_13__* %55, i32 %56, i32 0, i32 65535, i32 0, i32 0)
  %58 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %59 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %58, i32 0, i32 1
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %62 = call i32 @input_set_abs_params(%struct.TYPE_13__* %60, i32 %61, i32 0, i32 255, i32 0, i32 0)
  %63 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %64 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %63, i32 0, i32 1
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = load i32, i32* @ABS_MT_TOOL_TYPE, align 4
  %67 = load i32, i32* @MT_TOOL_MAX, align 4
  %68 = call i32 @input_set_abs_params(%struct.TYPE_13__* %65, i32 %66, i32 0, i32 %67, i32 0, i32 0)
  %69 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %70 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %69, i32 0, i32 1
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %73 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %72, i32 0, i32 3
  %74 = call i32 @touchscreen_parse_properties(%struct.TYPE_13__* %71, i32 1, %struct.TYPE_14__* %73)
  %75 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %76 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %24
  %81 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %82 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %80, %24
  %87 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %88 = call i32 @hideep_get_axis_info(%struct.hideep_ts* %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %2, align 4
  br label %208

93:                                               ; preds = %86
  br label %94

94:                                               ; preds = %93, %80
  %95 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %96 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %95, i32 0, i32 1
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = load i32, i32* @HIDEEP_MT_MAX, align 4
  %99 = load i32, i32* @INPUT_MT_DIRECT, align 4
  %100 = call i32 @input_mt_init_slots(%struct.TYPE_13__* %97, i32 %98, i32 %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %94
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %2, align 4
  br label %208

105:                                              ; preds = %94
  %106 = load %struct.device*, %struct.device** %4, align 8
  %107 = call i32 @device_property_count_u32(%struct.device* %106, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %108 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %109 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %111 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @HIDEEP_KEY_MAX, align 4
  %114 = icmp sgt i32 %112, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %105
  %116 = load %struct.device*, %struct.device** %4, align 8
  %117 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %118 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %116, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %2, align 4
  br label %208

123:                                              ; preds = %105
  %124 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %125 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp sle i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load %struct.device*, %struct.device** %4, align 8
  %130 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %129, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  br label %195

131:                                              ; preds = %123
  %132 = load %struct.device*, %struct.device** %4, align 8
  %133 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %134 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %137 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @device_property_read_u32_array(%struct.device* %132, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %135, i32 %138)
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* %6, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %131
  %143 = load %struct.device*, %struct.device** %4, align 8
  %144 = load i32, i32* %6, align 4
  %145 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %143, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* %6, align 4
  store i32 %146, i32* %2, align 4
  br label %208

147:                                              ; preds = %131
  %148 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %149 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %194

152:                                              ; preds = %147
  %153 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %154 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %157 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %156, i32 0, i32 1
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 2
  store i32* %155, i32** %159, align 8
  %160 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %161 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %160, i32 0, i32 1
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  store i32 4, i32* %163, align 8
  %164 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %165 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %168 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %167, i32 0, i32 1
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 1
  store i32 %166, i32* %170, align 4
  store i32 0, i32* %5, align 4
  br label %171

171:                                              ; preds = %190, %152
  %172 = load i32, i32* %5, align 4
  %173 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %174 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp slt i32 %172, %175
  br i1 %176, label %177, label %193

177:                                              ; preds = %171
  %178 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %179 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %178, i32 0, i32 1
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %179, align 8
  %181 = load i32, i32* @EV_KEY, align 4
  %182 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %183 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %5, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @input_set_capability(%struct.TYPE_13__* %180, i32 %181, i32 %188)
  br label %190

190:                                              ; preds = %177
  %191 = load i32, i32* %5, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %5, align 4
  br label %171

193:                                              ; preds = %171
  br label %194

194:                                              ; preds = %193, %147
  br label %195

195:                                              ; preds = %194, %128
  %196 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %197 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %196, i32 0, i32 1
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %197, align 8
  %199 = call i32 @input_register_device(%struct.TYPE_13__* %198)
  store i32 %199, i32* %6, align 4
  %200 = load i32, i32* %6, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %195
  %203 = load %struct.device*, %struct.device** %4, align 8
  %204 = load i32, i32* %6, align 4
  %205 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %203, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %204)
  %206 = load i32, i32* %6, align 4
  store i32 %206, i32* %2, align 4
  br label %208

207:                                              ; preds = %195
  store i32 0, i32* %2, align 4
  br label %208

208:                                              ; preds = %207, %202, %142, %115, %103, %91, %19
  %209 = load i32, i32* %2, align 4
  ret i32 %209
}

declare dso_local %struct.TYPE_13__* @devm_input_allocate_device(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @input_set_drvdata(%struct.TYPE_13__*, %struct.hideep_ts*) #1

declare dso_local i32 @input_set_capability(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.TYPE_13__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @touchscreen_parse_properties(%struct.TYPE_13__*, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @hideep_get_axis_info(%struct.hideep_ts*) #1

declare dso_local i32 @input_mt_init_slots(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @device_property_count_u32(%struct.device*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @device_property_read_u32_array(%struct.device*, i8*, i32*, i32) #1

declare dso_local i32 @input_register_device(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
