; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_apds9960.c_apds9960_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_apds9960.c_apds9960_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i64, i32 }
%struct.i2c_device_id = type { i32 }
%struct.apds9960_data = type { i32, %struct.iio_dev*, %struct.i2c_client*, i32 }
%struct.iio_dev = type { i32, i32*, i32, i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.iio_buffer = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@apds9960_info = common dso_local global i32 0, align 4
@APDS9960_DRV_NAME = common dso_local global i32 0, align 4
@apds9960_channels = common dso_local global i32 0, align 4
@apds9960_scan_masks = common dso_local global i32 0, align 4
@INDIO_BUFFER_SOFTWARE = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@apds9960_buffer_setup_ops = common dso_local global i32 0, align 4
@apds9960_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"regmap initialization failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"no valid irq defined\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@apds9960_interrupt_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"apds9960_event\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"request irq (%d) failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @apds9960_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apds9960_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.apds9960_data*, align 8
  %7 = alloca %struct.iio_buffer*, align 8
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %11, i32 32)
  store %struct.iio_dev* %12, %struct.iio_dev** %8, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %14 = icmp ne %struct.iio_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %164

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
  br label %164

27:                                               ; preds = %18
  %28 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %29 = load %struct.iio_buffer*, %struct.iio_buffer** %7, align 8
  %30 = call i32 @iio_device_attach_buffer(%struct.iio_dev* %28, %struct.iio_buffer* %29)
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 1
  %33 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %34 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %33, i32 0, i32 7
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32* %32, i32** %35, align 8
  %36 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %37 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %36, i32 0, i32 6
  store i32* @apds9960_info, i32** %37, align 8
  %38 = load i32, i32* @APDS9960_DRV_NAME, align 4
  %39 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %40 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @apds9960_channels, align 4
  %42 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %43 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @apds9960_channels, align 4
  %45 = call i32 @ARRAY_SIZE(i32 %44)
  %46 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %47 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @apds9960_scan_masks, align 4
  %49 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %50 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @INDIO_BUFFER_SOFTWARE, align 4
  %52 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %55 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %57 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %56, i32 0, i32 1
  store i32* @apds9960_buffer_setup_ops, i32** %57, align 8
  %58 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %59 = call %struct.apds9960_data* @iio_priv(%struct.iio_dev* %58)
  store %struct.apds9960_data* %59, %struct.apds9960_data** %6, align 8
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %62 = call i32 @i2c_set_clientdata(%struct.i2c_client* %60, %struct.iio_dev* %61)
  %63 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %64 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %63, i32* @apds9960_regmap_config)
  %65 = load %struct.apds9960_data*, %struct.apds9960_data** %6, align 8
  %66 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load %struct.apds9960_data*, %struct.apds9960_data** %6, align 8
  %68 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @IS_ERR(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %27
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %73, i32 0, i32 1
  %75 = call i32 (i32*, i8*, ...) @dev_err(i32* %74, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %76 = load %struct.apds9960_data*, %struct.apds9960_data** %6, align 8
  %77 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @PTR_ERR(i32 %78)
  store i32 %79, i32* %3, align 4
  br label %164

80:                                               ; preds = %27
  %81 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %82 = load %struct.apds9960_data*, %struct.apds9960_data** %6, align 8
  %83 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %82, i32 0, i32 2
  store %struct.i2c_client* %81, %struct.i2c_client** %83, align 8
  %84 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %85 = load %struct.apds9960_data*, %struct.apds9960_data** %6, align 8
  %86 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %85, i32 0, i32 1
  store %struct.iio_dev* %84, %struct.iio_dev** %86, align 8
  %87 = load %struct.apds9960_data*, %struct.apds9960_data** %6, align 8
  %88 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %87, i32 0, i32 0
  %89 = call i32 @mutex_init(i32* %88)
  %90 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %91 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %90, i32 0, i32 1
  %92 = call i32 @pm_runtime_set_active(i32* %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %80
  br label %160

96:                                               ; preds = %80
  %97 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %98 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %97, i32 0, i32 1
  %99 = call i32 @pm_runtime_enable(i32* %98)
  %100 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %101 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %100, i32 0, i32 1
  %102 = call i32 @pm_runtime_set_autosuspend_delay(i32* %101, i32 5000)
  %103 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %104 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %103, i32 0, i32 1
  %105 = call i32 @pm_runtime_use_autosuspend(i32* %104)
  %106 = load %struct.apds9960_data*, %struct.apds9960_data** %6, align 8
  %107 = call i32 @apds9960_set_power_state(%struct.apds9960_data* %106, i32 1)
  %108 = load %struct.apds9960_data*, %struct.apds9960_data** %6, align 8
  %109 = call i32 @apds9960_regfield_init(%struct.apds9960_data* %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %96
  br label %160

113:                                              ; preds = %96
  %114 = load %struct.apds9960_data*, %struct.apds9960_data** %6, align 8
  %115 = call i32 @apds9960_chip_init(%struct.apds9960_data* %114)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %160

119:                                              ; preds = %113
  %120 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %121 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp sle i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %119
  %125 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %126 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %125, i32 0, i32 1
  %127 = call i32 (i32*, i8*, ...) @dev_err(i32* %126, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %9, align 4
  br label %160

130:                                              ; preds = %119
  %131 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %132 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %131, i32 0, i32 1
  %133 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %134 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i32, i32* @apds9960_interrupt_handler, align 4
  %137 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %138 = load i32, i32* @IRQF_ONESHOT, align 4
  %139 = or i32 %137, %138
  %140 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %141 = call i32 @devm_request_threaded_irq(i32* %132, i64 %135, i32* null, i32 %136, i32 %139, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), %struct.iio_dev* %140)
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %9, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %130
  %145 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %146 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %145, i32 0, i32 1
  %147 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %148 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = call i32 (i32*, i8*, ...) @dev_err(i32* %146, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %149)
  br label %160

151:                                              ; preds = %130
  %152 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %153 = call i32 @iio_device_register(%struct.iio_dev* %152)
  store i32 %153, i32* %9, align 4
  %154 = load i32, i32* %9, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %151
  br label %160

157:                                              ; preds = %151
  %158 = load %struct.apds9960_data*, %struct.apds9960_data** %6, align 8
  %159 = call i32 @apds9960_set_power_state(%struct.apds9960_data* %158, i32 0)
  store i32 0, i32* %3, align 4
  br label %164

160:                                              ; preds = %156, %144, %124, %118, %112, %95
  %161 = load %struct.apds9960_data*, %struct.apds9960_data** %6, align 8
  %162 = call i32 @apds9960_set_power_state(%struct.apds9960_data* %161, i32 0)
  %163 = load i32, i32* %9, align 4
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %160, %157, %72, %24, %15
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.iio_buffer* @devm_iio_kfifo_allocate(i32*) #1

declare dso_local i32 @iio_device_attach_buffer(%struct.iio_dev*, %struct.iio_buffer*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.apds9960_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @pm_runtime_set_active(i32*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(i32*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(i32*) #1

declare dso_local i32 @apds9960_set_power_state(%struct.apds9960_data*, i32) #1

declare dso_local i32 @apds9960_regfield_init(%struct.apds9960_data*) #1

declare dso_local i32 @apds9960_chip_init(%struct.apds9960_data*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i64, i32*, i32, i32, i8*, %struct.iio_dev*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
