; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tc3589x.c_tc3589x_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tc3589x.c_tc3589x_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.device_node*, %struct.TYPE_10__*, i32 }
%struct.device_node = type { i32 }
%struct.TYPE_10__ = type { %struct.device_node*, i32 }
%struct.platform_device = type { %struct.TYPE_10__ }
%struct.tc3589x = type { i32 }
%struct.tc3589x_gpio = type { %struct.TYPE_9__, %struct.tc3589x*, %struct.TYPE_10__*, i32 }

@.str = private unnamed_addr constant [27 x i8] c"No Device Tree node found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@template_chip = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@TC3589x_RSTCTRL = common dso_local global i32 0, align 4
@TC3589x_RSTCTRL_GPIRST = common dso_local global i32 0, align 4
@tc3589x_gpio_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"tc3589x-gpio\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"unable to get irq: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"unable to add gpiochip: %d\0A\00", align 1
@tc3589x_gpio_irq_chip = common dso_local global i32 0, align 4
@handle_simple_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"could not connect irqchip to gpiochip\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tc3589x_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc3589x_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tc3589x*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.tc3589x_gpio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.tc3589x* @dev_get_drvdata(i32 %12)
  store %struct.tc3589x* %13, %struct.tc3589x** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %5, align 8
  %18 = load %struct.device_node*, %struct.device_node** %5, align 8
  %19 = icmp ne %struct.device_node* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %135

26:                                               ; preds = %1
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = call i32 @platform_get_irq(%struct.platform_device* %27, i32 0)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %2, align 4
  br label %135

33:                                               ; preds = %26
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.tc3589x_gpio* @devm_kzalloc(%struct.TYPE_10__* %35, i32 56, i32 %36)
  store %struct.tc3589x_gpio* %37, %struct.tc3589x_gpio** %6, align 8
  %38 = load %struct.tc3589x_gpio*, %struct.tc3589x_gpio** %6, align 8
  %39 = icmp ne %struct.tc3589x_gpio* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %135

43:                                               ; preds = %33
  %44 = load %struct.tc3589x_gpio*, %struct.tc3589x_gpio** %6, align 8
  %45 = getelementptr inbounds %struct.tc3589x_gpio, %struct.tc3589x_gpio* %44, i32 0, i32 3
  %46 = call i32 @mutex_init(i32* %45)
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load %struct.tc3589x_gpio*, %struct.tc3589x_gpio** %6, align 8
  %50 = getelementptr inbounds %struct.tc3589x_gpio, %struct.tc3589x_gpio* %49, i32 0, i32 2
  store %struct.TYPE_10__* %48, %struct.TYPE_10__** %50, align 8
  %51 = load %struct.tc3589x*, %struct.tc3589x** %4, align 8
  %52 = load %struct.tc3589x_gpio*, %struct.tc3589x_gpio** %6, align 8
  %53 = getelementptr inbounds %struct.tc3589x_gpio, %struct.tc3589x_gpio* %52, i32 0, i32 1
  store %struct.tc3589x* %51, %struct.tc3589x** %53, align 8
  %54 = load %struct.tc3589x_gpio*, %struct.tc3589x_gpio** %6, align 8
  %55 = getelementptr inbounds %struct.tc3589x_gpio, %struct.tc3589x_gpio* %54, i32 0, i32 0
  %56 = bitcast %struct.TYPE_9__* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 bitcast (%struct.TYPE_9__* @template_chip to i8*), i64 32, i1 false)
  %57 = load %struct.tc3589x*, %struct.tc3589x** %4, align 8
  %58 = getelementptr inbounds %struct.tc3589x, %struct.tc3589x* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.tc3589x_gpio*, %struct.tc3589x_gpio** %6, align 8
  %61 = getelementptr inbounds %struct.tc3589x_gpio, %struct.tc3589x_gpio* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 3
  store i32 %59, i32* %62, align 8
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = load %struct.tc3589x_gpio*, %struct.tc3589x_gpio** %6, align 8
  %66 = getelementptr inbounds %struct.tc3589x_gpio, %struct.tc3589x_gpio* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 2
  store %struct.TYPE_10__* %64, %struct.TYPE_10__** %67, align 8
  %68 = load %struct.tc3589x_gpio*, %struct.tc3589x_gpio** %6, align 8
  %69 = getelementptr inbounds %struct.tc3589x_gpio, %struct.tc3589x_gpio* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  store i32 -1, i32* %70, align 8
  %71 = load %struct.device_node*, %struct.device_node** %5, align 8
  %72 = load %struct.tc3589x_gpio*, %struct.tc3589x_gpio** %6, align 8
  %73 = getelementptr inbounds %struct.tc3589x_gpio, %struct.tc3589x_gpio* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  store %struct.device_node* %71, %struct.device_node** %74, align 8
  %75 = load %struct.tc3589x*, %struct.tc3589x** %4, align 8
  %76 = load i32, i32* @TC3589x_RSTCTRL, align 4
  %77 = load i32, i32* @TC3589x_RSTCTRL_GPIRST, align 4
  %78 = call i32 @tc3589x_set_bits(%struct.tc3589x* %75, i32 %76, i32 %77, i32 0)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %43
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %2, align 4
  br label %135

83:                                               ; preds = %43
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @tc3589x_gpio_irq, align 4
  %88 = load i32, i32* @IRQF_ONESHOT, align 4
  %89 = load %struct.tc3589x_gpio*, %struct.tc3589x_gpio** %6, align 8
  %90 = call i32 @devm_request_threaded_irq(%struct.TYPE_10__* %85, i32 %86, i32* null, i32 %87, i32 %88, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), %struct.tc3589x_gpio* %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %83
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = load i32, i32* %7, align 4
  %97 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %95, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %2, align 4
  br label %135

99:                                               ; preds = %83
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = load %struct.tc3589x_gpio*, %struct.tc3589x_gpio** %6, align 8
  %103 = getelementptr inbounds %struct.tc3589x_gpio, %struct.tc3589x_gpio* %102, i32 0, i32 0
  %104 = load %struct.tc3589x_gpio*, %struct.tc3589x_gpio** %6, align 8
  %105 = call i32 @devm_gpiochip_add_data(%struct.TYPE_10__* %101, %struct.TYPE_9__* %103, %struct.tc3589x_gpio* %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %99
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = load i32, i32* %7, align 4
  %112 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %110, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* %7, align 4
  store i32 %113, i32* %2, align 4
  br label %135

114:                                              ; preds = %99
  %115 = load %struct.tc3589x_gpio*, %struct.tc3589x_gpio** %6, align 8
  %116 = getelementptr inbounds %struct.tc3589x_gpio, %struct.tc3589x_gpio* %115, i32 0, i32 0
  %117 = load i32, i32* @handle_simple_irq, align 4
  %118 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %119 = call i32 @gpiochip_irqchip_add_nested(%struct.TYPE_9__* %116, i32* @tc3589x_gpio_irq_chip, i32 0, i32 %117, i32 %118)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %114
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %124, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %2, align 4
  br label %135

127:                                              ; preds = %114
  %128 = load %struct.tc3589x_gpio*, %struct.tc3589x_gpio** %6, align 8
  %129 = getelementptr inbounds %struct.tc3589x_gpio, %struct.tc3589x_gpio* %128, i32 0, i32 0
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @gpiochip_set_nested_irqchip(%struct.TYPE_9__* %129, i32* @tc3589x_gpio_irq_chip, i32 %130)
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = load %struct.tc3589x_gpio*, %struct.tc3589x_gpio** %6, align 8
  %134 = call i32 @platform_set_drvdata(%struct.platform_device* %132, %struct.tc3589x_gpio* %133)
  store i32 0, i32* %2, align 4
  br label %135

135:                                              ; preds = %127, %122, %108, %93, %81, %40, %31, %20
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local %struct.tc3589x* @dev_get_drvdata(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.tc3589x_gpio* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tc3589x_set_bits(%struct.tc3589x*, i32, i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_10__*, i32, i32*, i32, i32, i8*, %struct.tc3589x_gpio*) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_10__*, %struct.TYPE_9__*, %struct.tc3589x_gpio*) #1

declare dso_local i32 @gpiochip_irqchip_add_nested(%struct.TYPE_9__*, i32*, i32, i32, i32) #1

declare dso_local i32 @gpiochip_set_nested_irqchip(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tc3589x_gpio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
