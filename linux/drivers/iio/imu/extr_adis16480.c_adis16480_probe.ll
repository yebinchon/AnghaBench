; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16480.c_adis16480_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16480.c_adis16480_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.spi_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.spi_device_id = type { i64, i32 }
%struct.iio_dev = type { i32, i32*, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.adis16480 = type { i32, i32, i32, %struct.TYPE_6__* }

@ENOMEM = common dso_local global i32 0, align 4
@adis16480_chip_info = common dso_local global %struct.TYPE_6__* null, align 8
@adis16480_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@adis16480_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @adis16480_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16480_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_device_id*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.adis16480*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = call %struct.spi_device_id* @spi_get_device_id(%struct.spi_device* %8)
  store %struct.spi_device_id* %9, %struct.spi_device_id** %4, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 0
  %12 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_5__* %11, i32 24)
  store %struct.iio_dev* %12, %struct.iio_dev** %5, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %14 = icmp eq %struct.iio_dev* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %161

18:                                               ; preds = %1
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %21 = call i32 @spi_set_drvdata(%struct.spi_device* %19, %struct.iio_dev* %20)
  %22 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %23 = call %struct.adis16480* @iio_priv(%struct.iio_dev* %22)
  store %struct.adis16480* %23, %struct.adis16480** %6, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @adis16480_chip_info, align 8
  %25 = load %struct.spi_device_id*, %struct.spi_device_id** %4, align 8
  %26 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %27
  %29 = load %struct.adis16480*, %struct.adis16480** %6, align 8
  %30 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %29, i32 0, i32 3
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %30, align 8
  %31 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %32 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %31, i32 0, i32 0
  %33 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %34 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %35, align 8
  %36 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %37 = call %struct.spi_device_id* @spi_get_device_id(%struct.spi_device* %36)
  %38 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %41 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load %struct.adis16480*, %struct.adis16480** %6, align 8
  %43 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %42, i32 0, i32 3
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %48 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.adis16480*, %struct.adis16480** %6, align 8
  %50 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %49, i32 0, i32 3
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %55 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %57 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %56, i32 0, i32 1
  store i32* @adis16480_info, i32** %57, align 8
  %58 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %59 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %60 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.adis16480*, %struct.adis16480** %6, align 8
  %62 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %61, i32 0, i32 2
  %63 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %64 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %65 = call i32 @adis_init(i32* %62, %struct.iio_dev* %63, %struct.spi_device* %64, i32* @adis16480_data)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %18
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %2, align 4
  br label %161

70:                                               ; preds = %18
  %71 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %72 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.adis16480*, %struct.adis16480** %6, align 8
  %76 = call i32 @adis16480_config_irq_pin(i32 %74, %struct.adis16480* %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %70
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %2, align 4
  br label %161

81:                                               ; preds = %70
  %82 = load %struct.adis16480*, %struct.adis16480** %6, align 8
  %83 = call i32 @adis16480_get_ext_clocks(%struct.adis16480* %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %2, align 4
  br label %161

88:                                               ; preds = %81
  %89 = load %struct.adis16480*, %struct.adis16480** %6, align 8
  %90 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @IS_ERR_OR_NULL(i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %116, label %94

94:                                               ; preds = %88
  %95 = load %struct.adis16480*, %struct.adis16480** %6, align 8
  %96 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %97 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @adis16480_ext_clk_config(%struct.adis16480* %95, i32 %99, i32 1)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %94
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %2, align 4
  br label %161

105:                                              ; preds = %94
  %106 = load %struct.adis16480*, %struct.adis16480** %6, align 8
  %107 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @clk_get_rate(i32 %108)
  %110 = load %struct.adis16480*, %struct.adis16480** %6, align 8
  %111 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load %struct.adis16480*, %struct.adis16480** %6, align 8
  %113 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = mul nsw i32 %114, 1000
  store i32 %115, i32* %113, align 8
  br label %124

116:                                              ; preds = %88
  %117 = load %struct.adis16480*, %struct.adis16480** %6, align 8
  %118 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %117, i32 0, i32 3
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.adis16480*, %struct.adis16480** %6, align 8
  %123 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  br label %124

124:                                              ; preds = %116, %105
  %125 = load %struct.adis16480*, %struct.adis16480** %6, align 8
  %126 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %125, i32 0, i32 2
  %127 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %128 = call i32 @adis_setup_buffer_and_trigger(i32* %126, %struct.iio_dev* %127, i32* null)
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  br label %155

132:                                              ; preds = %124
  %133 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %134 = call i32 @adis16480_initial_setup(%struct.iio_dev* %133)
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* %7, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %150

138:                                              ; preds = %132
  %139 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %140 = call i32 @iio_device_register(%struct.iio_dev* %139)
  store i32 %140, i32* %7, align 4
  %141 = load i32, i32* %7, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  br label %147

144:                                              ; preds = %138
  %145 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %146 = call i32 @adis16480_debugfs_init(%struct.iio_dev* %145)
  store i32 0, i32* %2, align 4
  br label %161

147:                                              ; preds = %143
  %148 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %149 = call i32 @adis16480_stop_device(%struct.iio_dev* %148)
  br label %150

150:                                              ; preds = %147, %137
  %151 = load %struct.adis16480*, %struct.adis16480** %6, align 8
  %152 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %151, i32 0, i32 2
  %153 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %154 = call i32 @adis_cleanup_buffer_and_trigger(i32* %152, %struct.iio_dev* %153)
  br label %155

155:                                              ; preds = %150, %131
  %156 = load %struct.adis16480*, %struct.adis16480** %6, align 8
  %157 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @clk_disable_unprepare(i32 %158)
  %160 = load i32, i32* %7, align 4
  store i32 %160, i32* %2, align 4
  br label %161

161:                                              ; preds = %155, %144, %103, %86, %79, %68, %15
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local %struct.spi_device_id* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local %struct.adis16480* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @adis_init(i32*, %struct.iio_dev*, %struct.spi_device*, i32*) #1

declare dso_local i32 @adis16480_config_irq_pin(i32, %struct.adis16480*) #1

declare dso_local i32 @adis16480_get_ext_clocks(%struct.adis16480*) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @adis16480_ext_clk_config(%struct.adis16480*, i32, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @adis_setup_buffer_and_trigger(i32*, %struct.iio_dev*, i32*) #1

declare dso_local i32 @adis16480_initial_setup(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @adis16480_debugfs_init(%struct.iio_dev*) #1

declare dso_local i32 @adis16480_stop_device(%struct.iio_dev*) #1

declare dso_local i32 @adis_cleanup_buffer_and_trigger(i32*, %struct.iio_dev*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
