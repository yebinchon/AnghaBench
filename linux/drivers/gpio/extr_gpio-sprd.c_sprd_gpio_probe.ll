; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-sprd.c_sprd_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-sprd.c_sprd_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.gpio_irq_chip = type { i32, i32*, %struct.sprd_gpio*, i32, i32, i32, i32* }
%struct.sprd_gpio = type { i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.gpio_irq_chip, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SPRD_GPIO_NR = common dso_local global i32 0, align 4
@sprd_gpio_request = common dso_local global i32 0, align 4
@sprd_gpio_free = common dso_local global i32 0, align 4
@sprd_gpio_get = common dso_local global i32 0, align 4
@sprd_gpio_set = common dso_local global i32 0, align 4
@sprd_gpio_direction_input = common dso_local global i32 0, align 4
@sprd_gpio_direction_output = common dso_local global i32 0, align 4
@sprd_gpio_irqchip = common dso_local global i32 0, align 4
@handle_bad_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@sprd_gpio_irq_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Could not register gpiochip %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sprd_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.gpio_irq_chip*, align 8
  %5 = alloca %struct.sprd_gpio*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.sprd_gpio* @devm_kzalloc(%struct.TYPE_6__* %8, i32 120, i32 %9)
  store %struct.sprd_gpio* %10, %struct.sprd_gpio** %5, align 8
  %11 = load %struct.sprd_gpio*, %struct.sprd_gpio** %5, align 8
  %12 = icmp ne %struct.sprd_gpio* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %138

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = call i32 @platform_get_irq(%struct.platform_device* %17, i32 0)
  %19 = load %struct.sprd_gpio*, %struct.sprd_gpio** %5, align 8
  %20 = getelementptr inbounds %struct.sprd_gpio, %struct.sprd_gpio* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.sprd_gpio*, %struct.sprd_gpio** %5, align 8
  %22 = getelementptr inbounds %struct.sprd_gpio, %struct.sprd_gpio* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load %struct.sprd_gpio*, %struct.sprd_gpio** %5, align 8
  %27 = getelementptr inbounds %struct.sprd_gpio, %struct.sprd_gpio* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %2, align 4
  br label %138

29:                                               ; preds = %16
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %30, i32 0)
  %32 = load %struct.sprd_gpio*, %struct.sprd_gpio** %5, align 8
  %33 = getelementptr inbounds %struct.sprd_gpio, %struct.sprd_gpio* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.sprd_gpio*, %struct.sprd_gpio** %5, align 8
  %35 = getelementptr inbounds %struct.sprd_gpio, %struct.sprd_gpio* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @IS_ERR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %29
  %40 = load %struct.sprd_gpio*, %struct.sprd_gpio** %5, align 8
  %41 = getelementptr inbounds %struct.sprd_gpio, %struct.sprd_gpio* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @PTR_ERR(i32 %42)
  store i32 %43, i32* %2, align 4
  br label %138

44:                                               ; preds = %29
  %45 = load %struct.sprd_gpio*, %struct.sprd_gpio** %5, align 8
  %46 = getelementptr inbounds %struct.sprd_gpio, %struct.sprd_gpio* %45, i32 0, i32 2
  %47 = call i32 @spin_lock_init(i32* %46)
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call i32 @dev_name(%struct.TYPE_6__* %49)
  %51 = load %struct.sprd_gpio*, %struct.sprd_gpio** %5, align 8
  %52 = getelementptr inbounds %struct.sprd_gpio, %struct.sprd_gpio* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 11
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @SPRD_GPIO_NR, align 4
  %55 = load %struct.sprd_gpio*, %struct.sprd_gpio** %5, align 8
  %56 = getelementptr inbounds %struct.sprd_gpio, %struct.sprd_gpio* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 10
  store i32 %54, i32* %57, align 8
  %58 = load %struct.sprd_gpio*, %struct.sprd_gpio** %5, align 8
  %59 = getelementptr inbounds %struct.sprd_gpio, %struct.sprd_gpio* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store i32 -1, i32* %60, align 8
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load %struct.sprd_gpio*, %struct.sprd_gpio** %5, align 8
  %64 = getelementptr inbounds %struct.sprd_gpio, %struct.sprd_gpio* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 9
  store %struct.TYPE_6__* %62, %struct.TYPE_6__** %65, align 8
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.sprd_gpio*, %struct.sprd_gpio** %5, align 8
  %71 = getelementptr inbounds %struct.sprd_gpio, %struct.sprd_gpio* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 8
  store i32 %69, i32* %72, align 8
  %73 = load i32, i32* @sprd_gpio_request, align 4
  %74 = load %struct.sprd_gpio*, %struct.sprd_gpio** %5, align 8
  %75 = getelementptr inbounds %struct.sprd_gpio, %struct.sprd_gpio* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 7
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* @sprd_gpio_free, align 4
  %78 = load %struct.sprd_gpio*, %struct.sprd_gpio** %5, align 8
  %79 = getelementptr inbounds %struct.sprd_gpio, %struct.sprd_gpio* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 6
  store i32 %77, i32* %80, align 8
  %81 = load i32, i32* @sprd_gpio_get, align 4
  %82 = load %struct.sprd_gpio*, %struct.sprd_gpio** %5, align 8
  %83 = getelementptr inbounds %struct.sprd_gpio, %struct.sprd_gpio* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 5
  store i32 %81, i32* %84, align 4
  %85 = load i32, i32* @sprd_gpio_set, align 4
  %86 = load %struct.sprd_gpio*, %struct.sprd_gpio** %5, align 8
  %87 = getelementptr inbounds %struct.sprd_gpio, %struct.sprd_gpio* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 4
  store i32 %85, i32* %88, align 8
  %89 = load i32, i32* @sprd_gpio_direction_input, align 4
  %90 = load %struct.sprd_gpio*, %struct.sprd_gpio** %5, align 8
  %91 = getelementptr inbounds %struct.sprd_gpio, %struct.sprd_gpio* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 3
  store i32 %89, i32* %92, align 4
  %93 = load i32, i32* @sprd_gpio_direction_output, align 4
  %94 = load %struct.sprd_gpio*, %struct.sprd_gpio** %5, align 8
  %95 = getelementptr inbounds %struct.sprd_gpio, %struct.sprd_gpio* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  store i32 %93, i32* %96, align 8
  %97 = load %struct.sprd_gpio*, %struct.sprd_gpio** %5, align 8
  %98 = getelementptr inbounds %struct.sprd_gpio, %struct.sprd_gpio* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  store %struct.gpio_irq_chip* %99, %struct.gpio_irq_chip** %4, align 8
  %100 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %4, align 8
  %101 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %100, i32 0, i32 6
  store i32* @sprd_gpio_irqchip, i32** %101, align 8
  %102 = load i32, i32* @handle_bad_irq, align 4
  %103 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %4, align 8
  %104 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %106 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %4, align 8
  %107 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* @sprd_gpio_irq_handler, align 4
  %109 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %4, align 8
  %110 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 8
  %111 = load %struct.sprd_gpio*, %struct.sprd_gpio** %5, align 8
  %112 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %4, align 8
  %113 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %112, i32 0, i32 2
  store %struct.sprd_gpio* %111, %struct.sprd_gpio** %113, align 8
  %114 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %4, align 8
  %115 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %114, i32 0, i32 0
  store i32 1, i32* %115, align 8
  %116 = load %struct.sprd_gpio*, %struct.sprd_gpio** %5, align 8
  %117 = getelementptr inbounds %struct.sprd_gpio, %struct.sprd_gpio* %116, i32 0, i32 0
  %118 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %4, align 8
  %119 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %118, i32 0, i32 1
  store i32* %117, i32** %119, align 8
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %120, i32 0, i32 0
  %122 = load %struct.sprd_gpio*, %struct.sprd_gpio** %5, align 8
  %123 = getelementptr inbounds %struct.sprd_gpio, %struct.sprd_gpio* %122, i32 0, i32 1
  %124 = load %struct.sprd_gpio*, %struct.sprd_gpio** %5, align 8
  %125 = call i32 @devm_gpiochip_add_data(%struct.TYPE_6__* %121, %struct.TYPE_7__* %123, %struct.sprd_gpio* %124)
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %44
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 0
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @dev_err(%struct.TYPE_6__* %130, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* %6, align 4
  store i32 %133, i32* %2, align 4
  br label %138

134:                                              ; preds = %44
  %135 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %136 = load %struct.sprd_gpio*, %struct.sprd_gpio** %5, align 8
  %137 = call i32 @platform_set_drvdata(%struct.platform_device* %135, %struct.sprd_gpio* %136)
  store i32 0, i32* %2, align 4
  br label %138

138:                                              ; preds = %134, %128, %39, %25, %13
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local %struct.sprd_gpio* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dev_name(%struct.TYPE_6__*) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_6__*, %struct.TYPE_7__*, %struct.sprd_gpio*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sprd_gpio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
