; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-dln2.c_dln2_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-dln2.c_dln2_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.dln2_gpio = type { %struct.TYPE_3__, %struct.platform_device*, i32 }
%struct.TYPE_3__ = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.device* }

@.str = private unnamed_addr constant [29 x i8] c"failed to get pin count: %d\0A\00", align 1
@DLN2_GPIO_MAX_PINS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"clamping pins to %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"dln2\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@dln2_gpio_set = common dso_local global i32 0, align 4
@dln2_gpio_get = common dso_local global i32 0, align 4
@dln2_gpio_request = common dso_local global i32 0, align 4
@dln2_gpio_free = common dso_local global i32 0, align 4
@dln2_gpio_get_direction = common dso_local global i32 0, align 4
@dln2_gpio_direction_input = common dso_local global i32 0, align 4
@dln2_gpio_direction_output = common dso_local global i32 0, align 4
@dln2_gpio_set_config = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to add gpio chip: %d\0A\00", align 1
@dln2_gpio_irqchip = common dso_local global i32 0, align 4
@handle_simple_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to add irq chip: %d\0A\00", align 1
@DLN2_GPIO_CONDITION_MET_EV = common dso_local global i32 0, align 4
@dln2_gpio_event = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"failed to register event cb: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dln2_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dln2_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dln2_gpio*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = call i32 @dln2_gpio_get_pin_count(%struct.platform_device* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @dev_err(%struct.device* %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %139

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @DLN2_GPIO_MAX_PINS, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i32, i32* @DLN2_GPIO_MAX_PINS, align 4
  store i32 %24, i32* %6, align 4
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = load i32, i32* @DLN2_GPIO_MAX_PINS, align 4
  %27 = call i32 @dev_warn(%struct.device* %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %23, %19
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.dln2_gpio* @devm_kzalloc(%struct.device* %30, i32 80, i32 %31)
  store %struct.dln2_gpio* %32, %struct.dln2_gpio** %4, align 8
  %33 = load %struct.dln2_gpio*, %struct.dln2_gpio** %4, align 8
  %34 = icmp ne %struct.dln2_gpio* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %139

38:                                               ; preds = %28
  %39 = load %struct.dln2_gpio*, %struct.dln2_gpio** %4, align 8
  %40 = getelementptr inbounds %struct.dln2_gpio, %struct.dln2_gpio* %39, i32 0, i32 2
  %41 = call i32 @mutex_init(i32* %40)
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = load %struct.dln2_gpio*, %struct.dln2_gpio** %4, align 8
  %44 = getelementptr inbounds %struct.dln2_gpio, %struct.dln2_gpio* %43, i32 0, i32 1
  store %struct.platform_device* %42, %struct.platform_device** %44, align 8
  %45 = load %struct.dln2_gpio*, %struct.dln2_gpio** %4, align 8
  %46 = getelementptr inbounds %struct.dln2_gpio, %struct.dln2_gpio* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %47, align 8
  %48 = load %struct.device*, %struct.device** %5, align 8
  %49 = load %struct.dln2_gpio*, %struct.dln2_gpio** %4, align 8
  %50 = getelementptr inbounds %struct.dln2_gpio, %struct.dln2_gpio* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 13
  store %struct.device* %48, %struct.device** %51, align 8
  %52 = load i32, i32* @THIS_MODULE, align 4
  %53 = load %struct.dln2_gpio*, %struct.dln2_gpio** %4, align 8
  %54 = getelementptr inbounds %struct.dln2_gpio, %struct.dln2_gpio* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 12
  store i32 %52, i32* %55, align 4
  %56 = load %struct.dln2_gpio*, %struct.dln2_gpio** %4, align 8
  %57 = getelementptr inbounds %struct.dln2_gpio, %struct.dln2_gpio* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  store i32 -1, i32* %58, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.dln2_gpio*, %struct.dln2_gpio** %4, align 8
  %61 = getelementptr inbounds %struct.dln2_gpio, %struct.dln2_gpio* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  store i32 %59, i32* %62, align 4
  %63 = load %struct.dln2_gpio*, %struct.dln2_gpio** %4, align 8
  %64 = getelementptr inbounds %struct.dln2_gpio, %struct.dln2_gpio* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  store i32 1, i32* %65, align 8
  %66 = load i32, i32* @dln2_gpio_set, align 4
  %67 = load %struct.dln2_gpio*, %struct.dln2_gpio** %4, align 8
  %68 = getelementptr inbounds %struct.dln2_gpio, %struct.dln2_gpio* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 11
  store i32 %66, i32* %69, align 8
  %70 = load i32, i32* @dln2_gpio_get, align 4
  %71 = load %struct.dln2_gpio*, %struct.dln2_gpio** %4, align 8
  %72 = getelementptr inbounds %struct.dln2_gpio, %struct.dln2_gpio* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 10
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* @dln2_gpio_request, align 4
  %75 = load %struct.dln2_gpio*, %struct.dln2_gpio** %4, align 8
  %76 = getelementptr inbounds %struct.dln2_gpio, %struct.dln2_gpio* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 9
  store i32 %74, i32* %77, align 8
  %78 = load i32, i32* @dln2_gpio_free, align 4
  %79 = load %struct.dln2_gpio*, %struct.dln2_gpio** %4, align 8
  %80 = getelementptr inbounds %struct.dln2_gpio, %struct.dln2_gpio* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 8
  store i32 %78, i32* %81, align 4
  %82 = load i32, i32* @dln2_gpio_get_direction, align 4
  %83 = load %struct.dln2_gpio*, %struct.dln2_gpio** %4, align 8
  %84 = getelementptr inbounds %struct.dln2_gpio, %struct.dln2_gpio* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 7
  store i32 %82, i32* %85, align 8
  %86 = load i32, i32* @dln2_gpio_direction_input, align 4
  %87 = load %struct.dln2_gpio*, %struct.dln2_gpio** %4, align 8
  %88 = getelementptr inbounds %struct.dln2_gpio, %struct.dln2_gpio* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 6
  store i32 %86, i32* %89, align 4
  %90 = load i32, i32* @dln2_gpio_direction_output, align 4
  %91 = load %struct.dln2_gpio*, %struct.dln2_gpio** %4, align 8
  %92 = getelementptr inbounds %struct.dln2_gpio, %struct.dln2_gpio* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 5
  store i32 %90, i32* %93, align 8
  %94 = load i32, i32* @dln2_gpio_set_config, align 4
  %95 = load %struct.dln2_gpio*, %struct.dln2_gpio** %4, align 8
  %96 = getelementptr inbounds %struct.dln2_gpio, %struct.dln2_gpio* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 4
  store i32 %94, i32* %97, align 4
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = load %struct.dln2_gpio*, %struct.dln2_gpio** %4, align 8
  %100 = call i32 @platform_set_drvdata(%struct.platform_device* %98, %struct.dln2_gpio* %99)
  %101 = load %struct.device*, %struct.device** %5, align 8
  %102 = load %struct.dln2_gpio*, %struct.dln2_gpio** %4, align 8
  %103 = getelementptr inbounds %struct.dln2_gpio, %struct.dln2_gpio* %102, i32 0, i32 0
  %104 = load %struct.dln2_gpio*, %struct.dln2_gpio** %4, align 8
  %105 = call i32 @devm_gpiochip_add_data(%struct.device* %101, %struct.TYPE_3__* %103, %struct.dln2_gpio* %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %38
  %109 = load %struct.device*, %struct.device** %5, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @dev_err(%struct.device* %109, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* %7, align 4
  store i32 %112, i32* %2, align 4
  br label %139

113:                                              ; preds = %38
  %114 = load %struct.dln2_gpio*, %struct.dln2_gpio** %4, align 8
  %115 = getelementptr inbounds %struct.dln2_gpio, %struct.dln2_gpio* %114, i32 0, i32 0
  %116 = load i32, i32* @handle_simple_irq, align 4
  %117 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %118 = call i32 @gpiochip_irqchip_add(%struct.TYPE_3__* %115, i32* @dln2_gpio_irqchip, i32 0, i32 %116, i32 %117)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %113
  %122 = load %struct.device*, %struct.device** %5, align 8
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @dev_err(%struct.device* %122, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* %7, align 4
  store i32 %125, i32* %2, align 4
  br label %139

126:                                              ; preds = %113
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = load i32, i32* @DLN2_GPIO_CONDITION_MET_EV, align 4
  %129 = load i32, i32* @dln2_gpio_event, align 4
  %130 = call i32 @dln2_register_event_cb(%struct.platform_device* %127, i32 %128, i32 %129)
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %126
  %134 = load %struct.device*, %struct.device** %5, align 8
  %135 = load i32, i32* %7, align 4
  %136 = call i32 @dev_err(%struct.device* %134, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* %7, align 4
  store i32 %137, i32* %2, align 4
  br label %139

138:                                              ; preds = %126
  store i32 0, i32* %2, align 4
  br label %139

139:                                              ; preds = %138, %133, %121, %108, %35, %14
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local i32 @dln2_gpio_get_pin_count(%struct.platform_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local %struct.dln2_gpio* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.dln2_gpio*) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.device*, %struct.TYPE_3__*, %struct.dln2_gpio*) #1

declare dso_local i32 @gpiochip_irqchip_add(%struct.TYPE_3__*, i32*, i32, i32, i32) #1

declare dso_local i32 @dln2_register_event_cb(%struct.platform_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
