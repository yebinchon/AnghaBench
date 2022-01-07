; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7793.c_ad7793_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7793.c_ad7793_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.spi_device = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, %struct.ad7793_platform_data* }
%struct.ad7793_platform_data = type { i64 }
%struct.ad7793_state = type { i32, %struct.TYPE_10__*, i32 }
%struct.iio_dev = type { i32, i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i64, i32 }

@.str = private unnamed_addr constant [19 x i8] c"no platform data?\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"no IRQ?\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ad7793_sigma_delta_info = common dso_local global i32 0, align 4
@AD7793_REFSEL_INTERNAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"refin\00", align 1
@ad7793_chip_info_tbl = common dso_local global %struct.TYPE_10__* null, align 8
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ad7793_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7793_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.ad7793_platform_data*, align 8
  %5 = alloca %struct.ad7793_state*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = load %struct.ad7793_platform_data*, %struct.ad7793_platform_data** %11, align 8
  store %struct.ad7793_platform_data* %12, %struct.ad7793_platform_data** %4, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.ad7793_platform_data*, %struct.ad7793_platform_data** %4, align 8
  %14 = icmp ne %struct.ad7793_platform_data* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %16, i32 0, i32 0
  %18 = call i32 @dev_err(%struct.TYPE_9__* %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %182

21:                                               ; preds = %1
  %22 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %23 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %28 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %27, i32 0, i32 0
  %29 = call i32 @dev_err(%struct.TYPE_9__* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %182

32:                                               ; preds = %21
  %33 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %34 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %33, i32 0, i32 0
  %35 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_9__* %34, i32 24)
  store %struct.iio_dev* %35, %struct.iio_dev** %6, align 8
  %36 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %37 = icmp eq %struct.iio_dev* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %182

41:                                               ; preds = %32
  %42 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %43 = call %struct.ad7793_state* @iio_priv(%struct.iio_dev* %42)
  store %struct.ad7793_state* %43, %struct.ad7793_state** %5, align 8
  %44 = load %struct.ad7793_state*, %struct.ad7793_state** %5, align 8
  %45 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %44, i32 0, i32 2
  %46 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %47 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %48 = call i32 @ad_sd_init(i32* %45, %struct.iio_dev* %46, %struct.spi_device* %47, i32* @ad7793_sigma_delta_info)
  %49 = load %struct.ad7793_platform_data*, %struct.ad7793_platform_data** %4, align 8
  %50 = getelementptr inbounds %struct.ad7793_platform_data, %struct.ad7793_platform_data* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @AD7793_REFSEL_INTERNAL, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %91

54:                                               ; preds = %41
  %55 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %56 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %55, i32 0, i32 0
  %57 = call i32 @devm_regulator_get(%struct.TYPE_9__* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.ad7793_state*, %struct.ad7793_state** %5, align 8
  %59 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.ad7793_state*, %struct.ad7793_state** %5, align 8
  %61 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @IS_ERR(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %54
  %66 = load %struct.ad7793_state*, %struct.ad7793_state** %5, align 8
  %67 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @PTR_ERR(i32 %68)
  store i32 %69, i32* %2, align 4
  br label %182

70:                                               ; preds = %54
  %71 = load %struct.ad7793_state*, %struct.ad7793_state** %5, align 8
  %72 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @regulator_enable(i32 %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %2, align 4
  br label %182

79:                                               ; preds = %70
  %80 = load %struct.ad7793_state*, %struct.ad7793_state** %5, align 8
  %81 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @regulator_get_voltage(i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %7, align 4
  br label %169

88:                                               ; preds = %79
  %89 = load i32, i32* %8, align 4
  %90 = sdiv i32 %89, 1000
  store i32 %90, i32* %8, align 4
  br label %92

91:                                               ; preds = %41
  store i32 1170, i32* %8, align 4
  br label %92

92:                                               ; preds = %91, %88
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ad7793_chip_info_tbl, align 8
  %94 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %95 = call %struct.TYPE_8__* @spi_get_device_id(%struct.spi_device* %94)
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i64 %97
  %99 = load %struct.ad7793_state*, %struct.ad7793_state** %5, align 8
  %100 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %99, i32 0, i32 1
  store %struct.TYPE_10__* %98, %struct.TYPE_10__** %100, align 8
  %101 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %102 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %103 = call i32 @spi_set_drvdata(%struct.spi_device* %101, %struct.iio_dev* %102)
  %104 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %105 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %104, i32 0, i32 0
  %106 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %107 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  store %struct.TYPE_9__* %105, %struct.TYPE_9__** %108, align 8
  %109 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %110 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %114 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %113, i32 0, i32 5
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  store i32 %112, i32* %115, align 8
  %116 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %117 = call %struct.TYPE_8__* @spi_get_device_id(%struct.spi_device* %116)
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %121 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %123 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %124 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 4
  %125 = load %struct.ad7793_state*, %struct.ad7793_state** %5, align 8
  %126 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %125, i32 0, i32 1
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %131 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 8
  %132 = load %struct.ad7793_state*, %struct.ad7793_state** %5, align 8
  %133 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %132, i32 0, i32 1
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %138 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load %struct.ad7793_state*, %struct.ad7793_state** %5, align 8
  %140 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %139, i32 0, i32 1
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %145 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %147 = call i32 @ad_sd_setup_buffer_and_trigger(%struct.iio_dev* %146)
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* %7, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %92
  br label %169

151:                                              ; preds = %92
  %152 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %153 = load %struct.ad7793_platform_data*, %struct.ad7793_platform_data** %4, align 8
  %154 = load i32, i32* %8, align 4
  %155 = call i32 @ad7793_setup(%struct.iio_dev* %152, %struct.ad7793_platform_data* %153, i32 %154)
  store i32 %155, i32* %7, align 4
  %156 = load i32, i32* %7, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %151
  br label %166

159:                                              ; preds = %151
  %160 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %161 = call i32 @iio_device_register(%struct.iio_dev* %160)
  store i32 %161, i32* %7, align 4
  %162 = load i32, i32* %7, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %159
  br label %166

165:                                              ; preds = %159
  store i32 0, i32* %2, align 4
  br label %182

166:                                              ; preds = %164, %158
  %167 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %168 = call i32 @ad_sd_cleanup_buffer_and_trigger(%struct.iio_dev* %167)
  br label %169

169:                                              ; preds = %166, %150, %86
  %170 = load %struct.ad7793_platform_data*, %struct.ad7793_platform_data** %4, align 8
  %171 = getelementptr inbounds %struct.ad7793_platform_data, %struct.ad7793_platform_data* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @AD7793_REFSEL_INTERNAL, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %180

175:                                              ; preds = %169
  %176 = load %struct.ad7793_state*, %struct.ad7793_state** %5, align 8
  %177 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @regulator_disable(i32 %178)
  br label %180

180:                                              ; preds = %175, %169
  %181 = load i32, i32* %7, align 4
  store i32 %181, i32* %2, align 4
  br label %182

182:                                              ; preds = %180, %165, %77, %65, %38, %26, %15
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_9__*, i32) #1

declare dso_local %struct.ad7793_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ad_sd_init(i32*, %struct.iio_dev*, %struct.spi_device*, i32*) #1

declare dso_local i32 @devm_regulator_get(%struct.TYPE_9__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @regulator_get_voltage(i32) #1

declare dso_local %struct.TYPE_8__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local i32 @ad_sd_setup_buffer_and_trigger(%struct.iio_dev*) #1

declare dso_local i32 @ad7793_setup(%struct.iio_dev*, %struct.ad7793_platform_data*, i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @ad_sd_cleanup_buffer_and_trigger(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
