; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_berlin2-adc.c_berlin2_adc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_berlin2-adc.c_berlin2_adc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.iio_dev = type { i32, i32, i32*, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.berlin2_adc_priv = type { i32, i32, i32 }
%struct.device_node = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"adc\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"tsen\00", align 1
@berlin2_adc_irq = common dso_local global i32 0, align 4
@berlin2_adc_tsen_irq = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@berlin2_adc_info = common dso_local global i32 0, align 4
@berlin2_adc_channels = common dso_local global i32 0, align 4
@BERLIN2_SM_CTRL = common dso_local global i32 0, align 4
@BERLIN2_SM_CTRL_ADC_POWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @berlin2_adc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @berlin2_adc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.berlin2_adc_priv*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.device_node* @of_get_parent(i32 %13)
  store %struct.device_node* %14, %struct.device_node** %6, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_8__* %16, i32 12)
  store %struct.iio_dev* %17, %struct.iio_dev** %4, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %19 = icmp ne %struct.iio_dev* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %142

23:                                               ; preds = %1
  %24 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %25 = call %struct.berlin2_adc_priv* @iio_priv(%struct.iio_dev* %24)
  store %struct.berlin2_adc_priv* %25, %struct.berlin2_adc_priv** %5, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %28 = call i32 @platform_set_drvdata(%struct.platform_device* %26, %struct.iio_dev* %27)
  %29 = load %struct.device_node*, %struct.device_node** %6, align 8
  %30 = call i32 @syscon_node_to_regmap(%struct.device_node* %29)
  %31 = load %struct.berlin2_adc_priv*, %struct.berlin2_adc_priv** %5, align 8
  %32 = getelementptr inbounds %struct.berlin2_adc_priv, %struct.berlin2_adc_priv* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.device_node*, %struct.device_node** %6, align 8
  %34 = call i32 @of_node_put(%struct.device_node* %33)
  %35 = load %struct.berlin2_adc_priv*, %struct.berlin2_adc_priv** %5, align 8
  %36 = getelementptr inbounds %struct.berlin2_adc_priv, %struct.berlin2_adc_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @IS_ERR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %23
  %41 = load %struct.berlin2_adc_priv*, %struct.berlin2_adc_priv** %5, align 8
  %42 = getelementptr inbounds %struct.berlin2_adc_priv, %struct.berlin2_adc_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @PTR_ERR(i32 %43)
  store i32 %44, i32* %2, align 4
  br label %142

45:                                               ; preds = %23
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = call i32 @platform_get_irq_byname(%struct.platform_device* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %2, align 4
  br label %142

52:                                               ; preds = %45
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = call i32 @platform_get_irq_byname(%struct.platform_device* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %2, align 4
  br label %142

59:                                               ; preds = %52
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @berlin2_adc_irq, align 4
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %71 = call i32 @devm_request_irq(%struct.TYPE_8__* %61, i32 %62, i32 %63, i32 0, i32 %69, %struct.iio_dev* %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %59
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %2, align 4
  br label %142

76:                                               ; preds = %59
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @berlin2_adc_tsen_irq, align 4
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %88 = call i32 @devm_request_irq(%struct.TYPE_8__* %78, i32 %79, i32 %80, i32 0, i32 %86, %struct.iio_dev* %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %76
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %2, align 4
  br label %142

93:                                               ; preds = %76
  %94 = load %struct.berlin2_adc_priv*, %struct.berlin2_adc_priv** %5, align 8
  %95 = getelementptr inbounds %struct.berlin2_adc_priv, %struct.berlin2_adc_priv* %94, i32 0, i32 2
  %96 = call i32 @init_waitqueue_head(i32* %95)
  %97 = load %struct.berlin2_adc_priv*, %struct.berlin2_adc_priv** %5, align 8
  %98 = getelementptr inbounds %struct.berlin2_adc_priv, %struct.berlin2_adc_priv* %97, i32 0, i32 1
  %99 = call i32 @mutex_init(i32* %98)
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %103 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  store %struct.TYPE_8__* %101, %struct.TYPE_8__** %104, align 8
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = call i32 @dev_name(%struct.TYPE_8__* %106)
  %108 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %109 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %111 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %112 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 8
  %113 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %114 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %113, i32 0, i32 2
  store i32* @berlin2_adc_info, i32** %114, align 8
  %115 = load i32, i32* @berlin2_adc_channels, align 4
  %116 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %117 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @berlin2_adc_channels, align 4
  %119 = call i32 @ARRAY_SIZE(i32 %118)
  %120 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %121 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load %struct.berlin2_adc_priv*, %struct.berlin2_adc_priv** %5, align 8
  %123 = getelementptr inbounds %struct.berlin2_adc_priv, %struct.berlin2_adc_priv* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @BERLIN2_SM_CTRL, align 4
  %126 = load i32, i32* @BERLIN2_SM_CTRL_ADC_POWER, align 4
  %127 = load i32, i32* @BERLIN2_SM_CTRL_ADC_POWER, align 4
  %128 = call i32 @regmap_update_bits(i32 %124, i32 %125, i32 %126, i32 %127)
  %129 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %130 = call i32 @iio_device_register(%struct.iio_dev* %129)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %93
  %134 = load %struct.berlin2_adc_priv*, %struct.berlin2_adc_priv** %5, align 8
  %135 = getelementptr inbounds %struct.berlin2_adc_priv, %struct.berlin2_adc_priv* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @BERLIN2_SM_CTRL, align 4
  %138 = load i32, i32* @BERLIN2_SM_CTRL_ADC_POWER, align 4
  %139 = call i32 @regmap_update_bits(i32 %136, i32 %137, i32 %138, i32 0)
  %140 = load i32, i32* %9, align 4
  store i32 %140, i32* %2, align 4
  br label %142

141:                                              ; preds = %93
  store i32 0, i32* %2, align 4
  br label %142

142:                                              ; preds = %141, %133, %91, %74, %57, %50, %40, %20
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local %struct.device_node* @of_get_parent(i32) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_8__*, i32) #1

declare dso_local %struct.berlin2_adc_priv* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iio_dev*) #1

declare dso_local i32 @syscon_node_to_regmap(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_8__*, i32, i32, i32, i32, %struct.iio_dev*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_name(%struct.TYPE_8__*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
