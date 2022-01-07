; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_raydium_i2c_ts.c_raydium_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_raydium_i2c_ts.c_raydium_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32, i32, i32 }
%struct.i2c_device_id = type { i32 }
%union.i2c_smbus_data = type { i32 }
%struct.raydium_data = type { %struct.TYPE_10__*, %struct.TYPE_9__, i32, i32, i8*, i8*, i8*, %struct.i2c_client*, i32 }
%struct.TYPE_10__ = type { i8*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"i2c check functionality error (need I2C_FUNC_I2C)\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"avdd\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to get 'avdd' regulator: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"vccio\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to get 'vccio' regulator: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"failed to get reset gpio: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"failed to install power off action: %d\0A\00", align 1
@I2C_SMBUS_READ = common dso_local global i32 0, align 4
@I2C_SMBUS_BYTE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"nothing at this address\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"failed to initialize: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Failed to allocate input device\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Raydium Touchscreen\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@RM_MAX_TOUCH_NUM = common dso_local global i32 0, align 4
@INPUT_MT_DIRECT = common dso_local global i32 0, align 4
@INPUT_MT_DROP_UNUSED = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [35 x i8] c"failed to initialize MT slots: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"unable to register input device: %d\0A\00", align 1
@raydium_i2c_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [30 x i8] c"Failed to register interrupt\0A\00", align 1
@raydium_i2c_attribute_group = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [39 x i8] c"failed to create sysfs attributes: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @raydium_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raydium_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %union.i2c_smbus_data, align 4
  %7 = alloca %struct.raydium_data*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @I2C_FUNC_I2C, align 4
  %13 = call i32 @i2c_check_functionality(i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = call i32 (i32*, i8*, ...) @dev_err(i32* %17, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENXIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %326

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.raydium_data* @devm_kzalloc(i32* %23, i32 72, i32 %24)
  store %struct.raydium_data* %25, %struct.raydium_data** %7, align 8
  %26 = load %struct.raydium_data*, %struct.raydium_data** %7, align 8
  %27 = icmp ne %struct.raydium_data* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %326

31:                                               ; preds = %21
  %32 = load %struct.raydium_data*, %struct.raydium_data** %7, align 8
  %33 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %32, i32 0, i32 8
  %34 = call i32 @mutex_init(i32* %33)
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = load %struct.raydium_data*, %struct.raydium_data** %7, align 8
  %37 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %36, i32 0, i32 7
  store %struct.i2c_client* %35, %struct.i2c_client** %37, align 8
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = load %struct.raydium_data*, %struct.raydium_data** %7, align 8
  %40 = call i32 @i2c_set_clientdata(%struct.i2c_client* %38, %struct.raydium_data* %39)
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 0
  %43 = call i8* @devm_regulator_get(i32* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.raydium_data*, %struct.raydium_data** %7, align 8
  %45 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %44, i32 0, i32 6
  store i8* %43, i8** %45, align 8
  %46 = load %struct.raydium_data*, %struct.raydium_data** %7, align 8
  %47 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %46, i32 0, i32 6
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @IS_ERR(i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %31
  %52 = load %struct.raydium_data*, %struct.raydium_data** %7, align 8
  %53 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %52, i32 0, i32 6
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @PTR_ERR(i8* %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @EPROBE_DEFER, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp ne i32 %56, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %51
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %61, i32 0, i32 0
  %63 = load i32, i32* %8, align 4
  %64 = call i32 (i32*, i8*, ...) @dev_err(i32* %62, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %60, %51
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %326

67:                                               ; preds = %31
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 0
  %70 = call i8* @devm_regulator_get(i32* %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %71 = load %struct.raydium_data*, %struct.raydium_data** %7, align 8
  %72 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %71, i32 0, i32 5
  store i8* %70, i8** %72, align 8
  %73 = load %struct.raydium_data*, %struct.raydium_data** %7, align 8
  %74 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %73, i32 0, i32 5
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @IS_ERR(i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %67
  %79 = load %struct.raydium_data*, %struct.raydium_data** %7, align 8
  %80 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %79, i32 0, i32 5
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @PTR_ERR(i8* %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @EPROBE_DEFER, align 4
  %85 = sub nsw i32 0, %84
  %86 = icmp ne i32 %83, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %78
  %88 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %89 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %88, i32 0, i32 0
  %90 = load i32, i32* %8, align 4
  %91 = call i32 (i32*, i8*, ...) @dev_err(i32* %89, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %87, %78
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %3, align 4
  br label %326

94:                                               ; preds = %67
  %95 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %96 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %95, i32 0, i32 0
  %97 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %98 = call i8* @devm_gpiod_get_optional(i32* %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %97)
  %99 = load %struct.raydium_data*, %struct.raydium_data** %7, align 8
  %100 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %99, i32 0, i32 4
  store i8* %98, i8** %100, align 8
  %101 = load %struct.raydium_data*, %struct.raydium_data** %7, align 8
  %102 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %101, i32 0, i32 4
  %103 = load i8*, i8** %102, align 8
  %104 = call i64 @IS_ERR(i8* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %122

106:                                              ; preds = %94
  %107 = load %struct.raydium_data*, %struct.raydium_data** %7, align 8
  %108 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %107, i32 0, i32 4
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @PTR_ERR(i8* %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @EPROBE_DEFER, align 4
  %113 = sub nsw i32 0, %112
  %114 = icmp ne i32 %111, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %106
  %116 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %117 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %116, i32 0, i32 0
  %118 = load i32, i32* %8, align 4
  %119 = call i32 (i32*, i8*, ...) @dev_err(i32* %117, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %115, %106
  %121 = load i32, i32* %8, align 4
  store i32 %121, i32* %3, align 4
  br label %326

122:                                              ; preds = %94
  %123 = load %struct.raydium_data*, %struct.raydium_data** %7, align 8
  %124 = call i32 @raydium_i2c_power_on(%struct.raydium_data* %123)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = load i32, i32* %8, align 4
  store i32 %128, i32* %3, align 4
  br label %326

129:                                              ; preds = %122
  %130 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %131 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %130, i32 0, i32 0
  %132 = load %struct.raydium_data*, %struct.raydium_data** %7, align 8
  %133 = call i32 @devm_add_action(i32* %131, i32 (%struct.raydium_data*)* @raydium_i2c_power_off, %struct.raydium_data* %132)
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %129
  %137 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %138 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %137, i32 0, i32 0
  %139 = load i32, i32* %8, align 4
  %140 = call i32 (i32*, i8*, ...) @dev_err(i32* %138, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %139)
  %141 = load %struct.raydium_data*, %struct.raydium_data** %7, align 8
  %142 = call i32 @raydium_i2c_power_off(%struct.raydium_data* %141)
  %143 = load i32, i32* %8, align 4
  store i32 %143, i32* %3, align 4
  br label %326

144:                                              ; preds = %129
  %145 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %146 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %149 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @I2C_SMBUS_READ, align 4
  %152 = load i32, i32* @I2C_SMBUS_BYTE, align 4
  %153 = call i64 @i2c_smbus_xfer(i32 %147, i32 %150, i32 0, i32 %151, i32 0, i32 %152, %union.i2c_smbus_data* %6)
  %154 = icmp slt i64 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %144
  %156 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %157 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %156, i32 0, i32 0
  %158 = call i32 (i32*, i8*, ...) @dev_err(i32* %157, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %159 = load i32, i32* @ENXIO, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %3, align 4
  br label %326

161:                                              ; preds = %144
  %162 = load %struct.raydium_data*, %struct.raydium_data** %7, align 8
  %163 = call i32 @raydium_i2c_initialize(%struct.raydium_data* %162)
  store i32 %163, i32* %8, align 4
  %164 = load i32, i32* %8, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %161
  %167 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %168 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %167, i32 0, i32 0
  %169 = load i32, i32* %8, align 4
  %170 = call i32 (i32*, i8*, ...) @dev_err(i32* %168, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %169)
  %171 = load i32, i32* %8, align 4
  store i32 %171, i32* %3, align 4
  br label %326

172:                                              ; preds = %161
  %173 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %174 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %173, i32 0, i32 0
  %175 = load %struct.raydium_data*, %struct.raydium_data** %7, align 8
  %176 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @GFP_KERNEL, align 4
  %179 = call i32 @devm_kmalloc(i32* %174, i32 %177, i32 %178)
  %180 = load %struct.raydium_data*, %struct.raydium_data** %7, align 8
  %181 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %180, i32 0, i32 2
  store i32 %179, i32* %181, align 8
  %182 = load %struct.raydium_data*, %struct.raydium_data** %7, align 8
  %183 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %172
  %187 = load i32, i32* @ENOMEM, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %3, align 4
  br label %326

189:                                              ; preds = %172
  %190 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %191 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %190, i32 0, i32 0
  %192 = call %struct.TYPE_10__* @devm_input_allocate_device(i32* %191)
  %193 = load %struct.raydium_data*, %struct.raydium_data** %7, align 8
  %194 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %193, i32 0, i32 0
  store %struct.TYPE_10__* %192, %struct.TYPE_10__** %194, align 8
  %195 = load %struct.raydium_data*, %struct.raydium_data** %7, align 8
  %196 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %195, i32 0, i32 0
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %196, align 8
  %198 = icmp ne %struct.TYPE_10__* %197, null
  br i1 %198, label %205, label %199

199:                                              ; preds = %189
  %200 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %201 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %200, i32 0, i32 0
  %202 = call i32 (i32*, i8*, ...) @dev_err(i32* %201, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  %203 = load i32, i32* @ENOMEM, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %3, align 4
  br label %326

205:                                              ; preds = %189
  %206 = load %struct.raydium_data*, %struct.raydium_data** %7, align 8
  %207 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %206, i32 0, i32 0
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8** %209, align 8
  %210 = load i32, i32* @BUS_I2C, align 4
  %211 = load %struct.raydium_data*, %struct.raydium_data** %7, align 8
  %212 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %211, i32 0, i32 0
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  store i32 %210, i32* %215, align 8
  %216 = load %struct.raydium_data*, %struct.raydium_data** %7, align 8
  %217 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %216, i32 0, i32 0
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %217, align 8
  %219 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %220 = load %struct.raydium_data*, %struct.raydium_data** %7, align 8
  %221 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @le16_to_cpu(i32 %223)
  %225 = call i32 @input_set_abs_params(%struct.TYPE_10__* %218, i32 %219, i32 0, i32 %224, i32 0, i32 0)
  %226 = load %struct.raydium_data*, %struct.raydium_data** %7, align 8
  %227 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %226, i32 0, i32 0
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %227, align 8
  %229 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %230 = load %struct.raydium_data*, %struct.raydium_data** %7, align 8
  %231 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @le16_to_cpu(i32 %233)
  %235 = call i32 @input_set_abs_params(%struct.TYPE_10__* %228, i32 %229, i32 0, i32 %234, i32 0, i32 0)
  %236 = load %struct.raydium_data*, %struct.raydium_data** %7, align 8
  %237 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %236, i32 0, i32 0
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %237, align 8
  %239 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %240 = load %struct.raydium_data*, %struct.raydium_data** %7, align 8
  %241 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @input_abs_set_res(%struct.TYPE_10__* %238, i32 %239, i32 %243)
  %245 = load %struct.raydium_data*, %struct.raydium_data** %7, align 8
  %246 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %245, i32 0, i32 0
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %246, align 8
  %248 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %249 = load %struct.raydium_data*, %struct.raydium_data** %7, align 8
  %250 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @input_abs_set_res(%struct.TYPE_10__* %247, i32 %248, i32 %252)
  %254 = load %struct.raydium_data*, %struct.raydium_data** %7, align 8
  %255 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %254, i32 0, i32 0
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %255, align 8
  %257 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %258 = call i32 @input_set_abs_params(%struct.TYPE_10__* %256, i32 %257, i32 0, i32 255, i32 0, i32 0)
  %259 = load %struct.raydium_data*, %struct.raydium_data** %7, align 8
  %260 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %259, i32 0, i32 0
  %261 = load %struct.TYPE_10__*, %struct.TYPE_10__** %260, align 8
  %262 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %263 = call i32 @input_set_abs_params(%struct.TYPE_10__* %261, i32 %262, i32 0, i32 255, i32 0, i32 0)
  %264 = load %struct.raydium_data*, %struct.raydium_data** %7, align 8
  %265 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %264, i32 0, i32 0
  %266 = load %struct.TYPE_10__*, %struct.TYPE_10__** %265, align 8
  %267 = load i32, i32* @RM_MAX_TOUCH_NUM, align 4
  %268 = load i32, i32* @INPUT_MT_DIRECT, align 4
  %269 = load i32, i32* @INPUT_MT_DROP_UNUSED, align 4
  %270 = or i32 %268, %269
  %271 = call i32 @input_mt_init_slots(%struct.TYPE_10__* %266, i32 %267, i32 %270)
  store i32 %271, i32* %8, align 4
  %272 = load i32, i32* %8, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %280

274:                                              ; preds = %205
  %275 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %276 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %275, i32 0, i32 0
  %277 = load i32, i32* %8, align 4
  %278 = call i32 (i32*, i8*, ...) @dev_err(i32* %276, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i32 %277)
  %279 = load i32, i32* %8, align 4
  store i32 %279, i32* %3, align 4
  br label %326

280:                                              ; preds = %205
  %281 = load %struct.raydium_data*, %struct.raydium_data** %7, align 8
  %282 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %281, i32 0, i32 0
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** %282, align 8
  %284 = call i32 @input_register_device(%struct.TYPE_10__* %283)
  store i32 %284, i32* %8, align 4
  %285 = load i32, i32* %8, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %293

287:                                              ; preds = %280
  %288 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %289 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %288, i32 0, i32 0
  %290 = load i32, i32* %8, align 4
  %291 = call i32 (i32*, i8*, ...) @dev_err(i32* %289, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0), i32 %290)
  %292 = load i32, i32* %8, align 4
  store i32 %292, i32* %3, align 4
  br label %326

293:                                              ; preds = %280
  %294 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %295 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %294, i32 0, i32 0
  %296 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %297 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @raydium_i2c_irq, align 4
  %300 = load i32, i32* @IRQF_ONESHOT, align 4
  %301 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %302 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.raydium_data*, %struct.raydium_data** %7, align 8
  %305 = call i32 @devm_request_threaded_irq(i32* %295, i32 %298, i32* null, i32 %299, i32 %300, i32 %303, %struct.raydium_data* %304)
  store i32 %305, i32* %8, align 4
  %306 = load i32, i32* %8, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %313

308:                                              ; preds = %293
  %309 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %310 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %309, i32 0, i32 0
  %311 = call i32 (i32*, i8*, ...) @dev_err(i32* %310, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0))
  %312 = load i32, i32* %8, align 4
  store i32 %312, i32* %3, align 4
  br label %326

313:                                              ; preds = %293
  %314 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %315 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %314, i32 0, i32 0
  %316 = call i32 @devm_device_add_group(i32* %315, i32* @raydium_i2c_attribute_group)
  store i32 %316, i32* %8, align 4
  %317 = load i32, i32* %8, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %325

319:                                              ; preds = %313
  %320 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %321 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %320, i32 0, i32 0
  %322 = load i32, i32* %8, align 4
  %323 = call i32 (i32*, i8*, ...) @dev_err(i32* %321, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0), i32 %322)
  %324 = load i32, i32* %8, align 4
  store i32 %324, i32* %3, align 4
  br label %326

325:                                              ; preds = %313
  store i32 0, i32* %3, align 4
  br label %326

326:                                              ; preds = %325, %319, %308, %287, %274, %199, %186, %166, %155, %136, %127, %120, %92, %65, %28, %15
  %327 = load i32, i32* %3, align 4
  ret i32 %327
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.raydium_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.raydium_data*) #1

declare dso_local i8* @devm_regulator_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_gpiod_get_optional(i32*, i8*, i32) #1

declare dso_local i32 @raydium_i2c_power_on(%struct.raydium_data*) #1

declare dso_local i32 @devm_add_action(i32*, i32 (%struct.raydium_data*)*, %struct.raydium_data*) #1

declare dso_local i32 @raydium_i2c_power_off(%struct.raydium_data*) #1

declare dso_local i64 @i2c_smbus_xfer(i32, i32, i32, i32, i32, i32, %union.i2c_smbus_data*) #1

declare dso_local i32 @raydium_i2c_initialize(%struct.raydium_data*) #1

declare dso_local i32 @devm_kmalloc(i32*, i32, i32) #1

declare dso_local %struct.TYPE_10__* @devm_input_allocate_device(i32*) #1

declare dso_local i32 @input_set_abs_params(%struct.TYPE_10__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @input_abs_set_res(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @input_mt_init_slots(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @input_register_device(%struct.TYPE_10__*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i32, %struct.raydium_data*) #1

declare dso_local i32 @devm_device_add_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
