; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_mpu3050-core.c_mpu3050_common_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_mpu3050-core.c_mpu3050_common_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.iio_dev = type { i8*, i32, i32, i32*, i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device* }
%struct.mpu3050 = type { i32, %struct.TYPE_6__*, i32, i32, i32, i32, %struct.regmap*, %struct.device* }

@ENOMEM = common dso_local global i32 0, align 4
@FS_2000_DPS = common dso_local global i32 0, align 4
@MPU3050_DLPF_CFG_188HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"mount-matrix\00", align 1
@mpu3050_reg_vdd = common dso_local global i32 0, align 4
@mpu3050_reg_vlogic = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Cannot get regulators\0A\00", align 1
@MPU3050_CHIP_ID_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"could not read device ID\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@MPU3050_CHIP_ID_MASK = common dso_local global i32 0, align 4
@MPU3050_CHIP_ID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"unsupported chip id %02x\0A\00", align 1
@MPU3050_PRODUCT_ID_REG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"found MPU-3050 part no: %d, version: %d\0A\00", align 1
@mpu3050_channels = common dso_local global %struct.TYPE_6__* null, align 8
@mpu3050_info = common dso_local global i32 0, align 4
@mpu3050_scan_masks = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@iio_pollfunc_store_time = common dso_local global i32 0, align 4
@mpu3050_trigger_handler = common dso_local global i32 0, align 4
@mpu3050_buffer_setup_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"triggered buffer setup failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"device register failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"failed to register trigger\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpu3050_common_probe(%struct.device* %0, %struct.regmap* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.iio_dev*, align 8
  %11 = alloca %struct.mpu3050*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.regmap* %1, %struct.regmap** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %14, i32 48)
  store %struct.iio_dev* %15, %struct.iio_dev** %10, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %17 = icmp ne %struct.iio_dev* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %209

21:                                               ; preds = %4
  %22 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %23 = call %struct.mpu3050* @iio_priv(%struct.iio_dev* %22)
  store %struct.mpu3050* %23, %struct.mpu3050** %11, align 8
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = load %struct.mpu3050*, %struct.mpu3050** %11, align 8
  %26 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %25, i32 0, i32 7
  store %struct.device* %24, %struct.device** %26, align 8
  %27 = load %struct.regmap*, %struct.regmap** %7, align 8
  %28 = load %struct.mpu3050*, %struct.mpu3050** %11, align 8
  %29 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %28, i32 0, i32 6
  store %struct.regmap* %27, %struct.regmap** %29, align 8
  %30 = load %struct.mpu3050*, %struct.mpu3050** %11, align 8
  %31 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %30, i32 0, i32 5
  %32 = call i32 @mutex_init(i32* %31)
  %33 = load i32, i32* @FS_2000_DPS, align 4
  %34 = load %struct.mpu3050*, %struct.mpu3050** %11, align 8
  %35 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @MPU3050_DLPF_CFG_188HZ, align 4
  %37 = load %struct.mpu3050*, %struct.mpu3050** %11, align 8
  %38 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.mpu3050*, %struct.mpu3050** %11, align 8
  %40 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %39, i32 0, i32 0
  store i32 99, i32* %40, align 8
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = load %struct.mpu3050*, %struct.mpu3050** %11, align 8
  %43 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %42, i32 0, i32 2
  %44 = call i32 @iio_read_mount_matrix(%struct.device* %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %21
  %48 = load i32, i32* %13, align 4
  store i32 %48, i32* %5, align 4
  br label %209

49:                                               ; preds = %21
  %50 = load i32, i32* @mpu3050_reg_vdd, align 4
  %51 = load %struct.mpu3050*, %struct.mpu3050** %11, align 8
  %52 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i32 %50, i32* %55, align 4
  %56 = load i32, i32* @mpu3050_reg_vlogic, align 4
  %57 = load %struct.mpu3050*, %struct.mpu3050** %11, align 8
  %58 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i32 %56, i32* %61, align 4
  %62 = load %struct.device*, %struct.device** %6, align 8
  %63 = load %struct.mpu3050*, %struct.mpu3050** %11, align 8
  %64 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %65)
  %67 = load %struct.mpu3050*, %struct.mpu3050** %11, align 8
  %68 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = call i32 @devm_regulator_bulk_get(%struct.device* %62, i32 %66, %struct.TYPE_6__* %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %49
  %74 = load %struct.device*, %struct.device** %6, align 8
  %75 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %74, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* %5, align 4
  br label %209

77:                                               ; preds = %49
  %78 = load %struct.mpu3050*, %struct.mpu3050** %11, align 8
  %79 = call i32 @mpu3050_power_up(%struct.mpu3050* %78)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* %13, align 4
  store i32 %83, i32* %5, align 4
  br label %209

84:                                               ; preds = %77
  %85 = load %struct.regmap*, %struct.regmap** %7, align 8
  %86 = load i32, i32* @MPU3050_CHIP_ID_REG, align 4
  %87 = call i32 @regmap_read(%struct.regmap* %85, i32 %86, i32* %12)
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load %struct.device*, %struct.device** %6, align 8
  %92 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %91, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %93 = load i32, i32* @ENODEV, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %13, align 4
  br label %205

95:                                               ; preds = %84
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* @MPU3050_CHIP_ID_MASK, align 4
  %98 = and i32 %96, %97
  %99 = load i32, i32* @MPU3050_CHIP_ID, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %109

101:                                              ; preds = %95
  %102 = load %struct.device*, %struct.device** %6, align 8
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* @MPU3050_CHIP_ID_MASK, align 4
  %105 = and i32 %103, %104
  %106 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %102, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @ENODEV, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %13, align 4
  br label %205

109:                                              ; preds = %95
  %110 = load %struct.regmap*, %struct.regmap** %7, align 8
  %111 = load i32, i32* @MPU3050_PRODUCT_ID_REG, align 4
  %112 = call i32 @regmap_read(%struct.regmap* %110, i32 %111, i32* %12)
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %13, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %109
  %116 = load %struct.device*, %struct.device** %6, align 8
  %117 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %116, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %118 = load i32, i32* @ENODEV, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %13, align 4
  br label %205

120:                                              ; preds = %109
  %121 = load %struct.device*, %struct.device** %6, align 8
  %122 = load i32, i32* %12, align 4
  %123 = lshr i32 %122, 4
  %124 = and i32 %123, 15
  %125 = load i32, i32* %12, align 4
  %126 = and i32 %125, 15
  %127 = call i32 @dev_info(%struct.device* %121, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %124, i32 %126)
  %128 = load %struct.mpu3050*, %struct.mpu3050** %11, align 8
  %129 = call i32 @mpu3050_hw_init(%struct.mpu3050* %128)
  store i32 %129, i32* %13, align 4
  %130 = load i32, i32* %13, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %120
  br label %205

133:                                              ; preds = %120
  %134 = load %struct.device*, %struct.device** %6, align 8
  %135 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %136 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %135, i32 0, i32 6
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  store %struct.device* %134, %struct.device** %137, align 8
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mpu3050_channels, align 8
  %139 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %140 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %139, i32 0, i32 5
  store %struct.TYPE_6__* %138, %struct.TYPE_6__** %140, align 8
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mpu3050_channels, align 8
  %142 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %141)
  %143 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %144 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %143, i32 0, i32 4
  store i32 %142, i32* %144, align 8
  %145 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %146 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %145, i32 0, i32 3
  store i32* @mpu3050_info, i32** %146, align 8
  %147 = load i32, i32* @mpu3050_scan_masks, align 4
  %148 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %149 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %151 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %152 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 8
  %153 = load i8*, i8** %9, align 8
  %154 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %155 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %154, i32 0, i32 0
  store i8* %153, i8** %155, align 8
  %156 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %157 = load i32, i32* @iio_pollfunc_store_time, align 4
  %158 = load i32, i32* @mpu3050_trigger_handler, align 4
  %159 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %156, i32 %157, i32 %158, i32* @mpu3050_buffer_setup_ops)
  store i32 %159, i32* %13, align 4
  %160 = load i32, i32* %13, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %133
  %163 = load %struct.device*, %struct.device** %6, align 8
  %164 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %163, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %205

165:                                              ; preds = %133
  %166 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %167 = call i32 @iio_device_register(%struct.iio_dev* %166)
  store i32 %167, i32* %13, align 4
  %168 = load i32, i32* %13, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = load %struct.device*, %struct.device** %6, align 8
  %172 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %171, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %202

173:                                              ; preds = %165
  %174 = load %struct.device*, %struct.device** %6, align 8
  %175 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %176 = call i32 @dev_set_drvdata(%struct.device* %174, %struct.iio_dev* %175)
  %177 = load i32, i32* %8, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %173
  %180 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %181 = load i32, i32* %8, align 4
  %182 = call i32 @mpu3050_trigger_probe(%struct.iio_dev* %180, i32 %181)
  store i32 %182, i32* %13, align 4
  %183 = load i32, i32* %13, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %179
  %186 = load %struct.device*, %struct.device** %6, align 8
  %187 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %186, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  br label %188

188:                                              ; preds = %185, %179
  br label %189

189:                                              ; preds = %188, %173
  %190 = load %struct.device*, %struct.device** %6, align 8
  %191 = call i32 @pm_runtime_get_noresume(%struct.device* %190)
  %192 = load %struct.device*, %struct.device** %6, align 8
  %193 = call i32 @pm_runtime_set_active(%struct.device* %192)
  %194 = load %struct.device*, %struct.device** %6, align 8
  %195 = call i32 @pm_runtime_enable(%struct.device* %194)
  %196 = load %struct.device*, %struct.device** %6, align 8
  %197 = call i32 @pm_runtime_set_autosuspend_delay(%struct.device* %196, i32 10000)
  %198 = load %struct.device*, %struct.device** %6, align 8
  %199 = call i32 @pm_runtime_use_autosuspend(%struct.device* %198)
  %200 = load %struct.device*, %struct.device** %6, align 8
  %201 = call i32 @pm_runtime_put(%struct.device* %200)
  store i32 0, i32* %5, align 4
  br label %209

202:                                              ; preds = %170
  %203 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %204 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %203)
  br label %205

205:                                              ; preds = %202, %162, %132, %115, %101, %90
  %206 = load %struct.mpu3050*, %struct.mpu3050** %11, align 8
  %207 = call i32 @mpu3050_power_down(%struct.mpu3050* %206)
  %208 = load i32, i32* %13, align 4
  store i32 %208, i32* %5, align 4
  br label %209

209:                                              ; preds = %205, %189, %82, %73, %47, %18
  %210 = load i32, i32* %5, align 4
  ret i32 %210
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local %struct.mpu3050* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @iio_read_mount_matrix(%struct.device*, i8*, i32*) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @mpu3050_power_up(%struct.mpu3050*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @mpu3050_hw_init(%struct.mpu3050*) #1

declare dso_local i32 @iio_triggered_buffer_setup(%struct.iio_dev*, i32, i32, i32*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.iio_dev*) #1

declare dso_local i32 @mpu3050_trigger_probe(%struct.iio_dev*, i32) #1

declare dso_local i32 @pm_runtime_get_noresume(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_put(%struct.device*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @mpu3050_power_down(%struct.mpu3050*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
