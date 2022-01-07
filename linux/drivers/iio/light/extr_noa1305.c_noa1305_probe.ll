; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_noa1305.c_noa1305_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_noa1305.c_noa1305_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.noa1305_priv = type { %struct.regmap*, %struct.i2c_client*, %struct.regmap* }
%struct.regmap = type { i32 }
%struct.iio_dev = type { i32, i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@noa1305_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Regmap initialization failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"vin\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"get regulator vin failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"enable regulator vin failed\0A\00", align 1
@noa1305_reg_remove = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"addition of devm action failed\0A\00", align 1
@NOA1305_REG_DEVICE_ID_LSB = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"ID reading failed: %d\0A\00", align 1
@NOA1305_DEVICE_ID = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"Unknown device ID: 0x%x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@NOA1305_REG_POWER_CONTROL = common dso_local global i32 0, align 4
@NOA1305_POWER_CONTROL_ON = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"Enabling power control failed\0A\00", align 1
@NOA1305_REG_RESET = common dso_local global i32 0, align 4
@NOA1305_RESET_RESET = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"Device reset failed\0A\00", align 1
@NOA1305_REG_INTEGRATION_TIME = common dso_local global i32 0, align 4
@NOA1305_INTEGR_TIME_800MS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"Setting integration time failed\0A\00", align 1
@noa1305_info = common dso_local global i32 0, align 4
@noa1305_channels = common dso_local global i32 0, align 4
@NOA1305_DRIVER_NAME = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"registering device failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @noa1305_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @noa1305_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.noa1305_priv*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %13, i32 24)
  store %struct.iio_dev* %14, %struct.iio_dev** %7, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = icmp ne %struct.iio_dev* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %181

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = call %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client* %21, i32* @noa1305_regmap_config)
  store %struct.regmap* %22, %struct.regmap** %8, align 8
  %23 = load %struct.regmap*, %struct.regmap** %8, align 8
  %24 = call i64 @IS_ERR(%struct.regmap* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = call i32 (i32*, i8*, ...) @dev_err(i32* %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.regmap*, %struct.regmap** %8, align 8
  %31 = call i32 @PTR_ERR(%struct.regmap* %30)
  store i32 %31, i32* %3, align 4
  br label %181

32:                                               ; preds = %20
  %33 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %34 = call %struct.noa1305_priv* @iio_priv(%struct.iio_dev* %33)
  store %struct.noa1305_priv* %34, %struct.noa1305_priv** %6, align 8
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = call %struct.regmap* @devm_regulator_get(i32* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.noa1305_priv*, %struct.noa1305_priv** %6, align 8
  %39 = getelementptr inbounds %struct.noa1305_priv, %struct.noa1305_priv* %38, i32 0, i32 2
  store %struct.regmap* %37, %struct.regmap** %39, align 8
  %40 = load %struct.noa1305_priv*, %struct.noa1305_priv** %6, align 8
  %41 = getelementptr inbounds %struct.noa1305_priv, %struct.noa1305_priv* %40, i32 0, i32 2
  %42 = load %struct.regmap*, %struct.regmap** %41, align 8
  %43 = call i64 @IS_ERR(%struct.regmap* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %32
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 0
  %48 = call i32 (i32*, i8*, ...) @dev_err(i32* %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %49 = load %struct.noa1305_priv*, %struct.noa1305_priv** %6, align 8
  %50 = getelementptr inbounds %struct.noa1305_priv, %struct.noa1305_priv* %49, i32 0, i32 2
  %51 = load %struct.regmap*, %struct.regmap** %50, align 8
  %52 = call i32 @PTR_ERR(%struct.regmap* %51)
  store i32 %52, i32* %3, align 4
  br label %181

53:                                               ; preds = %32
  %54 = load %struct.noa1305_priv*, %struct.noa1305_priv** %6, align 8
  %55 = getelementptr inbounds %struct.noa1305_priv, %struct.noa1305_priv* %54, i32 0, i32 2
  %56 = load %struct.regmap*, %struct.regmap** %55, align 8
  %57 = call i32 @regulator_enable(%struct.regmap* %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %61, i32 0, i32 0
  %63 = call i32 (i32*, i8*, ...) @dev_err(i32* %62, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %3, align 4
  br label %181

65:                                               ; preds = %53
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %66, i32 0, i32 0
  %68 = load i32, i32* @noa1305_reg_remove, align 4
  %69 = load %struct.noa1305_priv*, %struct.noa1305_priv** %6, align 8
  %70 = call i32 @devm_add_action_or_reset(i32* %67, i32 %68, %struct.noa1305_priv* %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %65
  %74 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %75 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %74, i32 0, i32 0
  %76 = call i32 (i32*, i8*, ...) @dev_err(i32* %75, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %3, align 4
  br label %181

78:                                               ; preds = %65
  %79 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %80 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %81 = call i32 @i2c_set_clientdata(%struct.i2c_client* %79, %struct.iio_dev* %80)
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = load %struct.noa1305_priv*, %struct.noa1305_priv** %6, align 8
  %84 = getelementptr inbounds %struct.noa1305_priv, %struct.noa1305_priv* %83, i32 0, i32 1
  store %struct.i2c_client* %82, %struct.i2c_client** %84, align 8
  %85 = load %struct.regmap*, %struct.regmap** %8, align 8
  %86 = load %struct.noa1305_priv*, %struct.noa1305_priv** %6, align 8
  %87 = getelementptr inbounds %struct.noa1305_priv, %struct.noa1305_priv* %86, i32 0, i32 0
  store %struct.regmap* %85, %struct.regmap** %87, align 8
  %88 = load %struct.regmap*, %struct.regmap** %8, align 8
  %89 = load i32, i32* @NOA1305_REG_DEVICE_ID_LSB, align 4
  %90 = call i32 @regmap_bulk_read(%struct.regmap* %88, i32 %89, i32* %9, i32 2)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %78
  %94 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %95 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %94, i32 0, i32 0
  %96 = load i32, i32* %11, align 4
  %97 = call i32 (i32*, i8*, ...) @dev_err(i32* %95, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %11, align 4
  store i32 %98, i32* %3, align 4
  br label %181

99:                                               ; preds = %78
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @le16_to_cpu(i32 %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @NOA1305_DEVICE_ID, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %99
  %106 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %107 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %106, i32 0, i32 0
  %108 = load i32, i32* %10, align 4
  %109 = call i32 (i32*, i8*, ...) @dev_err(i32* %107, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* @ENODEV, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %181

112:                                              ; preds = %99
  %113 = load %struct.regmap*, %struct.regmap** %8, align 8
  %114 = load i32, i32* @NOA1305_REG_POWER_CONTROL, align 4
  %115 = load i32, i32* @NOA1305_POWER_CONTROL_ON, align 4
  %116 = call i32 @regmap_write(%struct.regmap* %113, i32 %114, i32 %115)
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %112
  %120 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %121 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %120, i32 0, i32 0
  %122 = call i32 (i32*, i8*, ...) @dev_err(i32* %121, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %123 = load i32, i32* %11, align 4
  store i32 %123, i32* %3, align 4
  br label %181

124:                                              ; preds = %112
  %125 = load %struct.regmap*, %struct.regmap** %8, align 8
  %126 = load i32, i32* @NOA1305_REG_RESET, align 4
  %127 = load i32, i32* @NOA1305_RESET_RESET, align 4
  %128 = call i32 @regmap_write(%struct.regmap* %125, i32 %126, i32 %127)
  store i32 %128, i32* %11, align 4
  %129 = load i32, i32* %11, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %124
  %132 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %133 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %132, i32 0, i32 0
  %134 = call i32 (i32*, i8*, ...) @dev_err(i32* %133, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %135 = load i32, i32* %11, align 4
  store i32 %135, i32* %3, align 4
  br label %181

136:                                              ; preds = %124
  %137 = load %struct.regmap*, %struct.regmap** %8, align 8
  %138 = load i32, i32* @NOA1305_REG_INTEGRATION_TIME, align 4
  %139 = load i32, i32* @NOA1305_INTEGR_TIME_800MS, align 4
  %140 = call i32 @regmap_write(%struct.regmap* %137, i32 %138, i32 %139)
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %11, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %136
  %144 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %145 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %144, i32 0, i32 0
  %146 = call i32 (i32*, i8*, ...) @dev_err(i32* %145, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %147 = load i32, i32* %11, align 4
  store i32 %147, i32* %3, align 4
  br label %181

148:                                              ; preds = %136
  %149 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %150 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %149, i32 0, i32 0
  %151 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %152 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %151, i32 0, i32 5
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  store i32* %150, i32** %153, align 8
  %154 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %155 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %154, i32 0, i32 4
  store i32* @noa1305_info, i32** %155, align 8
  %156 = load i32, i32* @noa1305_channels, align 4
  %157 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %158 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %157, i32 0, i32 3
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* @noa1305_channels, align 4
  %160 = call i32 @ARRAY_SIZE(i32 %159)
  %161 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %162 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 8
  %163 = load i32, i32* @NOA1305_DRIVER_NAME, align 4
  %164 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %165 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %167 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %168 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 8
  %169 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %170 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %169, i32 0, i32 0
  %171 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %172 = call i32 @devm_iio_device_register(i32* %170, %struct.iio_dev* %171)
  store i32 %172, i32* %11, align 4
  %173 = load i32, i32* %11, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %148
  %176 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %177 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %176, i32 0, i32 0
  %178 = call i32 (i32*, i8*, ...) @dev_err(i32* %177, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  br label %179

179:                                              ; preds = %175, %148
  %180 = load i32, i32* %11, align 4
  store i32 %180, i32* %3, align 4
  br label %181

181:                                              ; preds = %179, %143, %131, %119, %105, %93, %73, %60, %45, %26, %17
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local %struct.noa1305_priv* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.regmap* @devm_regulator_get(i32*, i8*) #1

declare dso_local i32 @regulator_enable(%struct.regmap*) #1

declare dso_local i32 @devm_add_action_or_reset(i32*, i32, %struct.noa1305_priv*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @regmap_bulk_read(%struct.regmap*, i32, i32*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_iio_device_register(i32*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
