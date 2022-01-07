; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1133.c_si1133_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1133.c_si1133_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.si1133_data = type { i32, %struct.i2c_client*, i32, i32 }
%struct.iio_dev = type { i32, i32*, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@si1133_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to initialise regmap: %d\0A\00", align 1
@si1133_channels = common dso_local global i32 0, align 4
@si1133_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Error when initializing chip: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Required interrupt not provided, cannot proceed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@si1133_threaded_irq_handler = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Request irq %d failed: %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @si1133_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si1133_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.si1133_data*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %10, i32 24)
  store %struct.iio_dev* %11, %struct.iio_dev** %7, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %13 = icmp ne %struct.iio_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %133

17:                                               ; preds = %2
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = call %struct.si1133_data* @iio_priv(%struct.iio_dev* %18)
  store %struct.si1133_data* %19, %struct.si1133_data** %6, align 8
  %20 = load %struct.si1133_data*, %struct.si1133_data** %6, align 8
  %21 = getelementptr inbounds %struct.si1133_data, %struct.si1133_data* %20, i32 0, i32 3
  %22 = call i32 @init_completion(i32* %21)
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %23, i32* @si1133_regmap_config)
  %25 = load %struct.si1133_data*, %struct.si1133_data** %6, align 8
  %26 = getelementptr inbounds %struct.si1133_data, %struct.si1133_data* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.si1133_data*, %struct.si1133_data** %6, align 8
  %28 = getelementptr inbounds %struct.si1133_data, %struct.si1133_data* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %17
  %33 = load %struct.si1133_data*, %struct.si1133_data** %6, align 8
  %34 = getelementptr inbounds %struct.si1133_data, %struct.si1133_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @PTR_ERR(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = load i32, i32* %8, align 4
  %40 = call i32 (i32*, i8*, ...) @dev_err(i32* %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %133

42:                                               ; preds = %17
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %45 = call i32 @i2c_set_clientdata(%struct.i2c_client* %43, %struct.iio_dev* %44)
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = load %struct.si1133_data*, %struct.si1133_data** %6, align 8
  %48 = getelementptr inbounds %struct.si1133_data, %struct.si1133_data* %47, i32 0, i32 1
  store %struct.i2c_client* %46, %struct.i2c_client** %48, align 8
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 0
  %51 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %52 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32* %50, i32** %53, align 8
  %54 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %55 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %58 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @si1133_channels, align 4
  %60 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %61 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @si1133_channels, align 4
  %63 = call i32 @ARRAY_SIZE(i32 %62)
  %64 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %65 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %67 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %66, i32 0, i32 1
  store i32* @si1133_info, i32** %67, align 8
  %68 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %69 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %70 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.si1133_data*, %struct.si1133_data** %6, align 8
  %72 = getelementptr inbounds %struct.si1133_data, %struct.si1133_data* %71, i32 0, i32 0
  %73 = call i32 @mutex_init(i32* %72)
  %74 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %75 = call i32 @si1133_validate_ids(%struct.iio_dev* %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %42
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %3, align 4
  br label %133

80:                                               ; preds = %42
  %81 = load %struct.si1133_data*, %struct.si1133_data** %6, align 8
  %82 = call i32 @si1133_initialize(%struct.si1133_data* %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %87 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %86, i32 0, i32 0
  %88 = load i32, i32* %8, align 4
  %89 = call i32 (i32*, i8*, ...) @dev_err(i32* %87, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %3, align 4
  br label %133

91:                                               ; preds = %80
  %92 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %93 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %91
  %97 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %98 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %97, i32 0, i32 0
  %99 = call i32 (i32*, i8*, ...) @dev_err(i32* %98, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %133

102:                                              ; preds = %91
  %103 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %104 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %103, i32 0, i32 0
  %105 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %106 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @si1133_threaded_irq_handler, align 4
  %109 = load i32, i32* @IRQF_ONESHOT, align 4
  %110 = load i32, i32* @IRQF_SHARED, align 4
  %111 = or i32 %109, %110
  %112 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %113 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %116 = call i32 @devm_request_threaded_irq(i32* %104, i32 %107, i32* null, i32 %108, i32 %111, i32 %114, %struct.iio_dev* %115)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %102
  %120 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %121 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %120, i32 0, i32 0
  %122 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %123 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @dev_warn(i32* %121, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %124, i32 %125)
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %3, align 4
  br label %133

128:                                              ; preds = %102
  %129 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %130 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %129, i32 0, i32 0
  %131 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %132 = call i32 @devm_iio_device_register(i32* %130, %struct.iio_dev* %131)
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %128, %119, %96, %85, %78, %32, %14
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.si1133_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @si1133_validate_ids(%struct.iio_dev*) #1

declare dso_local i32 @si1133_initialize(%struct.si1133_data*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i32, %struct.iio_dev*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @devm_iio_device_register(i32*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
