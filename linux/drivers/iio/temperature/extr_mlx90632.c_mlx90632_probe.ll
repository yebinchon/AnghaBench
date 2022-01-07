; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_mlx90632.c_mlx90632_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_mlx90632.c_mlx90632_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.iio_dev = type { i32, i32, i32*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.mlx90632_data = type { i32, %struct.regmap*, i32, %struct.i2c_client* }
%struct.regmap = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Failed to allocate device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@mlx90632_regmap = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to allocate regmap: %d\0A\00", align 1
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@mlx90632_info = common dso_local global i32 0, align 4
@mlx90632_channels = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Wakeup failed: %d\0A\00", align 1
@MLX90632_EE_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"read of version failed: %d\0A\00", align 1
@MLX90632_ID_MEDICAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"Detected Medical EEPROM calibration %x\0A\00", align 1
@MLX90632_ID_CONSUMER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"Detected Consumer EEPROM calibration %x\0A\00", align 1
@MLX90632_DSP_MASK = common dso_local global i32 0, align 4
@MLX90632_DSP_VERSION = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"Detected Unknown EEPROM calibration %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Wrong DSP version %x (expected %x)\0A\00", align 1
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@MLX90632_SLEEP_DELAY_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @mlx90632_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx90632_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.mlx90632_data*, align 8
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %12, i32 32)
  store %struct.iio_dev* %13, %struct.iio_dev** %6, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %15 = icmp ne %struct.iio_dev* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  %19 = call i32 (i32*, i8*, ...) @dev_err(i32* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %164

22:                                               ; preds = %2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = call %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client* %23, i32* @mlx90632_regmap)
  store %struct.regmap* %24, %struct.regmap** %8, align 8
  %25 = load %struct.regmap*, %struct.regmap** %8, align 8
  %26 = call i64 @IS_ERR(%struct.regmap* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load %struct.regmap*, %struct.regmap** %8, align 8
  %30 = call i32 @PTR_ERR(%struct.regmap* %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = load i32, i32* %9, align 4
  %34 = call i32 (i32*, i8*, ...) @dev_err(i32* %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %3, align 4
  br label %164

36:                                               ; preds = %22
  %37 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %38 = call %struct.mlx90632_data* @iio_priv(%struct.iio_dev* %37)
  store %struct.mlx90632_data* %38, %struct.mlx90632_data** %7, align 8
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %41 = call i32 @i2c_set_clientdata(%struct.i2c_client* %39, %struct.iio_dev* %40)
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = load %struct.mlx90632_data*, %struct.mlx90632_data** %7, align 8
  %44 = getelementptr inbounds %struct.mlx90632_data, %struct.mlx90632_data* %43, i32 0, i32 3
  store %struct.i2c_client* %42, %struct.i2c_client** %44, align 8
  %45 = load %struct.regmap*, %struct.regmap** %8, align 8
  %46 = load %struct.mlx90632_data*, %struct.mlx90632_data** %7, align 8
  %47 = getelementptr inbounds %struct.mlx90632_data, %struct.mlx90632_data* %46, i32 0, i32 1
  store %struct.regmap* %45, %struct.regmap** %47, align 8
  %48 = load %struct.mlx90632_data*, %struct.mlx90632_data** %7, align 8
  %49 = getelementptr inbounds %struct.mlx90632_data, %struct.mlx90632_data* %48, i32 0, i32 2
  %50 = call i32 @mutex_init(i32* %49)
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 0
  %53 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32* %52, i32** %55, align 8
  %56 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %57 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %60 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %62 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %63 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  %64 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %65 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %64, i32 0, i32 2
  store i32* @mlx90632_info, i32** %65, align 8
  %66 = load i32, i32* @mlx90632_channels, align 4
  %67 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %68 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @mlx90632_channels, align 4
  %70 = call i32 @ARRAY_SIZE(i32 %69)
  %71 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %72 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.mlx90632_data*, %struct.mlx90632_data** %7, align 8
  %74 = call i32 @mlx90632_wakeup(%struct.mlx90632_data* %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %36
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %78, i32 0, i32 0
  %80 = load i32, i32* %9, align 4
  %81 = call i32 (i32*, i8*, ...) @dev_err(i32* %79, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %3, align 4
  br label %164

83:                                               ; preds = %36
  %84 = load %struct.mlx90632_data*, %struct.mlx90632_data** %7, align 8
  %85 = getelementptr inbounds %struct.mlx90632_data, %struct.mlx90632_data* %84, i32 0, i32 1
  %86 = load %struct.regmap*, %struct.regmap** %85, align 8
  %87 = load i32, i32* @MLX90632_EE_VERSION, align 4
  %88 = call i32 @regmap_read(%struct.regmap* %86, i32 %87, i32* %10)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %83
  %92 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %93 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %92, i32 0, i32 0
  %94 = load i32, i32* %9, align 4
  %95 = call i32 (i32*, i8*, ...) @dev_err(i32* %93, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %3, align 4
  br label %164

97:                                               ; preds = %83
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* @MLX90632_ID_MEDICAL, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %103 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %102, i32 0, i32 0
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @dev_dbg(i32* %103, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %104)
  br label %136

106:                                              ; preds = %97
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @MLX90632_ID_CONSUMER, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %106
  %111 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %112 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %111, i32 0, i32 0
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @dev_dbg(i32* %112, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %113)
  br label %135

115:                                              ; preds = %106
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* @MLX90632_DSP_MASK, align 4
  %118 = and i32 %116, %117
  %119 = load i32, i32* @MLX90632_DSP_VERSION, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %115
  %122 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %123 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %122, i32 0, i32 0
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @dev_dbg(i32* %123, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %124)
  br label %134

126:                                              ; preds = %115
  %127 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %128 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %127, i32 0, i32 0
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @MLX90632_DSP_VERSION, align 4
  %131 = call i32 (i32*, i8*, ...) @dev_err(i32* %128, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %129, i32 %130)
  %132 = load i32, i32* @EPROTONOSUPPORT, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %3, align 4
  br label %164

134:                                              ; preds = %121
  br label %135

135:                                              ; preds = %134, %110
  br label %136

136:                                              ; preds = %135, %101
  %137 = load %struct.mlx90632_data*, %struct.mlx90632_data** %7, align 8
  %138 = getelementptr inbounds %struct.mlx90632_data, %struct.mlx90632_data* %137, i32 0, i32 0
  store i32 1000, i32* %138, align 8
  %139 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %140 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %139, i32 0, i32 0
  %141 = call i32 @pm_runtime_disable(i32* %140)
  %142 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %143 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %142, i32 0, i32 0
  %144 = call i32 @pm_runtime_set_active(i32* %143)
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %9, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %136
  %148 = load %struct.mlx90632_data*, %struct.mlx90632_data** %7, align 8
  %149 = call i32 @mlx90632_sleep(%struct.mlx90632_data* %148)
  %150 = load i32, i32* %9, align 4
  store i32 %150, i32* %3, align 4
  br label %164

151:                                              ; preds = %136
  %152 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %153 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %152, i32 0, i32 0
  %154 = call i32 @pm_runtime_enable(i32* %153)
  %155 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %156 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %155, i32 0, i32 0
  %157 = load i32, i32* @MLX90632_SLEEP_DELAY_MS, align 4
  %158 = call i32 @pm_runtime_set_autosuspend_delay(i32* %156, i32 %157)
  %159 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %160 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %159, i32 0, i32 0
  %161 = call i32 @pm_runtime_use_autosuspend(i32* %160)
  %162 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %163 = call i32 @iio_device_register(%struct.iio_dev* %162)
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %151, %147, %126, %91, %77, %28, %16
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local %struct.mlx90632_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mlx90632_wakeup(%struct.mlx90632_data*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @pm_runtime_set_active(i32*) #1

declare dso_local i32 @mlx90632_sleep(%struct.mlx90632_data*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(i32*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(i32*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
