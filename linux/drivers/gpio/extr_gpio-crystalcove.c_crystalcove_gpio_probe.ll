; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-crystalcove.c_crystalcove_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-crystalcove.c_crystalcove_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.crystalcove_gpio = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.device*, i32, i32, i32, i32, i32, i32 }
%struct.intel_soc_pmic = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@crystalcove_gpio_dir_in = common dso_local global i32 0, align 4
@crystalcove_gpio_dir_out = common dso_local global i32 0, align 4
@crystalcove_gpio_get = common dso_local global i32 0, align 4
@crystalcove_gpio_set = common dso_local global i32 0, align 4
@CRYSTALCOVE_VGPIO_NUM = common dso_local global i32 0, align 4
@crystalcove_gpio_dbg_show = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"add gpio chip error: %d\0A\00", align 1
@crystalcove_irqchip = common dso_local global i32 0, align 4
@handle_simple_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@crystalcove_gpio_irq_handler = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"request irq failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @crystalcove_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crystalcove_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.crystalcove_gpio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.intel_soc_pmic*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = call i32 @platform_get_irq(%struct.platform_device* %9, i32 0)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %7, align 8
  %15 = load %struct.device*, %struct.device** %7, align 8
  %16 = call %struct.intel_soc_pmic* @dev_get_drvdata(%struct.device* %15)
  store %struct.intel_soc_pmic* %16, %struct.intel_soc_pmic** %8, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %120

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.crystalcove_gpio* @devm_kzalloc(%struct.TYPE_8__* %23, i32 56, i32 %24)
  store %struct.crystalcove_gpio* %25, %struct.crystalcove_gpio** %5, align 8
  %26 = load %struct.crystalcove_gpio*, %struct.crystalcove_gpio** %5, align 8
  %27 = icmp ne %struct.crystalcove_gpio* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %120

31:                                               ; preds = %21
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = load %struct.crystalcove_gpio*, %struct.crystalcove_gpio** %5, align 8
  %34 = call i32 @platform_set_drvdata(%struct.platform_device* %32, %struct.crystalcove_gpio* %33)
  %35 = load %struct.crystalcove_gpio*, %struct.crystalcove_gpio** %5, align 8
  %36 = getelementptr inbounds %struct.crystalcove_gpio, %struct.crystalcove_gpio* %35, i32 0, i32 2
  %37 = call i32 @mutex_init(i32* %36)
  %38 = load i32, i32* @KBUILD_MODNAME, align 4
  %39 = load %struct.crystalcove_gpio*, %struct.crystalcove_gpio** %5, align 8
  %40 = getelementptr inbounds %struct.crystalcove_gpio, %struct.crystalcove_gpio* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 9
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @crystalcove_gpio_dir_in, align 4
  %43 = load %struct.crystalcove_gpio*, %struct.crystalcove_gpio** %5, align 8
  %44 = getelementptr inbounds %struct.crystalcove_gpio, %struct.crystalcove_gpio* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 8
  store i32 %42, i32* %45, align 8
  %46 = load i32, i32* @crystalcove_gpio_dir_out, align 4
  %47 = load %struct.crystalcove_gpio*, %struct.crystalcove_gpio** %5, align 8
  %48 = getelementptr inbounds %struct.crystalcove_gpio, %struct.crystalcove_gpio* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 7
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @crystalcove_gpio_get, align 4
  %51 = load %struct.crystalcove_gpio*, %struct.crystalcove_gpio** %5, align 8
  %52 = getelementptr inbounds %struct.crystalcove_gpio, %struct.crystalcove_gpio* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 6
  store i32 %50, i32* %53, align 8
  %54 = load i32, i32* @crystalcove_gpio_set, align 4
  %55 = load %struct.crystalcove_gpio*, %struct.crystalcove_gpio** %5, align 8
  %56 = getelementptr inbounds %struct.crystalcove_gpio, %struct.crystalcove_gpio* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 5
  store i32 %54, i32* %57, align 4
  %58 = load %struct.crystalcove_gpio*, %struct.crystalcove_gpio** %5, align 8
  %59 = getelementptr inbounds %struct.crystalcove_gpio, %struct.crystalcove_gpio* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store i32 -1, i32* %60, align 8
  %61 = load i32, i32* @CRYSTALCOVE_VGPIO_NUM, align 4
  %62 = load %struct.crystalcove_gpio*, %struct.crystalcove_gpio** %5, align 8
  %63 = getelementptr inbounds %struct.crystalcove_gpio, %struct.crystalcove_gpio* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 4
  store i32 %61, i32* %64, align 8
  %65 = load %struct.crystalcove_gpio*, %struct.crystalcove_gpio** %5, align 8
  %66 = getelementptr inbounds %struct.crystalcove_gpio, %struct.crystalcove_gpio* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  %68 = load %struct.device*, %struct.device** %7, align 8
  %69 = load %struct.crystalcove_gpio*, %struct.crystalcove_gpio** %5, align 8
  %70 = getelementptr inbounds %struct.crystalcove_gpio, %struct.crystalcove_gpio* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 3
  store %struct.device* %68, %struct.device** %71, align 8
  %72 = load i32, i32* @crystalcove_gpio_dbg_show, align 4
  %73 = load %struct.crystalcove_gpio*, %struct.crystalcove_gpio** %5, align 8
  %74 = getelementptr inbounds %struct.crystalcove_gpio, %struct.crystalcove_gpio* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  store i32 %72, i32* %75, align 8
  %76 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %77 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.crystalcove_gpio*, %struct.crystalcove_gpio** %5, align 8
  %80 = getelementptr inbounds %struct.crystalcove_gpio, %struct.crystalcove_gpio* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = load %struct.crystalcove_gpio*, %struct.crystalcove_gpio** %5, align 8
  %84 = getelementptr inbounds %struct.crystalcove_gpio, %struct.crystalcove_gpio* %83, i32 0, i32 0
  %85 = load %struct.crystalcove_gpio*, %struct.crystalcove_gpio** %5, align 8
  %86 = call i32 @devm_gpiochip_add_data(%struct.TYPE_8__* %82, %struct.TYPE_7__* %84, %struct.crystalcove_gpio* %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %31
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @dev_warn(%struct.TYPE_8__* %91, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %2, align 4
  br label %120

95:                                               ; preds = %31
  %96 = load %struct.crystalcove_gpio*, %struct.crystalcove_gpio** %5, align 8
  %97 = getelementptr inbounds %struct.crystalcove_gpio, %struct.crystalcove_gpio* %96, i32 0, i32 0
  %98 = load i32, i32* @handle_simple_irq, align 4
  %99 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %100 = call i32 @gpiochip_irqchip_add_nested(%struct.TYPE_7__* %97, i32* @crystalcove_irqchip, i32 0, i32 %98, i32 %99)
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @crystalcove_gpio_irq_handler, align 4
  %103 = load i32, i32* @IRQF_ONESHOT, align 4
  %104 = load i32, i32* @KBUILD_MODNAME, align 4
  %105 = load %struct.crystalcove_gpio*, %struct.crystalcove_gpio** %5, align 8
  %106 = call i32 @request_threaded_irq(i32 %101, i32* null, i32 %102, i32 %103, i32 %104, %struct.crystalcove_gpio* %105)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %95
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @dev_warn(%struct.TYPE_8__* %111, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %2, align 4
  br label %120

115:                                              ; preds = %95
  %116 = load %struct.crystalcove_gpio*, %struct.crystalcove_gpio** %5, align 8
  %117 = getelementptr inbounds %struct.crystalcove_gpio, %struct.crystalcove_gpio* %116, i32 0, i32 0
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @gpiochip_set_nested_irqchip(%struct.TYPE_7__* %117, i32* @crystalcove_irqchip, i32 %118)
  store i32 0, i32* %2, align 4
  br label %120

120:                                              ; preds = %115, %109, %89, %28, %19
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.intel_soc_pmic* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.crystalcove_gpio* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.crystalcove_gpio*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_8__*, %struct.TYPE_7__*, %struct.crystalcove_gpio*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @gpiochip_irqchip_add_nested(%struct.TYPE_7__*, i32*, i32, i32, i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i32, %struct.crystalcove_gpio*) #1

declare dso_local i32 @gpiochip_set_nested_irqchip(%struct.TYPE_7__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
