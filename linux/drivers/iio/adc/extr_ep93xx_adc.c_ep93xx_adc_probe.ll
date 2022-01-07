; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ep93xx_adc.c_ep93xx_adc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ep93xx_adc.c_ep93xx_adc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.iio_dev = type { i32, i32, i32*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.ep93xx_adc_priv = type { i32, i32, i32, i32 }
%struct.clk = type { i32 }
%struct.resource = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Cannot map memory resource\0A\00", align 1
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ep93xx_adc_info = common dso_local global i32 0, align 4
@ep93xx_adc_channels = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Cannot obtain clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Cannot obtain parent clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Cannot set clock rate\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Cannot enable clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ep93xx_adc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_adc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.ep93xx_adc_priv*, align 8
  %7 = alloca %struct.clk*, align 8
  %8 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %10, i32 16)
  store %struct.iio_dev* %11, %struct.iio_dev** %5, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %13 = icmp ne %struct.iio_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %141

17:                                               ; preds = %1
  %18 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %19 = call %struct.ep93xx_adc_priv* @iio_priv(%struct.iio_dev* %18)
  store %struct.ep93xx_adc_priv* %19, %struct.ep93xx_adc_priv** %6, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load i32, i32* @IORESOURCE_MEM, align 4
  %22 = call %struct.resource* @platform_get_resource(%struct.platform_device* %20, i32 %21, i32 0)
  store %struct.resource* %22, %struct.resource** %8, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load %struct.resource*, %struct.resource** %8, align 8
  %26 = call i32 @devm_ioremap_resource(i32* %24, %struct.resource* %25)
  %27 = load %struct.ep93xx_adc_priv*, %struct.ep93xx_adc_priv** %6, align 8
  %28 = getelementptr inbounds %struct.ep93xx_adc_priv, %struct.ep93xx_adc_priv* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ep93xx_adc_priv*, %struct.ep93xx_adc_priv** %6, align 8
  %30 = getelementptr inbounds %struct.ep93xx_adc_priv, %struct.ep93xx_adc_priv* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @IS_ERR(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %17
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.ep93xx_adc_priv*, %struct.ep93xx_adc_priv** %6, align 8
  %39 = getelementptr inbounds %struct.ep93xx_adc_priv, %struct.ep93xx_adc_priv* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @PTR_ERR(i32 %40)
  store i32 %41, i32* %2, align 4
  br label %141

42:                                               ; preds = %17
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %46 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32* %44, i32** %47, align 8
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call i32 @dev_name(i32* %49)
  %51 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %52 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %54 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %55 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 8
  %56 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %57 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %56, i32 0, i32 2
  store i32* @ep93xx_adc_info, i32** %57, align 8
  %58 = load i32, i32* @ep93xx_adc_channels, align 4
  %59 = call i32 @ARRAY_SIZE(i32 %58)
  %60 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %61 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @ep93xx_adc_channels, align 4
  %63 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %64 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.ep93xx_adc_priv*, %struct.ep93xx_adc_priv** %6, align 8
  %66 = getelementptr inbounds %struct.ep93xx_adc_priv, %struct.ep93xx_adc_priv* %65, i32 0, i32 0
  store i32 -1, i32* %66, align 4
  %67 = load %struct.ep93xx_adc_priv*, %struct.ep93xx_adc_priv** %6, align 8
  %68 = getelementptr inbounds %struct.ep93xx_adc_priv, %struct.ep93xx_adc_priv* %67, i32 0, i32 2
  %69 = call i32 @mutex_init(i32* %68)
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %72 = call i32 @platform_set_drvdata(%struct.platform_device* %70, %struct.iio_dev* %71)
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = call i32 @devm_clk_get(i32* %74, i32* null)
  %76 = load %struct.ep93xx_adc_priv*, %struct.ep93xx_adc_priv** %6, align 8
  %77 = getelementptr inbounds %struct.ep93xx_adc_priv, %struct.ep93xx_adc_priv* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.ep93xx_adc_priv*, %struct.ep93xx_adc_priv** %6, align 8
  %79 = getelementptr inbounds %struct.ep93xx_adc_priv, %struct.ep93xx_adc_priv* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @IS_ERR(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %42
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = call i32 @dev_err(i32* %85, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %87 = load %struct.ep93xx_adc_priv*, %struct.ep93xx_adc_priv** %6, align 8
  %88 = getelementptr inbounds %struct.ep93xx_adc_priv, %struct.ep93xx_adc_priv* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @PTR_ERR(i32 %89)
  store i32 %90, i32* %2, align 4
  br label %141

91:                                               ; preds = %42
  %92 = load %struct.ep93xx_adc_priv*, %struct.ep93xx_adc_priv** %6, align 8
  %93 = getelementptr inbounds %struct.ep93xx_adc_priv, %struct.ep93xx_adc_priv* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call %struct.clk* @clk_get_parent(i32 %94)
  store %struct.clk* %95, %struct.clk** %7, align 8
  %96 = load %struct.clk*, %struct.clk** %7, align 8
  %97 = icmp ne %struct.clk* %96, null
  br i1 %97, label %102, label %98

98:                                               ; preds = %91
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = call i32 @dev_warn(i32* %100, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %117

102:                                              ; preds = %91
  %103 = load %struct.ep93xx_adc_priv*, %struct.ep93xx_adc_priv** %6, align 8
  %104 = getelementptr inbounds %struct.ep93xx_adc_priv, %struct.ep93xx_adc_priv* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.clk*, %struct.clk** %7, align 8
  %107 = call i32 @clk_get_rate(%struct.clk* %106)
  %108 = sdiv i32 %107, 16
  %109 = call i32 @clk_set_rate(i32 %105, i32 %108)
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %4, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %102
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 0
  %115 = call i32 @dev_warn(i32* %114, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %116

116:                                              ; preds = %112, %102
  br label %117

117:                                              ; preds = %116, %98
  %118 = load %struct.ep93xx_adc_priv*, %struct.ep93xx_adc_priv** %6, align 8
  %119 = getelementptr inbounds %struct.ep93xx_adc_priv, %struct.ep93xx_adc_priv* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @clk_enable(i32 %120)
  store i32 %121, i32* %4, align 4
  %122 = load i32, i32* %4, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %117
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = call i32 @dev_err(i32* %126, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %128 = load i32, i32* %4, align 4
  store i32 %128, i32* %2, align 4
  br label %141

129:                                              ; preds = %117
  %130 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %131 = call i32 @iio_device_register(%struct.iio_dev* %130)
  store i32 %131, i32* %4, align 4
  %132 = load i32, i32* %4, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load %struct.ep93xx_adc_priv*, %struct.ep93xx_adc_priv** %6, align 8
  %136 = getelementptr inbounds %struct.ep93xx_adc_priv, %struct.ep93xx_adc_priv* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @clk_disable(i32 %137)
  br label %139

139:                                              ; preds = %134, %129
  %140 = load i32, i32* %4, align 4
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %139, %124, %83, %34, %14
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.ep93xx_adc_priv* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iio_dev*) #1

declare dso_local i32 @devm_clk_get(i32*, i32*) #1

declare dso_local %struct.clk* @clk_get_parent(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
