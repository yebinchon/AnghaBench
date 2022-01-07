; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_vf610_dac.c_vf610_dac_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_vf610_dac.c_vf610_dac_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.iio_dev = type { i32, i32, i32, i32*, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.vf610_dac = type { i32, i32, %struct.TYPE_8__* }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Failed allocating iio device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"dac\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed getting clock, err = %ld\0A\00", align 1
@vf610_dac_iio_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@vf610_dac_iio_channels = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Could not prepare or enable the clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Couldn't register the device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vf610_dac_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vf610_dac_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.vf610_dac*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_8__* %9, i32 16)
  store %struct.iio_dev* %10, %struct.iio_dev** %4, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %12 = icmp ne %struct.iio_dev* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %130

19:                                               ; preds = %1
  %20 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %21 = call %struct.vf610_dac* @iio_priv(%struct.iio_dev* %20)
  store %struct.vf610_dac* %21, %struct.vf610_dac** %5, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load %struct.vf610_dac*, %struct.vf610_dac** %5, align 8
  %25 = getelementptr inbounds %struct.vf610_dac, %struct.vf610_dac* %24, i32 0, i32 2
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %25, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = load i32, i32* @IORESOURCE_MEM, align 4
  %28 = call %struct.resource* @platform_get_resource(%struct.platform_device* %26, i32 %27, i32 0)
  store %struct.resource* %28, %struct.resource** %6, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load %struct.resource*, %struct.resource** %6, align 8
  %32 = call i32 @devm_ioremap_resource(%struct.TYPE_8__* %30, %struct.resource* %31)
  %33 = load %struct.vf610_dac*, %struct.vf610_dac** %5, align 8
  %34 = getelementptr inbounds %struct.vf610_dac, %struct.vf610_dac* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.vf610_dac*, %struct.vf610_dac** %5, align 8
  %36 = getelementptr inbounds %struct.vf610_dac, %struct.vf610_dac* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @IS_ERR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %19
  %41 = load %struct.vf610_dac*, %struct.vf610_dac** %5, align 8
  %42 = getelementptr inbounds %struct.vf610_dac, %struct.vf610_dac* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @PTR_ERR(i32 %43)
  store i32 %44, i32* %2, align 4
  br label %130

45:                                               ; preds = %19
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = call i32 @devm_clk_get(%struct.TYPE_8__* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.vf610_dac*, %struct.vf610_dac** %5, align 8
  %50 = getelementptr inbounds %struct.vf610_dac, %struct.vf610_dac* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.vf610_dac*, %struct.vf610_dac** %5, align 8
  %52 = getelementptr inbounds %struct.vf610_dac, %struct.vf610_dac* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @IS_ERR(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %45
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = load %struct.vf610_dac*, %struct.vf610_dac** %5, align 8
  %60 = getelementptr inbounds %struct.vf610_dac, %struct.vf610_dac* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @PTR_ERR(i32 %61)
  %63 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %58, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load %struct.vf610_dac*, %struct.vf610_dac** %5, align 8
  %65 = getelementptr inbounds %struct.vf610_dac, %struct.vf610_dac* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @PTR_ERR(i32 %66)
  store i32 %67, i32* %2, align 4
  br label %130

68:                                               ; preds = %45
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %71 = call i32 @platform_set_drvdata(%struct.platform_device* %69, %struct.iio_dev* %70)
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = call i32 @dev_name(%struct.TYPE_8__* %73)
  %75 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %76 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 8
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %80 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  store %struct.TYPE_8__* %78, %struct.TYPE_8__** %81, align 8
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %87 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 8
  %89 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %90 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %89, i32 0, i32 3
  store i32* @vf610_dac_iio_info, i32** %90, align 8
  %91 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %92 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %93 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* @vf610_dac_iio_channels, align 4
  %95 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %96 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @vf610_dac_iio_channels, align 4
  %98 = call i32 @ARRAY_SIZE(i32 %97)
  %99 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %100 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.vf610_dac*, %struct.vf610_dac** %5, align 8
  %102 = getelementptr inbounds %struct.vf610_dac, %struct.vf610_dac* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @clk_prepare_enable(i32 %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %68
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %109, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* %2, align 4
  br label %130

112:                                              ; preds = %68
  %113 = load %struct.vf610_dac*, %struct.vf610_dac** %5, align 8
  %114 = call i32 @vf610_dac_init(%struct.vf610_dac* %113)
  %115 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %116 = call i32 @iio_device_register(%struct.iio_dev* %115)
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %112
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %120, i32 0, i32 0
  %122 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %121, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %124

123:                                              ; preds = %112
  store i32 0, i32* %2, align 4
  br label %130

124:                                              ; preds = %119
  %125 = load %struct.vf610_dac*, %struct.vf610_dac** %5, align 8
  %126 = getelementptr inbounds %struct.vf610_dac, %struct.vf610_dac* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @clk_disable_unprepare(i32 %127)
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %124, %123, %107, %56, %40, %13
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local %struct.vf610_dac* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_8__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iio_dev*) #1

declare dso_local i32 @dev_name(%struct.TYPE_8__*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @vf610_dac_init(%struct.vf610_dac*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
