; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-msic.c_platform_msic_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-msic.c_platform_msic_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.intel_msic_gpio_pdata = type { i64 }
%struct.msic_gpio = type { i32, i64, %struct.TYPE_2__, i32, %struct.platform_device* }
%struct.TYPE_2__ = type { i8*, i32, i32, %struct.device*, i64, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"no IRQ line: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"incorrect or missing platform data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MSIC_GPIO_IRQ_OFFSET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"msic_gpio\00", align 1
@msic_gpio_direction_input = common dso_local global i32 0, align 4
@msic_gpio_direction_output = common dso_local global i32 0, align 4
@msic_gpio_get = common dso_local global i32 0, align 4
@msic_gpio_set = common dso_local global i32 0, align 4
@msic_gpio_to_irq = common dso_local global i32 0, align 4
@MSIC_NUM_GPIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Adding MSIC gpio chip failed\0A\00", align 1
@msic_irqchip = common dso_local global i32 0, align 4
@handle_simple_irq = common dso_local global i32 0, align 4
@msic_gpio_irq_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @platform_msic_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @platform_msic_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.intel_msic_gpio_pdata*, align 8
  %6 = alloca %struct.msic_gpio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.intel_msic_gpio_pdata* @dev_get_platdata(%struct.device* %12)
  store %struct.intel_msic_gpio_pdata* %13, %struct.intel_msic_gpio_pdata** %5, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = call i32 @platform_get_irq(%struct.platform_device* %14, i32 0)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %2, align 4
  br label %152

23:                                               ; preds = %1
  %24 = load %struct.intel_msic_gpio_pdata*, %struct.intel_msic_gpio_pdata** %5, align 8
  %25 = icmp ne %struct.intel_msic_gpio_pdata* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load %struct.intel_msic_gpio_pdata*, %struct.intel_msic_gpio_pdata** %5, align 8
  %28 = getelementptr inbounds %struct.intel_msic_gpio_pdata, %struct.intel_msic_gpio_pdata* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26, %23
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %152

36:                                               ; preds = %26
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.msic_gpio* @kzalloc(i32 88, i32 %37)
  store %struct.msic_gpio* %38, %struct.msic_gpio** %6, align 8
  %39 = load %struct.msic_gpio*, %struct.msic_gpio** %6, align 8
  %40 = icmp ne %struct.msic_gpio* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %152

44:                                               ; preds = %36
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = load %struct.msic_gpio*, %struct.msic_gpio** %6, align 8
  %47 = call i32 @dev_set_drvdata(%struct.device* %45, %struct.msic_gpio* %46)
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = load %struct.msic_gpio*, %struct.msic_gpio** %6, align 8
  %50 = getelementptr inbounds %struct.msic_gpio, %struct.msic_gpio* %49, i32 0, i32 4
  store %struct.platform_device* %48, %struct.platform_device** %50, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.msic_gpio*, %struct.msic_gpio** %6, align 8
  %53 = getelementptr inbounds %struct.msic_gpio, %struct.msic_gpio* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.intel_msic_gpio_pdata*, %struct.intel_msic_gpio_pdata** %5, align 8
  %55 = getelementptr inbounds %struct.intel_msic_gpio_pdata, %struct.intel_msic_gpio_pdata* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MSIC_GPIO_IRQ_OFFSET, align 8
  %58 = add nsw i64 %56, %57
  %59 = load %struct.msic_gpio*, %struct.msic_gpio** %6, align 8
  %60 = getelementptr inbounds %struct.msic_gpio, %struct.msic_gpio* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.msic_gpio*, %struct.msic_gpio** %6, align 8
  %62 = getelementptr inbounds %struct.msic_gpio, %struct.msic_gpio* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %63, align 8
  %64 = load i32, i32* @msic_gpio_direction_input, align 4
  %65 = load %struct.msic_gpio*, %struct.msic_gpio** %6, align 8
  %66 = getelementptr inbounds %struct.msic_gpio, %struct.msic_gpio* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 9
  store i32 %64, i32* %67, align 8
  %68 = load i32, i32* @msic_gpio_direction_output, align 4
  %69 = load %struct.msic_gpio*, %struct.msic_gpio** %6, align 8
  %70 = getelementptr inbounds %struct.msic_gpio, %struct.msic_gpio* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 8
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* @msic_gpio_get, align 4
  %73 = load %struct.msic_gpio*, %struct.msic_gpio** %6, align 8
  %74 = getelementptr inbounds %struct.msic_gpio, %struct.msic_gpio* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 7
  store i32 %72, i32* %75, align 8
  %76 = load i32, i32* @msic_gpio_set, align 4
  %77 = load %struct.msic_gpio*, %struct.msic_gpio** %6, align 8
  %78 = getelementptr inbounds %struct.msic_gpio, %struct.msic_gpio* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 6
  store i32 %76, i32* %79, align 4
  %80 = load i32, i32* @msic_gpio_to_irq, align 4
  %81 = load %struct.msic_gpio*, %struct.msic_gpio** %6, align 8
  %82 = getelementptr inbounds %struct.msic_gpio, %struct.msic_gpio* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 5
  store i32 %80, i32* %83, align 8
  %84 = load %struct.intel_msic_gpio_pdata*, %struct.intel_msic_gpio_pdata** %5, align 8
  %85 = getelementptr inbounds %struct.intel_msic_gpio_pdata, %struct.intel_msic_gpio_pdata* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.msic_gpio*, %struct.msic_gpio** %6, align 8
  %88 = getelementptr inbounds %struct.msic_gpio, %struct.msic_gpio* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 4
  store i64 %86, i64* %89, align 8
  %90 = load i32, i32* @MSIC_NUM_GPIO, align 4
  %91 = load %struct.msic_gpio*, %struct.msic_gpio** %6, align 8
  %92 = getelementptr inbounds %struct.msic_gpio, %struct.msic_gpio* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  store i32 %90, i32* %93, align 8
  %94 = load %struct.msic_gpio*, %struct.msic_gpio** %6, align 8
  %95 = getelementptr inbounds %struct.msic_gpio, %struct.msic_gpio* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  store i32 1, i32* %96, align 4
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = load %struct.msic_gpio*, %struct.msic_gpio** %6, align 8
  %99 = getelementptr inbounds %struct.msic_gpio, %struct.msic_gpio* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 3
  store %struct.device* %97, %struct.device** %100, align 8
  %101 = load %struct.msic_gpio*, %struct.msic_gpio** %6, align 8
  %102 = getelementptr inbounds %struct.msic_gpio, %struct.msic_gpio* %101, i32 0, i32 3
  %103 = call i32 @mutex_init(i32* %102)
  %104 = load %struct.msic_gpio*, %struct.msic_gpio** %6, align 8
  %105 = getelementptr inbounds %struct.msic_gpio, %struct.msic_gpio* %104, i32 0, i32 2
  %106 = load %struct.msic_gpio*, %struct.msic_gpio** %6, align 8
  %107 = call i32 @gpiochip_add_data(%struct.TYPE_2__* %105, %struct.msic_gpio* %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %44
  %111 = load %struct.device*, %struct.device** %4, align 8
  %112 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %111, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %148

113:                                              ; preds = %44
  store i32 0, i32* %9, align 4
  br label %114

114:                                              ; preds = %138, %113
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.msic_gpio*, %struct.msic_gpio** %6, align 8
  %117 = getelementptr inbounds %struct.msic_gpio, %struct.msic_gpio* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = icmp slt i32 %115, %119
  br i1 %120, label %121, label %141

121:                                              ; preds = %114
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = load %struct.msic_gpio*, %struct.msic_gpio** %6, align 8
  %125 = getelementptr inbounds %struct.msic_gpio, %struct.msic_gpio* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %123, %126
  %128 = load %struct.msic_gpio*, %struct.msic_gpio** %6, align 8
  %129 = call i32 @irq_set_chip_data(i64 %127, %struct.msic_gpio* %128)
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = load %struct.msic_gpio*, %struct.msic_gpio** %6, align 8
  %133 = getelementptr inbounds %struct.msic_gpio, %struct.msic_gpio* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %131, %134
  %136 = load i32, i32* @handle_simple_irq, align 4
  %137 = call i32 @irq_set_chip_and_handler(i64 %135, i32* @msic_irqchip, i32 %136)
  br label %138

138:                                              ; preds = %121
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %9, align 4
  br label %114

141:                                              ; preds = %114
  %142 = load %struct.msic_gpio*, %struct.msic_gpio** %6, align 8
  %143 = getelementptr inbounds %struct.msic_gpio, %struct.msic_gpio* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @msic_gpio_irq_handler, align 4
  %146 = load %struct.msic_gpio*, %struct.msic_gpio** %6, align 8
  %147 = call i32 @irq_set_chained_handler_and_data(i32 %144, i32 %145, %struct.msic_gpio* %146)
  store i32 0, i32* %2, align 4
  br label %152

148:                                              ; preds = %110
  %149 = load %struct.msic_gpio*, %struct.msic_gpio** %6, align 8
  %150 = call i32 @kfree(%struct.msic_gpio* %149)
  %151 = load i32, i32* %8, align 4
  store i32 %151, i32* %2, align 4
  br label %152

152:                                              ; preds = %148, %141, %41, %31, %18
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local %struct.intel_msic_gpio_pdata* @dev_get_platdata(%struct.device*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.msic_gpio* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.msic_gpio*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @gpiochip_add_data(%struct.TYPE_2__*, %struct.msic_gpio*) #1

declare dso_local i32 @irq_set_chip_data(i64, %struct.msic_gpio*) #1

declare dso_local i32 @irq_set_chip_and_handler(i64, i32*, i32) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i32, i32, %struct.msic_gpio*) #1

declare dso_local i32 @kfree(%struct.msic_gpio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
