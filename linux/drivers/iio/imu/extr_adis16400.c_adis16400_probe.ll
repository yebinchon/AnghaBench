; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16400.c_adis16400_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16400.c_adis16400_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.spi_device = type { i32 }
%struct.adis16400_state = type { %struct.TYPE_10__, %struct.TYPE_11__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.iio_dev = type { i32, i32, i32*, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@adis16400_chips = common dso_local global %struct.TYPE_11__* null, align 8
@adis16400_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ADIS16400_NO_BURST = common dso_local global i32 0, align 4
@adis16400_burst = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@ADIS16400_BURST_DIAG_STAT = common dso_local global i32 0, align 4
@adis16400_data = common dso_local global i32 0, align 4
@adis16400_trigger_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @adis16400_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16400_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.adis16400_state*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %8, i32 24)
  store %struct.iio_dev* %9, %struct.iio_dev** %5, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %11 = icmp eq %struct.iio_dev* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %134

15:                                               ; preds = %1
  %16 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %17 = call %struct.adis16400_state* @iio_priv(%struct.iio_dev* %16)
  store %struct.adis16400_state* %17, %struct.adis16400_state** %4, align 8
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %20 = call i32 @spi_set_drvdata(%struct.spi_device* %18, %struct.iio_dev* %19)
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** @adis16400_chips, align 8
  %22 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %23 = call %struct.TYPE_9__* @spi_get_device_id(%struct.spi_device* %22)
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i64 %25
  %27 = load %struct.adis16400_state*, %struct.adis16400_state** %4, align 8
  %28 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %27, i32 0, i32 1
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %28, align 8
  %29 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %30 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %29, i32 0, i32 0
  %31 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %32 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store i32* %30, i32** %33, align 8
  %34 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %35 = call %struct.TYPE_9__* @spi_get_device_id(%struct.spi_device* %34)
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %39 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 8
  %40 = load %struct.adis16400_state*, %struct.adis16400_state** %4, align 8
  %41 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %40, i32 0, i32 1
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %46 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load %struct.adis16400_state*, %struct.adis16400_state** %4, align 8
  %48 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %47, i32 0, i32 1
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %53 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %55 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %54, i32 0, i32 2
  store i32* @adis16400_info, i32** %55, align 8
  %56 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %57 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %58 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.adis16400_state*, %struct.adis16400_state** %4, align 8
  %60 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %59, i32 0, i32 1
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @ADIS16400_NO_BURST, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %93, label %67

67:                                               ; preds = %15
  %68 = load %struct.adis16400_state*, %struct.adis16400_state** %4, align 8
  %69 = call i32 @adis16400_setup_chan_mask(%struct.adis16400_state* %68)
  %70 = load %struct.adis16400_state*, %struct.adis16400_state** %4, align 8
  %71 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %74 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.adis16400_state*, %struct.adis16400_state** %4, align 8
  %76 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  store %struct.TYPE_12__* @adis16400_burst, %struct.TYPE_12__** %77, align 8
  %78 = load %struct.adis16400_state*, %struct.adis16400_state** %4, align 8
  %79 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %78, i32 0, i32 1
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @ADIS16400_BURST_DIAG_STAT, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %67
  %87 = load %struct.adis16400_state*, %struct.adis16400_state** %4, align 8
  %88 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  store i32 4, i32* %91, align 4
  br label %92

92:                                               ; preds = %86, %67
  br label %93

93:                                               ; preds = %92, %15
  %94 = load %struct.adis16400_state*, %struct.adis16400_state** %4, align 8
  %95 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %94, i32 0, i32 0
  %96 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %97 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %98 = call i32 @adis_init(%struct.TYPE_10__* %95, %struct.iio_dev* %96, %struct.spi_device* %97, i32* @adis16400_data)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %93
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %2, align 4
  br label %134

103:                                              ; preds = %93
  %104 = load %struct.adis16400_state*, %struct.adis16400_state** %4, align 8
  %105 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %104, i32 0, i32 0
  %106 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %107 = load i32, i32* @adis16400_trigger_handler, align 4
  %108 = call i32 @adis_setup_buffer_and_trigger(%struct.TYPE_10__* %105, %struct.iio_dev* %106, i32 %107)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %103
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %2, align 4
  br label %134

113:                                              ; preds = %103
  %114 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %115 = call i32 @adis16400_initial_setup(%struct.iio_dev* %114)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %128

119:                                              ; preds = %113
  %120 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %121 = call i32 @iio_device_register(%struct.iio_dev* %120)
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  br label %128

125:                                              ; preds = %119
  %126 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %127 = call i32 @adis16400_debugfs_init(%struct.iio_dev* %126)
  store i32 0, i32* %2, align 4
  br label %134

128:                                              ; preds = %124, %118
  %129 = load %struct.adis16400_state*, %struct.adis16400_state** %4, align 8
  %130 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %129, i32 0, i32 0
  %131 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %132 = call i32 @adis_cleanup_buffer_and_trigger(%struct.TYPE_10__* %130, %struct.iio_dev* %131)
  %133 = load i32, i32* %6, align 4
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %128, %125, %111, %101, %12
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.adis16400_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local %struct.TYPE_9__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @adis16400_setup_chan_mask(%struct.adis16400_state*) #1

declare dso_local i32 @adis_init(%struct.TYPE_10__*, %struct.iio_dev*, %struct.spi_device*, i32*) #1

declare dso_local i32 @adis_setup_buffer_and_trigger(%struct.TYPE_10__*, %struct.iio_dev*, i32) #1

declare dso_local i32 @adis16400_initial_setup(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @adis16400_debugfs_init(%struct.iio_dev*) #1

declare dso_local i32 @adis_cleanup_buffer_and_trigger(%struct.TYPE_10__*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
