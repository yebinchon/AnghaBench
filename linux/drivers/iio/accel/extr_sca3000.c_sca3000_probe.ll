; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_sca3000.c_sca3000_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_sca3000.c_sca3000_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.spi_device = type { i64, i32 }
%struct.sca3000_state = type { %struct.TYPE_6__*, i32, %struct.spi_device* }
%struct.iio_dev = type { i32*, i32, i8*, i8*, i32*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_5__ = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@sca3000_spi_chip_info_tbl = common dso_local global %struct.TYPE_6__* null, align 8
@sca3000_info = common dso_local global i32 0, align 4
@sca3000_channels_with_temp = common dso_local global i8* null, align 8
@sca3000_channels = common dso_local global i8* null, align 8
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@sca3000_event_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"sca3000\00", align 1
@sca3000_ring_setup_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @sca3000_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sca3000_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sca3000_state*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 1
  %9 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %8, i32 24)
  store %struct.iio_dev* %9, %struct.iio_dev** %6, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %11 = icmp ne %struct.iio_dev* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %129

15:                                               ; preds = %1
  %16 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %17 = call %struct.sca3000_state* @iio_priv(%struct.iio_dev* %16)
  store %struct.sca3000_state* %17, %struct.sca3000_state** %5, align 8
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %20 = call i32 @spi_set_drvdata(%struct.spi_device* %18, %struct.iio_dev* %19)
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = load %struct.sca3000_state*, %struct.sca3000_state** %5, align 8
  %23 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %22, i32 0, i32 2
  store %struct.spi_device* %21, %struct.spi_device** %23, align 8
  %24 = load %struct.sca3000_state*, %struct.sca3000_state** %5, align 8
  %25 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %24, i32 0, i32 1
  %26 = call i32 @mutex_init(i32* %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sca3000_spi_chip_info_tbl, align 8
  %28 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %29 = call %struct.TYPE_5__* @spi_get_device_id(%struct.spi_device* %28)
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 %31
  %33 = load %struct.sca3000_state*, %struct.sca3000_state** %5, align 8
  %34 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %33, i32 0, i32 0
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %34, align 8
  %35 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %36 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %35, i32 0, i32 1
  %37 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %38 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %37, i32 0, i32 6
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32* %36, i32** %39, align 8
  %40 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %41 = call %struct.TYPE_5__* @spi_get_device_id(%struct.spi_device* %40)
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %45 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 8
  %46 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %47 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %46, i32 0, i32 4
  store i32* @sca3000_info, i32** %47, align 8
  %48 = load %struct.sca3000_state*, %struct.sca3000_state** %5, align 8
  %49 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %15
  %55 = load i8*, i8** @sca3000_channels_with_temp, align 8
  %56 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %57 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** @sca3000_channels_with_temp, align 8
  %59 = call i8* @ARRAY_SIZE(i8* %58)
  %60 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %61 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  br label %70

62:                                               ; preds = %15
  %63 = load i8*, i8** @sca3000_channels, align 8
  %64 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %65 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  %66 = load i8*, i8** @sca3000_channels, align 8
  %67 = call i8* @ARRAY_SIZE(i8* %66)
  %68 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %69 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  br label %70

70:                                               ; preds = %62, %54
  %71 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %72 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %73 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %75 = call i32 @sca3000_configure_ring(%struct.iio_dev* %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* %2, align 4
  br label %129

80:                                               ; preds = %70
  %81 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %82 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %80
  %86 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %87 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %90 = load i32, i32* @IRQF_ONESHOT, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %93 = call i32 @request_threaded_irq(i64 %88, i32* null, i32* @sca3000_event_handler, i32 %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.iio_dev* %92)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %85
  %97 = load i32, i32* %4, align 4
  store i32 %97, i32* %2, align 4
  br label %129

98:                                               ; preds = %85
  br label %99

99:                                               ; preds = %98, %80
  %100 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %101 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %100, i32 0, i32 0
  store i32* @sca3000_ring_setup_ops, i32** %101, align 8
  %102 = load %struct.sca3000_state*, %struct.sca3000_state** %5, align 8
  %103 = call i32 @sca3000_clean_setup(%struct.sca3000_state* %102)
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* %4, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  br label %116

107:                                              ; preds = %99
  %108 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %109 = call i32 @sca3000_print_rev(%struct.iio_dev* %108)
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %4, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %116

113:                                              ; preds = %107
  %114 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %115 = call i32 @iio_device_register(%struct.iio_dev* %114)
  store i32 %115, i32* %2, align 4
  br label %129

116:                                              ; preds = %112, %106
  %117 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %118 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %116
  %122 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %123 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %126 = call i32 @free_irq(i64 %124, %struct.iio_dev* %125)
  br label %127

127:                                              ; preds = %121, %116
  %128 = load i32, i32* %4, align 4
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %127, %113, %96, %78, %12
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.sca3000_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.TYPE_5__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @sca3000_configure_ring(%struct.iio_dev*) #1

declare dso_local i32 @request_threaded_irq(i64, i32*, i32*, i32, i8*, %struct.iio_dev*) #1

declare dso_local i32 @sca3000_clean_setup(%struct.sca3000_state*) #1

declare dso_local i32 @sca3000_print_rev(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @free_irq(i64, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
