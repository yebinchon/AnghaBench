; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_adf4371.c_adf4371_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_adf4371.c_adf4371_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.spi_device = type { i32 }
%struct.spi_device_id = type { i64, i32 }
%struct.iio_dev = type { i32, i32, i32, i32*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.adf4371_state = type { %struct.regmap*, i32, %struct.TYPE_4__*, i32, %struct.regmap*, %struct.spi_device* }
%struct.regmap = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@adf4371_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Error initializing spi regmap: %ld\0A\00", align 1
@adf4371_chip_info = common dso_local global %struct.TYPE_4__* null, align 8
@adf4371_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"clkin\00", align 1
@adf4371_clk_disable = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"ADF4371 setup failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @adf4371_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adf4371_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_device_id*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.adf4371_state*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = call %struct.spi_device_id* @spi_get_device_id(%struct.spi_device* %9)
  store %struct.spi_device_id* %10, %struct.spi_device_id** %4, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 0
  %13 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %12, i32 48)
  store %struct.iio_dev* %13, %struct.iio_dev** %5, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %15 = icmp ne %struct.iio_dev* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %139

19:                                               ; preds = %1
  %20 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %21 = call %struct.regmap* @devm_regmap_init_spi(%struct.spi_device* %20, i32* @adf4371_regmap_config)
  store %struct.regmap* %21, %struct.regmap** %7, align 8
  %22 = load %struct.regmap*, %struct.regmap** %7, align 8
  %23 = call i64 @IS_ERR(%struct.regmap* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %27 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %26, i32 0, i32 0
  %28 = load %struct.regmap*, %struct.regmap** %7, align 8
  %29 = call i32 @PTR_ERR(%struct.regmap* %28)
  %30 = call i32 (i32*, i8*, ...) @dev_err(i32* %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.regmap*, %struct.regmap** %7, align 8
  %32 = call i32 @PTR_ERR(%struct.regmap* %31)
  store i32 %32, i32* %2, align 4
  br label %139

33:                                               ; preds = %19
  %34 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %35 = call %struct.adf4371_state* @iio_priv(%struct.iio_dev* %34)
  store %struct.adf4371_state* %35, %struct.adf4371_state** %6, align 8
  %36 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %37 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %38 = call i32 @spi_set_drvdata(%struct.spi_device* %36, %struct.iio_dev* %37)
  %39 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %40 = load %struct.adf4371_state*, %struct.adf4371_state** %6, align 8
  %41 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %40, i32 0, i32 5
  store %struct.spi_device* %39, %struct.spi_device** %41, align 8
  %42 = load %struct.regmap*, %struct.regmap** %7, align 8
  %43 = load %struct.adf4371_state*, %struct.adf4371_state** %6, align 8
  %44 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %43, i32 0, i32 4
  store %struct.regmap* %42, %struct.regmap** %44, align 8
  %45 = load %struct.adf4371_state*, %struct.adf4371_state** %6, align 8
  %46 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %45, i32 0, i32 3
  %47 = call i32 @mutex_init(i32* %46)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @adf4371_chip_info, align 8
  %49 = load %struct.spi_device_id*, %struct.spi_device_id** %4, align 8
  %50 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %51
  %53 = load %struct.adf4371_state*, %struct.adf4371_state** %6, align 8
  %54 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %53, i32 0, i32 2
  store %struct.TYPE_4__* %52, %struct.TYPE_4__** %54, align 8
  %55 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %56 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %55, i32 0, i32 0
  %57 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %58 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32* %56, i32** %59, align 8
  %60 = load %struct.spi_device_id*, %struct.spi_device_id** %4, align 8
  %61 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %64 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 8
  %65 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %66 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %65, i32 0, i32 3
  store i32* @adf4371_info, i32** %66, align 8
  %67 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %68 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %69 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.adf4371_state*, %struct.adf4371_state** %6, align 8
  %71 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %76 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.adf4371_state*, %struct.adf4371_state** %6, align 8
  %78 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %77, i32 0, i32 2
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %83 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %85 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %84, i32 0, i32 0
  %86 = call %struct.regmap* @devm_clk_get(i32* %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %87 = load %struct.adf4371_state*, %struct.adf4371_state** %6, align 8
  %88 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %87, i32 0, i32 0
  store %struct.regmap* %86, %struct.regmap** %88, align 8
  %89 = load %struct.adf4371_state*, %struct.adf4371_state** %6, align 8
  %90 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %89, i32 0, i32 0
  %91 = load %struct.regmap*, %struct.regmap** %90, align 8
  %92 = call i64 @IS_ERR(%struct.regmap* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %33
  %95 = load %struct.adf4371_state*, %struct.adf4371_state** %6, align 8
  %96 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %95, i32 0, i32 0
  %97 = load %struct.regmap*, %struct.regmap** %96, align 8
  %98 = call i32 @PTR_ERR(%struct.regmap* %97)
  store i32 %98, i32* %2, align 4
  br label %139

99:                                               ; preds = %33
  %100 = load %struct.adf4371_state*, %struct.adf4371_state** %6, align 8
  %101 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %100, i32 0, i32 0
  %102 = load %struct.regmap*, %struct.regmap** %101, align 8
  %103 = call i32 @clk_prepare_enable(%struct.regmap* %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %2, align 4
  br label %139

108:                                              ; preds = %99
  %109 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %110 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %109, i32 0, i32 0
  %111 = load i32, i32* @adf4371_clk_disable, align 4
  %112 = load %struct.adf4371_state*, %struct.adf4371_state** %6, align 8
  %113 = call i32 @devm_add_action_or_reset(i32* %110, i32 %111, %struct.adf4371_state* %112)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %108
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %2, align 4
  br label %139

118:                                              ; preds = %108
  %119 = load %struct.adf4371_state*, %struct.adf4371_state** %6, align 8
  %120 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %119, i32 0, i32 0
  %121 = load %struct.regmap*, %struct.regmap** %120, align 8
  %122 = call i32 @clk_get_rate(%struct.regmap* %121)
  %123 = load %struct.adf4371_state*, %struct.adf4371_state** %6, align 8
  %124 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 8
  %125 = load %struct.adf4371_state*, %struct.adf4371_state** %6, align 8
  %126 = call i32 @adf4371_setup(%struct.adf4371_state* %125)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %118
  %130 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %131 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %130, i32 0, i32 0
  %132 = call i32 (i32*, i8*, ...) @dev_err(i32* %131, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %133 = load i32, i32* %8, align 4
  store i32 %133, i32* %2, align 4
  br label %139

134:                                              ; preds = %118
  %135 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %136 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %135, i32 0, i32 0
  %137 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %138 = call i32 @devm_iio_device_register(i32* %136, %struct.iio_dev* %137)
  store i32 %138, i32* %2, align 4
  br label %139

139:                                              ; preds = %134, %129, %116, %106, %94, %25, %16
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local %struct.spi_device_id* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.regmap* @devm_regmap_init_spi(%struct.spi_device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local %struct.adf4371_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.regmap* @devm_clk_get(i32*, i8*) #1

declare dso_local i32 @clk_prepare_enable(%struct.regmap*) #1

declare dso_local i32 @devm_add_action_or_reset(i32*, i32, %struct.adf4371_state*) #1

declare dso_local i32 @clk_get_rate(%struct.regmap*) #1

declare dso_local i32 @adf4371_setup(%struct.adf4371_state*) #1

declare dso_local i32 @devm_iio_device_register(i32*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
