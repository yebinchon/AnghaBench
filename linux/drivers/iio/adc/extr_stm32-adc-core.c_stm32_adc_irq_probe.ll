; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc-core.c_stm32_adc_irq_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc-core.c_stm32_adc_irq_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.stm32_adc_priv = type { i32*, i32 }

@STM32_ADC_MAX_ADCS = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@stm32_adc_domain_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to add irq domain\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@stm32_adc_irq_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.stm32_adc_priv*)* @stm32_adc_irq_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_adc_irq_probe(%struct.platform_device* %0, %struct.stm32_adc_priv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.stm32_adc_priv*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.stm32_adc_priv* %1, %struct.stm32_adc_priv** %5, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %58, %2
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @STM32_ADC_MAX_ADCS, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %61

16:                                               ; preds = %12
  %17 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @platform_get_irq(%struct.platform_device* %17, i32 %18)
  %20 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %21 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32 %19, i32* %25, align 4
  %26 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %27 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %16
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %39 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ENXIO, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %58

49:                                               ; preds = %37, %34
  %50 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %51 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %3, align 4
  br label %116

57:                                               ; preds = %16
  br label %58

58:                                               ; preds = %57, %48
  %59 = load i32, i32* %7, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %12

61:                                               ; preds = %12
  %62 = load %struct.device_node*, %struct.device_node** %6, align 8
  %63 = load i32, i32* @STM32_ADC_MAX_ADCS, align 4
  %64 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %65 = call i32 @irq_domain_add_simple(%struct.device_node* %62, i32 %63, i32 0, i32* @stm32_adc_domain_ops, %struct.stm32_adc_priv* %64)
  %66 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %67 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %69 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %61
  %73 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = call i32 @dev_err(%struct.TYPE_2__* %74, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %116

78:                                               ; preds = %61
  store i32 0, i32* %7, align 4
  br label %79

79:                                               ; preds = %112, %78
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @STM32_ADC_MAX_ADCS, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %83, label %115

83:                                               ; preds = %79
  %84 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %85 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %83
  br label %112

93:                                               ; preds = %83
  %94 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %95 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @stm32_adc_irq_handler, align 4
  %102 = call i32 @irq_set_chained_handler(i32 %100, i32 %101)
  %103 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %104 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %111 = call i32 @irq_set_handler_data(i32 %109, %struct.stm32_adc_priv* %110)
  br label %112

112:                                              ; preds = %93, %92
  %113 = load i32, i32* %7, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %7, align 4
  br label %79

115:                                              ; preds = %79
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %115, %72, %49
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @irq_domain_add_simple(%struct.device_node*, i32, i32, i32*, %struct.stm32_adc_priv*) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @irq_set_chained_handler(i32, i32) #1

declare dso_local i32 @irq_set_handler_data(i32, %struct.stm32_adc_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
