; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/ssp_sensors/extr_ssp_dev.c_ssp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/ssp_sensors/extr_ssp_dev.c_ssp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32 }
%struct.ssp_data = type { i64, i32*, i32, i32, i32, i32, %struct.spi_device*, i32, i32, i32, i32, i32, i32*, i64*, i64* }

@.str = private unnamed_addr constant [30 x i8] c"Failed to find platform data\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@sensorhub_sensor_devs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"mfd add devices fail\0A\00", align 1
@SPI_MODE_1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Failed to setup spi\0A\00", align 1
@SSP_FW_DL_STATE_NONE = common dso_local global i64 0, align 8
@SSP_SENSOR_MAX = common dso_local global i32 0, align 4
@SSP_DEFAULT_POLLING_DELAY = common dso_local global i32 0, align 4
@SSP_INITIALIZATION_STATE = common dso_local global i32 0, align 4
@SSP_BIO_HRM_LIB = common dso_local global i64 0, align 8
@ssp_wdt_work_func = common dso_local global i32 0, align 4
@ssp_refresh_task = common dso_local global i32 0, align 4
@ssp_wdt_timer_func = common dso_local global i32 0, align 4
@ssp_irq_thread_fn = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"SSP_Int\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Irq request fail\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Initialize_mcu failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Firmware version not supported\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"Probe failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ssp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssp_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ssp_data*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = call %struct.ssp_data* @ssp_parse_dt(i32* %8)
  store %struct.ssp_data* %9, %struct.ssp_data** %6, align 8
  %10 = load %struct.ssp_data*, %struct.ssp_data** %6, align 8
  %11 = icmp ne %struct.ssp_data* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 0
  %15 = call i32 @dev_err(i32* %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %192

18:                                               ; preds = %1
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %19, i32 0, i32 0
  %21 = load i32, i32* @sensorhub_sensor_devs, align 4
  %22 = load i32, i32* @sensorhub_sensor_devs, align 4
  %23 = call i32 @ARRAY_SIZE(i32 %22)
  %24 = call i32 @mfd_add_devices(i32* %20, i32 -1, i32 %21, i32 %23, i32* null, i32 0, i32* null)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %29 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %28, i32 0, i32 0
  %30 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %192

32:                                               ; preds = %18
  %33 = load i32, i32* @SPI_MODE_1, align 4
  %34 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %35 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %37 = call i32 @spi_setup(%struct.spi_device* %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %42 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %41, i32 0, i32 0
  %43 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %192

45:                                               ; preds = %32
  %46 = load i64, i64* @SSP_FW_DL_STATE_NONE, align 8
  %47 = load %struct.ssp_data*, %struct.ssp_data** %6, align 8
  %48 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %50 = load %struct.ssp_data*, %struct.ssp_data** %6, align 8
  %51 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %50, i32 0, i32 6
  store %struct.spi_device* %49, %struct.spi_device** %51, align 8
  %52 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %53 = load %struct.ssp_data*, %struct.ssp_data** %6, align 8
  %54 = call i32 @spi_set_drvdata(%struct.spi_device* %52, %struct.ssp_data* %53)
  %55 = load %struct.ssp_data*, %struct.ssp_data** %6, align 8
  %56 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %55, i32 0, i32 4
  %57 = call i32 @mutex_init(i32* %56)
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %89, %45
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @SSP_SENSOR_MAX, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %92

62:                                               ; preds = %58
  %63 = load i32, i32* @SSP_DEFAULT_POLLING_DELAY, align 4
  %64 = load %struct.ssp_data*, %struct.ssp_data** %6, align 8
  %65 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %63, i32* %69, align 4
  %70 = load %struct.ssp_data*, %struct.ssp_data** %6, align 8
  %71 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %70, i32 0, i32 14
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  store i64 0, i64* %75, align 8
  %76 = load %struct.ssp_data*, %struct.ssp_data** %6, align 8
  %77 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %76, i32 0, i32 13
  %78 = load i64*, i64** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  store i64 0, i64* %81, align 8
  %82 = load i32, i32* @SSP_INITIALIZATION_STATE, align 4
  %83 = load %struct.ssp_data*, %struct.ssp_data** %6, align 8
  %84 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %83, i32 0, i32 12
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %82, i32* %88, align 4
  br label %89

89:                                               ; preds = %62
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %58

92:                                               ; preds = %58
  %93 = load %struct.ssp_data*, %struct.ssp_data** %6, align 8
  %94 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* @SSP_BIO_HRM_LIB, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32 100, i32* %97, align 4
  %98 = load %struct.ssp_data*, %struct.ssp_data** %6, align 8
  %99 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %98, i32 0, i32 2
  store i32 1, i32* %99, align 8
  %100 = load %struct.ssp_data*, %struct.ssp_data** %6, align 8
  %101 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %100, i32 0, i32 5
  %102 = call i32 @mutex_init(i32* %101)
  %103 = load %struct.ssp_data*, %struct.ssp_data** %6, align 8
  %104 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %103, i32 0, i32 11
  %105 = call i32 @INIT_LIST_HEAD(i32* %104)
  %106 = load %struct.ssp_data*, %struct.ssp_data** %6, align 8
  %107 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %106, i32 0, i32 10
  %108 = call i32 @atomic_set(i32* %107, i32 0)
  %109 = load %struct.ssp_data*, %struct.ssp_data** %6, align 8
  %110 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %109, i32 0, i32 9
  %111 = load i32, i32* @ssp_wdt_work_func, align 4
  %112 = call i32 @INIT_WORK(i32* %110, i32 %111)
  %113 = load %struct.ssp_data*, %struct.ssp_data** %6, align 8
  %114 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %113, i32 0, i32 8
  %115 = load i32, i32* @ssp_refresh_task, align 4
  %116 = call i32 @INIT_DELAYED_WORK(i32* %114, i32 %115)
  %117 = load %struct.ssp_data*, %struct.ssp_data** %6, align 8
  %118 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %117, i32 0, i32 7
  %119 = load i32, i32* @ssp_wdt_timer_func, align 4
  %120 = call i32 @timer_setup(i32* %118, i32 %119, i32 0)
  %121 = load %struct.ssp_data*, %struct.ssp_data** %6, align 8
  %122 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %121, i32 0, i32 6
  %123 = load %struct.spi_device*, %struct.spi_device** %122, align 8
  %124 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @ssp_irq_thread_fn, align 4
  %127 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %128 = load i32, i32* @IRQF_ONESHOT, align 4
  %129 = or i32 %127, %128
  %130 = load %struct.ssp_data*, %struct.ssp_data** %6, align 8
  %131 = call i32 @request_threaded_irq(i32 %125, i32* null, i32 %126, i32 %129, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %struct.ssp_data* %130)
  store i32 %131, i32* %4, align 4
  %132 = load i32, i32* %4, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %92
  %135 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %136 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %135, i32 0, i32 0
  %137 = call i32 @dev_err(i32* %136, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %181

138:                                              ; preds = %92
  %139 = load %struct.ssp_data*, %struct.ssp_data** %6, align 8
  %140 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %139, i32 0, i32 3
  store i32 0, i32* %140, align 4
  %141 = load %struct.ssp_data*, %struct.ssp_data** %6, align 8
  %142 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %141, i32 0, i32 6
  %143 = load %struct.spi_device*, %struct.spi_device** %142, align 8
  %144 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @enable_irq_wake(i32 %145)
  %147 = load %struct.ssp_data*, %struct.ssp_data** %6, align 8
  %148 = call i64 @ssp_check_fwbl(%struct.ssp_data* %147)
  %149 = load %struct.ssp_data*, %struct.ssp_data** %6, align 8
  %150 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %149, i32 0, i32 0
  store i64 %148, i64* %150, align 8
  %151 = load %struct.ssp_data*, %struct.ssp_data** %6, align 8
  %152 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @SSP_FW_DL_STATE_NONE, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %166

156:                                              ; preds = %138
  %157 = load %struct.ssp_data*, %struct.ssp_data** %6, align 8
  %158 = call i32 @ssp_initialize_mcu(%struct.ssp_data* %157)
  store i32 %158, i32* %4, align 4
  %159 = load i32, i32* %4, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %156
  %162 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %163 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %162, i32 0, i32 0
  %164 = call i32 @dev_err(i32* %163, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %173

165:                                              ; preds = %156
  br label %172

166:                                              ; preds = %138
  %167 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %168 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %167, i32 0, i32 0
  %169 = call i32 @dev_err(i32* %168, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %170 = load i32, i32* @EPERM, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %4, align 4
  br label %173

172:                                              ; preds = %165
  store i32 0, i32* %2, align 4
  br label %192

173:                                              ; preds = %166, %161
  %174 = load %struct.ssp_data*, %struct.ssp_data** %6, align 8
  %175 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %174, i32 0, i32 6
  %176 = load %struct.spi_device*, %struct.spi_device** %175, align 8
  %177 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.ssp_data*, %struct.ssp_data** %6, align 8
  %180 = call i32 @free_irq(i32 %178, %struct.ssp_data* %179)
  br label %181

181:                                              ; preds = %173, %134
  %182 = load %struct.ssp_data*, %struct.ssp_data** %6, align 8
  %183 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %182, i32 0, i32 5
  %184 = call i32 @mutex_destroy(i32* %183)
  %185 = load %struct.ssp_data*, %struct.ssp_data** %6, align 8
  %186 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %185, i32 0, i32 4
  %187 = call i32 @mutex_destroy(i32* %186)
  %188 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %189 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %188, i32 0, i32 0
  %190 = call i32 @dev_err(i32* %189, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %191 = load i32, i32* %4, align 4
  store i32 %191, i32* %2, align 4
  br label %192

192:                                              ; preds = %181, %172, %40, %27, %12
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

declare dso_local %struct.ssp_data* @ssp_parse_dt(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mfd_add_devices(i32*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.ssp_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i8*, %struct.ssp_data*) #1

declare dso_local i32 @enable_irq_wake(i32) #1

declare dso_local i64 @ssp_check_fwbl(%struct.ssp_data*) #1

declare dso_local i32 @ssp_initialize_mcu(%struct.ssp_data*) #1

declare dso_local i32 @free_irq(i32, %struct.ssp_data*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
