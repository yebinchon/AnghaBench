; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mcp3422.c_mcp3422_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mcp3422.c_mcp3422_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.i2c_device_id = type { i64 }
%struct.iio_dev = type { i8*, i8*, i32*, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }
%struct.mcp3422 = type { i32, i32, %struct.i2c_client* }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@mcp3422_info = common dso_local global i32 0, align 4
@mcp3421_channels = common dso_local global i8* null, align 8
@mcp3422_channels = common dso_local global i8* null, align 8
@mcp3424_channels = common dso_local global i8* null, align 8
@MCP3422_CONT_SAMPLING = common dso_local global i32 0, align 4
@MCP3422_PGA_1 = common dso_local global i32 0, align 4
@MCP3422_SRATE_240 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @mcp3422_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp3422_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.mcp3422*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @I2C_FUNC_I2C, align 4
  %14 = call i32 @i2c_check_functionality(i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %122

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_6__* %21, i32 16)
  store %struct.iio_dev* %22, %struct.iio_dev** %6, align 8
  %23 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %24 = icmp ne %struct.iio_dev* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %122

28:                                               ; preds = %19
  %29 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %30 = call %struct.mcp3422* @iio_priv(%struct.iio_dev* %29)
  store %struct.mcp3422* %30, %struct.mcp3422** %7, align 8
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = load %struct.mcp3422*, %struct.mcp3422** %7, align 8
  %33 = getelementptr inbounds %struct.mcp3422, %struct.mcp3422* %32, i32 0, i32 2
  store %struct.i2c_client* %31, %struct.i2c_client** %33, align 8
  %34 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %35 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = load %struct.mcp3422*, %struct.mcp3422** %7, align 8
  %39 = getelementptr inbounds %struct.mcp3422, %struct.mcp3422* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.mcp3422*, %struct.mcp3422** %7, align 8
  %41 = getelementptr inbounds %struct.mcp3422, %struct.mcp3422* %40, i32 0, i32 1
  %42 = call i32 @mutex_init(i32* %41)
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 0
  %45 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %46 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %47, align 8
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %53 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = call i32 @dev_name(%struct.TYPE_6__* %56)
  %58 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %59 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %61 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %62 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %64 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %63, i32 0, i32 2
  store i32* @mcp3422_info, i32** %64, align 8
  %65 = load %struct.mcp3422*, %struct.mcp3422** %7, align 8
  %66 = getelementptr inbounds %struct.mcp3422, %struct.mcp3422* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  switch i32 %67, label %92 [
    i32 1, label %68
    i32 5, label %68
    i32 2, label %76
    i32 3, label %76
    i32 6, label %76
    i32 7, label %76
    i32 4, label %84
    i32 8, label %84
  ]

68:                                               ; preds = %28, %28
  %69 = load i8*, i8** @mcp3421_channels, align 8
  %70 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %71 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** @mcp3421_channels, align 8
  %73 = call i8* @ARRAY_SIZE(i8* %72)
  %74 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %75 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  br label %92

76:                                               ; preds = %28, %28, %28, %28
  %77 = load i8*, i8** @mcp3422_channels, align 8
  %78 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %79 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  %80 = load i8*, i8** @mcp3422_channels, align 8
  %81 = call i8* @ARRAY_SIZE(i8* %80)
  %82 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %83 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  br label %92

84:                                               ; preds = %28, %28
  %85 = load i8*, i8** @mcp3424_channels, align 8
  %86 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %87 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  %88 = load i8*, i8** @mcp3424_channels, align 8
  %89 = call i8* @ARRAY_SIZE(i8* %88)
  %90 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %91 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %90, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  br label %92

92:                                               ; preds = %28, %84, %76, %68
  %93 = load i32, i32* @MCP3422_CONT_SAMPLING, align 4
  %94 = call i32 @MCP3422_CHANNEL_VALUE(i32 0)
  %95 = or i32 %93, %94
  %96 = load i32, i32* @MCP3422_PGA_1, align 4
  %97 = call i32 @MCP3422_PGA_VALUE(i32 %96)
  %98 = or i32 %95, %97
  %99 = load i32, i32* @MCP3422_SRATE_240, align 4
  %100 = call i32 @MCP3422_SAMPLE_RATE_VALUE(i32 %99)
  %101 = or i32 %98, %100
  store i32 %101, i32* %9, align 4
  %102 = load %struct.mcp3422*, %struct.mcp3422** %7, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @mcp3422_update_config(%struct.mcp3422* %102, i32 %103)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %92
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %3, align 4
  br label %122

109:                                              ; preds = %92
  %110 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %111 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %110, i32 0, i32 0
  %112 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %113 = call i32 @devm_iio_device_register(%struct.TYPE_6__* %111, %struct.iio_dev* %112)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %109
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %3, align 4
  br label %122

118:                                              ; preds = %109
  %119 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %120 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %121 = call i32 @i2c_set_clientdata(%struct.i2c_client* %119, %struct.iio_dev* %120)
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %118, %116, %107, %25, %16
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_6__*, i32) #1

declare dso_local %struct.mcp3422* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_name(%struct.TYPE_6__*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @MCP3422_CHANNEL_VALUE(i32) #1

declare dso_local i32 @MCP3422_PGA_VALUE(i32) #1

declare dso_local i32 @MCP3422_SAMPLE_RATE_VALUE(i32) #1

declare dso_local i32 @mcp3422_update_config(%struct.mcp3422*, i32) #1

declare dso_local i32 @devm_iio_device_register(%struct.TYPE_6__*, %struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
