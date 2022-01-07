; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad7303.c_ad7303_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad7303.c_ad7303_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ad7303_platform_data*, i64 }
%struct.ad7303_platform_data = type { i64 }
%struct.spi_device_id = type { i32 }
%struct.iio_dev = type { i32, i32, i32, i32*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.ad7303_state = type { i8*, i8*, i32, %struct.spi_device* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"Vdd\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"REF-supply\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"REF\00", align 1
@AD7303_CFG_EXTERNAL_VREF = common dso_local global i32 0, align 4
@ad7303_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ad7303_channels = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ad7303_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7303_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_device_id*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.ad7303_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ad7303_platform_data*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %11 = call %struct.spi_device_id* @spi_get_device_id(%struct.spi_device* %10)
  store %struct.spi_device_id* %11, %struct.spi_device_id** %4, align 8
  %12 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %13 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %12, i32 0, i32 0
  %14 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_5__* %13, i32 32)
  store %struct.iio_dev* %14, %struct.iio_dev** %5, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %16 = icmp eq %struct.iio_dev* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %159

20:                                               ; preds = %1
  %21 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %22 = call %struct.ad7303_state* @iio_priv(%struct.iio_dev* %21)
  store %struct.ad7303_state* %22, %struct.ad7303_state** %6, align 8
  %23 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %24 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %25 = call i32 @spi_set_drvdata(%struct.spi_device* %23, %struct.iio_dev* %24)
  %26 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %27 = load %struct.ad7303_state*, %struct.ad7303_state** %6, align 8
  %28 = getelementptr inbounds %struct.ad7303_state, %struct.ad7303_state* %27, i32 0, i32 3
  store %struct.spi_device* %26, %struct.spi_device** %28, align 8
  %29 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %30 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %29, i32 0, i32 0
  %31 = call i8* @devm_regulator_get(%struct.TYPE_5__* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.ad7303_state*, %struct.ad7303_state** %6, align 8
  %33 = getelementptr inbounds %struct.ad7303_state, %struct.ad7303_state* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load %struct.ad7303_state*, %struct.ad7303_state** %6, align 8
  %35 = getelementptr inbounds %struct.ad7303_state, %struct.ad7303_state* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @IS_ERR(i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %20
  %40 = load %struct.ad7303_state*, %struct.ad7303_state** %6, align 8
  %41 = getelementptr inbounds %struct.ad7303_state, %struct.ad7303_state* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @PTR_ERR(i8* %42)
  store i32 %43, i32* %2, align 4
  br label %159

44:                                               ; preds = %20
  %45 = load %struct.ad7303_state*, %struct.ad7303_state** %6, align 8
  %46 = getelementptr inbounds %struct.ad7303_state, %struct.ad7303_state* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @regulator_enable(i8* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %2, align 4
  br label %159

53:                                               ; preds = %44
  %54 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %55 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %61 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @of_property_read_bool(i64 %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %64, i32* %7, align 4
  br label %80

65:                                               ; preds = %53
  %66 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %67 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load %struct.ad7303_platform_data*, %struct.ad7303_platform_data** %68, align 8
  store %struct.ad7303_platform_data* %69, %struct.ad7303_platform_data** %9, align 8
  %70 = load %struct.ad7303_platform_data*, %struct.ad7303_platform_data** %9, align 8
  %71 = icmp ne %struct.ad7303_platform_data* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %65
  %73 = load %struct.ad7303_platform_data*, %struct.ad7303_platform_data** %9, align 8
  %74 = getelementptr inbounds %struct.ad7303_platform_data, %struct.ad7303_platform_data* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 1, i32* %7, align 4
  br label %79

78:                                               ; preds = %72, %65
  store i32 0, i32* %7, align 4
  br label %79

79:                                               ; preds = %78, %77
  br label %80

80:                                               ; preds = %79, %59
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %113

83:                                               ; preds = %80
  %84 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %85 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %84, i32 0, i32 0
  %86 = call i8* @devm_regulator_get(%struct.TYPE_5__* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %87 = load %struct.ad7303_state*, %struct.ad7303_state** %6, align 8
  %88 = getelementptr inbounds %struct.ad7303_state, %struct.ad7303_state* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  %89 = load %struct.ad7303_state*, %struct.ad7303_state** %6, align 8
  %90 = getelementptr inbounds %struct.ad7303_state, %struct.ad7303_state* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i64 @IS_ERR(i8* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %83
  %95 = load %struct.ad7303_state*, %struct.ad7303_state** %6, align 8
  %96 = getelementptr inbounds %struct.ad7303_state, %struct.ad7303_state* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @PTR_ERR(i8* %97)
  store i32 %98, i32* %8, align 4
  br label %153

99:                                               ; preds = %83
  %100 = load %struct.ad7303_state*, %struct.ad7303_state** %6, align 8
  %101 = getelementptr inbounds %struct.ad7303_state, %struct.ad7303_state* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @regulator_enable(i8* %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  br label %153

107:                                              ; preds = %99
  %108 = load i32, i32* @AD7303_CFG_EXTERNAL_VREF, align 4
  %109 = load %struct.ad7303_state*, %struct.ad7303_state** %6, align 8
  %110 = getelementptr inbounds %struct.ad7303_state, %struct.ad7303_state* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %107, %80
  %114 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %115 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %114, i32 0, i32 0
  %116 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %117 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  store %struct.TYPE_5__* %115, %struct.TYPE_5__** %118, align 8
  %119 = load %struct.spi_device_id*, %struct.spi_device_id** %4, align 8
  %120 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %123 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 8
  %124 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %125 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %124, i32 0, i32 3
  store i32* @ad7303_info, i32** %125, align 8
  %126 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %127 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %128 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 8
  %129 = load i32, i32* @ad7303_channels, align 4
  %130 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %131 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* @ad7303_channels, align 4
  %133 = call i32 @ARRAY_SIZE(i32 %132)
  %134 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %135 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  %136 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %137 = call i32 @iio_device_register(%struct.iio_dev* %136)
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %113
  br label %142

141:                                              ; preds = %113
  store i32 0, i32* %2, align 4
  br label %159

142:                                              ; preds = %140
  %143 = load %struct.ad7303_state*, %struct.ad7303_state** %6, align 8
  %144 = getelementptr inbounds %struct.ad7303_state, %struct.ad7303_state* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = load %struct.ad7303_state*, %struct.ad7303_state** %6, align 8
  %149 = getelementptr inbounds %struct.ad7303_state, %struct.ad7303_state* %148, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 @regulator_disable(i8* %150)
  br label %152

152:                                              ; preds = %147, %142
  br label %153

153:                                              ; preds = %152, %106, %94
  %154 = load %struct.ad7303_state*, %struct.ad7303_state** %6, align 8
  %155 = getelementptr inbounds %struct.ad7303_state, %struct.ad7303_state* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 @regulator_disable(i8* %156)
  %158 = load i32, i32* %8, align 4
  store i32 %158, i32* %2, align 4
  br label %159

159:                                              ; preds = %153, %141, %51, %39, %17
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local %struct.spi_device_id* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_5__*, i32) #1

declare dso_local %struct.ad7303_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local i8* @devm_regulator_get(%struct.TYPE_5__*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @regulator_enable(i8*) #1

declare dso_local i32 @of_property_read_bool(i64, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
