; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_lpc18xx_dac.c_lpc18xx_dac_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_lpc18xx_dac.c_lpc18xx_dac_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.iio_dev = type { i32, i32, i32, i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.lpc18xx_dac = type { i64, i64, i64, i32 }
%struct.resource = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"error getting clock\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"error getting regulator\0A\00", align 1
@lpc18xx_dac_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@lpc18xx_dac_iio_channels = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"unable to enable regulator\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"unable to enable clock\0A\00", align 1
@LPC18XX_DAC_CTRL = common dso_local global i64 0, align 8
@LPC18XX_DAC_CR = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"unable to register device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lpc18xx_dac_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc18xx_dac_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.lpc18xx_dac*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %9, i32 32)
  store %struct.iio_dev* %10, %struct.iio_dev** %4, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %12 = icmp ne %struct.iio_dev* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %160

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %19 = call i32 @platform_set_drvdata(%struct.platform_device* %17, %struct.iio_dev* %18)
  %20 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %21 = call %struct.lpc18xx_dac* @iio_priv(%struct.iio_dev* %20)
  store %struct.lpc18xx_dac* %21, %struct.lpc18xx_dac** %5, align 8
  %22 = load %struct.lpc18xx_dac*, %struct.lpc18xx_dac** %5, align 8
  %23 = getelementptr inbounds %struct.lpc18xx_dac, %struct.lpc18xx_dac* %22, i32 0, i32 3
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = load i32, i32* @IORESOURCE_MEM, align 4
  %27 = call %struct.resource* @platform_get_resource(%struct.platform_device* %25, i32 %26, i32 0)
  store %struct.resource* %27, %struct.resource** %6, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load %struct.resource*, %struct.resource** %6, align 8
  %31 = call i64 @devm_ioremap_resource(i32* %29, %struct.resource* %30)
  %32 = load %struct.lpc18xx_dac*, %struct.lpc18xx_dac** %5, align 8
  %33 = getelementptr inbounds %struct.lpc18xx_dac, %struct.lpc18xx_dac* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  %34 = load %struct.lpc18xx_dac*, %struct.lpc18xx_dac** %5, align 8
  %35 = getelementptr inbounds %struct.lpc18xx_dac, %struct.lpc18xx_dac* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @IS_ERR(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %16
  %40 = load %struct.lpc18xx_dac*, %struct.lpc18xx_dac** %5, align 8
  %41 = getelementptr inbounds %struct.lpc18xx_dac, %struct.lpc18xx_dac* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @PTR_ERR(i64 %42)
  store i32 %43, i32* %2, align 4
  br label %160

44:                                               ; preds = %16
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = call i64 @devm_clk_get(i32* %46, i32* null)
  %48 = load %struct.lpc18xx_dac*, %struct.lpc18xx_dac** %5, align 8
  %49 = getelementptr inbounds %struct.lpc18xx_dac, %struct.lpc18xx_dac* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load %struct.lpc18xx_dac*, %struct.lpc18xx_dac** %5, align 8
  %51 = getelementptr inbounds %struct.lpc18xx_dac, %struct.lpc18xx_dac* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @IS_ERR(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %44
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %59 = load %struct.lpc18xx_dac*, %struct.lpc18xx_dac** %5, align 8
  %60 = getelementptr inbounds %struct.lpc18xx_dac, %struct.lpc18xx_dac* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @PTR_ERR(i64 %61)
  store i32 %62, i32* %2, align 4
  br label %160

63:                                               ; preds = %44
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = call i64 @devm_regulator_get(i32* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %67 = load %struct.lpc18xx_dac*, %struct.lpc18xx_dac** %5, align 8
  %68 = getelementptr inbounds %struct.lpc18xx_dac, %struct.lpc18xx_dac* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.lpc18xx_dac*, %struct.lpc18xx_dac** %5, align 8
  %70 = getelementptr inbounds %struct.lpc18xx_dac, %struct.lpc18xx_dac* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @IS_ERR(i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %63
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = call i32 @dev_err(i32* %76, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %78 = load %struct.lpc18xx_dac*, %struct.lpc18xx_dac** %5, align 8
  %79 = getelementptr inbounds %struct.lpc18xx_dac, %struct.lpc18xx_dac* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @PTR_ERR(i64 %80)
  store i32 %81, i32* %2, align 4
  br label %160

82:                                               ; preds = %63
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = call i32 @dev_name(i32* %84)
  %86 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %87 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 8
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %91 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i32* %89, i32** %92, align 8
  %93 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %94 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %93, i32 0, i32 3
  store i32* @lpc18xx_dac_info, i32** %94, align 8
  %95 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %96 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %97 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* @lpc18xx_dac_iio_channels, align 4
  %99 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %100 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @lpc18xx_dac_iio_channels, align 4
  %102 = call i32 @ARRAY_SIZE(i32 %101)
  %103 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %104 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.lpc18xx_dac*, %struct.lpc18xx_dac** %5, align 8
  %106 = getelementptr inbounds %struct.lpc18xx_dac, %struct.lpc18xx_dac* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @regulator_enable(i64 %107)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %82
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = call i32 @dev_err(i32* %113, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %115 = load i32, i32* %7, align 4
  store i32 %115, i32* %2, align 4
  br label %160

116:                                              ; preds = %82
  %117 = load %struct.lpc18xx_dac*, %struct.lpc18xx_dac** %5, align 8
  %118 = getelementptr inbounds %struct.lpc18xx_dac, %struct.lpc18xx_dac* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @clk_prepare_enable(i64 %119)
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %116
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 0
  %126 = call i32 @dev_err(i32* %125, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %154

127:                                              ; preds = %116
  %128 = load %struct.lpc18xx_dac*, %struct.lpc18xx_dac** %5, align 8
  %129 = getelementptr inbounds %struct.lpc18xx_dac, %struct.lpc18xx_dac* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @LPC18XX_DAC_CTRL, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @writel(i32 0, i64 %132)
  %134 = load %struct.lpc18xx_dac*, %struct.lpc18xx_dac** %5, align 8
  %135 = getelementptr inbounds %struct.lpc18xx_dac, %struct.lpc18xx_dac* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @LPC18XX_DAC_CR, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i32 @writel(i32 0, i64 %138)
  %140 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %141 = call i32 @iio_device_register(%struct.iio_dev* %140)
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %127
  %145 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %146 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %145, i32 0, i32 0
  %147 = call i32 @dev_err(i32* %146, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %149

148:                                              ; preds = %127
  store i32 0, i32* %2, align 4
  br label %160

149:                                              ; preds = %144
  %150 = load %struct.lpc18xx_dac*, %struct.lpc18xx_dac** %5, align 8
  %151 = getelementptr inbounds %struct.lpc18xx_dac, %struct.lpc18xx_dac* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @clk_disable_unprepare(i64 %152)
  br label %154

154:                                              ; preds = %149, %123
  %155 = load %struct.lpc18xx_dac*, %struct.lpc18xx_dac** %5, align 8
  %156 = getelementptr inbounds %struct.lpc18xx_dac, %struct.lpc18xx_dac* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @regulator_disable(i64 %157)
  %159 = load i32, i32* %7, align 4
  store i32 %159, i32* %2, align 4
  br label %160

160:                                              ; preds = %154, %148, %111, %74, %55, %39, %13
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iio_dev*) #1

declare dso_local %struct.lpc18xx_dac* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i64 @devm_clk_get(i32*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @devm_regulator_get(i32*, i8*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @regulator_enable(i64) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

declare dso_local i32 @regulator_disable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
