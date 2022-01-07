; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-wcove.c_wcove_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-wcove.c_wcove_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.intel_soc_pmic = type { i32, i32 }
%struct.wcove_gpio = type { i32, %struct.TYPE_4__, i32, %struct.device*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@wcove_gpio_dir_in = common dso_local global i32 0, align 4
@wcove_gpio_dir_out = common dso_local global i32 0, align 4
@wcove_gpio_get_direction = common dso_local global i32 0, align 4
@wcove_gpio_get = common dso_local global i32 0, align 4
@wcove_gpio_set = common dso_local global i32 0, align 4
@wcove_gpio_set_config = common dso_local global i32 0, align 4
@WCOVE_VGPIO_NUM = common dso_local global i32 0, align 4
@wcove_gpio_dbg_show = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to add gpiochip: %d\0A\00", align 1
@wcove_irqchip = common dso_local global i32 0, align 4
@handle_simple_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to add irqchip: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to get virq by irq %d\0A\00", align 1
@wcove_gpio_irq_handler = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to request irq %d\0A\00", align 1
@IRQ_MASK_BASE = common dso_local global i64 0, align 8
@GPIO_IRQ0_MASK = common dso_local global i32 0, align 4
@GPIO_IRQ1_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wcove_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcove_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.intel_soc_pmic*, align 8
  %5 = alloca %struct.wcove_gpio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.intel_soc_pmic* @dev_get_drvdata(i32 %13)
  store %struct.intel_soc_pmic* %14, %struct.intel_soc_pmic** %4, align 8
  %15 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %4, align 8
  %16 = icmp ne %struct.intel_soc_pmic* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %190

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = call i32 @platform_get_irq(%struct.platform_device* %21, i32 0)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %2, align 4
  br label %190

27:                                               ; preds = %20
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 1
  store %struct.device* %29, %struct.device** %9, align 8
  %30 = load %struct.device*, %struct.device** %9, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.wcove_gpio* @devm_kzalloc(%struct.device* %30, i32 72, i32 %31)
  store %struct.wcove_gpio* %32, %struct.wcove_gpio** %5, align 8
  %33 = load %struct.wcove_gpio*, %struct.wcove_gpio** %5, align 8
  %34 = icmp ne %struct.wcove_gpio* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %190

38:                                               ; preds = %27
  %39 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %4, align 8
  %40 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.wcove_gpio*, %struct.wcove_gpio** %5, align 8
  %43 = getelementptr inbounds %struct.wcove_gpio, %struct.wcove_gpio* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = load %struct.wcove_gpio*, %struct.wcove_gpio** %5, align 8
  %46 = call i32 @platform_set_drvdata(%struct.platform_device* %44, %struct.wcove_gpio* %45)
  %47 = load %struct.wcove_gpio*, %struct.wcove_gpio** %5, align 8
  %48 = getelementptr inbounds %struct.wcove_gpio, %struct.wcove_gpio* %47, i32 0, i32 4
  %49 = call i32 @mutex_init(i32* %48)
  %50 = load i32, i32* @KBUILD_MODNAME, align 4
  %51 = load %struct.wcove_gpio*, %struct.wcove_gpio** %5, align 8
  %52 = getelementptr inbounds %struct.wcove_gpio, %struct.wcove_gpio* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 11
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @wcove_gpio_dir_in, align 4
  %55 = load %struct.wcove_gpio*, %struct.wcove_gpio** %5, align 8
  %56 = getelementptr inbounds %struct.wcove_gpio, %struct.wcove_gpio* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 10
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @wcove_gpio_dir_out, align 4
  %59 = load %struct.wcove_gpio*, %struct.wcove_gpio** %5, align 8
  %60 = getelementptr inbounds %struct.wcove_gpio, %struct.wcove_gpio* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 9
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* @wcove_gpio_get_direction, align 4
  %63 = load %struct.wcove_gpio*, %struct.wcove_gpio** %5, align 8
  %64 = getelementptr inbounds %struct.wcove_gpio, %struct.wcove_gpio* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 8
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* @wcove_gpio_get, align 4
  %67 = load %struct.wcove_gpio*, %struct.wcove_gpio** %5, align 8
  %68 = getelementptr inbounds %struct.wcove_gpio, %struct.wcove_gpio* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 7
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* @wcove_gpio_set, align 4
  %71 = load %struct.wcove_gpio*, %struct.wcove_gpio** %5, align 8
  %72 = getelementptr inbounds %struct.wcove_gpio, %struct.wcove_gpio* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 6
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* @wcove_gpio_set_config, align 4
  %75 = load %struct.wcove_gpio*, %struct.wcove_gpio** %5, align 8
  %76 = getelementptr inbounds %struct.wcove_gpio, %struct.wcove_gpio* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 5
  store i32 %74, i32* %77, align 4
  %78 = load %struct.wcove_gpio*, %struct.wcove_gpio** %5, align 8
  %79 = getelementptr inbounds %struct.wcove_gpio, %struct.wcove_gpio* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i32 -1, i32* %80, align 4
  %81 = load i32, i32* @WCOVE_VGPIO_NUM, align 4
  %82 = load %struct.wcove_gpio*, %struct.wcove_gpio** %5, align 8
  %83 = getelementptr inbounds %struct.wcove_gpio, %struct.wcove_gpio* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 4
  store i32 %81, i32* %84, align 4
  %85 = load %struct.wcove_gpio*, %struct.wcove_gpio** %5, align 8
  %86 = getelementptr inbounds %struct.wcove_gpio, %struct.wcove_gpio* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  store i32 1, i32* %87, align 4
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.device, %struct.device* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.wcove_gpio*, %struct.wcove_gpio** %5, align 8
  %93 = getelementptr inbounds %struct.wcove_gpio, %struct.wcove_gpio* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 3
  store i32 %91, i32* %94, align 4
  %95 = load i32, i32* @wcove_gpio_dbg_show, align 4
  %96 = load %struct.wcove_gpio*, %struct.wcove_gpio** %5, align 8
  %97 = getelementptr inbounds %struct.wcove_gpio, %struct.wcove_gpio* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  store i32 %95, i32* %98, align 4
  %99 = load %struct.device*, %struct.device** %9, align 8
  %100 = load %struct.wcove_gpio*, %struct.wcove_gpio** %5, align 8
  %101 = getelementptr inbounds %struct.wcove_gpio, %struct.wcove_gpio* %100, i32 0, i32 3
  store %struct.device* %99, %struct.device** %101, align 8
  %102 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %4, align 8
  %103 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.wcove_gpio*, %struct.wcove_gpio** %5, align 8
  %106 = getelementptr inbounds %struct.wcove_gpio, %struct.wcove_gpio* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.device*, %struct.device** %9, align 8
  %108 = load %struct.wcove_gpio*, %struct.wcove_gpio** %5, align 8
  %109 = getelementptr inbounds %struct.wcove_gpio, %struct.wcove_gpio* %108, i32 0, i32 1
  %110 = load %struct.wcove_gpio*, %struct.wcove_gpio** %5, align 8
  %111 = call i32 @devm_gpiochip_add_data(%struct.device* %107, %struct.TYPE_4__* %109, %struct.wcove_gpio* %110)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %38
  %115 = load %struct.device*, %struct.device** %9, align 8
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @dev_err(%struct.device* %115, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* %7, align 4
  store i32 %118, i32* %2, align 4
  br label %190

119:                                              ; preds = %38
  %120 = load %struct.wcove_gpio*, %struct.wcove_gpio** %5, align 8
  %121 = getelementptr inbounds %struct.wcove_gpio, %struct.wcove_gpio* %120, i32 0, i32 1
  %122 = load i32, i32* @handle_simple_irq, align 4
  %123 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %124 = call i32 @gpiochip_irqchip_add_nested(%struct.TYPE_4__* %121, i32* @wcove_irqchip, i32 0, i32 %122, i32 %123)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %119
  %128 = load %struct.device*, %struct.device** %9, align 8
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @dev_err(%struct.device* %128, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* %7, align 4
  store i32 %131, i32* %2, align 4
  br label %190

132:                                              ; preds = %119
  %133 = load %struct.wcove_gpio*, %struct.wcove_gpio** %5, align 8
  %134 = getelementptr inbounds %struct.wcove_gpio, %struct.wcove_gpio* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @regmap_irq_get_virq(i32 %135, i32 %136)
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* %6, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %132
  %141 = load %struct.device*, %struct.device** %9, align 8
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @dev_err(%struct.device* %141, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* %6, align 4
  store i32 %144, i32* %2, align 4
  br label %190

145:                                              ; preds = %132
  %146 = load %struct.device*, %struct.device** %9, align 8
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* @wcove_gpio_irq_handler, align 4
  %149 = load i32, i32* @IRQF_ONESHOT, align 4
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.wcove_gpio*, %struct.wcove_gpio** %5, align 8
  %154 = call i32 @devm_request_threaded_irq(%struct.device* %146, i32 %147, i32* null, i32 %148, i32 %149, i32 %152, %struct.wcove_gpio* %153)
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* %7, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %145
  %158 = load %struct.device*, %struct.device** %9, align 8
  %159 = load i32, i32* %6, align 4
  %160 = call i32 @dev_err(%struct.device* %158, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %159)
  %161 = load i32, i32* %7, align 4
  store i32 %161, i32* %2, align 4
  br label %190

162:                                              ; preds = %145
  %163 = load %struct.wcove_gpio*, %struct.wcove_gpio** %5, align 8
  %164 = getelementptr inbounds %struct.wcove_gpio, %struct.wcove_gpio* %163, i32 0, i32 1
  %165 = load i32, i32* %6, align 4
  %166 = call i32 @gpiochip_set_nested_irqchip(%struct.TYPE_4__* %164, i32* @wcove_irqchip, i32 %165)
  %167 = load %struct.wcove_gpio*, %struct.wcove_gpio** %5, align 8
  %168 = getelementptr inbounds %struct.wcove_gpio, %struct.wcove_gpio* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i64, i64* @IRQ_MASK_BASE, align 8
  %171 = load i32, i32* @GPIO_IRQ0_MASK, align 4
  %172 = call i32 @regmap_update_bits(i32 %169, i64 %170, i32 %171, i32 0)
  store i32 %172, i32* %7, align 4
  %173 = load i32, i32* %7, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %162
  %176 = load i32, i32* %7, align 4
  store i32 %176, i32* %2, align 4
  br label %190

177:                                              ; preds = %162
  %178 = load %struct.wcove_gpio*, %struct.wcove_gpio** %5, align 8
  %179 = getelementptr inbounds %struct.wcove_gpio, %struct.wcove_gpio* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i64, i64* @IRQ_MASK_BASE, align 8
  %182 = add nsw i64 %181, 1
  %183 = load i32, i32* @GPIO_IRQ1_MASK, align 4
  %184 = call i32 @regmap_update_bits(i32 %180, i64 %182, i32 %183, i32 0)
  store i32 %184, i32* %7, align 4
  %185 = load i32, i32* %7, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %177
  %188 = load i32, i32* %7, align 4
  store i32 %188, i32* %2, align 4
  br label %190

189:                                              ; preds = %177
  store i32 0, i32* %2, align 4
  br label %190

190:                                              ; preds = %189, %187, %175, %157, %140, %127, %114, %35, %25, %17
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local %struct.intel_soc_pmic* @dev_get_drvdata(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.wcove_gpio* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.wcove_gpio*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.device*, %struct.TYPE_4__*, %struct.wcove_gpio*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @gpiochip_irqchip_add_nested(%struct.TYPE_4__*, i32*, i32, i32, i32) #1

declare dso_local i32 @regmap_irq_get_virq(i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i32, %struct.wcove_gpio*) #1

declare dso_local i32 @gpiochip_set_nested_irqchip(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
