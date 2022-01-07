; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa.c_cyapa_create_input_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa.c_cyapa_create_input_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i32, i32, i32, i32, i32, i64, i32, %struct.input_dev*, %struct.TYPE_6__*, i32 }
%struct.input_dev = type { i32, i32, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_5__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.TYPE_6__ = type { %struct.device }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"failed to allocate memory for input device.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CYAPA_NAME = common dso_local global i32 0, align 4
@BUS_I2C = common dso_local global i32 0, align 4
@cyapa_open = common dso_local global i32 0, align 4
@cyapa_close = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@CYAPA_GEN3 = common dso_local global i64 0, align 8
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MINOR = common dso_local global i32 0, align 4
@ABS_MT_ORIENTATION = common dso_local global i32 0, align 4
@CYAPA_GEN5 = common dso_local global i64 0, align 8
@ABS_MT_WIDTH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_WIDTH_MINOR = common dso_local global i32 0, align 4
@ABS_DISTANCE = common dso_local global i32 0, align 4
@CAPABILITY_LEFT_BTN_MASK = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@CAPABILITY_MIDDLE_BTN_MASK = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@CAPABILITY_RIGHT_BTN_MASK = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@INPUT_PROP_BUTTONPAD = common dso_local global i32 0, align 4
@CYAPA_MAX_MT_SLOTS = common dso_local global i32 0, align 4
@INPUT_MT_POINTER = common dso_local global i32 0, align 4
@INPUT_MT_DROP_UNUSED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to initialize MT slots: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"failed to register input device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa*)* @cyapa_create_input_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_create_input_dev(%struct.cyapa* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cyapa*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %3, align 8
  %7 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %8 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %7, i32 0, i32 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %12 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %17 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15, %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %221

23:                                               ; preds = %15
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call %struct.input_dev* @devm_input_allocate_device(%struct.device* %24)
  store %struct.input_dev* %25, %struct.input_dev** %5, align 8
  %26 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %27 = icmp ne %struct.input_dev* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %29, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %221

33:                                               ; preds = %23
  %34 = load i32, i32* @CYAPA_NAME, align 4
  %35 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %36 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %35, i32 0, i32 8
  store i32 %34, i32* %36, align 4
  %37 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %38 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %37, i32 0, i32 9
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %41 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %40, i32 0, i32 7
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @BUS_I2C, align 4
  %43 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %44 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %43, i32 0, i32 6
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  store i32 %42, i32* %45, align 8
  %46 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %47 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %46, i32 0, i32 6
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %50 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %49, i32 0, i32 6
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %53 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %52, i32 0, i32 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %57 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store %struct.device* %55, %struct.device** %58, align 8
  %59 = load i32, i32* @cyapa_open, align 4
  %60 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %61 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @cyapa_close, align 4
  %63 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %64 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %66 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %67 = call i32 @input_set_drvdata(%struct.input_dev* %65, %struct.cyapa* %66)
  %68 = load i32, i32* @EV_ABS, align 4
  %69 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %70 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @__set_bit(i32 %68, i32 %71)
  %73 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %74 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %75 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %76 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @input_set_abs_params(%struct.input_dev* %73, i32 %74, i32 0, i32 %77, i32 0, i32 0)
  %79 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %80 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %81 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %82 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @input_set_abs_params(%struct.input_dev* %79, i32 %80, i32 0, i32 %83, i32 0, i32 0)
  %85 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %86 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %87 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %88 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @input_set_abs_params(%struct.input_dev* %85, i32 %86, i32 0, i32 %89, i32 0, i32 0)
  %91 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %92 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @CYAPA_GEN3, align 8
  %95 = icmp sgt i64 %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %33
  %97 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %98 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %99 = call i32 @input_set_abs_params(%struct.input_dev* %97, i32 %98, i32 0, i32 255, i32 0, i32 0)
  %100 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %101 = load i32, i32* @ABS_MT_TOUCH_MINOR, align 4
  %102 = call i32 @input_set_abs_params(%struct.input_dev* %100, i32 %101, i32 0, i32 255, i32 0, i32 0)
  %103 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %104 = load i32, i32* @ABS_MT_ORIENTATION, align 4
  %105 = call i32 @input_set_abs_params(%struct.input_dev* %103, i32 %104, i32 -127, i32 127, i32 0, i32 0)
  br label %106

106:                                              ; preds = %96, %33
  %107 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %108 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %107, i32 0, i32 5
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @CYAPA_GEN5, align 8
  %111 = icmp sge i64 %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %106
  %113 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %114 = load i32, i32* @ABS_MT_WIDTH_MAJOR, align 4
  %115 = call i32 @input_set_abs_params(%struct.input_dev* %113, i32 %114, i32 0, i32 255, i32 0, i32 0)
  %116 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %117 = load i32, i32* @ABS_MT_WIDTH_MINOR, align 4
  %118 = call i32 @input_set_abs_params(%struct.input_dev* %116, i32 %117, i32 0, i32 255, i32 0, i32 0)
  %119 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %120 = load i32, i32* @ABS_DISTANCE, align 4
  %121 = call i32 @input_set_abs_params(%struct.input_dev* %119, i32 %120, i32 0, i32 1, i32 0, i32 0)
  br label %122

122:                                              ; preds = %112, %106
  %123 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %124 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %125 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %126 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %129 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = sdiv i32 %127, %130
  %132 = call i32 @input_abs_set_res(%struct.input_dev* %123, i32 %124, i32 %131)
  %133 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %134 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %135 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %136 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %139 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = sdiv i32 %137, %140
  %142 = call i32 @input_abs_set_res(%struct.input_dev* %133, i32 %134, i32 %141)
  %143 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %144 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @CAPABILITY_LEFT_BTN_MASK, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %122
  %150 = load i32, i32* @BTN_LEFT, align 4
  %151 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %152 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @__set_bit(i32 %150, i32 %153)
  br label %155

155:                                              ; preds = %149, %122
  %156 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %157 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @CAPABILITY_MIDDLE_BTN_MASK, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %155
  %163 = load i32, i32* @BTN_MIDDLE, align 4
  %164 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %165 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @__set_bit(i32 %163, i32 %166)
  br label %168

168:                                              ; preds = %162, %155
  %169 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %170 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @CAPABILITY_RIGHT_BTN_MASK, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %168
  %176 = load i32, i32* @BTN_RIGHT, align 4
  %177 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %178 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @__set_bit(i32 %176, i32 %179)
  br label %181

181:                                              ; preds = %175, %168
  %182 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %183 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %182, i32 0, i32 6
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @CAPABILITY_LEFT_BTN_MASK, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %193

187:                                              ; preds = %181
  %188 = load i32, i32* @INPUT_PROP_BUTTONPAD, align 4
  %189 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %190 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @__set_bit(i32 %188, i32 %191)
  br label %193

193:                                              ; preds = %187, %181
  %194 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %195 = load i32, i32* @CYAPA_MAX_MT_SLOTS, align 4
  %196 = load i32, i32* @INPUT_MT_POINTER, align 4
  %197 = load i32, i32* @INPUT_MT_DROP_UNUSED, align 4
  %198 = or i32 %196, %197
  %199 = call i32 @input_mt_init_slots(%struct.input_dev* %194, i32 %195, i32 %198)
  store i32 %199, i32* %6, align 4
  %200 = load i32, i32* %6, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %193
  %203 = load %struct.device*, %struct.device** %4, align 8
  %204 = load i32, i32* %6, align 4
  %205 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %203, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %204)
  %206 = load i32, i32* %6, align 4
  store i32 %206, i32* %2, align 4
  br label %221

207:                                              ; preds = %193
  %208 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %209 = call i32 @input_register_device(%struct.input_dev* %208)
  store i32 %209, i32* %6, align 4
  %210 = load i32, i32* %6, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %207
  %213 = load %struct.device*, %struct.device** %4, align 8
  %214 = load i32, i32* %6, align 4
  %215 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %213, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %214)
  %216 = load i32, i32* %6, align 4
  store i32 %216, i32* %2, align 4
  br label %221

217:                                              ; preds = %207
  %218 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %219 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %220 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %219, i32 0, i32 7
  store %struct.input_dev* %218, %struct.input_dev** %220, align 8
  store i32 0, i32* %2, align 4
  br label %221

221:                                              ; preds = %217, %212, %202, %28, %20
  %222 = load i32, i32* %2, align 4
  ret i32 %222
}

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.cyapa*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_abs_set_res(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_mt_init_slots(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
