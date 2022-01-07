; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-uniphier.c_uniphier_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-uniphier.c_uniphier_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.irq_domain = type { i32 }
%struct.uniphier_gpio_priv = type { i32, %struct.irq_chip, %struct.gpio_chip, i32, i32 }
%struct.irq_chip = type { i32, i32, i32, i32, i32, i8* }
%struct.gpio_chip = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.device*, i8* }

@ENXIO = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ngpios\00", align 1
@saved_vals = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gpiochip_generic_request = common dso_local global i32 0, align 4
@gpiochip_generic_free = common dso_local global i32 0, align 4
@uniphier_gpio_get_direction = common dso_local global i32 0, align 4
@uniphier_gpio_direction_input = common dso_local global i32 0, align 4
@uniphier_gpio_direction_output = common dso_local global i32 0, align 4
@uniphier_gpio_get = common dso_local global i32 0, align 4
@uniphier_gpio_set = common dso_local global i32 0, align 4
@uniphier_gpio_set_multiple = common dso_local global i32 0, align 4
@uniphier_gpio_to_irq = common dso_local global i32 0, align 4
@uniphier_gpio_irq_mask = common dso_local global i32 0, align 4
@uniphier_gpio_irq_unmask = common dso_local global i32 0, align 4
@irq_chip_eoi_parent = common dso_local global i32 0, align 4
@irq_chip_set_affinity_parent = common dso_local global i32 0, align 4
@uniphier_gpio_irq_set_type = common dso_local global i32 0, align 4
@UNIPHIER_GPIO_IRQ_MAX_NUM = common dso_local global i32 0, align 4
@uniphier_gpio_irq_domain_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @uniphier_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca %struct.uniphier_gpio_priv*, align 8
  %8 = alloca %struct.gpio_chip*, align 8
  %9 = alloca %struct.irq_chip*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %4, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.device_node* @of_irq_find_parent(i32 %17)
  store %struct.device_node* %18, %struct.device_node** %5, align 8
  %19 = load %struct.device_node*, %struct.device_node** %5, align 8
  %20 = icmp ne %struct.device_node* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENXIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %173

24:                                               ; preds = %1
  %25 = load %struct.device_node*, %struct.device_node** %5, align 8
  %26 = call %struct.irq_domain* @irq_find_host(%struct.device_node* %25)
  store %struct.irq_domain* %26, %struct.irq_domain** %6, align 8
  %27 = load %struct.device_node*, %struct.device_node** %5, align 8
  %28 = call i32 @of_node_put(%struct.device_node* %27)
  %29 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %30 = icmp ne %struct.irq_domain* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @EPROBE_DEFER, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %173

34:                                               ; preds = %24
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = getelementptr inbounds %struct.device, %struct.device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @of_property_read_u32(i32 %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %11)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %2, align 4
  br label %173

43:                                               ; preds = %34
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @uniphier_gpio_get_nbanks(i32 %44)
  %46 = mul nsw i32 %45, 2
  %47 = add nsw i32 %46, 3
  store i32 %47, i32* %10, align 4
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = load %struct.uniphier_gpio_priv*, %struct.uniphier_gpio_priv** %7, align 8
  %50 = load i32, i32* @saved_vals, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @struct_size(%struct.uniphier_gpio_priv* %49, i32 %50, i32 %51)
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call %struct.uniphier_gpio_priv* @devm_kzalloc(%struct.device* %48, i32 %52, i32 %53)
  store %struct.uniphier_gpio_priv* %54, %struct.uniphier_gpio_priv** %7, align 8
  %55 = load %struct.uniphier_gpio_priv*, %struct.uniphier_gpio_priv** %7, align 8
  %56 = icmp ne %struct.uniphier_gpio_priv* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %43
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %173

60:                                               ; preds = %43
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %61, i32 0)
  %63 = load %struct.uniphier_gpio_priv*, %struct.uniphier_gpio_priv** %7, align 8
  %64 = getelementptr inbounds %struct.uniphier_gpio_priv, %struct.uniphier_gpio_priv* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 4
  %65 = load %struct.uniphier_gpio_priv*, %struct.uniphier_gpio_priv** %7, align 8
  %66 = getelementptr inbounds %struct.uniphier_gpio_priv, %struct.uniphier_gpio_priv* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @IS_ERR(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %60
  %71 = load %struct.uniphier_gpio_priv*, %struct.uniphier_gpio_priv** %7, align 8
  %72 = getelementptr inbounds %struct.uniphier_gpio_priv, %struct.uniphier_gpio_priv* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @PTR_ERR(i32 %73)
  store i32 %74, i32* %2, align 4
  br label %173

75:                                               ; preds = %60
  %76 = load %struct.uniphier_gpio_priv*, %struct.uniphier_gpio_priv** %7, align 8
  %77 = getelementptr inbounds %struct.uniphier_gpio_priv, %struct.uniphier_gpio_priv* %76, i32 0, i32 3
  %78 = call i32 @spin_lock_init(i32* %77)
  %79 = load %struct.uniphier_gpio_priv*, %struct.uniphier_gpio_priv** %7, align 8
  %80 = getelementptr inbounds %struct.uniphier_gpio_priv, %struct.uniphier_gpio_priv* %79, i32 0, i32 2
  store %struct.gpio_chip* %80, %struct.gpio_chip** %8, align 8
  %81 = load %struct.device*, %struct.device** %4, align 8
  %82 = call i8* @dev_name(%struct.device* %81)
  %83 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %84 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %83, i32 0, i32 12
  store i8* %82, i8** %84, align 8
  %85 = load %struct.device*, %struct.device** %4, align 8
  %86 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %87 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %86, i32 0, i32 11
  store %struct.device* %85, %struct.device** %87, align 8
  %88 = load i32, i32* @gpiochip_generic_request, align 4
  %89 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %90 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %89, i32 0, i32 10
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* @gpiochip_generic_free, align 4
  %92 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %93 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %92, i32 0, i32 9
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @uniphier_gpio_get_direction, align 4
  %95 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %96 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %95, i32 0, i32 8
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* @uniphier_gpio_direction_input, align 4
  %98 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %99 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %98, i32 0, i32 7
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @uniphier_gpio_direction_output, align 4
  %101 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %102 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %101, i32 0, i32 6
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* @uniphier_gpio_get, align 4
  %104 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %105 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @uniphier_gpio_set, align 4
  %107 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %108 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* @uniphier_gpio_set_multiple, align 4
  %110 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %111 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* @uniphier_gpio_to_irq, align 4
  %113 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %114 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  %115 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %116 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %115, i32 0, i32 0
  store i32 -1, i32* %116, align 8
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %119 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load %struct.uniphier_gpio_priv*, %struct.uniphier_gpio_priv** %7, align 8
  %121 = getelementptr inbounds %struct.uniphier_gpio_priv, %struct.uniphier_gpio_priv* %120, i32 0, i32 1
  store %struct.irq_chip* %121, %struct.irq_chip** %9, align 8
  %122 = load %struct.device*, %struct.device** %4, align 8
  %123 = call i8* @dev_name(%struct.device* %122)
  %124 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %125 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %124, i32 0, i32 5
  store i8* %123, i8** %125, align 8
  %126 = load i32, i32* @uniphier_gpio_irq_mask, align 4
  %127 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %128 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %127, i32 0, i32 4
  store i32 %126, i32* %128, align 8
  %129 = load i32, i32* @uniphier_gpio_irq_unmask, align 4
  %130 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %131 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* @irq_chip_eoi_parent, align 4
  %133 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %134 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 8
  %135 = load i32, i32* @irq_chip_set_affinity_parent, align 4
  %136 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %137 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* @uniphier_gpio_irq_set_type, align 4
  %139 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %140 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load %struct.uniphier_gpio_priv*, %struct.uniphier_gpio_priv** %7, align 8
  %142 = call i32 @uniphier_gpio_hw_init(%struct.uniphier_gpio_priv* %141)
  %143 = load %struct.device*, %struct.device** %4, align 8
  %144 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %145 = load %struct.uniphier_gpio_priv*, %struct.uniphier_gpio_priv** %7, align 8
  %146 = call i32 @devm_gpiochip_add_data(%struct.device* %143, %struct.gpio_chip* %144, %struct.uniphier_gpio_priv* %145)
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %12, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %75
  %150 = load i32, i32* %12, align 4
  store i32 %150, i32* %2, align 4
  br label %173

151:                                              ; preds = %75
  %152 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %153 = load i32, i32* @UNIPHIER_GPIO_IRQ_MAX_NUM, align 4
  %154 = load %struct.device*, %struct.device** %4, align 8
  %155 = getelementptr inbounds %struct.device, %struct.device* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @of_node_to_fwnode(i32 %156)
  %158 = load %struct.uniphier_gpio_priv*, %struct.uniphier_gpio_priv** %7, align 8
  %159 = call i32 @irq_domain_create_hierarchy(%struct.irq_domain* %152, i32 0, i32 %153, i32 %157, i32* @uniphier_gpio_irq_domain_ops, %struct.uniphier_gpio_priv* %158)
  %160 = load %struct.uniphier_gpio_priv*, %struct.uniphier_gpio_priv** %7, align 8
  %161 = getelementptr inbounds %struct.uniphier_gpio_priv, %struct.uniphier_gpio_priv* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  %162 = load %struct.uniphier_gpio_priv*, %struct.uniphier_gpio_priv** %7, align 8
  %163 = getelementptr inbounds %struct.uniphier_gpio_priv, %struct.uniphier_gpio_priv* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %151
  %167 = load i32, i32* @ENOMEM, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %2, align 4
  br label %173

169:                                              ; preds = %151
  %170 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %171 = load %struct.uniphier_gpio_priv*, %struct.uniphier_gpio_priv** %7, align 8
  %172 = call i32 @platform_set_drvdata(%struct.platform_device* %170, %struct.uniphier_gpio_priv* %171)
  store i32 0, i32* %2, align 4
  br label %173

173:                                              ; preds = %169, %166, %149, %70, %57, %41, %31, %21
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local %struct.device_node* @of_irq_find_parent(i32) #1

declare dso_local %struct.irq_domain* @irq_find_host(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @uniphier_gpio_get_nbanks(i32) #1

declare dso_local %struct.uniphier_gpio_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @struct_size(%struct.uniphier_gpio_priv*, i32, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i32 @uniphier_gpio_hw_init(%struct.uniphier_gpio_priv*) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.device*, %struct.gpio_chip*, %struct.uniphier_gpio_priv*) #1

declare dso_local i32 @irq_domain_create_hierarchy(%struct.irq_domain*, i32, i32, i32, i32*, %struct.uniphier_gpio_priv*) #1

declare dso_local i32 @of_node_to_fwnode(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.uniphier_gpio_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
