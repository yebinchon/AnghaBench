; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7791.c_ad7791_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7791.c_ad7791_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.spi_device = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, %struct.ad7791_platform_data* }
%struct.ad7791_platform_data = type { i32 }
%struct.iio_dev = type { i32*, i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_9__* }
%struct.ad7791_state = type { i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_8__ = type { i64, i32 }

@.str = private unnamed_addr constant [14 x i8] c"Missing IRQ.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"refin\00", align 1
@ad7791_chip_infos = common dso_local global %struct.TYPE_10__* null, align 8
@ad7791_sigma_delta_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@AD7791_FLAG_HAS_FILTER = common dso_local global i32 0, align 4
@ad7791_info = common dso_local global i32 0, align 4
@ad7791_no_filter_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ad7791_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7791_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.ad7791_platform_data*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.ad7791_state*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %11 = load %struct.ad7791_platform_data*, %struct.ad7791_platform_data** %10, align 8
  store %struct.ad7791_platform_data* %11, %struct.ad7791_platform_data** %4, align 8
  %12 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %13 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %18 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %17, i32 0, i32 0
  %19 = call i32 @dev_err(%struct.TYPE_9__* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENXIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %153

22:                                               ; preds = %1
  %23 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %24 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %23, i32 0, i32 0
  %25 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_9__* %24, i32 24)
  store %struct.iio_dev* %25, %struct.iio_dev** %5, align 8
  %26 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %27 = icmp ne %struct.iio_dev* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %153

31:                                               ; preds = %22
  %32 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %33 = call %struct.ad7791_state* @iio_priv(%struct.iio_dev* %32)
  store %struct.ad7791_state* %33, %struct.ad7791_state** %6, align 8
  %34 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %35 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %34, i32 0, i32 0
  %36 = call i32 @devm_regulator_get(%struct.TYPE_9__* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.ad7791_state*, %struct.ad7791_state** %6, align 8
  %38 = getelementptr inbounds %struct.ad7791_state, %struct.ad7791_state* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ad7791_state*, %struct.ad7791_state** %6, align 8
  %40 = getelementptr inbounds %struct.ad7791_state, %struct.ad7791_state* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @IS_ERR(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %31
  %45 = load %struct.ad7791_state*, %struct.ad7791_state** %6, align 8
  %46 = getelementptr inbounds %struct.ad7791_state, %struct.ad7791_state* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @PTR_ERR(i32 %47)
  store i32 %48, i32* %2, align 4
  br label %153

49:                                               ; preds = %31
  %50 = load %struct.ad7791_state*, %struct.ad7791_state** %6, align 8
  %51 = getelementptr inbounds %struct.ad7791_state, %struct.ad7791_state* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @regulator_enable(i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %2, align 4
  br label %153

58:                                               ; preds = %49
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ad7791_chip_infos, align 8
  %60 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %61 = call %struct.TYPE_8__* @spi_get_device_id(%struct.spi_device* %60)
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i64 %63
  %65 = load %struct.ad7791_state*, %struct.ad7791_state** %6, align 8
  %66 = getelementptr inbounds %struct.ad7791_state, %struct.ad7791_state* %65, i32 0, i32 1
  store %struct.TYPE_10__* %64, %struct.TYPE_10__** %66, align 8
  %67 = load %struct.ad7791_state*, %struct.ad7791_state** %6, align 8
  %68 = getelementptr inbounds %struct.ad7791_state, %struct.ad7791_state* %67, i32 0, i32 2
  %69 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %70 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %71 = call i32 @ad_sd_init(i32* %68, %struct.iio_dev* %69, %struct.spi_device* %70, i32* @ad7791_sigma_delta_info)
  %72 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %73 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %74 = call i32 @spi_set_drvdata(%struct.spi_device* %72, %struct.iio_dev* %73)
  %75 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %76 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %75, i32 0, i32 0
  %77 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %78 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  store %struct.TYPE_9__* %76, %struct.TYPE_9__** %79, align 8
  %80 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %81 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %85 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  %87 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %88 = call %struct.TYPE_8__* @spi_get_device_id(%struct.spi_device* %87)
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %92 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %94 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %95 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 8
  %96 = load %struct.ad7791_state*, %struct.ad7791_state** %6, align 8
  %97 = getelementptr inbounds %struct.ad7791_state, %struct.ad7791_state* %96, i32 0, i32 1
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %102 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  %103 = load %struct.ad7791_state*, %struct.ad7791_state** %6, align 8
  %104 = getelementptr inbounds %struct.ad7791_state, %struct.ad7791_state* %103, i32 0, i32 1
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %109 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 8
  %110 = load %struct.ad7791_state*, %struct.ad7791_state** %6, align 8
  %111 = getelementptr inbounds %struct.ad7791_state, %struct.ad7791_state* %110, i32 0, i32 1
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @AD7791_FLAG_HAS_FILTER, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %58
  %119 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %120 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %119, i32 0, i32 0
  store i32* @ad7791_info, i32** %120, align 8
  br label %124

121:                                              ; preds = %58
  %122 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %123 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %122, i32 0, i32 0
  store i32* @ad7791_no_filter_info, i32** %123, align 8
  br label %124

124:                                              ; preds = %121, %118
  %125 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %126 = call i32 @ad_sd_setup_buffer_and_trigger(%struct.iio_dev* %125)
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %147

130:                                              ; preds = %124
  %131 = load %struct.ad7791_state*, %struct.ad7791_state** %6, align 8
  %132 = load %struct.ad7791_platform_data*, %struct.ad7791_platform_data** %4, align 8
  %133 = call i32 @ad7791_setup(%struct.ad7791_state* %131, %struct.ad7791_platform_data* %132)
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  br label %144

137:                                              ; preds = %130
  %138 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %139 = call i32 @iio_device_register(%struct.iio_dev* %138)
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  br label %144

143:                                              ; preds = %137
  store i32 0, i32* %2, align 4
  br label %153

144:                                              ; preds = %142, %136
  %145 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %146 = call i32 @ad_sd_cleanup_buffer_and_trigger(%struct.iio_dev* %145)
  br label %147

147:                                              ; preds = %144, %129
  %148 = load %struct.ad7791_state*, %struct.ad7791_state** %6, align 8
  %149 = getelementptr inbounds %struct.ad7791_state, %struct.ad7791_state* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @regulator_disable(i32 %150)
  %152 = load i32, i32* %7, align 4
  store i32 %152, i32* %2, align 4
  br label %153

153:                                              ; preds = %147, %143, %56, %44, %28, %16
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_9__*, i32) #1

declare dso_local %struct.ad7791_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @devm_regulator_get(%struct.TYPE_9__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local %struct.TYPE_8__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @ad_sd_init(i32*, %struct.iio_dev*, %struct.spi_device*, i32*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local i32 @ad_sd_setup_buffer_and_trigger(%struct.iio_dev*) #1

declare dso_local i32 @ad7791_setup(%struct.ad7791_state*, %struct.ad7791_platform_data*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @ad_sd_cleanup_buffer_and_trigger(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
