; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_imx7d_adc.c_imx7d_adc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_imx7d_adc.c_imx7d_adc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.imx7d_adc = type { i32, i32, i32, i32, %struct.device* }
%struct.iio_dev = type { %struct.TYPE_3__, i32, i32, i32, i32*, i32 }
%struct.TYPE_3__ = type { %struct.device* }

@.str = private unnamed_addr constant [30 x i8] c"Failed allocating iio device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"adc\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed getting clock, err = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Failed getting reference voltage, err = %d\0A\00", align 1
@imx7d_adc_iio_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@imx7d_adc_iio_channels = common dso_local global i32 0, align 4
@imx7d_adc_isr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Failed requesting irq, irq = %d\0A\00", align 1
@__imx7d_adc_disable = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"Couldn't register the device.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx7d_adc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx7d_adc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.imx7d_adc*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %11, i32 24)
  store %struct.iio_dev* %12, %struct.iio_dev** %5, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %14 = icmp ne %struct.iio_dev* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %159

21:                                               ; preds = %1
  %22 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %23 = call %struct.imx7d_adc* @iio_priv(%struct.iio_dev* %22)
  store %struct.imx7d_adc* %23, %struct.imx7d_adc** %4, align 8
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = load %struct.imx7d_adc*, %struct.imx7d_adc** %4, align 8
  %26 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %25, i32 0, i32 4
  store %struct.device* %24, %struct.device** %26, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %27, i32 0)
  %29 = load %struct.imx7d_adc*, %struct.imx7d_adc** %4, align 8
  %30 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.imx7d_adc*, %struct.imx7d_adc** %4, align 8
  %32 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @IS_ERR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %21
  %37 = load %struct.imx7d_adc*, %struct.imx7d_adc** %4, align 8
  %38 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @PTR_ERR(i32 %39)
  store i32 %40, i32* %2, align 4
  br label %159

41:                                               ; preds = %21
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = call i32 @platform_get_irq(%struct.platform_device* %42, i32 0)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %2, align 4
  br label %159

48:                                               ; preds = %41
  %49 = load %struct.device*, %struct.device** %6, align 8
  %50 = call i32 @devm_clk_get(%struct.device* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.imx7d_adc*, %struct.imx7d_adc** %4, align 8
  %52 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.imx7d_adc*, %struct.imx7d_adc** %4, align 8
  %54 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @IS_ERR(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %48
  %59 = load %struct.imx7d_adc*, %struct.imx7d_adc** %4, align 8
  %60 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @PTR_ERR(i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load %struct.device*, %struct.device** %6, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %2, align 4
  br label %159

67:                                               ; preds = %48
  %68 = load %struct.device*, %struct.device** %6, align 8
  %69 = call i32 @devm_regulator_get(%struct.device* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %70 = load %struct.imx7d_adc*, %struct.imx7d_adc** %4, align 8
  %71 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.imx7d_adc*, %struct.imx7d_adc** %4, align 8
  %73 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @IS_ERR(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %67
  %78 = load %struct.imx7d_adc*, %struct.imx7d_adc** %4, align 8
  %79 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @PTR_ERR(i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load %struct.device*, %struct.device** %6, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %82, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %2, align 4
  br label %159

86:                                               ; preds = %67
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %89 = call i32 @platform_set_drvdata(%struct.platform_device* %87, %struct.iio_dev* %88)
  %90 = load %struct.imx7d_adc*, %struct.imx7d_adc** %4, align 8
  %91 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %90, i32 0, i32 0
  %92 = call i32 @init_completion(i32* %91)
  %93 = load %struct.device*, %struct.device** %6, align 8
  %94 = call i32 @dev_name(%struct.device* %93)
  %95 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %96 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 8
  %97 = load %struct.device*, %struct.device** %6, align 8
  %98 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %99 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  store %struct.device* %97, %struct.device** %100, align 8
  %101 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %102 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %101, i32 0, i32 4
  store i32* @imx7d_adc_iio_info, i32** %102, align 8
  %103 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %104 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %105 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* @imx7d_adc_iio_channels, align 4
  %107 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %108 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* @imx7d_adc_iio_channels, align 4
  %110 = call i32 @ARRAY_SIZE(i32 %109)
  %111 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %112 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 8
  %113 = load %struct.device*, %struct.device** %6, align 8
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @imx7d_adc_isr, align 4
  %116 = load %struct.device*, %struct.device** %6, align 8
  %117 = call i32 @dev_name(%struct.device* %116)
  %118 = load %struct.imx7d_adc*, %struct.imx7d_adc** %4, align 8
  %119 = call i32 @devm_request_irq(%struct.device* %113, i32 %114, i32 %115, i32 0, i32 %117, %struct.imx7d_adc* %118)
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %86
  %123 = load %struct.device*, %struct.device** %6, align 8
  %124 = load i32, i32* %7, align 4
  %125 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %123, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %2, align 4
  br label %159

127:                                              ; preds = %86
  %128 = load %struct.imx7d_adc*, %struct.imx7d_adc** %4, align 8
  %129 = call i32 @imx7d_adc_feature_config(%struct.imx7d_adc* %128)
  %130 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %131 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %130, i32 0, i32 0
  %132 = call i32 @imx7d_adc_enable(%struct.TYPE_3__* %131)
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %127
  %136 = load i32, i32* %8, align 4
  store i32 %136, i32* %2, align 4
  br label %159

137:                                              ; preds = %127
  %138 = load %struct.device*, %struct.device** %6, align 8
  %139 = load i32, i32* @__imx7d_adc_disable, align 4
  %140 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %141 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %140, i32 0, i32 0
  %142 = call i32 @devm_add_action_or_reset(%struct.device* %138, i32 %139, %struct.TYPE_3__* %141)
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %137
  %146 = load i32, i32* %8, align 4
  store i32 %146, i32* %2, align 4
  br label %159

147:                                              ; preds = %137
  %148 = load %struct.device*, %struct.device** %6, align 8
  %149 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %150 = call i32 @devm_iio_device_register(%struct.device* %148, %struct.iio_dev* %149)
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %8, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %147
  %154 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %155 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %154, i32 0, i32 0
  %156 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %155, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %157 = load i32, i32* %8, align 4
  store i32 %157, i32* %2, align 4
  br label %159

158:                                              ; preds = %147
  store i32 0, i32* %2, align 4
  br label %159

159:                                              ; preds = %158, %153, %145, %135, %122, %77, %58, %46, %36, %15
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.imx7d_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iio_dev*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.imx7d_adc*) #1

declare dso_local i32 @imx7d_adc_feature_config(%struct.imx7d_adc*) #1

declare dso_local i32 @imx7d_adc_enable(%struct.TYPE_3__*) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @devm_iio_device_register(%struct.device*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
