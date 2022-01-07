; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_lpc18xx_adc.c_lpc18xx_adc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_lpc18xx_adc.c_lpc18xx_adc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.iio_dev = type { i32, i32, i32, i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.lpc18xx_adc = type { i32, i64, i64, i64, i32, i32* }
%struct.resource = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"error getting clock\0A\00", align 1
@LPC18XX_ADC_CLK_TARGET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"error getting regulator\0A\00", align 1
@lpc18xx_adc_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@lpc18xx_adc_iio_channels = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"unable to enable regulator\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"unable to enable clock\0A\00", align 1
@LPC18XX_ADC_CR_CLKDIV_SHIFT = common dso_local global i32 0, align 4
@LPC18XX_ADC_CR_PDN = common dso_local global i32 0, align 4
@LPC18XX_ADC_CR = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"unable to register device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lpc18xx_adc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc18xx_adc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.lpc18xx_adc*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %11, i32 48)
  store %struct.iio_dev* %12, %struct.iio_dev** %4, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %14 = icmp ne %struct.iio_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %183

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %21 = call i32 @platform_set_drvdata(%struct.platform_device* %19, %struct.iio_dev* %20)
  %22 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %23 = call %struct.lpc18xx_adc* @iio_priv(%struct.iio_dev* %22)
  store %struct.lpc18xx_adc* %23, %struct.lpc18xx_adc** %5, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = load %struct.lpc18xx_adc*, %struct.lpc18xx_adc** %5, align 8
  %27 = getelementptr inbounds %struct.lpc18xx_adc, %struct.lpc18xx_adc* %26, i32 0, i32 5
  store i32* %25, i32** %27, align 8
  %28 = load %struct.lpc18xx_adc*, %struct.lpc18xx_adc** %5, align 8
  %29 = getelementptr inbounds %struct.lpc18xx_adc, %struct.lpc18xx_adc* %28, i32 0, i32 4
  %30 = call i32 @mutex_init(i32* %29)
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = load i32, i32* @IORESOURCE_MEM, align 4
  %33 = call %struct.resource* @platform_get_resource(%struct.platform_device* %31, i32 %32, i32 0)
  store %struct.resource* %33, %struct.resource** %6, align 8
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load %struct.resource*, %struct.resource** %6, align 8
  %37 = call i64 @devm_ioremap_resource(i32* %35, %struct.resource* %36)
  %38 = load %struct.lpc18xx_adc*, %struct.lpc18xx_adc** %5, align 8
  %39 = getelementptr inbounds %struct.lpc18xx_adc, %struct.lpc18xx_adc* %38, i32 0, i32 3
  store i64 %37, i64* %39, align 8
  %40 = load %struct.lpc18xx_adc*, %struct.lpc18xx_adc** %5, align 8
  %41 = getelementptr inbounds %struct.lpc18xx_adc, %struct.lpc18xx_adc* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @IS_ERR(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %18
  %46 = load %struct.lpc18xx_adc*, %struct.lpc18xx_adc** %5, align 8
  %47 = getelementptr inbounds %struct.lpc18xx_adc, %struct.lpc18xx_adc* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @PTR_ERR(i64 %48)
  store i32 %49, i32* %2, align 4
  br label %183

50:                                               ; preds = %18
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = call i64 @devm_clk_get(i32* %52, i32* null)
  %54 = load %struct.lpc18xx_adc*, %struct.lpc18xx_adc** %5, align 8
  %55 = getelementptr inbounds %struct.lpc18xx_adc, %struct.lpc18xx_adc* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  %56 = load %struct.lpc18xx_adc*, %struct.lpc18xx_adc** %5, align 8
  %57 = getelementptr inbounds %struct.lpc18xx_adc, %struct.lpc18xx_adc* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @IS_ERR(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %50
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.lpc18xx_adc*, %struct.lpc18xx_adc** %5, align 8
  %66 = getelementptr inbounds %struct.lpc18xx_adc, %struct.lpc18xx_adc* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @PTR_ERR(i64 %67)
  store i32 %68, i32* %2, align 4
  br label %183

69:                                               ; preds = %50
  %70 = load %struct.lpc18xx_adc*, %struct.lpc18xx_adc** %5, align 8
  %71 = getelementptr inbounds %struct.lpc18xx_adc, %struct.lpc18xx_adc* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @clk_get_rate(i64 %72)
  store i64 %73, i64* %8, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load i32, i32* @LPC18XX_ADC_CLK_TARGET, align 4
  %76 = call i32 @DIV_ROUND_UP(i64 %74, i32 %75)
  store i32 %76, i32* %7, align 4
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = call i64 @devm_regulator_get(i32* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %80 = load %struct.lpc18xx_adc*, %struct.lpc18xx_adc** %5, align 8
  %81 = getelementptr inbounds %struct.lpc18xx_adc, %struct.lpc18xx_adc* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  %82 = load %struct.lpc18xx_adc*, %struct.lpc18xx_adc** %5, align 8
  %83 = getelementptr inbounds %struct.lpc18xx_adc, %struct.lpc18xx_adc* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @IS_ERR(i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %69
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = call i32 @dev_err(i32* %89, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %91 = load %struct.lpc18xx_adc*, %struct.lpc18xx_adc** %5, align 8
  %92 = getelementptr inbounds %struct.lpc18xx_adc, %struct.lpc18xx_adc* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @PTR_ERR(i64 %93)
  store i32 %94, i32* %2, align 4
  br label %183

95:                                               ; preds = %69
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = call i32 @dev_name(i32* %97)
  %99 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %100 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %99, i32 0, i32 5
  store i32 %98, i32* %100, align 8
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %104 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  store i32* %102, i32** %105, align 8
  %106 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %107 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %106, i32 0, i32 3
  store i32* @lpc18xx_adc_info, i32** %107, align 8
  %108 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %109 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %110 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* @lpc18xx_adc_iio_channels, align 4
  %112 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %113 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @lpc18xx_adc_iio_channels, align 4
  %115 = call i32 @ARRAY_SIZE(i32 %114)
  %116 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %117 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.lpc18xx_adc*, %struct.lpc18xx_adc** %5, align 8
  %119 = getelementptr inbounds %struct.lpc18xx_adc, %struct.lpc18xx_adc* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @regulator_enable(i64 %120)
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %95
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = call i32 @dev_err(i32* %126, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %128 = load i32, i32* %9, align 4
  store i32 %128, i32* %2, align 4
  br label %183

129:                                              ; preds = %95
  %130 = load %struct.lpc18xx_adc*, %struct.lpc18xx_adc** %5, align 8
  %131 = getelementptr inbounds %struct.lpc18xx_adc, %struct.lpc18xx_adc* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @clk_prepare_enable(i64 %132)
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %129
  %137 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %138 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %137, i32 0, i32 0
  %139 = call i32 @dev_err(i32* %138, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %177

140:                                              ; preds = %129
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* @LPC18XX_ADC_CR_CLKDIV_SHIFT, align 4
  %143 = shl i32 %141, %142
  %144 = load i32, i32* @LPC18XX_ADC_CR_PDN, align 4
  %145 = or i32 %143, %144
  %146 = load %struct.lpc18xx_adc*, %struct.lpc18xx_adc** %5, align 8
  %147 = getelementptr inbounds %struct.lpc18xx_adc, %struct.lpc18xx_adc* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  %148 = load %struct.lpc18xx_adc*, %struct.lpc18xx_adc** %5, align 8
  %149 = getelementptr inbounds %struct.lpc18xx_adc, %struct.lpc18xx_adc* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.lpc18xx_adc*, %struct.lpc18xx_adc** %5, align 8
  %152 = getelementptr inbounds %struct.lpc18xx_adc, %struct.lpc18xx_adc* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @LPC18XX_ADC_CR, align 8
  %155 = add nsw i64 %153, %154
  %156 = call i32 @writel(i32 %150, i64 %155)
  %157 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %158 = call i32 @iio_device_register(%struct.iio_dev* %157)
  store i32 %158, i32* %9, align 4
  %159 = load i32, i32* %9, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %140
  %162 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %163 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %162, i32 0, i32 0
  %164 = call i32 @dev_err(i32* %163, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %166

165:                                              ; preds = %140
  store i32 0, i32* %2, align 4
  br label %183

166:                                              ; preds = %161
  %167 = load %struct.lpc18xx_adc*, %struct.lpc18xx_adc** %5, align 8
  %168 = getelementptr inbounds %struct.lpc18xx_adc, %struct.lpc18xx_adc* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @LPC18XX_ADC_CR, align 8
  %171 = add nsw i64 %169, %170
  %172 = call i32 @writel(i32 0, i64 %171)
  %173 = load %struct.lpc18xx_adc*, %struct.lpc18xx_adc** %5, align 8
  %174 = getelementptr inbounds %struct.lpc18xx_adc, %struct.lpc18xx_adc* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @clk_disable_unprepare(i64 %175)
  br label %177

177:                                              ; preds = %166, %136
  %178 = load %struct.lpc18xx_adc*, %struct.lpc18xx_adc** %5, align 8
  %179 = getelementptr inbounds %struct.lpc18xx_adc, %struct.lpc18xx_adc* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @regulator_disable(i64 %180)
  %182 = load i32, i32* %9, align 4
  store i32 %182, i32* %2, align 4
  br label %183

183:                                              ; preds = %177, %165, %124, %87, %61, %45, %15
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iio_dev*) #1

declare dso_local %struct.lpc18xx_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i64 @devm_clk_get(i32*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @clk_get_rate(i64) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

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
