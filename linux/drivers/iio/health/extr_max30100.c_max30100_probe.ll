; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/health/extr_max30100.c_max30100_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/health/extr_max30100.c_max30100_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i64, i32 }
%struct.i2c_device_id = type { i32 }
%struct.max30100_data = type { i32, i32, %struct.i2c_client*, %struct.iio_dev* }
%struct.iio_dev = type { i32, %struct.TYPE_2__, i32*, i32, i32, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.iio_buffer = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@MAX30100_DRV_NAME = common dso_local global i32 0, align 4
@max30100_channels = common dso_local global i32 0, align 4
@max30100_info = common dso_local global i32 0, align 4
@max30100_scan_masks = common dso_local global i32 0, align 4
@INDIO_BUFFER_SOFTWARE = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@max30100_buffer_setup_ops = common dso_local global i32 0, align 4
@max30100_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"regmap initialization failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"no valid irq defined\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@max30100_interrupt_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"max30100_irq\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"request irq (%d) failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @max30100_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max30100_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.max30100_data*, align 8
  %7 = alloca %struct.iio_buffer*, align 8
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %11, i32 24)
  store %struct.iio_dev* %12, %struct.iio_dev** %8, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %14 = icmp ne %struct.iio_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %134

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 1
  %21 = call %struct.iio_buffer* @devm_iio_kfifo_allocate(i32* %20)
  store %struct.iio_buffer* %21, %struct.iio_buffer** %7, align 8
  %22 = load %struct.iio_buffer*, %struct.iio_buffer** %7, align 8
  %23 = icmp ne %struct.iio_buffer* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %134

27:                                               ; preds = %18
  %28 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %29 = load %struct.iio_buffer*, %struct.iio_buffer** %7, align 8
  %30 = call i32 @iio_device_attach_buffer(%struct.iio_dev* %28, %struct.iio_buffer* %29)
  %31 = load i32, i32* @MAX30100_DRV_NAME, align 4
  %32 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %33 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %32, i32 0, i32 7
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @max30100_channels, align 4
  %35 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %36 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 8
  %37 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %38 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %37, i32 0, i32 5
  store i32* @max30100_info, i32** %38, align 8
  %39 = load i32, i32* @max30100_channels, align 4
  %40 = call i32 @ARRAY_SIZE(i32 %39)
  %41 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %42 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @max30100_scan_masks, align 4
  %44 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %45 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @INDIO_BUFFER_SOFTWARE, align 4
  %47 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %50 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %52 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %51, i32 0, i32 2
  store i32* @max30100_buffer_setup_ops, i32** %52, align 8
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 1
  %55 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %56 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32* %54, i32** %57, align 8
  %58 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %59 = call %struct.max30100_data* @iio_priv(%struct.iio_dev* %58)
  store %struct.max30100_data* %59, %struct.max30100_data** %6, align 8
  %60 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %61 = load %struct.max30100_data*, %struct.max30100_data** %6, align 8
  %62 = getelementptr inbounds %struct.max30100_data, %struct.max30100_data* %61, i32 0, i32 3
  store %struct.iio_dev* %60, %struct.iio_dev** %62, align 8
  %63 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %64 = load %struct.max30100_data*, %struct.max30100_data** %6, align 8
  %65 = getelementptr inbounds %struct.max30100_data, %struct.max30100_data* %64, i32 0, i32 2
  store %struct.i2c_client* %63, %struct.i2c_client** %65, align 8
  %66 = load %struct.max30100_data*, %struct.max30100_data** %6, align 8
  %67 = getelementptr inbounds %struct.max30100_data, %struct.max30100_data* %66, i32 0, i32 1
  %68 = call i32 @mutex_init(i32* %67)
  %69 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %70 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %71 = call i32 @i2c_set_clientdata(%struct.i2c_client* %69, %struct.iio_dev* %70)
  %72 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %73 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %72, i32* @max30100_regmap_config)
  %74 = load %struct.max30100_data*, %struct.max30100_data** %6, align 8
  %75 = getelementptr inbounds %struct.max30100_data, %struct.max30100_data* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.max30100_data*, %struct.max30100_data** %6, align 8
  %77 = getelementptr inbounds %struct.max30100_data, %struct.max30100_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @IS_ERR(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %27
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %82, i32 0, i32 1
  %84 = call i32 (i32*, i8*, ...) @dev_err(i32* %83, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %85 = load %struct.max30100_data*, %struct.max30100_data** %6, align 8
  %86 = getelementptr inbounds %struct.max30100_data, %struct.max30100_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @PTR_ERR(i32 %87)
  store i32 %88, i32* %3, align 4
  br label %134

89:                                               ; preds = %27
  %90 = load %struct.max30100_data*, %struct.max30100_data** %6, align 8
  %91 = call i32 @max30100_set_powermode(%struct.max30100_data* %90, i32 0)
  %92 = load %struct.max30100_data*, %struct.max30100_data** %6, align 8
  %93 = call i32 @max30100_chip_init(%struct.max30100_data* %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %3, align 4
  br label %134

98:                                               ; preds = %89
  %99 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %100 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp sle i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %105 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %104, i32 0, i32 1
  %106 = call i32 (i32*, i8*, ...) @dev_err(i32* %105, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %134

109:                                              ; preds = %98
  %110 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %111 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %110, i32 0, i32 1
  %112 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %113 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* @max30100_interrupt_handler, align 4
  %116 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %117 = load i32, i32* @IRQF_ONESHOT, align 4
  %118 = or i32 %116, %117
  %119 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %120 = call i32 @devm_request_threaded_irq(i32* %111, i64 %114, i32* null, i32 %115, i32 %118, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), %struct.iio_dev* %119)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %109
  %124 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %125 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %124, i32 0, i32 1
  %126 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %127 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = call i32 (i32*, i8*, ...) @dev_err(i32* %125, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %128)
  %130 = load i32, i32* %9, align 4
  store i32 %130, i32* %3, align 4
  br label %134

131:                                              ; preds = %109
  %132 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %133 = call i32 @iio_device_register(%struct.iio_dev* %132)
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %131, %123, %103, %96, %81, %24, %15
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.iio_buffer* @devm_iio_kfifo_allocate(i32*) #1

declare dso_local i32 @iio_device_attach_buffer(%struct.iio_dev*, %struct.iio_buffer*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.max30100_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @max30100_set_powermode(%struct.max30100_data*, i32) #1

declare dso_local i32 @max30100_chip_init(%struct.max30100_data*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i64, i32*, i32, i32, i8*, %struct.iio_dev*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
