; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_ak8974.c_ak8974_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_ak8974.c_ak8974_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.iio_dev = type { i32, i32, i32, i32*, i32, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.ak8974 = type { i32, i32, %struct.TYPE_8__*, i32, i32, i32, i32, %struct.i2c_client* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"mount-matrix\00", align 1
@ak8974_reg_avdd = common dso_local global i32 0, align 4
@ak8974_reg_dvdd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"cannot get regulators\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"cannot enable regulators\0A\00", align 1
@ak8974_regmap_config = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to allocate register map\0A\00", align 1
@AK8974_PWR_ON = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"could not power on\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"neither AK8974 nor AMI30x found\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"selftest failed (continuing anyway)\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"AK8974 reset failed\0A\00", align 1
@AK8974_AUTOSUSPEND_DELAY = common dso_local global i32 0, align 4
@ak8974_channels = common dso_local global %struct.TYPE_8__* null, align 8
@ak8974_info = common dso_local global i32 0, align 4
@ak8974_scan_masks = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ak8974_handle_trigger = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"triggered buffer setup failed\0A\00", align 1
@IRQF_TRIGGER_RISING = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [29 x i8] c"enable rising edge DRDY IRQ\0A\00", align 1
@IRQF_TRIGGER_FALLING = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [30 x i8] c"enable falling edge DRDY IRQ\0A\00", align 1
@IRQF_ONESHOT = common dso_local global i64 0, align 8
@IRQF_SHARED = common dso_local global i64 0, align 8
@ak8974_drdy_irq = common dso_local global i32 0, align 4
@ak8974_drdy_irq_thread = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [53 x i8] c"unable to request DRDY IRQ - proceeding without IRQ\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"device register failed\0A\00", align 1
@AK8974_PWR_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ak8974_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak8974_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.ak8974*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 1
  %16 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %15, i32 40)
  store %struct.iio_dev* %16, %struct.iio_dev** %6, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %18 = icmp eq %struct.iio_dev* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %286

22:                                               ; preds = %2
  %23 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %24 = call %struct.ak8974* @iio_priv(%struct.iio_dev* %23)
  store %struct.ak8974* %24, %struct.ak8974** %7, align 8
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %27 = call i32 @i2c_set_clientdata(%struct.i2c_client* %25, %struct.iio_dev* %26)
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = load %struct.ak8974*, %struct.ak8974** %7, align 8
  %30 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %29, i32 0, i32 7
  store %struct.i2c_client* %28, %struct.i2c_client** %30, align 8
  %31 = load %struct.ak8974*, %struct.ak8974** %7, align 8
  %32 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %31, i32 0, i32 6
  %33 = call i32 @mutex_init(i32* %32)
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 1
  %36 = load %struct.ak8974*, %struct.ak8974** %7, align 8
  %37 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %36, i32 0, i32 5
  %38 = call i32 @iio_read_mount_matrix(i32* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %22
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %3, align 4
  br label %286

43:                                               ; preds = %22
  %44 = load i32, i32* @ak8974_reg_avdd, align 4
  %45 = load %struct.ak8974*, %struct.ak8974** %7, align 8
  %46 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %45, i32 0, i32 2
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store i32 %44, i32* %49, align 4
  %50 = load i32, i32* @ak8974_reg_dvdd, align 4
  %51 = load %struct.ak8974*, %struct.ak8974** %7, align 8
  %52 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %51, i32 0, i32 2
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i64 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i32 %50, i32* %55, align 4
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %56, i32 0, i32 1
  %58 = load %struct.ak8974*, %struct.ak8974** %7, align 8
  %59 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %58, i32 0, i32 2
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %60)
  %62 = load %struct.ak8974*, %struct.ak8974** %7, align 8
  %63 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %62, i32 0, i32 2
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = call i32 @devm_regulator_bulk_get(i32* %57, i32 %61, %struct.TYPE_8__* %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %43
  %69 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %70 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %69, i32 0, i32 1
  %71 = call i32 @dev_err(i32* %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %3, align 4
  br label %286

73:                                               ; preds = %43
  %74 = load %struct.ak8974*, %struct.ak8974** %7, align 8
  %75 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %74, i32 0, i32 2
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %76)
  %78 = load %struct.ak8974*, %struct.ak8974** %7, align 8
  %79 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %78, i32 0, i32 2
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = call i32 @regulator_bulk_enable(i32 %77, %struct.TYPE_8__* %80)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %73
  %85 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %86 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %85, i32 0, i32 1
  %87 = call i32 @dev_err(i32* %86, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %3, align 4
  br label %286

89:                                               ; preds = %73
  %90 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %91 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %90, i32 0, i32 1
  %92 = call i32 @pm_runtime_get_noresume(i32* %91)
  %93 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %94 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %93, i32 0, i32 1
  %95 = call i32 @pm_runtime_set_active(i32* %94)
  %96 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %97 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %96, i32 0, i32 1
  %98 = call i32 @pm_runtime_enable(i32* %97)
  %99 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %100 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %99, i32* @ak8974_regmap_config)
  %101 = load %struct.ak8974*, %struct.ak8974** %7, align 8
  %102 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 4
  %103 = load %struct.ak8974*, %struct.ak8974** %7, align 8
  %104 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @IS_ERR(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %89
  %109 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %110 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %109, i32 0, i32 1
  %111 = call i32 @dev_err(i32* %110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %112 = load %struct.ak8974*, %struct.ak8974** %7, align 8
  %113 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @PTR_ERR(i32 %114)
  store i32 %115, i32* %3, align 4
  br label %286

116:                                              ; preds = %89
  %117 = load %struct.ak8974*, %struct.ak8974** %7, align 8
  %118 = load i32, i32* @AK8974_PWR_ON, align 4
  %119 = call i32 @ak8974_set_power(%struct.ak8974* %117, i32 %118)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %124 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %123, i32 0, i32 1
  %125 = call i32 @dev_err(i32* %124, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %276

126:                                              ; preds = %116
  %127 = load %struct.ak8974*, %struct.ak8974** %7, align 8
  %128 = call i32 @ak8974_detect(%struct.ak8974* %127)
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %133 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %132, i32 0, i32 1
  %134 = call i32 @dev_err(i32* %133, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %276

135:                                              ; preds = %126
  %136 = load %struct.ak8974*, %struct.ak8974** %7, align 8
  %137 = call i32 @ak8974_selftest(%struct.ak8974* %136)
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* %10, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %142 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %141, i32 0, i32 1
  %143 = call i32 @dev_err(i32* %142, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  br label %144

144:                                              ; preds = %140, %135
  %145 = load %struct.ak8974*, %struct.ak8974** %7, align 8
  %146 = call i32 @ak8974_reset(%struct.ak8974* %145)
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %10, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %144
  %150 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %151 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %150, i32 0, i32 1
  %152 = call i32 @dev_err(i32* %151, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %276

153:                                              ; preds = %144
  %154 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %155 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %154, i32 0, i32 1
  %156 = load i32, i32* @AK8974_AUTOSUSPEND_DELAY, align 4
  %157 = call i32 @pm_runtime_set_autosuspend_delay(i32* %155, i32 %156)
  %158 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %159 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %158, i32 0, i32 1
  %160 = call i32 @pm_runtime_use_autosuspend(i32* %159)
  %161 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %162 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %161, i32 0, i32 1
  %163 = call i32 @pm_runtime_put(i32* %162)
  %164 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %165 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %164, i32 0, i32 1
  %166 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %167 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %166, i32 0, i32 6
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  store i32* %165, i32** %168, align 8
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ak8974_channels, align 8
  %170 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %171 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %170, i32 0, i32 5
  store %struct.TYPE_8__* %169, %struct.TYPE_8__** %171, align 8
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ak8974_channels, align 8
  %173 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %172)
  %174 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %175 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %174, i32 0, i32 4
  store i32 %173, i32* %175, align 8
  %176 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %177 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %176, i32 0, i32 3
  store i32* @ak8974_info, i32** %177, align 8
  %178 = load i32, i32* @ak8974_scan_masks, align 4
  %179 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %180 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 8
  %181 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %182 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %183 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %182, i32 0, i32 1
  store i32 %181, i32* %183, align 4
  %184 = load %struct.ak8974*, %struct.ak8974** %7, align 8
  %185 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %188 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %187, i32 0, i32 0
  store i32 %186, i32* %188, align 8
  %189 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %190 = load i32, i32* @ak8974_handle_trigger, align 4
  %191 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %189, i32* null, i32 %190, i32* null)
  store i32 %191, i32* %10, align 4
  %192 = load i32, i32* %10, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %153
  %195 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %196 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %195, i32 0, i32 1
  %197 = call i32 @dev_err(i32* %196, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  br label %266

198:                                              ; preds = %153
  %199 = load i32, i32* %9, align 4
  %200 = icmp sgt i32 %199, 0
  br i1 %200, label %201, label %252

201:                                              ; preds = %198
  %202 = load i32, i32* %9, align 4
  %203 = call i32 @irq_get_irq_data(i32 %202)
  %204 = call i64 @irqd_get_trigger_type(i32 %203)
  store i64 %204, i64* %8, align 8
  %205 = load i64, i64* %8, align 8
  %206 = load i64, i64* @IRQF_TRIGGER_RISING, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %212

208:                                              ; preds = %201
  %209 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %210 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %209, i32 0, i32 1
  %211 = call i32 @dev_info(i32* %210, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  br label %225

212:                                              ; preds = %201
  %213 = load i64, i64* %8, align 8
  %214 = load i64, i64* @IRQF_TRIGGER_FALLING, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %222

216:                                              ; preds = %212
  %217 = load %struct.ak8974*, %struct.ak8974** %7, align 8
  %218 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %217, i32 0, i32 0
  store i32 1, i32* %218, align 8
  %219 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %220 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %219, i32 0, i32 1
  %221 = call i32 @dev_info(i32* %220, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  br label %224

222:                                              ; preds = %212
  %223 = load i64, i64* @IRQF_TRIGGER_RISING, align 8
  store i64 %223, i64* %8, align 8
  br label %224

224:                                              ; preds = %222, %216
  br label %225

225:                                              ; preds = %224, %208
  %226 = load i64, i64* @IRQF_ONESHOT, align 8
  %227 = load i64, i64* %8, align 8
  %228 = or i64 %227, %226
  store i64 %228, i64* %8, align 8
  %229 = load i64, i64* @IRQF_SHARED, align 8
  %230 = load i64, i64* %8, align 8
  %231 = or i64 %230, %229
  store i64 %231, i64* %8, align 8
  %232 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %233 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %232, i32 0, i32 1
  %234 = load i32, i32* %9, align 4
  %235 = load i32, i32* @ak8974_drdy_irq, align 4
  %236 = load i32, i32* @ak8974_drdy_irq_thread, align 4
  %237 = load i64, i64* %8, align 8
  %238 = load %struct.ak8974*, %struct.ak8974** %7, align 8
  %239 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.ak8974*, %struct.ak8974** %7, align 8
  %242 = call i32 @devm_request_threaded_irq(i32* %233, i32 %234, i32 %235, i32 %236, i64 %237, i32 %240, %struct.ak8974* %241)
  store i32 %242, i32* %10, align 4
  %243 = load i32, i32* %10, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %225
  %246 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %247 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %246, i32 0, i32 1
  %248 = call i32 @dev_err(i32* %247, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0))
  br label %253

249:                                              ; preds = %225
  %250 = load %struct.ak8974*, %struct.ak8974** %7, align 8
  %251 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %250, i32 0, i32 1
  store i32 1, i32* %251, align 4
  br label %252

252:                                              ; preds = %249, %198
  br label %253

253:                                              ; preds = %252, %245
  %254 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %255 = call i32 @iio_device_register(%struct.iio_dev* %254)
  store i32 %255, i32* %10, align 4
  %256 = load i32, i32* %10, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %262

258:                                              ; preds = %253
  %259 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %260 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %259, i32 0, i32 1
  %261 = call i32 @dev_err(i32* %260, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  br label %263

262:                                              ; preds = %253
  store i32 0, i32* %3, align 4
  br label %286

263:                                              ; preds = %258
  %264 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %265 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %264)
  br label %266

266:                                              ; preds = %263, %194
  %267 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %268 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %267, i32 0, i32 1
  %269 = call i32 @pm_runtime_put_noidle(i32* %268)
  %270 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %271 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %270, i32 0, i32 1
  %272 = call i32 @pm_runtime_disable(i32* %271)
  %273 = load %struct.ak8974*, %struct.ak8974** %7, align 8
  %274 = load i32, i32* @AK8974_PWR_OFF, align 4
  %275 = call i32 @ak8974_set_power(%struct.ak8974* %273, i32 %274)
  br label %276

276:                                              ; preds = %266, %149, %131, %122
  %277 = load %struct.ak8974*, %struct.ak8974** %7, align 8
  %278 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %277, i32 0, i32 2
  %279 = load %struct.TYPE_8__*, %struct.TYPE_8__** %278, align 8
  %280 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %279)
  %281 = load %struct.ak8974*, %struct.ak8974** %7, align 8
  %282 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %281, i32 0, i32 2
  %283 = load %struct.TYPE_8__*, %struct.TYPE_8__** %282, align 8
  %284 = call i32 @regulator_bulk_disable(i32 %280, %struct.TYPE_8__* %283)
  %285 = load i32, i32* %10, align 4
  store i32 %285, i32* %3, align 4
  br label %286

286:                                              ; preds = %276, %262, %108, %84, %68, %41, %19
  %287 = load i32, i32* %3, align 4
  ret i32 %287
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.ak8974* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @iio_read_mount_matrix(i32*, i8*, i32*) #1

declare dso_local i32 @devm_regulator_bulk_get(i32*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_8__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @regulator_bulk_enable(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @pm_runtime_get_noresume(i32*) #1

declare dso_local i32 @pm_runtime_set_active(i32*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ak8974_set_power(%struct.ak8974*, i32) #1

declare dso_local i32 @ak8974_detect(%struct.ak8974*) #1

declare dso_local i32 @ak8974_selftest(%struct.ak8974*) #1

declare dso_local i32 @ak8974_reset(%struct.ak8974*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(i32*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(i32*) #1

declare dso_local i32 @pm_runtime_put(i32*) #1

declare dso_local i32 @iio_triggered_buffer_setup(%struct.iio_dev*, i32*, i32, i32*) #1

declare dso_local i64 @irqd_get_trigger_type(i32) #1

declare dso_local i32 @irq_get_irq_data(i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32, i32, i64, i32, %struct.ak8974*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @regulator_bulk_disable(i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
