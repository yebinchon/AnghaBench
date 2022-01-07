; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ixp4xx.c_ixp4xx_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ixp4xx.c_ixp4xx_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.irq_domain = type { i32 }
%struct.resource = type { i32 }
%struct.ixp4xx_gpio = type { %struct.TYPE_3__, i64, i64, %struct.device* }
%struct.TYPE_3__ = type { i32, i8*, %struct.gpio_irq_chip, i32, %struct.device*, i64 }
%struct.gpio_irq_chip = type { i32, i32, i32, %struct.irq_domain*, i64, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"no IRQ parent node\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"no IRQ parent domain\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"no domain base\0A\00", align 1
@IXP4XX_REG_GPCLK = common dso_local global i64 0, align 8
@IXP4XX_REG_GPIN = common dso_local global i64 0, align 8
@IXP4XX_REG_GPOUT = common dso_local global i64 0, align 8
@IXP4XX_REG_GPOE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"unable to init generic GPIO\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"IXP4XX_GPIO_CHIP\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@ixp4xx_gpio_irqchip = common dso_local global i32 0, align 4
@ixp4xx_gpio_child_to_parent_hwirq = common dso_local global i32 0, align 4
@handle_bad_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"failed to add SoC gpiochip\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"IXP4 GPIO registered\0A\00", align 1
@BGPIOF_BIG_ENDIAN_BYTE_ORDER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ixp4xx_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixp4xx_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.irq_domain*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.ixp4xx_gpio*, align 8
  %10 = alloca %struct.gpio_irq_chip*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %6, align 8
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.ixp4xx_gpio* @devm_kzalloc(%struct.device* %18, i32 104, i32 %19)
  store %struct.ixp4xx_gpio* %20, %struct.ixp4xx_gpio** %9, align 8
  %21 = load %struct.ixp4xx_gpio*, %struct.ixp4xx_gpio** %9, align 8
  %22 = icmp ne %struct.ixp4xx_gpio* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %191

26:                                               ; preds = %1
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = load %struct.ixp4xx_gpio*, %struct.ixp4xx_gpio** %9, align 8
  %29 = getelementptr inbounds %struct.ixp4xx_gpio, %struct.ixp4xx_gpio* %28, i32 0, i32 3
  store %struct.device* %27, %struct.device** %29, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = load i32, i32* @IORESOURCE_MEM, align 4
  %32 = call %struct.resource* @platform_get_resource(%struct.platform_device* %30, i32 %31, i32 0)
  store %struct.resource* %32, %struct.resource** %8, align 8
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = load %struct.resource*, %struct.resource** %8, align 8
  %35 = call i64 @devm_ioremap_resource(%struct.device* %33, %struct.resource* %34)
  %36 = load %struct.ixp4xx_gpio*, %struct.ixp4xx_gpio** %9, align 8
  %37 = getelementptr inbounds %struct.ixp4xx_gpio, %struct.ixp4xx_gpio* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  %38 = load %struct.ixp4xx_gpio*, %struct.ixp4xx_gpio** %9, align 8
  %39 = getelementptr inbounds %struct.ixp4xx_gpio, %struct.ixp4xx_gpio* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @IS_ERR(i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %26
  %44 = load %struct.ixp4xx_gpio*, %struct.ixp4xx_gpio** %9, align 8
  %45 = getelementptr inbounds %struct.ixp4xx_gpio, %struct.ixp4xx_gpio* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @PTR_ERR(i64 %46)
  store i32 %47, i32* %2, align 4
  br label %191

48:                                               ; preds = %26
  %49 = load %struct.device_node*, %struct.device_node** %6, align 8
  %50 = icmp ne %struct.device_node* %49, null
  br i1 %50, label %51, label %76

51:                                               ; preds = %48
  %52 = load %struct.device_node*, %struct.device_node** %6, align 8
  %53 = call %struct.device_node* @of_irq_find_parent(%struct.device_node* %52)
  store %struct.device_node* %53, %struct.device_node** %12, align 8
  %54 = load %struct.device_node*, %struct.device_node** %12, align 8
  %55 = icmp ne %struct.device_node* %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load %struct.device*, %struct.device** %5, align 8
  %58 = call i32 @dev_err(%struct.device* %57, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %191

61:                                               ; preds = %51
  %62 = load %struct.device_node*, %struct.device_node** %12, align 8
  %63 = call %struct.irq_domain* @irq_find_host(%struct.device_node* %62)
  store %struct.irq_domain* %63, %struct.irq_domain** %7, align 8
  %64 = load %struct.irq_domain*, %struct.irq_domain** %7, align 8
  %65 = icmp ne %struct.irq_domain* %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load %struct.device*, %struct.device** %5, align 8
  %68 = call i32 @dev_err(%struct.device* %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %191

71:                                               ; preds = %61
  %72 = load %struct.device_node*, %struct.device_node** %6, align 8
  %73 = call i64 @of_node_to_fwnode(%struct.device_node* %72)
  %74 = load %struct.ixp4xx_gpio*, %struct.ixp4xx_gpio** %9, align 8
  %75 = getelementptr inbounds %struct.ixp4xx_gpio, %struct.ixp4xx_gpio* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  br label %93

76:                                               ; preds = %48
  %77 = call %struct.irq_domain* (...) @ixp4xx_get_irq_domain()
  store %struct.irq_domain* %77, %struct.irq_domain** %7, align 8
  %78 = load %struct.resource*, %struct.resource** %8, align 8
  %79 = getelementptr inbounds %struct.resource, %struct.resource* %78, i32 0, i32 0
  %80 = call i64 @irq_domain_alloc_fwnode(i32* %79)
  %81 = load %struct.ixp4xx_gpio*, %struct.ixp4xx_gpio** %9, align 8
  %82 = getelementptr inbounds %struct.ixp4xx_gpio, %struct.ixp4xx_gpio* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  %83 = load %struct.ixp4xx_gpio*, %struct.ixp4xx_gpio** %9, align 8
  %84 = getelementptr inbounds %struct.ixp4xx_gpio, %struct.ixp4xx_gpio* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %76
  %88 = load %struct.device*, %struct.device** %5, align 8
  %89 = call i32 @dev_err(%struct.device* %88, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %90 = load i32, i32* @ENODEV, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %191

92:                                               ; preds = %76
  br label %93

93:                                               ; preds = %92, %71
  %94 = call i64 (...) @machine_is_dsmg600()
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = call i64 (...) @machine_is_nas100d()
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %96, %93
  %100 = load %struct.ixp4xx_gpio*, %struct.ixp4xx_gpio** %9, align 8
  %101 = getelementptr inbounds %struct.ixp4xx_gpio, %struct.ixp4xx_gpio* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @IXP4XX_REG_GPCLK, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @__raw_writel(i32 0, i64 %104)
  br label %106

106:                                              ; preds = %99, %96
  store i64 0, i64* %4, align 8
  %107 = load %struct.ixp4xx_gpio*, %struct.ixp4xx_gpio** %9, align 8
  %108 = getelementptr inbounds %struct.ixp4xx_gpio, %struct.ixp4xx_gpio* %107, i32 0, i32 0
  %109 = load %struct.device*, %struct.device** %5, align 8
  %110 = load %struct.ixp4xx_gpio*, %struct.ixp4xx_gpio** %9, align 8
  %111 = getelementptr inbounds %struct.ixp4xx_gpio, %struct.ixp4xx_gpio* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @IXP4XX_REG_GPIN, align 8
  %114 = add nsw i64 %112, %113
  %115 = load %struct.ixp4xx_gpio*, %struct.ixp4xx_gpio** %9, align 8
  %116 = getelementptr inbounds %struct.ixp4xx_gpio, %struct.ixp4xx_gpio* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @IXP4XX_REG_GPOUT, align 8
  %119 = add nsw i64 %117, %118
  %120 = load %struct.ixp4xx_gpio*, %struct.ixp4xx_gpio** %9, align 8
  %121 = getelementptr inbounds %struct.ixp4xx_gpio, %struct.ixp4xx_gpio* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @IXP4XX_REG_GPOE, align 8
  %124 = add nsw i64 %122, %123
  %125 = load i64, i64* %4, align 8
  %126 = call i32 @bgpio_init(%struct.TYPE_3__* %108, %struct.device* %109, i32 4, i64 %114, i64 %119, i32* null, i32* null, i64 %124, i64 %125)
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %106
  %130 = load %struct.device*, %struct.device** %5, align 8
  %131 = call i32 @dev_err(%struct.device* %130, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %132 = load i32, i32* %11, align 4
  store i32 %132, i32* %2, align 4
  br label %191

133:                                              ; preds = %106
  %134 = load %struct.ixp4xx_gpio*, %struct.ixp4xx_gpio** %9, align 8
  %135 = getelementptr inbounds %struct.ixp4xx_gpio, %struct.ixp4xx_gpio* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  store i32 16, i32* %136, align 8
  %137 = load %struct.ixp4xx_gpio*, %struct.ixp4xx_gpio** %9, align 8
  %138 = getelementptr inbounds %struct.ixp4xx_gpio, %struct.ixp4xx_gpio* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8** %139, align 8
  %140 = load %struct.ixp4xx_gpio*, %struct.ixp4xx_gpio** %9, align 8
  %141 = getelementptr inbounds %struct.ixp4xx_gpio, %struct.ixp4xx_gpio* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 5
  store i64 0, i64* %142, align 8
  %143 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %144 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %143, i32 0, i32 0
  %145 = load %struct.ixp4xx_gpio*, %struct.ixp4xx_gpio** %9, align 8
  %146 = getelementptr inbounds %struct.ixp4xx_gpio, %struct.ixp4xx_gpio* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 4
  store %struct.device* %144, %struct.device** %147, align 8
  %148 = load i32, i32* @THIS_MODULE, align 4
  %149 = load %struct.ixp4xx_gpio*, %struct.ixp4xx_gpio** %9, align 8
  %150 = getelementptr inbounds %struct.ixp4xx_gpio, %struct.ixp4xx_gpio* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 3
  store i32 %148, i32* %151, align 8
  %152 = load %struct.ixp4xx_gpio*, %struct.ixp4xx_gpio** %9, align 8
  %153 = getelementptr inbounds %struct.ixp4xx_gpio, %struct.ixp4xx_gpio* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 2
  store %struct.gpio_irq_chip* %154, %struct.gpio_irq_chip** %10, align 8
  %155 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %10, align 8
  %156 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %155, i32 0, i32 5
  store i32* @ixp4xx_gpio_irqchip, i32** %156, align 8
  %157 = load %struct.ixp4xx_gpio*, %struct.ixp4xx_gpio** %9, align 8
  %158 = getelementptr inbounds %struct.ixp4xx_gpio, %struct.ixp4xx_gpio* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %10, align 8
  %161 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %160, i32 0, i32 4
  store i64 %159, i64* %161, align 8
  %162 = load %struct.irq_domain*, %struct.irq_domain** %7, align 8
  %163 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %10, align 8
  %164 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %163, i32 0, i32 3
  store %struct.irq_domain* %162, %struct.irq_domain** %164, align 8
  %165 = load i32, i32* @ixp4xx_gpio_child_to_parent_hwirq, align 4
  %166 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %10, align 8
  %167 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 8
  %168 = load i32, i32* @handle_bad_irq, align 4
  %169 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %10, align 8
  %170 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  %171 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %172 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %10, align 8
  %173 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 8
  %174 = load %struct.device*, %struct.device** %5, align 8
  %175 = load %struct.ixp4xx_gpio*, %struct.ixp4xx_gpio** %9, align 8
  %176 = getelementptr inbounds %struct.ixp4xx_gpio, %struct.ixp4xx_gpio* %175, i32 0, i32 0
  %177 = load %struct.ixp4xx_gpio*, %struct.ixp4xx_gpio** %9, align 8
  %178 = call i32 @devm_gpiochip_add_data(%struct.device* %174, %struct.TYPE_3__* %176, %struct.ixp4xx_gpio* %177)
  store i32 %178, i32* %11, align 4
  %179 = load i32, i32* %11, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %133
  %182 = load %struct.device*, %struct.device** %5, align 8
  %183 = call i32 @dev_err(%struct.device* %182, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %184 = load i32, i32* %11, align 4
  store i32 %184, i32* %2, align 4
  br label %191

185:                                              ; preds = %133
  %186 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %187 = load %struct.ixp4xx_gpio*, %struct.ixp4xx_gpio** %9, align 8
  %188 = call i32 @platform_set_drvdata(%struct.platform_device* %186, %struct.ixp4xx_gpio* %187)
  %189 = load %struct.device*, %struct.device** %5, align 8
  %190 = call i32 @dev_info(%struct.device* %189, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %191

191:                                              ; preds = %185, %181, %129, %87, %66, %56, %43, %23
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local %struct.ixp4xx_gpio* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local %struct.device_node* @of_irq_find_parent(%struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.irq_domain* @irq_find_host(%struct.device_node*) #1

declare dso_local i64 @of_node_to_fwnode(%struct.device_node*) #1

declare dso_local %struct.irq_domain* @ixp4xx_get_irq_domain(...) #1

declare dso_local i64 @irq_domain_alloc_fwnode(i32*) #1

declare dso_local i64 @machine_is_dsmg600(...) #1

declare dso_local i64 @machine_is_nas100d(...) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @bgpio_init(%struct.TYPE_3__*, %struct.device*, i32, i64, i64, i32*, i32*, i64, i64) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.device*, %struct.TYPE_3__*, %struct.ixp4xx_gpio*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ixp4xx_gpio*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
