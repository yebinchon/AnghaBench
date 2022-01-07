; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_lpc32xx_adc.c_lpc32xx_adc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_lpc32xx_adc.c_lpc32xx_adc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.lpc32xx_adc_state = type { i32, i32, i32, i32 }
%struct.resource = type { i32 }
%struct.iio_dev = type { i32, i32, i32*, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32* }

@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to get platform I/O memory\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"failed mapping memory\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"failed getting clock\0A\00", align 1
@lpc32xx_adc_isr = common dso_local global i32 0, align 4
@LPC32XXAD_NAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"failed requesting interrupt\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@lpc32xx_adc_iio_channels = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"Missing vref regulator: No scaling available\0A\00", align 1
@lpc32xx_adc_iio_scale_channels = common dso_local global i32 0, align 4
@lpc32xx_adc_iio_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"LPC32XX ADC driver loaded, IRQ %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lpc32xx_adc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc32xx_adc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.lpc32xx_adc_state*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.lpc32xx_adc_state* null, %struct.lpc32xx_adc_state** %4, align 8
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  store %struct.iio_dev* null, %struct.iio_dev** %7, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = load i32, i32* @IORESOURCE_MEM, align 4
  %13 = call %struct.resource* @platform_get_resource(%struct.platform_device* %11, i32 %12, i32 0)
  store %struct.resource* %13, %struct.resource** %5, align 8
  %14 = load %struct.resource*, %struct.resource** %5, align 8
  %15 = icmp ne %struct.resource* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENXIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %155

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %24, i32 16)
  store %struct.iio_dev* %25, %struct.iio_dev** %7, align 8
  %26 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %27 = icmp ne %struct.iio_dev* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %155

31:                                               ; preds = %22
  %32 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %33 = call %struct.lpc32xx_adc_state* @iio_priv(%struct.iio_dev* %32)
  store %struct.lpc32xx_adc_state* %33, %struct.lpc32xx_adc_state** %4, align 8
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load %struct.resource*, %struct.resource** %5, align 8
  %37 = getelementptr inbounds %struct.resource, %struct.resource* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.resource*, %struct.resource** %5, align 8
  %40 = call i32 @resource_size(%struct.resource* %39)
  %41 = call i32 @devm_ioremap(i32* %35, i32 %38, i32 %40)
  %42 = load %struct.lpc32xx_adc_state*, %struct.lpc32xx_adc_state** %4, align 8
  %43 = getelementptr inbounds %struct.lpc32xx_adc_state, %struct.lpc32xx_adc_state* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.lpc32xx_adc_state*, %struct.lpc32xx_adc_state** %4, align 8
  %45 = getelementptr inbounds %struct.lpc32xx_adc_state, %struct.lpc32xx_adc_state* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %31
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @EBUSY, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %155

54:                                               ; preds = %31
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call i32 @devm_clk_get(i32* %56, i32* null)
  %58 = load %struct.lpc32xx_adc_state*, %struct.lpc32xx_adc_state** %4, align 8
  %59 = getelementptr inbounds %struct.lpc32xx_adc_state, %struct.lpc32xx_adc_state* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load %struct.lpc32xx_adc_state*, %struct.lpc32xx_adc_state** %4, align 8
  %61 = getelementptr inbounds %struct.lpc32xx_adc_state, %struct.lpc32xx_adc_state* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @IS_ERR(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %54
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = call i32 @dev_err(i32* %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %69 = load %struct.lpc32xx_adc_state*, %struct.lpc32xx_adc_state** %4, align 8
  %70 = getelementptr inbounds %struct.lpc32xx_adc_state, %struct.lpc32xx_adc_state* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @PTR_ERR(i32 %71)
  store i32 %72, i32* %2, align 4
  br label %155

73:                                               ; preds = %54
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = call i32 @platform_get_irq(%struct.platform_device* %74, i32 0)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp sle i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* @ENXIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %155

81:                                               ; preds = %73
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @lpc32xx_adc_isr, align 4
  %86 = load i32, i32* @LPC32XXAD_NAME, align 4
  %87 = load %struct.lpc32xx_adc_state*, %struct.lpc32xx_adc_state** %4, align 8
  %88 = call i32 @devm_request_irq(i32* %83, i32 %84, i32 %85, i32 0, i32 %86, %struct.lpc32xx_adc_state* %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %81
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = call i32 @dev_err(i32* %93, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %2, align 4
  br label %155

96:                                               ; preds = %81
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = call i32 @devm_regulator_get(i32* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %100 = load %struct.lpc32xx_adc_state*, %struct.lpc32xx_adc_state** %4, align 8
  %101 = getelementptr inbounds %struct.lpc32xx_adc_state, %struct.lpc32xx_adc_state* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.lpc32xx_adc_state*, %struct.lpc32xx_adc_state** %4, align 8
  %103 = getelementptr inbounds %struct.lpc32xx_adc_state, %struct.lpc32xx_adc_state* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @IS_ERR(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %96
  %108 = load i32, i32* @lpc32xx_adc_iio_channels, align 4
  %109 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %110 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %109, i32 0, i32 5
  store i32 %108, i32* %110, align 4
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = call i32 (i32*, i8*, ...) @dev_info(i32* %112, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  br label %118

114:                                              ; preds = %96
  %115 = load i32, i32* @lpc32xx_adc_iio_scale_channels, align 4
  %116 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %117 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %114, %107
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %121 = call i32 @platform_set_drvdata(%struct.platform_device* %119, %struct.iio_dev* %120)
  %122 = load %struct.lpc32xx_adc_state*, %struct.lpc32xx_adc_state** %4, align 8
  %123 = getelementptr inbounds %struct.lpc32xx_adc_state, %struct.lpc32xx_adc_state* %122, i32 0, i32 0
  %124 = call i32 @init_completion(i32* %123)
  %125 = load i32, i32* @LPC32XXAD_NAME, align 4
  %126 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %127 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 8
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 0
  %130 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %131 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  store i32* %129, i32** %132, align 8
  %133 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %134 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %133, i32 0, i32 2
  store i32* @lpc32xx_adc_iio_info, i32** %134, align 8
  %135 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %136 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %137 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* @lpc32xx_adc_iio_channels, align 4
  %139 = call i32 @ARRAY_SIZE(i32 %138)
  %140 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %141 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %145 = call i32 @devm_iio_device_register(i32* %143, %struct.iio_dev* %144)
  store i32 %145, i32* %6, align 4
  %146 = load i32, i32* %6, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %118
  %149 = load i32, i32* %6, align 4
  store i32 %149, i32* %2, align 4
  br label %155

150:                                              ; preds = %118
  %151 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %152 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %151, i32 0, i32 0
  %153 = load i32, i32* %8, align 4
  %154 = call i32 (i32*, i8*, ...) @dev_info(i32* %152, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %153)
  store i32 0, i32* %2, align 4
  br label %155

155:                                              ; preds = %150, %148, %91, %78, %65, %48, %28, %16
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.lpc32xx_adc_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @devm_ioremap(i32*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @devm_clk_get(i32*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.lpc32xx_adc_state*) #1

declare dso_local i32 @devm_regulator_get(i32*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iio_dev*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_iio_device_register(i32*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
