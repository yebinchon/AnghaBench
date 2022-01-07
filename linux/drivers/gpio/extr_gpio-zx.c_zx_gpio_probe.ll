; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-zx.c_zx_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-zx.c_zx_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.zx_gpio = type { %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32, i32, %struct.gpio_irq_chip, i32, %struct.device*, i32, i32, i32, i32, i32, i32, i32 }
%struct.gpio_irq_chip = type { i32, i32*, i32, i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"gpio-ranges\00", align 1
@gpiochip_generic_request = common dso_local global i32 0, align 4
@gpiochip_generic_free = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@zx_direction_input = common dso_local global i32 0, align 4
@zx_direction_output = common dso_local global i32 0, align 4
@zx_get_value = common dso_local global i32 0, align 4
@zx_set_value = common dso_local global i32 0, align 4
@ZX_GPIO_NR = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@ZX_GPIO_IM = common dso_local global i64 0, align 8
@ZX_GPIO_IE = common dso_local global i64 0, align 8
@zx_irqchip = common dso_local global i32 0, align 4
@zx_irq_handler = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@handle_simple_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"ZX GPIO chip registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @zx_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.zx_gpio*, align 8
  %6 = alloca %struct.gpio_irq_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.zx_gpio* @devm_kzalloc(%struct.device* %12, i32 112, i32 %13)
  store %struct.zx_gpio* %14, %struct.zx_gpio** %5, align 8
  %15 = load %struct.zx_gpio*, %struct.zx_gpio** %5, align 8
  %16 = icmp ne %struct.zx_gpio* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %165

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = call i64 @devm_platform_ioremap_resource(%struct.platform_device* %21, i32 0)
  %23 = load %struct.zx_gpio*, %struct.zx_gpio** %5, align 8
  %24 = getelementptr inbounds %struct.zx_gpio, %struct.zx_gpio* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = load %struct.zx_gpio*, %struct.zx_gpio** %5, align 8
  %26 = getelementptr inbounds %struct.zx_gpio, %struct.zx_gpio* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @IS_ERR(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = load %struct.zx_gpio*, %struct.zx_gpio** %5, align 8
  %32 = getelementptr inbounds %struct.zx_gpio, %struct.zx_gpio* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @PTR_ERR(i64 %33)
  store i32 %34, i32* %2, align 4
  br label %165

35:                                               ; preds = %20
  %36 = load %struct.zx_gpio*, %struct.zx_gpio** %5, align 8
  %37 = getelementptr inbounds %struct.zx_gpio, %struct.zx_gpio* %36, i32 0, i32 2
  %38 = call i32 @raw_spin_lock_init(i32* %37)
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = getelementptr inbounds %struct.device, %struct.device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @of_property_read_bool(i32 %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %35
  %45 = load i32, i32* @gpiochip_generic_request, align 4
  %46 = load %struct.zx_gpio*, %struct.zx_gpio** %5, align 8
  %47 = getelementptr inbounds %struct.zx_gpio, %struct.zx_gpio* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 11
  store i32 %45, i32* %48, align 8
  %49 = load i32, i32* @gpiochip_generic_free, align 4
  %50 = load %struct.zx_gpio*, %struct.zx_gpio** %5, align 8
  %51 = getelementptr inbounds %struct.zx_gpio, %struct.zx_gpio* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 10
  store i32 %49, i32* %52, align 4
  br label %53

53:                                               ; preds = %44, %35
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = getelementptr inbounds %struct.device, %struct.device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @of_alias_get_id(i32 %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* @zx_direction_input, align 4
  %59 = load %struct.zx_gpio*, %struct.zx_gpio** %5, align 8
  %60 = getelementptr inbounds %struct.zx_gpio, %struct.zx_gpio* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 9
  store i32 %58, i32* %61, align 8
  %62 = load i32, i32* @zx_direction_output, align 4
  %63 = load %struct.zx_gpio*, %struct.zx_gpio** %5, align 8
  %64 = getelementptr inbounds %struct.zx_gpio, %struct.zx_gpio* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 8
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* @zx_get_value, align 4
  %67 = load %struct.zx_gpio*, %struct.zx_gpio** %5, align 8
  %68 = getelementptr inbounds %struct.zx_gpio, %struct.zx_gpio* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 7
  store i32 %66, i32* %69, align 8
  %70 = load i32, i32* @zx_set_value, align 4
  %71 = load %struct.zx_gpio*, %struct.zx_gpio** %5, align 8
  %72 = getelementptr inbounds %struct.zx_gpio, %struct.zx_gpio* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 6
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* @ZX_GPIO_NR, align 4
  %75 = load i32, i32* %8, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load %struct.zx_gpio*, %struct.zx_gpio** %5, align 8
  %78 = getelementptr inbounds %struct.zx_gpio, %struct.zx_gpio* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 8
  %80 = load i32, i32* @ZX_GPIO_NR, align 4
  %81 = load %struct.zx_gpio*, %struct.zx_gpio** %5, align 8
  %82 = getelementptr inbounds %struct.zx_gpio, %struct.zx_gpio* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 4
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = call i32 @dev_name(%struct.device* %84)
  %86 = load %struct.zx_gpio*, %struct.zx_gpio** %5, align 8
  %87 = getelementptr inbounds %struct.zx_gpio, %struct.zx_gpio* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 5
  store i32 %85, i32* %88, align 8
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = load %struct.zx_gpio*, %struct.zx_gpio** %5, align 8
  %91 = getelementptr inbounds %struct.zx_gpio, %struct.zx_gpio* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 4
  store %struct.device* %89, %struct.device** %92, align 8
  %93 = load i32, i32* @THIS_MODULE, align 4
  %94 = load %struct.zx_gpio*, %struct.zx_gpio** %5, align 8
  %95 = getelementptr inbounds %struct.zx_gpio, %struct.zx_gpio* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  store i32 %93, i32* %96, align 8
  %97 = load %struct.zx_gpio*, %struct.zx_gpio** %5, align 8
  %98 = getelementptr inbounds %struct.zx_gpio, %struct.zx_gpio* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @ZX_GPIO_IM, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @writew_relaxed(i32 65535, i64 %101)
  %103 = load %struct.zx_gpio*, %struct.zx_gpio** %5, align 8
  %104 = getelementptr inbounds %struct.zx_gpio, %struct.zx_gpio* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @ZX_GPIO_IE, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @writew_relaxed(i32 0, i64 %107)
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = call i32 @platform_get_irq(%struct.platform_device* %109, i32 0)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %53
  %114 = load i32, i32* %7, align 4
  store i32 %114, i32* %2, align 4
  br label %165

115:                                              ; preds = %53
  %116 = load %struct.zx_gpio*, %struct.zx_gpio** %5, align 8
  %117 = getelementptr inbounds %struct.zx_gpio, %struct.zx_gpio* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 2
  store %struct.gpio_irq_chip* %118, %struct.gpio_irq_chip** %6, align 8
  %119 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %6, align 8
  %120 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %119, i32 0, i32 5
  store i32* @zx_irqchip, i32** %120, align 8
  %121 = load i32, i32* @zx_irq_handler, align 4
  %122 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %6, align 8
  %123 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 8
  %124 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %6, align 8
  %125 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %124, i32 0, i32 0
  store i32 1, i32* %125, align 8
  %126 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %127 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %126, i32 0, i32 0
  %128 = load i32, i32* @GFP_KERNEL, align 4
  %129 = call i32* @devm_kcalloc(%struct.device* %127, i32 1, i32 4, i32 %128)
  %130 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %6, align 8
  %131 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %130, i32 0, i32 1
  store i32* %129, i32** %131, align 8
  %132 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %6, align 8
  %133 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %139, label %136

136:                                              ; preds = %115
  %137 = load i32, i32* @ENOMEM, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %2, align 4
  br label %165

139:                                              ; preds = %115
  %140 = load i32, i32* %7, align 4
  %141 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %6, align 8
  %142 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  store i32 %140, i32* %144, align 4
  %145 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %146 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %6, align 8
  %147 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %146, i32 0, i32 3
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* @handle_simple_irq, align 4
  %149 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %6, align 8
  %150 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 8
  %151 = load %struct.zx_gpio*, %struct.zx_gpio** %5, align 8
  %152 = getelementptr inbounds %struct.zx_gpio, %struct.zx_gpio* %151, i32 0, i32 0
  %153 = load %struct.zx_gpio*, %struct.zx_gpio** %5, align 8
  %154 = call i32 @gpiochip_add_data(%struct.TYPE_2__* %152, %struct.zx_gpio* %153)
  store i32 %154, i32* %9, align 4
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %139
  %158 = load i32, i32* %9, align 4
  store i32 %158, i32* %2, align 4
  br label %165

159:                                              ; preds = %139
  %160 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %161 = load %struct.zx_gpio*, %struct.zx_gpio** %5, align 8
  %162 = call i32 @platform_set_drvdata(%struct.platform_device* %160, %struct.zx_gpio* %161)
  %163 = load %struct.device*, %struct.device** %4, align 8
  %164 = call i32 @dev_info(%struct.device* %163, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %165

165:                                              ; preds = %159, %157, %136, %113, %30, %17
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local %struct.zx_gpio* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i64 @of_property_read_bool(i32, i8*) #1

declare dso_local i32 @of_alias_get_id(i32, i8*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @writew_relaxed(i32, i64) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @gpiochip_add_data(%struct.TYPE_2__*, %struct.zx_gpio*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.zx_gpio*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
