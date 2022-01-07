; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ti-dac5571.c_dac5571_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ti-dac5571.c_dac5571_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dac5571_spec = type { i32 }
%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i64, i32 }
%struct.dac5571_data = type { i32 (%struct.dac5571_data*, i32, i32)*, i32, i32, i32, %struct.dac5571_spec*, %struct.i2c_client* }
%struct.iio_dev = type { i32, i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.device* }

@ENOMEM = common dso_local global i32 0, align 4
@dac5571_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@dac5571_channels = common dso_local global i32 0, align 4
@dac5571_spec = common dso_local global %struct.dac5571_spec* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@dac5571_pwrdwn_single = common dso_local global i32 0, align 4
@dac5571_pwrdwn_quad = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to initialize channel %d to 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @dac5571_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dac5571_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.dac5571_spec*, align 8
  %8 = alloca %struct.dac5571_data*, align 8
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %14, i32 40)
  store %struct.iio_dev* %15, %struct.iio_dev** %9, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %17 = icmp ne %struct.iio_dev* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %147

21:                                               ; preds = %2
  %22 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %23 = call %struct.dac5571_data* @iio_priv(%struct.iio_dev* %22)
  store %struct.dac5571_data* %23, %struct.dac5571_data** %8, align 8
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %26 = call i32 @i2c_set_clientdata(%struct.i2c_client* %24, %struct.iio_dev* %25)
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = load %struct.dac5571_data*, %struct.dac5571_data** %8, align 8
  %29 = getelementptr inbounds %struct.dac5571_data, %struct.dac5571_data* %28, i32 0, i32 5
  store %struct.i2c_client* %27, %struct.i2c_client** %29, align 8
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %32 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store %struct.device* %30, %struct.device** %33, align 8
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.device, %struct.device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %39 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %42 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %41, i32 0, i32 4
  store i32* @dac5571_info, i32** %42, align 8
  %43 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %44 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %47 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %49 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %50 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @dac5571_channels, align 4
  %52 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %53 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.dac5571_spec*, %struct.dac5571_spec** @dac5571_spec, align 8
  %55 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %56 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.dac5571_spec, %struct.dac5571_spec* %54, i64 %57
  store %struct.dac5571_spec* %58, %struct.dac5571_spec** %7, align 8
  %59 = load %struct.dac5571_spec*, %struct.dac5571_spec** %7, align 8
  %60 = getelementptr inbounds %struct.dac5571_spec, %struct.dac5571_spec* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %63 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.dac5571_spec*, %struct.dac5571_spec** %7, align 8
  %65 = load %struct.dac5571_data*, %struct.dac5571_data** %8, align 8
  %66 = getelementptr inbounds %struct.dac5571_data, %struct.dac5571_data* %65, i32 0, i32 4
  store %struct.dac5571_spec* %64, %struct.dac5571_spec** %66, align 8
  %67 = load %struct.device*, %struct.device** %6, align 8
  %68 = call i32 @devm_regulator_get(%struct.device* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %69 = load %struct.dac5571_data*, %struct.dac5571_data** %8, align 8
  %70 = getelementptr inbounds %struct.dac5571_data, %struct.dac5571_data* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load %struct.dac5571_data*, %struct.dac5571_data** %8, align 8
  %72 = getelementptr inbounds %struct.dac5571_data, %struct.dac5571_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @IS_ERR(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %21
  %77 = load %struct.dac5571_data*, %struct.dac5571_data** %8, align 8
  %78 = getelementptr inbounds %struct.dac5571_data, %struct.dac5571_data* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @PTR_ERR(i32 %79)
  store i32 %80, i32* %3, align 4
  br label %147

81:                                               ; preds = %21
  %82 = load %struct.dac5571_data*, %struct.dac5571_data** %8, align 8
  %83 = getelementptr inbounds %struct.dac5571_data, %struct.dac5571_data* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @regulator_enable(i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %3, align 4
  br label %147

90:                                               ; preds = %81
  %91 = load %struct.dac5571_data*, %struct.dac5571_data** %8, align 8
  %92 = getelementptr inbounds %struct.dac5571_data, %struct.dac5571_data* %91, i32 0, i32 3
  %93 = call i32 @mutex_init(i32* %92)
  %94 = load %struct.dac5571_spec*, %struct.dac5571_spec** %7, align 8
  %95 = getelementptr inbounds %struct.dac5571_spec, %struct.dac5571_spec* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  switch i32 %96, label %109 [
    i32 1, label %97
    i32 4, label %103
  ]

97:                                               ; preds = %90
  %98 = load %struct.dac5571_data*, %struct.dac5571_data** %8, align 8
  %99 = getelementptr inbounds %struct.dac5571_data, %struct.dac5571_data* %98, i32 0, i32 0
  store i32 (%struct.dac5571_data*, i32, i32)* @dac5571_cmd_single, i32 (%struct.dac5571_data*, i32, i32)** %99, align 8
  %100 = load i32, i32* @dac5571_pwrdwn_single, align 4
  %101 = load %struct.dac5571_data*, %struct.dac5571_data** %8, align 8
  %102 = getelementptr inbounds %struct.dac5571_data, %struct.dac5571_data* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  br label %110

103:                                              ; preds = %90
  %104 = load %struct.dac5571_data*, %struct.dac5571_data** %8, align 8
  %105 = getelementptr inbounds %struct.dac5571_data, %struct.dac5571_data* %104, i32 0, i32 0
  store i32 (%struct.dac5571_data*, i32, i32)* @dac5571_cmd_quad, i32 (%struct.dac5571_data*, i32, i32)** %105, align 8
  %106 = load i32, i32* @dac5571_pwrdwn_quad, align 4
  %107 = load %struct.dac5571_data*, %struct.dac5571_data** %8, align 8
  %108 = getelementptr inbounds %struct.dac5571_data, %struct.dac5571_data* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  br label %110

109:                                              ; preds = %90
  br label %141

110:                                              ; preds = %103, %97
  store i32 0, i32* %11, align 4
  br label %111

111:                                              ; preds = %131, %110
  %112 = load i32, i32* %11, align 4
  %113 = load %struct.dac5571_spec*, %struct.dac5571_spec** %7, align 8
  %114 = getelementptr inbounds %struct.dac5571_spec, %struct.dac5571_spec* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %134

117:                                              ; preds = %111
  %118 = load %struct.dac5571_data*, %struct.dac5571_data** %8, align 8
  %119 = getelementptr inbounds %struct.dac5571_data, %struct.dac5571_data* %118, i32 0, i32 0
  %120 = load i32 (%struct.dac5571_data*, i32, i32)*, i32 (%struct.dac5571_data*, i32, i32)** %119, align 8
  %121 = load %struct.dac5571_data*, %struct.dac5571_data** %8, align 8
  %122 = load i32, i32* %11, align 4
  %123 = call i32 %120(%struct.dac5571_data* %121, i32 %122, i32 0)
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %117
  %127 = load %struct.device*, %struct.device** %6, align 8
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @dev_err(%struct.device* %127, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %128)
  br label %141

130:                                              ; preds = %117
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %11, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %11, align 4
  br label %111

134:                                              ; preds = %111
  %135 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %136 = call i32 @iio_device_register(%struct.iio_dev* %135)
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  br label %141

140:                                              ; preds = %134
  store i32 0, i32* %3, align 4
  br label %147

141:                                              ; preds = %139, %126, %109
  %142 = load %struct.dac5571_data*, %struct.dac5571_data** %8, align 8
  %143 = getelementptr inbounds %struct.dac5571_data, %struct.dac5571_data* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @regulator_disable(i32 %144)
  %146 = load i32, i32* %10, align 4
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %141, %140, %88, %76, %18
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local %struct.dac5571_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dac5571_cmd_single(%struct.dac5571_data*, i32, i32) #1

declare dso_local i32 @dac5571_cmd_quad(%struct.dac5571_data*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
