; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_us5182d.c_us5182d_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_us5182d.c_us5182d_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i64, i32 }
%struct.i2c_device_id = type { i32 }
%struct.us5182d_data = type { i64, %struct.i2c_client*, i32 }
%struct.iio_dev = type { i32, i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@us5182d_info = common dso_local global i32 0, align 4
@US5182D_DRV_NAME = common dso_local global i32 0, align 4
@us5182d_channels = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@US5182D_REG_CHIPID = common dso_local global i32 0, align 4
@US5182D_CHIPID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to detect US5182 light chip\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@us5182d_irq_thread_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"us5182d-irq\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"no valid irq found\0A\00", align 1
@US5182D_SLEEP_MS = common dso_local global i32 0, align 4
@US5182D_CFG0_SHUTDOWN_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @us5182d_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @us5182d_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.us5182d_data*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  %11 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %10, i32 24)
  store %struct.iio_dev* %11, %struct.iio_dev** %7, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %13 = icmp ne %struct.iio_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %148

17:                                               ; preds = %2
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = call %struct.us5182d_data* @iio_priv(%struct.iio_dev* %18)
  store %struct.us5182d_data* %19, %struct.us5182d_data** %6, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %22 = call i32 @i2c_set_clientdata(%struct.i2c_client* %20, %struct.iio_dev* %21)
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load %struct.us5182d_data*, %struct.us5182d_data** %6, align 8
  %25 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %24, i32 0, i32 1
  store %struct.i2c_client* %23, %struct.i2c_client** %25, align 8
  %26 = load %struct.us5182d_data*, %struct.us5182d_data** %6, align 8
  %27 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %26, i32 0, i32 2
  %28 = call i32 @mutex_init(i32* %27)
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 1
  %31 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %32 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32* %30, i32** %33, align 8
  %34 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %35 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %34, i32 0, i32 4
  store i32* @us5182d_info, i32** %35, align 8
  %36 = load i32, i32* @US5182D_DRV_NAME, align 4
  %37 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %38 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @us5182d_channels, align 4
  %40 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %41 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @us5182d_channels, align 4
  %43 = call i32 @ARRAY_SIZE(i32 %42)
  %44 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %45 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %47 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %48 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.us5182d_data*, %struct.us5182d_data** %6, align 8
  %50 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %49, i32 0, i32 1
  %51 = load %struct.i2c_client*, %struct.i2c_client** %50, align 8
  %52 = load i32, i32* @US5182D_REG_CHIPID, align 4
  %53 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %51, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @US5182D_CHIPID, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %17
  %58 = load %struct.us5182d_data*, %struct.us5182d_data** %6, align 8
  %59 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %58, i32 0, i32 1
  %60 = load %struct.i2c_client*, %struct.i2c_client** %59, align 8
  %61 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %60, i32 0, i32 1
  %62 = call i32 @dev_err(i32* %61, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* %8, align 4
  br label %70

67:                                               ; preds = %57
  %68 = load i32, i32* @ENODEV, align 4
  %69 = sub nsw i32 0, %68
  br label %70

70:                                               ; preds = %67, %65
  %71 = phi i32 [ %66, %65 ], [ %69, %67 ]
  store i32 %71, i32* %3, align 4
  br label %148

72:                                               ; preds = %17
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %72
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %78, i32 0, i32 1
  %80 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %81 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* @us5182d_irq_thread_handler, align 4
  %84 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %85 = load i32, i32* @IRQF_ONESHOT, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %88 = call i32 @devm_request_threaded_irq(i32* %79, i64 %82, i32* null, i32 %83, i32 %86, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %struct.iio_dev* %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %77
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %3, align 4
  br label %148

93:                                               ; preds = %77
  br label %98

94:                                               ; preds = %72
  %95 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %96 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %95, i32 0, i32 1
  %97 = call i32 @dev_warn(i32* %96, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %98

98:                                               ; preds = %94, %93
  %99 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %100 = call i32 @us5182d_get_platform_data(%struct.iio_dev* %99)
  %101 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %102 = call i32 @us5182d_init(%struct.iio_dev* %101)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = load i32, i32* %8, align 4
  store i32 %106, i32* %3, align 4
  br label %148

107:                                              ; preds = %98
  %108 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %109 = call i32 @us5182d_dark_gain_config(%struct.iio_dev* %108)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %143

113:                                              ; preds = %107
  %114 = load %struct.us5182d_data*, %struct.us5182d_data** %6, align 8
  %115 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %113
  %119 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %120 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %119, i32 0, i32 1
  %121 = call i32 @pm_runtime_set_active(i32* %120)
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  br label %143

125:                                              ; preds = %118
  br label %126

126:                                              ; preds = %125, %113
  %127 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %128 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %127, i32 0, i32 1
  %129 = call i32 @pm_runtime_enable(i32* %128)
  %130 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %131 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %130, i32 0, i32 1
  %132 = load i32, i32* @US5182D_SLEEP_MS, align 4
  %133 = call i32 @pm_runtime_set_autosuspend_delay(i32* %131, i32 %132)
  %134 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %135 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %134, i32 0, i32 1
  %136 = call i32 @pm_runtime_use_autosuspend(i32* %135)
  %137 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %138 = call i32 @iio_device_register(%struct.iio_dev* %137)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %126
  br label %143

142:                                              ; preds = %126
  store i32 0, i32* %3, align 4
  br label %148

143:                                              ; preds = %141, %124, %112
  %144 = load %struct.us5182d_data*, %struct.us5182d_data** %6, align 8
  %145 = load i32, i32* @US5182D_CFG0_SHUTDOWN_EN, align 4
  %146 = call i32 @us5182d_shutdown_en(%struct.us5182d_data* %144, i32 %145)
  %147 = load i32, i32* %8, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %143, %142, %105, %91, %70, %14
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.us5182d_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i64, i32*, i32, i32, i8*, %struct.iio_dev*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @us5182d_get_platform_data(%struct.iio_dev*) #1

declare dso_local i32 @us5182d_init(%struct.iio_dev*) #1

declare dso_local i32 @us5182d_dark_gain_config(%struct.iio_dev*) #1

declare dso_local i32 @pm_runtime_set_active(i32*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(i32*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(i32*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @us5182d_shutdown_en(%struct.us5182d_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
