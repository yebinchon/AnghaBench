; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads8688.c_ads8688_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads8688.c_ads8688_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.spi_device = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.ads8688_state = type { i32, i32, i32, %struct.TYPE_10__*, %struct.spi_device* }
%struct.iio_dev = type { i32*, i32, i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@ADS8688_VREF_MV = common dso_local global i32 0, align 4
@ads8688_chip_info_tbl = common dso_local global %struct.TYPE_10__* null, align 8
@SPI_MODE_1 = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ads8688_info = common dso_local global i32 0, align 4
@ads8688_trigger_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"iio triggered buffer setup failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ads8688_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ads8688_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.ads8688_state*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_9__* %8, i32 32)
  store %struct.iio_dev* %9, %struct.iio_dev** %5, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %11 = icmp eq %struct.iio_dev* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %146

15:                                               ; preds = %1
  %16 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %17 = call %struct.ads8688_state* @iio_priv(%struct.iio_dev* %16)
  store %struct.ads8688_state* %17, %struct.ads8688_state** %4, align 8
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %18, i32 0, i32 0
  %20 = call i32 @devm_regulator_get_optional(%struct.TYPE_9__* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.ads8688_state*, %struct.ads8688_state** %4, align 8
  %22 = getelementptr inbounds %struct.ads8688_state, %struct.ads8688_state* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.ads8688_state*, %struct.ads8688_state** %4, align 8
  %24 = getelementptr inbounds %struct.ads8688_state, %struct.ads8688_state* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @IS_ERR(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %50, label %28

28:                                               ; preds = %15
  %29 = load %struct.ads8688_state*, %struct.ads8688_state** %4, align 8
  %30 = getelementptr inbounds %struct.ads8688_state, %struct.ads8688_state* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @regulator_enable(i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %146

37:                                               ; preds = %28
  %38 = load %struct.ads8688_state*, %struct.ads8688_state** %4, align 8
  %39 = getelementptr inbounds %struct.ads8688_state, %struct.ads8688_state* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @regulator_get_voltage(i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %133

45:                                               ; preds = %37
  %46 = load i32, i32* %6, align 4
  %47 = sdiv i32 %46, 1000
  %48 = load %struct.ads8688_state*, %struct.ads8688_state** %4, align 8
  %49 = getelementptr inbounds %struct.ads8688_state, %struct.ads8688_state* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  br label %54

50:                                               ; preds = %15
  %51 = load i32, i32* @ADS8688_VREF_MV, align 4
  %52 = load %struct.ads8688_state*, %struct.ads8688_state** %4, align 8
  %53 = getelementptr inbounds %struct.ads8688_state, %struct.ads8688_state* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %50, %45
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ads8688_chip_info_tbl, align 8
  %56 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %57 = call %struct.TYPE_8__* @spi_get_device_id(%struct.spi_device* %56)
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i64 %59
  %61 = load %struct.ads8688_state*, %struct.ads8688_state** %4, align 8
  %62 = getelementptr inbounds %struct.ads8688_state, %struct.ads8688_state* %61, i32 0, i32 3
  store %struct.TYPE_10__* %60, %struct.TYPE_10__** %62, align 8
  %63 = load i32, i32* @SPI_MODE_1, align 4
  %64 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %65 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %67 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %68 = call i32 @spi_set_drvdata(%struct.spi_device* %66, %struct.iio_dev* %67)
  %69 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %70 = load %struct.ads8688_state*, %struct.ads8688_state** %4, align 8
  %71 = getelementptr inbounds %struct.ads8688_state, %struct.ads8688_state* %70, i32 0, i32 4
  store %struct.spi_device* %69, %struct.spi_device** %71, align 8
  %72 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %73 = call %struct.TYPE_8__* @spi_get_device_id(%struct.spi_device* %72)
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %77 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 8
  %78 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %79 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %78, i32 0, i32 0
  %80 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %81 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  store %struct.TYPE_9__* %79, %struct.TYPE_9__** %82, align 8
  %83 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %84 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %88 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  %90 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %91 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %92 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 8
  %93 = load %struct.ads8688_state*, %struct.ads8688_state** %4, align 8
  %94 = getelementptr inbounds %struct.ads8688_state, %struct.ads8688_state* %93, i32 0, i32 3
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %99 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  %100 = load %struct.ads8688_state*, %struct.ads8688_state** %4, align 8
  %101 = getelementptr inbounds %struct.ads8688_state, %struct.ads8688_state* %100, i32 0, i32 3
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %106 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 8
  %107 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %108 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %107, i32 0, i32 0
  store i32* @ads8688_info, i32** %108, align 8
  %109 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %110 = call i32 @ads8688_reset(%struct.iio_dev* %109)
  %111 = load %struct.ads8688_state*, %struct.ads8688_state** %4, align 8
  %112 = getelementptr inbounds %struct.ads8688_state, %struct.ads8688_state* %111, i32 0, i32 2
  %113 = call i32 @mutex_init(i32* %112)
  %114 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %115 = load i32, i32* @ads8688_trigger_handler, align 4
  %116 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %114, i32* null, i32 %115, i32* null)
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %6, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %54
  %120 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %121 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %120, i32 0, i32 0
  %122 = call i32 @dev_err(%struct.TYPE_9__* %121, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %133

123:                                              ; preds = %54
  %124 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %125 = call i32 @iio_device_register(%struct.iio_dev* %124)
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  br label %130

129:                                              ; preds = %123
  store i32 0, i32* %2, align 4
  br label %146

130:                                              ; preds = %128
  %131 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %132 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %131)
  br label %133

133:                                              ; preds = %130, %119, %44
  %134 = load %struct.ads8688_state*, %struct.ads8688_state** %4, align 8
  %135 = getelementptr inbounds %struct.ads8688_state, %struct.ads8688_state* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @IS_ERR(i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %133
  %140 = load %struct.ads8688_state*, %struct.ads8688_state** %4, align 8
  %141 = getelementptr inbounds %struct.ads8688_state, %struct.ads8688_state* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @regulator_disable(i32 %142)
  br label %144

144:                                              ; preds = %139, %133
  %145 = load i32, i32* %6, align 4
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %144, %129, %35, %12
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_9__*, i32) #1

declare dso_local %struct.ads8688_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @devm_regulator_get_optional(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @regulator_get_voltage(i32) #1

declare dso_local %struct.TYPE_8__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local i32 @ads8688_reset(%struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @iio_triggered_buffer_setup(%struct.iio_dev*, i32*, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
