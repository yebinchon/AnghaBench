; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_qt1070.c_qt1070_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_qt1070.c_qt1070_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i64, %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.qt1070_data = type { %struct.input_dev*, i32*, i64, %struct.i2c_client* }
%struct.input_dev = type { i8*, i32, i32, i32, i32, i32*, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_10__* }

@I2C_FUNC_SMBUS_BYTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%s adapter not supported\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"please assign the irq to this device\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"insufficient memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"AT42QT1070 QTouch Sensor\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@qt1070_key2code = common dso_local global i32* null, align 8
@EV_KEY = common dso_local global i32 0, align 4
@CALIBRATE_CMD = common dso_local global i32 0, align 4
@QT1070_CAL_TIME = common dso_local global i32 0, align 4
@RESET = common dso_local global i32 0, align 4
@QT1070_RESET_TIME = common dso_local global i32 0, align 4
@qt1070_interrupt = common dso_local global i32 0, align 4
@IRQF_TRIGGER_NONE = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"fail to request irq\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Failed to register input device\0A\00", align 1
@DET_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @qt1070_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qt1070_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.qt1070_data*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 2
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = load i32, i32* @I2C_FUNC_SMBUS_BYTE, align 4
  %14 = call i32 @i2c_check_functionality(%struct.TYPE_9__* %12, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 1
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = call i32 @dev_driver_string(i32* %23)
  %25 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %191

28:                                               ; preds = %2
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 1
  %36 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %35, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %191

39:                                               ; preds = %28
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = call i32 @qt1070_identify(%struct.i2c_client* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %191

46:                                               ; preds = %39
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.qt1070_data* @kzalloc(i32 32, i32 %47)
  store %struct.qt1070_data* %48, %struct.qt1070_data** %6, align 8
  %49 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %49, %struct.input_dev** %7, align 8
  %50 = load %struct.qt1070_data*, %struct.qt1070_data** %6, align 8
  %51 = icmp ne %struct.qt1070_data* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %54 = icmp ne %struct.input_dev* %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %52, %46
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %56, i32 0, i32 1
  %58 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %9, align 4
  br label %185

61:                                               ; preds = %52
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = load %struct.qt1070_data*, %struct.qt1070_data** %6, align 8
  %64 = getelementptr inbounds %struct.qt1070_data, %struct.qt1070_data* %63, i32 0, i32 3
  store %struct.i2c_client* %62, %struct.i2c_client** %64, align 8
  %65 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %66 = load %struct.qt1070_data*, %struct.qt1070_data** %6, align 8
  %67 = getelementptr inbounds %struct.qt1070_data, %struct.qt1070_data* %66, i32 0, i32 0
  store %struct.input_dev* %65, %struct.input_dev** %67, align 8
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.qt1070_data*, %struct.qt1070_data** %6, align 8
  %72 = getelementptr inbounds %struct.qt1070_data, %struct.qt1070_data* %71, i32 0, i32 2
  store i64 %70, i64* %72, align 8
  %73 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %74 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %73, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8** %74, align 8
  %75 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %76 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %75, i32 0, i32 1
  %77 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %78 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %77, i32 0, i32 7
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  store %struct.TYPE_10__* %76, %struct.TYPE_10__** %79, align 8
  %80 = load i32, i32* @BUS_I2C, align 4
  %81 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %82 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %81, i32 0, i32 6
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  %84 = load %struct.qt1070_data*, %struct.qt1070_data** %6, align 8
  %85 = getelementptr inbounds %struct.qt1070_data, %struct.qt1070_data* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %88 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %87, i32 0, i32 5
  store i32* %86, i32** %88, align 8
  %89 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %90 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %89, i32 0, i32 1
  store i32 4, i32* %90, align 8
  %91 = load i32*, i32** @qt1070_key2code, align 8
  %92 = call i32 @ARRAY_SIZE(i32* %91)
  %93 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %94 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @EV_KEY, align 4
  %96 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %97 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @__set_bit(i32 %95, i32 %98)
  store i32 0, i32* %8, align 4
  br label %100

100:                                              ; preds = %126, %61
  %101 = load i32, i32* %8, align 4
  %102 = load i32*, i32** @qt1070_key2code, align 8
  %103 = call i32 @ARRAY_SIZE(i32* %102)
  %104 = icmp slt i32 %101, %103
  br i1 %104, label %105, label %129

105:                                              ; preds = %100
  %106 = load i32*, i32** @qt1070_key2code, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.qt1070_data*, %struct.qt1070_data** %6, align 8
  %112 = getelementptr inbounds %struct.qt1070_data, %struct.qt1070_data* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 %110, i32* %116, align 4
  %117 = load i32*, i32** @qt1070_key2code, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %123 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @__set_bit(i32 %121, i32 %124)
  br label %126

126:                                              ; preds = %105
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %8, align 4
  br label %100

129:                                              ; preds = %100
  %130 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %131 = load i32, i32* @CALIBRATE_CMD, align 4
  %132 = call i32 @qt1070_write(%struct.i2c_client* %130, i32 %131, i32 1)
  %133 = load i32, i32* @QT1070_CAL_TIME, align 4
  %134 = call i32 @msleep(i32 %133)
  %135 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %136 = load i32, i32* @RESET, align 4
  %137 = call i32 @qt1070_write(%struct.i2c_client* %135, i32 %136, i32 1)
  %138 = load i32, i32* @QT1070_RESET_TIME, align 4
  %139 = call i32 @msleep(i32 %138)
  %140 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %141 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i32, i32* @qt1070_interrupt, align 4
  %144 = load i32, i32* @IRQF_TRIGGER_NONE, align 4
  %145 = load i32, i32* @IRQF_ONESHOT, align 4
  %146 = or i32 %144, %145
  %147 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %148 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.qt1070_data*, %struct.qt1070_data** %6, align 8
  %154 = call i32 @request_threaded_irq(i64 %142, i32* null, i32 %143, i32 %146, i32 %152, %struct.qt1070_data* %153)
  store i32 %154, i32* %9, align 4
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %129
  %158 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %159 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %158, i32 0, i32 1
  %160 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %159, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %185

161:                                              ; preds = %129
  %162 = load %struct.qt1070_data*, %struct.qt1070_data** %6, align 8
  %163 = getelementptr inbounds %struct.qt1070_data, %struct.qt1070_data* %162, i32 0, i32 0
  %164 = load %struct.input_dev*, %struct.input_dev** %163, align 8
  %165 = call i32 @input_register_device(%struct.input_dev* %164)
  store i32 %165, i32* %9, align 4
  %166 = load i32, i32* %9, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %161
  %169 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %170 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %169, i32 0, i32 1
  %171 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %170, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %179

172:                                              ; preds = %161
  %173 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %174 = load %struct.qt1070_data*, %struct.qt1070_data** %6, align 8
  %175 = call i32 @i2c_set_clientdata(%struct.i2c_client* %173, %struct.qt1070_data* %174)
  %176 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %177 = load i32, i32* @DET_STATUS, align 4
  %178 = call i32 @qt1070_read(%struct.i2c_client* %176, i32 %177)
  store i32 0, i32* %3, align 4
  br label %191

179:                                              ; preds = %168
  %180 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %181 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.qt1070_data*, %struct.qt1070_data** %6, align 8
  %184 = call i32 @free_irq(i64 %182, %struct.qt1070_data* %183)
  br label %185

185:                                              ; preds = %179, %157, %55
  %186 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %187 = call i32 @input_free_device(%struct.input_dev* %186)
  %188 = load %struct.qt1070_data*, %struct.qt1070_data** %6, align 8
  %189 = call i32 @kfree(%struct.qt1070_data* %188)
  %190 = load i32, i32* %9, align 4
  store i32 %190, i32* %3, align 4
  br label %191

191:                                              ; preds = %185, %172, %43, %33, %17
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local i32 @i2c_check_functionality(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @dev_driver_string(i32*) #1

declare dso_local i32 @qt1070_identify(%struct.i2c_client*) #1

declare dso_local %struct.qt1070_data* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @qt1070_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @request_threaded_irq(i64, i32*, i32, i32, i32, %struct.qt1070_data*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.qt1070_data*) #1

declare dso_local i32 @qt1070_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @free_irq(i64, %struct.qt1070_data*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.qt1070_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
