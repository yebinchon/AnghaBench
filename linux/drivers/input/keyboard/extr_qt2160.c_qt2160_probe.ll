; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_qt2160.c_qt2160_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_qt2160.c_qt2160_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.qt2160_data = type { %struct.input_dev*, i32*, i32, %struct.i2c_client* }
%struct.input_dev = type { i8*, i32, i32, i32, i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@I2C_FUNC_SMBUS_BYTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%s adapter not supported\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"insufficient memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@qt2160_worker = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"AT42QT2160 Touch Sense Keyboard\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@qt2160_key2code = common dso_local global i32* null, align 8
@EV_KEY = common dso_local global i32 0, align 4
@EV_REP = common dso_local global i32 0, align 4
@KEY_RESERVED = common dso_local global i32 0, align 4
@QT2160_CMD_CALIBRATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to calibrate device\0A\00", align 1
@qt2160_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"qt2160\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"failed to allocate irq %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Failed to register leds\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Failed to register input device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @qt2160_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qt2160_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.qt2160_data*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = load i32, i32* @I2C_FUNC_SMBUS_BYTE, align 4
  %14 = call i32 @i2c_check_functionality(%struct.TYPE_4__* %12, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 1
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @dev_driver_string(i32* %23)
  %25 = call i32 (i32*, i8*, ...) @dev_err(i32* %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %202

28:                                               ; preds = %2
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = call i32 @qt2160_identify(%struct.i2c_client* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %202

35:                                               ; preds = %28
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.qt2160_data* @kzalloc(i32 32, i32 %36)
  store %struct.qt2160_data* %37, %struct.qt2160_data** %6, align 8
  %38 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %38, %struct.input_dev** %7, align 8
  %39 = load %struct.qt2160_data*, %struct.qt2160_data** %6, align 8
  %40 = icmp ne %struct.qt2160_data* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %43 = icmp ne %struct.input_dev* %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %41, %35
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 1
  %47 = call i32 (i32*, i8*, ...) @dev_err(i32* %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %9, align 4
  br label %196

50:                                               ; preds = %41
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = load %struct.qt2160_data*, %struct.qt2160_data** %6, align 8
  %53 = getelementptr inbounds %struct.qt2160_data, %struct.qt2160_data* %52, i32 0, i32 3
  store %struct.i2c_client* %51, %struct.i2c_client** %53, align 8
  %54 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %55 = load %struct.qt2160_data*, %struct.qt2160_data** %6, align 8
  %56 = getelementptr inbounds %struct.qt2160_data, %struct.qt2160_data* %55, i32 0, i32 0
  store %struct.input_dev* %54, %struct.input_dev** %56, align 8
  %57 = load %struct.qt2160_data*, %struct.qt2160_data** %6, align 8
  %58 = getelementptr inbounds %struct.qt2160_data, %struct.qt2160_data* %57, i32 0, i32 2
  %59 = load i32, i32* @qt2160_worker, align 4
  %60 = call i32 @INIT_DELAYED_WORK(i32* %58, i32 %59)
  %61 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %62 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %61, i32 0, i32 0
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8** %62, align 8
  %63 = load i32, i32* @BUS_I2C, align 4
  %64 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %65 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %64, i32 0, i32 6
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  %67 = load %struct.qt2160_data*, %struct.qt2160_data** %6, align 8
  %68 = getelementptr inbounds %struct.qt2160_data, %struct.qt2160_data* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %71 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %70, i32 0, i32 5
  store i32* %69, i32** %71, align 8
  %72 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %73 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %72, i32 0, i32 1
  store i32 4, i32* %73, align 8
  %74 = load i32*, i32** @qt2160_key2code, align 8
  %75 = call i32 @ARRAY_SIZE(i32* %74)
  %76 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %77 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @EV_KEY, align 4
  %79 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %80 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @__set_bit(i32 %78, i32 %81)
  %83 = load i32, i32* @EV_REP, align 4
  %84 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %85 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @__clear_bit(i32 %83, i32 %86)
  store i32 0, i32* %8, align 4
  br label %88

88:                                               ; preds = %114, %50
  %89 = load i32, i32* %8, align 4
  %90 = load i32*, i32** @qt2160_key2code, align 8
  %91 = call i32 @ARRAY_SIZE(i32* %90)
  %92 = icmp slt i32 %89, %91
  br i1 %92, label %93, label %117

93:                                               ; preds = %88
  %94 = load i32*, i32** @qt2160_key2code, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.qt2160_data*, %struct.qt2160_data** %6, align 8
  %100 = getelementptr inbounds %struct.qt2160_data, %struct.qt2160_data* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %98, i32* %104, align 4
  %105 = load i32*, i32** @qt2160_key2code, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %111 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @__set_bit(i32 %109, i32 %112)
  br label %114

114:                                              ; preds = %93
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %88

117:                                              ; preds = %88
  %118 = load i32, i32* @KEY_RESERVED, align 4
  %119 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %120 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @__clear_bit(i32 %118, i32 %121)
  %123 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %124 = load i32, i32* @QT2160_CMD_CALIBRATE, align 4
  %125 = call i32 @qt2160_write(%struct.i2c_client* %123, i32 %124, i32 1)
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %117
  %129 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %130 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %129, i32 0, i32 1
  %131 = call i32 (i32*, i8*, ...) @dev_err(i32* %130, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %196

132:                                              ; preds = %117
  %133 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %134 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %155

137:                                              ; preds = %132
  %138 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %139 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* @qt2160_irq, align 4
  %142 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %143 = load %struct.qt2160_data*, %struct.qt2160_data** %6, align 8
  %144 = call i32 @request_irq(i64 %140, i32 %141, i32 %142, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), %struct.qt2160_data* %143)
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %9, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %137
  %148 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %149 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %148, i32 0, i32 1
  %150 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %151 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = call i32 (i32*, i8*, ...) @dev_err(i32* %149, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i64 %152)
  br label %196

154:                                              ; preds = %137
  br label %155

155:                                              ; preds = %154, %132
  %156 = load %struct.qt2160_data*, %struct.qt2160_data** %6, align 8
  %157 = call i32 @qt2160_register_leds(%struct.qt2160_data* %156)
  store i32 %157, i32* %9, align 4
  %158 = load i32, i32* %9, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %155
  %161 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %162 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %161, i32 0, i32 1
  %163 = call i32 (i32*, i8*, ...) @dev_err(i32* %162, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %184

164:                                              ; preds = %155
  %165 = load %struct.qt2160_data*, %struct.qt2160_data** %6, align 8
  %166 = getelementptr inbounds %struct.qt2160_data, %struct.qt2160_data* %165, i32 0, i32 0
  %167 = load %struct.input_dev*, %struct.input_dev** %166, align 8
  %168 = call i32 @input_register_device(%struct.input_dev* %167)
  store i32 %168, i32* %9, align 4
  %169 = load i32, i32* %9, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %164
  %172 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %173 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %172, i32 0, i32 1
  %174 = call i32 (i32*, i8*, ...) @dev_err(i32* %173, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %181

175:                                              ; preds = %164
  %176 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %177 = load %struct.qt2160_data*, %struct.qt2160_data** %6, align 8
  %178 = call i32 @i2c_set_clientdata(%struct.i2c_client* %176, %struct.qt2160_data* %177)
  %179 = load %struct.qt2160_data*, %struct.qt2160_data** %6, align 8
  %180 = call i32 @qt2160_schedule_read(%struct.qt2160_data* %179)
  store i32 0, i32* %3, align 4
  br label %202

181:                                              ; preds = %171
  %182 = load %struct.qt2160_data*, %struct.qt2160_data** %6, align 8
  %183 = call i32 @qt2160_unregister_leds(%struct.qt2160_data* %182)
  br label %184

184:                                              ; preds = %181, %160
  %185 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %186 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %184
  %190 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %191 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.qt2160_data*, %struct.qt2160_data** %6, align 8
  %194 = call i32 @free_irq(i64 %192, %struct.qt2160_data* %193)
  br label %195

195:                                              ; preds = %189, %184
  br label %196

196:                                              ; preds = %195, %147, %128, %44
  %197 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %198 = call i32 @input_free_device(%struct.input_dev* %197)
  %199 = load %struct.qt2160_data*, %struct.qt2160_data** %6, align 8
  %200 = call i32 @kfree(%struct.qt2160_data* %199)
  %201 = load i32, i32* %9, align 4
  store i32 %201, i32* %3, align 4
  br label %202

202:                                              ; preds = %196, %175, %32, %17
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

declare dso_local i32 @i2c_check_functionality(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @dev_driver_string(i32*) #1

declare dso_local i32 @qt2160_identify(%struct.i2c_client*) #1

declare dso_local %struct.qt2160_data* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @qt2160_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @request_irq(i64, i32, i32, i8*, %struct.qt2160_data*) #1

declare dso_local i32 @qt2160_register_leds(%struct.qt2160_data*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.qt2160_data*) #1

declare dso_local i32 @qt2160_schedule_read(%struct.qt2160_data*) #1

declare dso_local i32 @qt2160_unregister_leds(%struct.qt2160_data*) #1

declare dso_local i32 @free_irq(i64, %struct.qt2160_data*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.qt2160_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
