; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_zforce_ts.c_zforce_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_zforce_ts.c_zforce_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.zforce_ts_platdata = type { i32, i32 }
%struct.zforce_ts = type { i32, i32, %struct.input_dev*, i32, %struct.i2c_client*, %struct.zforce_ts_platdata*, i32, i32, %struct.zforce_ts_platdata*, %struct.zforce_ts_platdata*, %struct.zforce_ts_platdata* }
%struct.input_dev = type { i8*, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to request reset GPIO: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"failed to request interrupt GPIO: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@zforce_reset = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"failed to register reset action, %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"%s/input0\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"could not allocate input device\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Neonode zForce touchscreen\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@zforce_input_open = common dso_local global i32 0, align 4
@zforce_input_close = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_SYN = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@ZFORCE_MAX_AREA = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MINOR = common dso_local global i32 0, align 4
@ABS_MT_ORIENTATION = common dso_local global i32 0, align 4
@ZFORCE_REPORT_POINTS = common dso_local global i32 0, align 4
@INPUT_MT_DIRECT = common dso_local global i32 0, align 4
@zforce_irq = common dso_local global i32 0, align 4
@zforce_irq_thread = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"irq %d request failed\0A\00", align 1
@NOTIFICATION_BOOTCOMPLETE = common dso_local global i32 0, align 4
@WAIT_TIMEOUT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [24 x i8] c"bootcomplete timed out\0A\00", align 1
@COMMAND_INITIALIZE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [26 x i8] c"unable to initialize, %d\0A\00", align 1
@COMMAND_STATUS = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [25 x i8] c"couldn't get status, %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"could not register input device, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @zforce_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zforce_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.zforce_ts_platdata*, align 8
  %7 = alloca %struct.zforce_ts*, align 8
  %8 = alloca %struct.input_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = call %struct.zforce_ts_platdata* @dev_get_platdata(i32* %11)
  store %struct.zforce_ts_platdata* %12, %struct.zforce_ts_platdata** %6, align 8
  %13 = load %struct.zforce_ts_platdata*, %struct.zforce_ts_platdata** %6, align 8
  %14 = icmp ne %struct.zforce_ts_platdata* %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %2
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 1
  %18 = call %struct.zforce_ts_platdata* @zforce_parse_dt(i32* %17)
  store %struct.zforce_ts_platdata* %18, %struct.zforce_ts_platdata** %6, align 8
  %19 = load %struct.zforce_ts_platdata*, %struct.zforce_ts_platdata** %6, align 8
  %20 = call i64 @IS_ERR(%struct.zforce_ts_platdata* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load %struct.zforce_ts_platdata*, %struct.zforce_ts_platdata** %6, align 8
  %24 = call i32 @PTR_ERR(%struct.zforce_ts_platdata* %23)
  store i32 %24, i32* %3, align 4
  br label %387

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25, %2
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 1
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.zforce_ts* @devm_kzalloc(i32* %28, i32 72, i32 %29)
  store %struct.zforce_ts* %30, %struct.zforce_ts** %7, align 8
  %31 = load %struct.zforce_ts*, %struct.zforce_ts** %7, align 8
  %32 = icmp ne %struct.zforce_ts* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %387

36:                                               ; preds = %26
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 1
  %39 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %40 = call i8* @devm_gpiod_get_optional(i32* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = bitcast i8* %40 to %struct.zforce_ts_platdata*
  %42 = load %struct.zforce_ts*, %struct.zforce_ts** %7, align 8
  %43 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %42, i32 0, i32 9
  store %struct.zforce_ts_platdata* %41, %struct.zforce_ts_platdata** %43, align 8
  %44 = load %struct.zforce_ts*, %struct.zforce_ts** %7, align 8
  %45 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %44, i32 0, i32 9
  %46 = load %struct.zforce_ts_platdata*, %struct.zforce_ts_platdata** %45, align 8
  %47 = call i64 @IS_ERR(%struct.zforce_ts_platdata* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %36
  %50 = load %struct.zforce_ts*, %struct.zforce_ts** %7, align 8
  %51 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %50, i32 0, i32 9
  %52 = load %struct.zforce_ts_platdata*, %struct.zforce_ts_platdata** %51, align 8
  %53 = call i32 @PTR_ERR(%struct.zforce_ts_platdata* %52)
  store i32 %53, i32* %9, align 4
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 1
  %56 = load i32, i32* %9, align 4
  %57 = call i32 (i32*, i8*, ...) @dev_err(i32* %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %3, align 4
  br label %387

59:                                               ; preds = %36
  %60 = load %struct.zforce_ts*, %struct.zforce_ts** %7, align 8
  %61 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %60, i32 0, i32 9
  %62 = load %struct.zforce_ts_platdata*, %struct.zforce_ts_platdata** %61, align 8
  %63 = icmp ne %struct.zforce_ts_platdata* %62, null
  br i1 %63, label %64, label %88

64:                                               ; preds = %59
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %65, i32 0, i32 1
  %67 = load i32, i32* @GPIOD_IN, align 4
  %68 = call i8* @devm_gpiod_get_optional(i32* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = bitcast i8* %68 to %struct.zforce_ts_platdata*
  %70 = load %struct.zforce_ts*, %struct.zforce_ts** %7, align 8
  %71 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %70, i32 0, i32 10
  store %struct.zforce_ts_platdata* %69, %struct.zforce_ts_platdata** %71, align 8
  %72 = load %struct.zforce_ts*, %struct.zforce_ts** %7, align 8
  %73 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %72, i32 0, i32 10
  %74 = load %struct.zforce_ts_platdata*, %struct.zforce_ts_platdata** %73, align 8
  %75 = call i64 @IS_ERR(%struct.zforce_ts_platdata* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %64
  %78 = load %struct.zforce_ts*, %struct.zforce_ts** %7, align 8
  %79 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %78, i32 0, i32 10
  %80 = load %struct.zforce_ts_platdata*, %struct.zforce_ts_platdata** %79, align 8
  %81 = call i32 @PTR_ERR(%struct.zforce_ts_platdata* %80)
  store i32 %81, i32* %9, align 4
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %82, i32 0, i32 1
  %84 = load i32, i32* %9, align 4
  %85 = call i32 (i32*, i8*, ...) @dev_err(i32* %83, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %3, align 4
  br label %387

87:                                               ; preds = %64
  br label %135

88:                                               ; preds = %59
  %89 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %90 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %89, i32 0, i32 1
  %91 = load i32, i32* @GPIOD_IN, align 4
  %92 = call i8* @devm_gpiod_get_index(i32* %90, i32* null, i32 0, i32 %91)
  %93 = bitcast i8* %92 to %struct.zforce_ts_platdata*
  %94 = load %struct.zforce_ts*, %struct.zforce_ts** %7, align 8
  %95 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %94, i32 0, i32 10
  store %struct.zforce_ts_platdata* %93, %struct.zforce_ts_platdata** %95, align 8
  %96 = load %struct.zforce_ts*, %struct.zforce_ts** %7, align 8
  %97 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %96, i32 0, i32 10
  %98 = load %struct.zforce_ts_platdata*, %struct.zforce_ts_platdata** %97, align 8
  %99 = call i64 @IS_ERR(%struct.zforce_ts_platdata* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %88
  %102 = load %struct.zforce_ts*, %struct.zforce_ts** %7, align 8
  %103 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %102, i32 0, i32 10
  %104 = load %struct.zforce_ts_platdata*, %struct.zforce_ts_platdata** %103, align 8
  %105 = call i32 @PTR_ERR(%struct.zforce_ts_platdata* %104)
  store i32 %105, i32* %9, align 4
  %106 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %107 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %106, i32 0, i32 1
  %108 = load i32, i32* %9, align 4
  %109 = call i32 (i32*, i8*, ...) @dev_err(i32* %107, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %3, align 4
  br label %387

111:                                              ; preds = %88
  %112 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %113 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %112, i32 0, i32 1
  %114 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %115 = call i8* @devm_gpiod_get_index(i32* %113, i32* null, i32 1, i32 %114)
  %116 = bitcast i8* %115 to %struct.zforce_ts_platdata*
  %117 = load %struct.zforce_ts*, %struct.zforce_ts** %7, align 8
  %118 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %117, i32 0, i32 9
  store %struct.zforce_ts_platdata* %116, %struct.zforce_ts_platdata** %118, align 8
  %119 = load %struct.zforce_ts*, %struct.zforce_ts** %7, align 8
  %120 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %119, i32 0, i32 9
  %121 = load %struct.zforce_ts_platdata*, %struct.zforce_ts_platdata** %120, align 8
  %122 = call i64 @IS_ERR(%struct.zforce_ts_platdata* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %111
  %125 = load %struct.zforce_ts*, %struct.zforce_ts** %7, align 8
  %126 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %125, i32 0, i32 9
  %127 = load %struct.zforce_ts_platdata*, %struct.zforce_ts_platdata** %126, align 8
  %128 = call i32 @PTR_ERR(%struct.zforce_ts_platdata* %127)
  store i32 %128, i32* %9, align 4
  %129 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %130 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %129, i32 0, i32 1
  %131 = load i32, i32* %9, align 4
  %132 = call i32 (i32*, i8*, ...) @dev_err(i32* %130, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* %9, align 4
  store i32 %133, i32* %3, align 4
  br label %387

134:                                              ; preds = %111
  br label %135

135:                                              ; preds = %134, %87
  %136 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %137 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %136, i32 0, i32 1
  %138 = call %struct.zforce_ts_platdata* @devm_regulator_get_optional(i32* %137, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %139 = load %struct.zforce_ts*, %struct.zforce_ts** %7, align 8
  %140 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %139, i32 0, i32 8
  store %struct.zforce_ts_platdata* %138, %struct.zforce_ts_platdata** %140, align 8
  %141 = load %struct.zforce_ts*, %struct.zforce_ts** %7, align 8
  %142 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %141, i32 0, i32 8
  %143 = load %struct.zforce_ts_platdata*, %struct.zforce_ts_platdata** %142, align 8
  %144 = call i64 @IS_ERR(%struct.zforce_ts_platdata* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %158

146:                                              ; preds = %135
  %147 = load %struct.zforce_ts*, %struct.zforce_ts** %7, align 8
  %148 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %147, i32 0, i32 8
  %149 = load %struct.zforce_ts_platdata*, %struct.zforce_ts_platdata** %148, align 8
  %150 = call i32 @PTR_ERR(%struct.zforce_ts_platdata* %149)
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* @EPROBE_DEFER, align 4
  %153 = sub nsw i32 0, %152
  %154 = icmp eq i32 %151, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %146
  %156 = load i32, i32* %9, align 4
  store i32 %156, i32* %3, align 4
  br label %387

157:                                              ; preds = %146
  br label %169

158:                                              ; preds = %135
  %159 = load %struct.zforce_ts*, %struct.zforce_ts** %7, align 8
  %160 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %159, i32 0, i32 8
  %161 = load %struct.zforce_ts_platdata*, %struct.zforce_ts_platdata** %160, align 8
  %162 = call i32 @regulator_enable(%struct.zforce_ts_platdata* %161)
  store i32 %162, i32* %9, align 4
  %163 = load i32, i32* %9, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %158
  %166 = load i32, i32* %9, align 4
  store i32 %166, i32* %3, align 4
  br label %387

167:                                              ; preds = %158
  %168 = call i32 @udelay(i32 100)
  br label %169

169:                                              ; preds = %167, %157
  %170 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %171 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %170, i32 0, i32 1
  %172 = load i32, i32* @zforce_reset, align 4
  %173 = load %struct.zforce_ts*, %struct.zforce_ts** %7, align 8
  %174 = call i32 @devm_add_action(i32* %171, i32 %172, %struct.zforce_ts* %173)
  store i32 %174, i32* %9, align 4
  %175 = load i32, i32* %9, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %194

177:                                              ; preds = %169
  %178 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %179 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %178, i32 0, i32 1
  %180 = load i32, i32* %9, align 4
  %181 = call i32 (i32*, i8*, ...) @dev_err(i32* %179, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %180)
  %182 = load %struct.zforce_ts*, %struct.zforce_ts** %7, align 8
  %183 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %182, i32 0, i32 8
  %184 = load %struct.zforce_ts_platdata*, %struct.zforce_ts_platdata** %183, align 8
  %185 = call i64 @IS_ERR(%struct.zforce_ts_platdata* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %192, label %187

187:                                              ; preds = %177
  %188 = load %struct.zforce_ts*, %struct.zforce_ts** %7, align 8
  %189 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %188, i32 0, i32 8
  %190 = load %struct.zforce_ts_platdata*, %struct.zforce_ts_platdata** %189, align 8
  %191 = call i32 @regulator_disable(%struct.zforce_ts_platdata* %190)
  br label %192

192:                                              ; preds = %187, %177
  %193 = load i32, i32* %9, align 4
  store i32 %193, i32* %3, align 4
  br label %387

194:                                              ; preds = %169
  %195 = load %struct.zforce_ts*, %struct.zforce_ts** %7, align 8
  %196 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %199 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %198, i32 0, i32 1
  %200 = call i8* @dev_name(i32* %199)
  %201 = call i32 @snprintf(i32 %197, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %200)
  %202 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %203 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %202, i32 0, i32 1
  %204 = call %struct.input_dev* @devm_input_allocate_device(i32* %203)
  store %struct.input_dev* %204, %struct.input_dev** %8, align 8
  %205 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %206 = icmp ne %struct.input_dev* %205, null
  br i1 %206, label %213, label %207

207:                                              ; preds = %194
  %208 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %209 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %208, i32 0, i32 1
  %210 = call i32 (i32*, i8*, ...) @dev_err(i32* %209, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %211 = load i32, i32* @ENOMEM, align 4
  %212 = sub nsw i32 0, %211
  store i32 %212, i32* %3, align 4
  br label %387

213:                                              ; preds = %194
  %214 = load %struct.zforce_ts*, %struct.zforce_ts** %7, align 8
  %215 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %214, i32 0, i32 7
  %216 = call i32 @mutex_init(i32* %215)
  %217 = load %struct.zforce_ts*, %struct.zforce_ts** %7, align 8
  %218 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %217, i32 0, i32 6
  %219 = call i32 @mutex_init(i32* %218)
  %220 = load %struct.zforce_ts_platdata*, %struct.zforce_ts_platdata** %6, align 8
  %221 = load %struct.zforce_ts*, %struct.zforce_ts** %7, align 8
  %222 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %221, i32 0, i32 5
  store %struct.zforce_ts_platdata* %220, %struct.zforce_ts_platdata** %222, align 8
  %223 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %224 = load %struct.zforce_ts*, %struct.zforce_ts** %7, align 8
  %225 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %224, i32 0, i32 4
  store %struct.i2c_client* %223, %struct.i2c_client** %225, align 8
  %226 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %227 = load %struct.zforce_ts*, %struct.zforce_ts** %7, align 8
  %228 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %227, i32 0, i32 2
  store %struct.input_dev* %226, %struct.input_dev** %228, align 8
  %229 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %230 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %229, i32 0, i32 0
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8** %230, align 8
  %231 = load %struct.zforce_ts*, %struct.zforce_ts** %7, align 8
  %232 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %235 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %234, i32 0, i32 5
  store i32 %233, i32* %235, align 8
  %236 = load i32, i32* @BUS_I2C, align 4
  %237 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %238 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %237, i32 0, i32 4
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i32 0, i32 0
  store i32 %236, i32* %239, align 4
  %240 = load i32, i32* @zforce_input_open, align 4
  %241 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %242 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %241, i32 0, i32 3
  store i32 %240, i32* %242, align 8
  %243 = load i32, i32* @zforce_input_close, align 4
  %244 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %245 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %244, i32 0, i32 2
  store i32 %243, i32* %245, align 4
  %246 = load i32, i32* @EV_KEY, align 4
  %247 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %248 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @__set_bit(i32 %246, i32 %249)
  %251 = load i32, i32* @EV_SYN, align 4
  %252 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %253 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @__set_bit(i32 %251, i32 %254)
  %256 = load i32, i32* @EV_ABS, align 4
  %257 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %258 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 8
  %260 = call i32 @__set_bit(i32 %256, i32 %259)
  %261 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %262 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %263 = load %struct.zforce_ts_platdata*, %struct.zforce_ts_platdata** %6, align 8
  %264 = getelementptr inbounds %struct.zforce_ts_platdata, %struct.zforce_ts_platdata* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @input_set_abs_params(%struct.input_dev* %261, i32 %262, i32 0, i32 %265, i32 0, i32 0)
  %267 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %268 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %269 = load %struct.zforce_ts_platdata*, %struct.zforce_ts_platdata** %6, align 8
  %270 = getelementptr inbounds %struct.zforce_ts_platdata, %struct.zforce_ts_platdata* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @input_set_abs_params(%struct.input_dev* %267, i32 %268, i32 0, i32 %271, i32 0, i32 0)
  %273 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %274 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %275 = load i32, i32* @ZFORCE_MAX_AREA, align 4
  %276 = call i32 @input_set_abs_params(%struct.input_dev* %273, i32 %274, i32 0, i32 %275, i32 0, i32 0)
  %277 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %278 = load i32, i32* @ABS_MT_TOUCH_MINOR, align 4
  %279 = load i32, i32* @ZFORCE_MAX_AREA, align 4
  %280 = call i32 @input_set_abs_params(%struct.input_dev* %277, i32 %278, i32 0, i32 %279, i32 0, i32 0)
  %281 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %282 = load i32, i32* @ABS_MT_ORIENTATION, align 4
  %283 = call i32 @input_set_abs_params(%struct.input_dev* %281, i32 %282, i32 0, i32 1, i32 0, i32 0)
  %284 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %285 = load i32, i32* @ZFORCE_REPORT_POINTS, align 4
  %286 = load i32, i32* @INPUT_MT_DIRECT, align 4
  %287 = call i32 @input_mt_init_slots(%struct.input_dev* %284, i32 %285, i32 %286)
  %288 = load %struct.zforce_ts*, %struct.zforce_ts** %7, align 8
  %289 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %288, i32 0, i32 2
  %290 = load %struct.input_dev*, %struct.input_dev** %289, align 8
  %291 = load %struct.zforce_ts*, %struct.zforce_ts** %7, align 8
  %292 = call i32 @input_set_drvdata(%struct.input_dev* %290, %struct.zforce_ts* %291)
  %293 = load %struct.zforce_ts*, %struct.zforce_ts** %7, align 8
  %294 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %293, i32 0, i32 0
  %295 = call i32 @init_completion(i32* %294)
  %296 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %297 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %296, i32 0, i32 1
  %298 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %299 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* @zforce_irq, align 4
  %302 = load i32, i32* @zforce_irq_thread, align 4
  %303 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %304 = load i32, i32* @IRQF_ONESHOT, align 4
  %305 = or i32 %303, %304
  %306 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %307 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %306, i32 0, i32 0
  %308 = load i8*, i8** %307, align 8
  %309 = load %struct.zforce_ts*, %struct.zforce_ts** %7, align 8
  %310 = call i32 @devm_request_threaded_irq(i32* %297, i32 %300, i32 %301, i32 %302, i32 %305, i8* %308, %struct.zforce_ts* %309)
  store i32 %310, i32* %9, align 4
  %311 = load i32, i32* %9, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %321

313:                                              ; preds = %213
  %314 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %315 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %314, i32 0, i32 1
  %316 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %317 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = call i32 (i32*, i8*, ...) @dev_err(i32* %315, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %318)
  %320 = load i32, i32* %9, align 4
  store i32 %320, i32* %3, align 4
  br label %387

321:                                              ; preds = %213
  %322 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %323 = load %struct.zforce_ts*, %struct.zforce_ts** %7, align 8
  %324 = call i32 @i2c_set_clientdata(%struct.i2c_client* %322, %struct.zforce_ts* %323)
  %325 = load %struct.zforce_ts*, %struct.zforce_ts** %7, align 8
  %326 = call i32 @zforce_reset_deassert(%struct.zforce_ts* %325)
  %327 = load i32, i32* @NOTIFICATION_BOOTCOMPLETE, align 4
  %328 = load %struct.zforce_ts*, %struct.zforce_ts** %7, align 8
  %329 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %328, i32 0, i32 1
  store i32 %327, i32* %329, align 4
  %330 = load %struct.zforce_ts*, %struct.zforce_ts** %7, align 8
  %331 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %330, i32 0, i32 0
  %332 = load i32, i32* @WAIT_TIMEOUT, align 4
  %333 = call i64 @wait_for_completion_timeout(i32* %331, i32 %332)
  %334 = icmp eq i64 %333, 0
  br i1 %334, label %335, label %339

335:                                              ; preds = %321
  %336 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %337 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %336, i32 0, i32 1
  %338 = call i32 @dev_warn(i32* %337, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  br label %339

339:                                              ; preds = %335, %321
  %340 = load %struct.zforce_ts*, %struct.zforce_ts** %7, align 8
  %341 = load i32, i32* @COMMAND_INITIALIZE, align 4
  %342 = call i32 @zforce_command_wait(%struct.zforce_ts* %340, i32 %341)
  store i32 %342, i32* %9, align 4
  %343 = load i32, i32* %9, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %351

345:                                              ; preds = %339
  %346 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %347 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %346, i32 0, i32 1
  %348 = load i32, i32* %9, align 4
  %349 = call i32 (i32*, i8*, ...) @dev_err(i32* %347, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i32 %348)
  %350 = load i32, i32* %9, align 4
  store i32 %350, i32* %3, align 4
  br label %387

351:                                              ; preds = %339
  %352 = load %struct.zforce_ts*, %struct.zforce_ts** %7, align 8
  %353 = load i32, i32* @COMMAND_STATUS, align 4
  %354 = call i32 @zforce_command_wait(%struct.zforce_ts* %352, i32 %353)
  store i32 %354, i32* %9, align 4
  %355 = load i32, i32* %9, align 4
  %356 = icmp slt i32 %355, 0
  br i1 %356, label %357, label %365

357:                                              ; preds = %351
  %358 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %359 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %358, i32 0, i32 1
  %360 = load i32, i32* %9, align 4
  %361 = call i32 (i32*, i8*, ...) @dev_err(i32* %359, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 %360)
  %362 = load %struct.zforce_ts*, %struct.zforce_ts** %7, align 8
  %363 = call i32 @zforce_stop(%struct.zforce_ts* %362)
  %364 = load i32, i32* %9, align 4
  store i32 %364, i32* %3, align 4
  br label %387

365:                                              ; preds = %351
  %366 = load %struct.zforce_ts*, %struct.zforce_ts** %7, align 8
  %367 = call i32 @zforce_stop(%struct.zforce_ts* %366)
  store i32 %367, i32* %9, align 4
  %368 = load i32, i32* %9, align 4
  %369 = icmp slt i32 %368, 0
  br i1 %369, label %370, label %372

370:                                              ; preds = %365
  %371 = load i32, i32* %9, align 4
  store i32 %371, i32* %3, align 4
  br label %387

372:                                              ; preds = %365
  %373 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %374 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %373, i32 0, i32 1
  %375 = call i32 @device_set_wakeup_capable(i32* %374, i32 1)
  %376 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %377 = call i32 @input_register_device(%struct.input_dev* %376)
  store i32 %377, i32* %9, align 4
  %378 = load i32, i32* %9, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %386

380:                                              ; preds = %372
  %381 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %382 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %381, i32 0, i32 1
  %383 = load i32, i32* %9, align 4
  %384 = call i32 (i32*, i8*, ...) @dev_err(i32* %382, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0), i32 %383)
  %385 = load i32, i32* %9, align 4
  store i32 %385, i32* %3, align 4
  br label %387

386:                                              ; preds = %372
  store i32 0, i32* %3, align 4
  br label %387

387:                                              ; preds = %386, %380, %370, %357, %345, %313, %207, %192, %165, %155, %124, %101, %77, %49, %33, %22
  %388 = load i32, i32* %3, align 4
  ret i32 %388
}

declare dso_local %struct.zforce_ts_platdata* @dev_get_platdata(i32*) #1

declare dso_local %struct.zforce_ts_platdata* @zforce_parse_dt(i32*) #1

declare dso_local i64 @IS_ERR(%struct.zforce_ts_platdata*) #1

declare dso_local i32 @PTR_ERR(%struct.zforce_ts_platdata*) #1

declare dso_local %struct.zforce_ts* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i8* @devm_gpiod_get_optional(i32*, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i8* @devm_gpiod_get_index(i32*, i32*, i32, i32) #1

declare dso_local %struct.zforce_ts_platdata* @devm_regulator_get_optional(i32*, i8*) #1

declare dso_local i32 @regulator_enable(%struct.zforce_ts_platdata*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @devm_add_action(i32*, i32, %struct.zforce_ts*) #1

declare dso_local i32 @regulator_disable(%struct.zforce_ts_platdata*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_mt_init_slots(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.zforce_ts*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32, i32, i32, i8*, %struct.zforce_ts*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.zforce_ts*) #1

declare dso_local i32 @zforce_reset_deassert(%struct.zforce_ts*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @zforce_command_wait(%struct.zforce_ts*, i32) #1

declare dso_local i32 @zforce_stop(%struct.zforce_ts*) #1

declare dso_local i32 @device_set_wakeup_capable(i32*, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
