; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_qt1050.c_qt1050_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_qt1050.c_qt1050_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device, i32, %struct.TYPE_8__* }
%struct.device = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.qt1050_priv = type { %struct.input_dev*, %struct.regmap*, i32*, %struct.TYPE_7__*, %struct.i2c_client* }
%struct.input_dev = type { i8*, i32, i32, i32, i32, i32*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.device* }
%struct.regmap = type { i32 }
%struct.TYPE_7__ = type { i32 }

@I2C_FUNC_SMBUS_BYTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%s adapter not supported\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"assign a irq line to this device\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@qt1050_regmap_config = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to parse firmware: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"AT42QT1050 QTouch Sensor\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@QT1050_MAX_KEYS = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@QT1050_RES_CAL = common dso_local global i32 0, align 4
@QT1050_RES_CAL_CALIBRATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Trigger calibration failed: %d\0A\00", align 1
@QT1050_DET_STATUS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"Calibration failed: %d\0A\00", align 1
@QT1050_RES_CAL_RESET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"Trigger soft reset failed: %d\0A\00", align 1
@QT1050_RESET_TIME = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"Failed to set firmware data: %d\0A\00", align 1
@qt1050_irq_threaded = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"qt1050\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Failed to request irq: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"Failed to clear #CHANGE line level: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"Failed to register input device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @qt1050_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qt1050_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.qt1050_priv*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = load i32, i32* @I2C_FUNC_SMBUS_BYTE, align 4
  %17 = call i32 @i2c_check_functionality(%struct.TYPE_8__* %15, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %1
  %21 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 2
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = call i32 @dev_driver_string(i32* %26)
  %28 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %259

31:                                               ; preds = %1
  %32 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.device*, %struct.device** %6, align 8
  %38 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %259

41:                                               ; preds = %31
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.qt1050_priv* @devm_kzalloc(%struct.device* %42, i32 40, i32 %43)
  store %struct.qt1050_priv* %44, %struct.qt1050_priv** %4, align 8
  %45 = load %struct.qt1050_priv*, %struct.qt1050_priv** %4, align 8
  %46 = icmp ne %struct.qt1050_priv* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %259

50:                                               ; preds = %41
  %51 = load %struct.device*, %struct.device** %6, align 8
  %52 = call %struct.input_dev* @devm_input_allocate_device(%struct.device* %51)
  store %struct.input_dev* %52, %struct.input_dev** %5, align 8
  %53 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %54 = icmp ne %struct.input_dev* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %259

58:                                               ; preds = %50
  %59 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %60 = call %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client* %59, i32* @qt1050_regmap_config)
  store %struct.regmap* %60, %struct.regmap** %7, align 8
  %61 = load %struct.regmap*, %struct.regmap** %7, align 8
  %62 = call i64 @IS_ERR(%struct.regmap* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load %struct.regmap*, %struct.regmap** %7, align 8
  %66 = call i32 @PTR_ERR(%struct.regmap* %65)
  store i32 %66, i32* %2, align 4
  br label %259

67:                                               ; preds = %58
  %68 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %69 = load %struct.qt1050_priv*, %struct.qt1050_priv** %4, align 8
  %70 = getelementptr inbounds %struct.qt1050_priv, %struct.qt1050_priv* %69, i32 0, i32 4
  store %struct.i2c_client* %68, %struct.i2c_client** %70, align 8
  %71 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %72 = load %struct.qt1050_priv*, %struct.qt1050_priv** %4, align 8
  %73 = getelementptr inbounds %struct.qt1050_priv, %struct.qt1050_priv* %72, i32 0, i32 0
  store %struct.input_dev* %71, %struct.input_dev** %73, align 8
  %74 = load %struct.regmap*, %struct.regmap** %7, align 8
  %75 = load %struct.qt1050_priv*, %struct.qt1050_priv** %4, align 8
  %76 = getelementptr inbounds %struct.qt1050_priv, %struct.qt1050_priv* %75, i32 0, i32 1
  store %struct.regmap* %74, %struct.regmap** %76, align 8
  %77 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %78 = load %struct.qt1050_priv*, %struct.qt1050_priv** %4, align 8
  %79 = call i32 @i2c_set_clientdata(%struct.i2c_client* %77, %struct.qt1050_priv* %78)
  %80 = load %struct.qt1050_priv*, %struct.qt1050_priv** %4, align 8
  %81 = call i32 @qt1050_identify(%struct.qt1050_priv* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %67
  %84 = load i32, i32* @ENODEV, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %259

86:                                               ; preds = %67
  %87 = load %struct.qt1050_priv*, %struct.qt1050_priv** %4, align 8
  %88 = call i32 @qt1050_parse_fw(%struct.qt1050_priv* %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.device*, %struct.device** %6, align 8
  %93 = load i32, i32* %10, align 4
  %94 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %92, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %2, align 4
  br label %259

96:                                               ; preds = %86
  %97 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %98 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %97, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8** %98, align 8
  %99 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %100 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %99, i32 0, i32 0
  %101 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %102 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %101, i32 0, i32 7
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  store %struct.device* %100, %struct.device** %103, align 8
  %104 = load i32, i32* @BUS_I2C, align 4
  %105 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %106 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %105, i32 0, i32 6
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 8
  %108 = load %struct.qt1050_priv*, %struct.qt1050_priv** %4, align 8
  %109 = getelementptr inbounds %struct.qt1050_priv, %struct.qt1050_priv* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %112 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %111, i32 0, i32 5
  store i32* %110, i32** %112, align 8
  %113 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %114 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %113, i32 0, i32 1
  store i32 4, i32* %114, align 8
  %115 = load i32, i32* @QT1050_MAX_KEYS, align 4
  %116 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %117 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @EV_KEY, align 4
  %119 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %120 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @__set_bit(i32 %118, i32 %121)
  store i32 0, i32* %9, align 4
  br label %123

123:                                              ; preds = %153, %96
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* @QT1050_MAX_KEYS, align 4
  %126 = icmp ult i32 %124, %125
  br i1 %126, label %127, label %156

127:                                              ; preds = %123
  %128 = load %struct.qt1050_priv*, %struct.qt1050_priv** %4, align 8
  %129 = getelementptr inbounds %struct.qt1050_priv, %struct.qt1050_priv* %128, i32 0, i32 3
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = load i32, i32* %9, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.qt1050_priv*, %struct.qt1050_priv** %4, align 8
  %137 = getelementptr inbounds %struct.qt1050_priv, %struct.qt1050_priv* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  store i32 %135, i32* %141, align 4
  %142 = load %struct.qt1050_priv*, %struct.qt1050_priv** %4, align 8
  %143 = getelementptr inbounds %struct.qt1050_priv, %struct.qt1050_priv* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %9, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %150 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @__set_bit(i32 %148, i32 %151)
  br label %153

153:                                              ; preds = %127
  %154 = load i32, i32* %9, align 4
  %155 = add i32 %154, 1
  store i32 %155, i32* %9, align 4
  br label %123

156:                                              ; preds = %123
  %157 = load %struct.qt1050_priv*, %struct.qt1050_priv** %4, align 8
  %158 = getelementptr inbounds %struct.qt1050_priv, %struct.qt1050_priv* %157, i32 0, i32 1
  %159 = load %struct.regmap*, %struct.regmap** %158, align 8
  %160 = load i32, i32* @QT1050_RES_CAL, align 4
  %161 = load i32, i32* @QT1050_RES_CAL_CALIBRATE, align 4
  %162 = call i32 @regmap_update_bits(%struct.regmap* %159, i32 %160, i32 127, i32 %161)
  store i32 %162, i32* %10, align 4
  %163 = load i32, i32* %10, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %156
  %166 = load %struct.device*, %struct.device** %6, align 8
  %167 = load i32, i32* %10, align 4
  %168 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %166, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %167)
  %169 = load i32, i32* %10, align 4
  store i32 %169, i32* %2, align 4
  br label %259

170:                                              ; preds = %156
  %171 = load %struct.qt1050_priv*, %struct.qt1050_priv** %4, align 8
  %172 = getelementptr inbounds %struct.qt1050_priv, %struct.qt1050_priv* %171, i32 0, i32 1
  %173 = load %struct.regmap*, %struct.regmap** %172, align 8
  %174 = load i32, i32* @QT1050_DET_STATUS, align 4
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* %8, align 4
  %177 = lshr i32 %176, 7
  %178 = icmp eq i32 %177, 1
  %179 = zext i1 %178 to i32
  %180 = call i32 @regmap_read_poll_timeout(%struct.regmap* %173, i32 %174, i32 %175, i32 %179, i32 10000, i32 200000)
  store i32 %180, i32* %10, align 4
  %181 = load i32, i32* %10, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %170
  %184 = load %struct.device*, %struct.device** %6, align 8
  %185 = load i32, i32* %10, align 4
  %186 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %184, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %185)
  %187 = load i32, i32* %10, align 4
  store i32 %187, i32* %2, align 4
  br label %259

188:                                              ; preds = %170
  %189 = load %struct.qt1050_priv*, %struct.qt1050_priv** %4, align 8
  %190 = getelementptr inbounds %struct.qt1050_priv, %struct.qt1050_priv* %189, i32 0, i32 1
  %191 = load %struct.regmap*, %struct.regmap** %190, align 8
  %192 = load i32, i32* @QT1050_RES_CAL, align 4
  %193 = load i32, i32* @QT1050_RES_CAL_RESET, align 4
  %194 = load i32, i32* @QT1050_RES_CAL_RESET, align 4
  %195 = call i32 @regmap_update_bits(%struct.regmap* %191, i32 %192, i32 %193, i32 %194)
  store i32 %195, i32* %10, align 4
  %196 = load i32, i32* %10, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %188
  %199 = load %struct.device*, %struct.device** %6, align 8
  %200 = load i32, i32* %10, align 4
  %201 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %199, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %200)
  %202 = load i32, i32* %10, align 4
  store i32 %202, i32* %2, align 4
  br label %259

203:                                              ; preds = %188
  %204 = load i32, i32* @QT1050_RESET_TIME, align 4
  %205 = call i32 @msleep(i32 %204)
  %206 = load %struct.qt1050_priv*, %struct.qt1050_priv** %4, align 8
  %207 = call i32 @qt1050_apply_fw_data(%struct.qt1050_priv* %206)
  store i32 %207, i32* %10, align 4
  %208 = load i32, i32* %10, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %203
  %211 = load %struct.device*, %struct.device** %6, align 8
  %212 = load i32, i32* %10, align 4
  %213 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %211, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %212)
  %214 = load i32, i32* %10, align 4
  store i32 %214, i32* %2, align 4
  br label %259

215:                                              ; preds = %203
  %216 = load %struct.device*, %struct.device** %6, align 8
  %217 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %218 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @qt1050_irq_threaded, align 4
  %221 = load i32, i32* @IRQF_ONESHOT, align 4
  %222 = load %struct.qt1050_priv*, %struct.qt1050_priv** %4, align 8
  %223 = call i32 @devm_request_threaded_irq(%struct.device* %216, i32 %219, i32* null, i32 %220, i32 %221, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), %struct.qt1050_priv* %222)
  store i32 %223, i32* %10, align 4
  %224 = load i32, i32* %10, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %215
  %227 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %228 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %227, i32 0, i32 0
  %229 = load i32, i32* %10, align 4
  %230 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %228, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %229)
  %231 = load i32, i32* %10, align 4
  store i32 %231, i32* %2, align 4
  br label %259

232:                                              ; preds = %215
  %233 = load %struct.qt1050_priv*, %struct.qt1050_priv** %4, align 8
  %234 = getelementptr inbounds %struct.qt1050_priv, %struct.qt1050_priv* %233, i32 0, i32 1
  %235 = load %struct.regmap*, %struct.regmap** %234, align 8
  %236 = load i32, i32* @QT1050_DET_STATUS, align 4
  %237 = call i32 @regmap_read(%struct.regmap* %235, i32 %236, i32* %8)
  store i32 %237, i32* %10, align 4
  %238 = load i32, i32* %10, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %232
  %241 = load %struct.device*, %struct.device** %6, align 8
  %242 = load i32, i32* %10, align 4
  %243 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %241, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i32 %242)
  %244 = load i32, i32* %10, align 4
  store i32 %244, i32* %2, align 4
  br label %259

245:                                              ; preds = %232
  %246 = load %struct.qt1050_priv*, %struct.qt1050_priv** %4, align 8
  %247 = getelementptr inbounds %struct.qt1050_priv, %struct.qt1050_priv* %246, i32 0, i32 0
  %248 = load %struct.input_dev*, %struct.input_dev** %247, align 8
  %249 = call i32 @input_register_device(%struct.input_dev* %248)
  store i32 %249, i32* %10, align 4
  %250 = load i32, i32* %10, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %258

252:                                              ; preds = %245
  %253 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %254 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %253, i32 0, i32 0
  %255 = load i32, i32* %10, align 4
  %256 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %254, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), i32 %255)
  %257 = load i32, i32* %10, align 4
  store i32 %257, i32* %2, align 4
  br label %259

258:                                              ; preds = %245
  store i32 0, i32* %2, align 4
  br label %259

259:                                              ; preds = %258, %252, %240, %226, %210, %198, %183, %165, %91, %83, %64, %55, %47, %36, %20
  %260 = load i32, i32* %2, align 4
  ret i32 %260
}

declare dso_local i32 @i2c_check_functionality(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_driver_string(i32*) #1

declare dso_local %struct.qt1050_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.device*) #1

declare dso_local %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.qt1050_priv*) #1

declare dso_local i32 @qt1050_identify(%struct.qt1050_priv*) #1

declare dso_local i32 @qt1050_parse_fw(%struct.qt1050_priv*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @regmap_read_poll_timeout(%struct.regmap*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @qt1050_apply_fw_data(%struct.qt1050_priv*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i8*, %struct.qt1050_priv*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
