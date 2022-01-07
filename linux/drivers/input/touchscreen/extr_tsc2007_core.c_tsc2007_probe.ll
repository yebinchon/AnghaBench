; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_tsc2007_core.c_tsc2007_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_tsc2007_core.c_tsc2007_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.tsc2007_platform_data = type { i32 (...)*, i64 }
%struct.tsc2007 = type { i32, i32, i32, i32, i32, i32, i32, %struct.input_dev*, %struct.i2c_client* }
%struct.input_dev = type { i8*, i32, i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32 }

@I2C_FUNC_SMBUS_READ_WORD_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s/input0\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"TSC2007 Touchscreen\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@tsc2007_open = common dso_local global i32 0, align 4
@tsc2007_close = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@MAX_12BIT = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@tsc2007_call_exit_platform_hw = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"Failed to register exit_platform_hw action, %d\0A\00", align 1
@tsc2007_hard_irq = common dso_local global i32 0, align 4
@tsc2007_soft_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to request irq %d: %d\0A\00", align 1
@PWRDOWN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Failed to setup chip: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Failed to register input device: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Failed to register with IIO: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tsc2007_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsc2007_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.tsc2007_platform_data*, align 8
  %7 = alloca %struct.tsc2007*, align 8
  %8 = alloca %struct.input_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = call %struct.tsc2007_platform_data* @dev_get_platdata(%struct.TYPE_13__* %11)
  store %struct.tsc2007_platform_data* %12, %struct.tsc2007_platform_data** %6, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @I2C_FUNC_SMBUS_READ_WORD_DATA, align 4
  %17 = call i32 @i2c_check_functionality(i32 %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %231

22:                                               ; preds = %2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 0
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.tsc2007* @devm_kzalloc(%struct.TYPE_13__* %24, i32 48, i32 %25)
  store %struct.tsc2007* %26, %struct.tsc2007** %7, align 8
  %27 = load %struct.tsc2007*, %struct.tsc2007** %7, align 8
  %28 = icmp ne %struct.tsc2007* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %231

32:                                               ; preds = %22
  %33 = load %struct.tsc2007_platform_data*, %struct.tsc2007_platform_data** %6, align 8
  %34 = icmp ne %struct.tsc2007_platform_data* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = load %struct.tsc2007*, %struct.tsc2007** %7, align 8
  %38 = load %struct.tsc2007_platform_data*, %struct.tsc2007_platform_data** %6, align 8
  %39 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %40 = call i32 @tsc2007_probe_pdev(%struct.i2c_client* %36, %struct.tsc2007* %37, %struct.tsc2007_platform_data* %38, %struct.i2c_device_id* %39)
  store i32 %40, i32* %9, align 4
  br label %45

41:                                               ; preds = %32
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = load %struct.tsc2007*, %struct.tsc2007** %7, align 8
  %44 = call i32 @tsc2007_probe_dt(%struct.i2c_client* %42, %struct.tsc2007* %43)
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %41, %35
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %3, align 4
  br label %231

50:                                               ; preds = %45
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 0
  %53 = call %struct.input_dev* @devm_input_allocate_device(%struct.TYPE_13__* %52)
  store %struct.input_dev* %53, %struct.input_dev** %8, align 8
  %54 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %55 = icmp ne %struct.input_dev* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %231

59:                                               ; preds = %50
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = load %struct.tsc2007*, %struct.tsc2007** %7, align 8
  %62 = call i32 @i2c_set_clientdata(%struct.i2c_client* %60, %struct.tsc2007* %61)
  %63 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %64 = load %struct.tsc2007*, %struct.tsc2007** %7, align 8
  %65 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %64, i32 0, i32 8
  store %struct.i2c_client* %63, %struct.i2c_client** %65, align 8
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.tsc2007*, %struct.tsc2007** %7, align 8
  %70 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %72 = load %struct.tsc2007*, %struct.tsc2007** %7, align 8
  %73 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %72, i32 0, i32 7
  store %struct.input_dev* %71, %struct.input_dev** %73, align 8
  %74 = load %struct.tsc2007*, %struct.tsc2007** %7, align 8
  %75 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %74, i32 0, i32 6
  %76 = call i32 @init_waitqueue_head(i32* %75)
  %77 = load %struct.tsc2007*, %struct.tsc2007** %7, align 8
  %78 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %77, i32 0, i32 5
  %79 = call i32 @mutex_init(i32* %78)
  %80 = load %struct.tsc2007*, %struct.tsc2007** %7, align 8
  %81 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %84 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %83, i32 0, i32 0
  %85 = call i8* @dev_name(%struct.TYPE_13__* %84)
  %86 = call i32 @snprintf(i32 %82, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %85)
  %87 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %88 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %87, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %88, align 8
  %89 = load %struct.tsc2007*, %struct.tsc2007** %7, align 8
  %90 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %93 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @BUS_I2C, align 4
  %95 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %96 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 8
  %98 = load i32, i32* @tsc2007_open, align 4
  %99 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %100 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @tsc2007_close, align 4
  %102 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %103 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 8
  %104 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %105 = load %struct.tsc2007*, %struct.tsc2007** %7, align 8
  %106 = call i32 @input_set_drvdata(%struct.input_dev* %104, %struct.tsc2007* %105)
  %107 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %108 = load i32, i32* @EV_KEY, align 4
  %109 = load i32, i32* @BTN_TOUCH, align 4
  %110 = call i32 @input_set_capability(%struct.input_dev* %107, i32 %108, i32 %109)
  %111 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %112 = load i32, i32* @ABS_X, align 4
  %113 = load i32, i32* @MAX_12BIT, align 4
  %114 = load %struct.tsc2007*, %struct.tsc2007** %7, align 8
  %115 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @input_set_abs_params(%struct.input_dev* %111, i32 %112, i32 0, i32 %113, i32 %116, i32 0)
  %118 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %119 = load i32, i32* @ABS_Y, align 4
  %120 = load i32, i32* @MAX_12BIT, align 4
  %121 = load %struct.tsc2007*, %struct.tsc2007** %7, align 8
  %122 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @input_set_abs_params(%struct.input_dev* %118, i32 %119, i32 0, i32 %120, i32 %123, i32 0)
  %125 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %126 = load i32, i32* @ABS_PRESSURE, align 4
  %127 = load i32, i32* @MAX_12BIT, align 4
  %128 = load %struct.tsc2007*, %struct.tsc2007** %7, align 8
  %129 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @input_set_abs_params(%struct.input_dev* %125, i32 %126, i32 0, i32 %127, i32 %130, i32 0)
  %132 = load %struct.tsc2007_platform_data*, %struct.tsc2007_platform_data** %6, align 8
  %133 = icmp ne %struct.tsc2007_platform_data* %132, null
  br i1 %133, label %134, label %166

134:                                              ; preds = %59
  %135 = load %struct.tsc2007_platform_data*, %struct.tsc2007_platform_data** %6, align 8
  %136 = getelementptr inbounds %struct.tsc2007_platform_data, %struct.tsc2007_platform_data* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %155

139:                                              ; preds = %134
  %140 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %141 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %140, i32 0, i32 0
  %142 = load i32, i32* @tsc2007_call_exit_platform_hw, align 4
  %143 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %144 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %143, i32 0, i32 0
  %145 = call i32 @devm_add_action(%struct.TYPE_13__* %141, i32 %142, %struct.TYPE_13__* %144)
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %139
  %149 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %150 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %149, i32 0, i32 0
  %151 = load i32, i32* %9, align 4
  %152 = call i32 (%struct.TYPE_13__*, i8*, i32, ...) @dev_err(%struct.TYPE_13__* %150, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* %9, align 4
  store i32 %153, i32* %3, align 4
  br label %231

154:                                              ; preds = %139
  br label %155

155:                                              ; preds = %154, %134
  %156 = load %struct.tsc2007_platform_data*, %struct.tsc2007_platform_data** %6, align 8
  %157 = getelementptr inbounds %struct.tsc2007_platform_data, %struct.tsc2007_platform_data* %156, i32 0, i32 0
  %158 = load i32 (...)*, i32 (...)** %157, align 8
  %159 = icmp ne i32 (...)* %158, null
  br i1 %159, label %160, label %165

160:                                              ; preds = %155
  %161 = load %struct.tsc2007_platform_data*, %struct.tsc2007_platform_data** %6, align 8
  %162 = getelementptr inbounds %struct.tsc2007_platform_data, %struct.tsc2007_platform_data* %161, i32 0, i32 0
  %163 = load i32 (...)*, i32 (...)** %162, align 8
  %164 = call i32 (...) %163()
  br label %165

165:                                              ; preds = %160, %155
  br label %166

166:                                              ; preds = %165, %59
  %167 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %168 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %167, i32 0, i32 0
  %169 = load %struct.tsc2007*, %struct.tsc2007** %7, align 8
  %170 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @tsc2007_hard_irq, align 4
  %173 = load i32, i32* @tsc2007_soft_irq, align 4
  %174 = load i32, i32* @IRQF_ONESHOT, align 4
  %175 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %176 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.tsc2007*, %struct.tsc2007** %7, align 8
  %182 = call i32 @devm_request_threaded_irq(%struct.TYPE_13__* %168, i32 %171, i32 %172, i32 %173, i32 %174, i32 %180, %struct.tsc2007* %181)
  store i32 %182, i32* %9, align 4
  %183 = load i32, i32* %9, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %194

185:                                              ; preds = %166
  %186 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %187 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %186, i32 0, i32 0
  %188 = load %struct.tsc2007*, %struct.tsc2007** %7, align 8
  %189 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* %9, align 4
  %192 = call i32 (%struct.TYPE_13__*, i8*, i32, ...) @dev_err(%struct.TYPE_13__* %187, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %190, i32 %191)
  %193 = load i32, i32* %9, align 4
  store i32 %193, i32* %3, align 4
  br label %231

194:                                              ; preds = %166
  %195 = load %struct.tsc2007*, %struct.tsc2007** %7, align 8
  %196 = call i32 @tsc2007_stop(%struct.tsc2007* %195)
  %197 = load %struct.tsc2007*, %struct.tsc2007** %7, align 8
  %198 = load i32, i32* @PWRDOWN, align 4
  %199 = call i32 @tsc2007_xfer(%struct.tsc2007* %197, i32 %198)
  store i32 %199, i32* %9, align 4
  %200 = load i32, i32* %9, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %194
  %203 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %204 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %203, i32 0, i32 0
  %205 = load i32, i32* %9, align 4
  %206 = call i32 (%struct.TYPE_13__*, i8*, i32, ...) @dev_err(%struct.TYPE_13__* %204, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %205)
  %207 = load i32, i32* %9, align 4
  store i32 %207, i32* %3, align 4
  br label %231

208:                                              ; preds = %194
  %209 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %210 = call i32 @input_register_device(%struct.input_dev* %209)
  store i32 %210, i32* %9, align 4
  %211 = load i32, i32* %9, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %208
  %214 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %215 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %214, i32 0, i32 0
  %216 = load i32, i32* %9, align 4
  %217 = call i32 (%struct.TYPE_13__*, i8*, i32, ...) @dev_err(%struct.TYPE_13__* %215, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %216)
  %218 = load i32, i32* %9, align 4
  store i32 %218, i32* %3, align 4
  br label %231

219:                                              ; preds = %208
  %220 = load %struct.tsc2007*, %struct.tsc2007** %7, align 8
  %221 = call i32 @tsc2007_iio_configure(%struct.tsc2007* %220)
  store i32 %221, i32* %9, align 4
  %222 = load i32, i32* %9, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %230

224:                                              ; preds = %219
  %225 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %226 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %225, i32 0, i32 0
  %227 = load i32, i32* %9, align 4
  %228 = call i32 (%struct.TYPE_13__*, i8*, i32, ...) @dev_err(%struct.TYPE_13__* %226, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %227)
  %229 = load i32, i32* %9, align 4
  store i32 %229, i32* %3, align 4
  br label %231

230:                                              ; preds = %219
  store i32 0, i32* %3, align 4
  br label %231

231:                                              ; preds = %230, %224, %213, %202, %185, %148, %56, %48, %29, %19
  %232 = load i32, i32* %3, align 4
  ret i32 %232
}

declare dso_local %struct.tsc2007_platform_data* @dev_get_platdata(%struct.TYPE_13__*) #1

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.tsc2007* @devm_kzalloc(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @tsc2007_probe_pdev(%struct.i2c_client*, %struct.tsc2007*, %struct.tsc2007_platform_data*, %struct.i2c_device_id*) #1

declare dso_local i32 @tsc2007_probe_dt(%struct.i2c_client*, %struct.tsc2007*) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.TYPE_13__*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.tsc2007*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @dev_name(%struct.TYPE_13__*) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.tsc2007*) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @devm_add_action(%struct.TYPE_13__*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*, i32, ...) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_13__*, i32, i32, i32, i32, i32, %struct.tsc2007*) #1

declare dso_local i32 @tsc2007_stop(%struct.tsc2007*) #1

declare dso_local i32 @tsc2007_xfer(%struct.tsc2007*, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @tsc2007_iio_configure(%struct.tsc2007*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
