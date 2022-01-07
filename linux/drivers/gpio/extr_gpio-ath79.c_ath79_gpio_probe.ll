; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ath79.c_ath79_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ath79.c_ath79_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.ath79_gpio_platform_data = type { i32, i32 }
%struct.ath79_gpio_ctrl = type { %struct.TYPE_3__, i32*, i32 }
%struct.TYPE_3__ = type { %struct.gpio_irq_chip, i64 }
%struct.gpio_irq_chip = type { i32, i32, i32, i32*, i32, i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ngpios\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"ngpios property is not valid\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"qca,ar9340-gpio\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"No DT node or platform data found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"ngpios must be less than 32\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@AR71XX_GPIO_REG_IN = common dso_local global i32 0, align 4
@AR71XX_GPIO_REG_SET = common dso_local global i32 0, align 4
@AR71XX_GPIO_REG_CLEAR = common dso_local global i32 0, align 4
@AR71XX_GPIO_REG_OE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"bgpio_init failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"interrupt-controller\00", align 1
@ath79_gpio_irqchip = common dso_local global i32 0, align 4
@ath79_gpio_irq_handler = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@handle_simple_irq = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"cannot add AR71xx GPIO chip, error=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ath79_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath79_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ath79_gpio_platform_data*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.ath79_gpio_ctrl*, align 8
  %8 = alloca %struct.gpio_irq_chip*, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call %struct.ath79_gpio_platform_data* @dev_get_platdata(%struct.device* %14)
  store %struct.ath79_gpio_platform_data* %15, %struct.ath79_gpio_platform_data** %4, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %5, align 8
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 0
  %20 = load %struct.device_node*, %struct.device_node** %19, align 8
  store %struct.device_node* %20, %struct.device_node** %6, align 8
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.ath79_gpio_ctrl* @devm_kzalloc(%struct.device* %21, i32 64, i32 %22)
  store %struct.ath79_gpio_ctrl* %23, %struct.ath79_gpio_ctrl** %7, align 8
  %24 = load %struct.ath79_gpio_ctrl*, %struct.ath79_gpio_ctrl** %7, align 8
  %25 = icmp ne %struct.ath79_gpio_ctrl* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %213

29:                                               ; preds = %1
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = load %struct.ath79_gpio_ctrl*, %struct.ath79_gpio_ctrl** %7, align 8
  %32 = call i32 @platform_set_drvdata(%struct.platform_device* %30, %struct.ath79_gpio_ctrl* %31)
  %33 = load %struct.device_node*, %struct.device_node** %6, align 8
  %34 = icmp ne %struct.device_node* %33, null
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = load %struct.device_node*, %struct.device_node** %6, align 8
  %37 = call i32 @of_property_read_u32(%struct.device_node* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %10)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %2, align 4
  br label %213

44:                                               ; preds = %35
  %45 = load %struct.device_node*, %struct.device_node** %6, align 8
  %46 = call i32 @of_device_is_compatible(%struct.device_node* %45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 %46, i32* %11, align 4
  br label %63

47:                                               ; preds = %29
  %48 = load %struct.ath79_gpio_platform_data*, %struct.ath79_gpio_platform_data** %4, align 8
  %49 = icmp ne %struct.ath79_gpio_platform_data* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load %struct.ath79_gpio_platform_data*, %struct.ath79_gpio_platform_data** %4, align 8
  %52 = getelementptr inbounds %struct.ath79_gpio_platform_data, %struct.ath79_gpio_platform_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %10, align 4
  %54 = load %struct.ath79_gpio_platform_data*, %struct.ath79_gpio_platform_data** %4, align 8
  %55 = getelementptr inbounds %struct.ath79_gpio_platform_data, %struct.ath79_gpio_platform_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %11, align 4
  br label %62

57:                                               ; preds = %47
  %58 = load %struct.device*, %struct.device** %5, align 8
  %59 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %58, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %213

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62, %44
  %64 = load i32, i32* %10, align 4
  %65 = icmp sge i32 %64, 32
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load %struct.device*, %struct.device** %5, align 8
  %68 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %213

71:                                               ; preds = %63
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = load i32, i32* @IORESOURCE_MEM, align 4
  %74 = call %struct.resource* @platform_get_resource(%struct.platform_device* %72, i32 %73, i32 0)
  store %struct.resource* %74, %struct.resource** %9, align 8
  %75 = load %struct.resource*, %struct.resource** %9, align 8
  %76 = icmp ne %struct.resource* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %213

80:                                               ; preds = %71
  %81 = load %struct.device*, %struct.device** %5, align 8
  %82 = load %struct.resource*, %struct.resource** %9, align 8
  %83 = getelementptr inbounds %struct.resource, %struct.resource* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.resource*, %struct.resource** %9, align 8
  %86 = call i32 @resource_size(%struct.resource* %85)
  %87 = call i32* @devm_ioremap_nocache(%struct.device* %81, i32 %84, i32 %86)
  %88 = load %struct.ath79_gpio_ctrl*, %struct.ath79_gpio_ctrl** %7, align 8
  %89 = getelementptr inbounds %struct.ath79_gpio_ctrl, %struct.ath79_gpio_ctrl* %88, i32 0, i32 1
  store i32* %87, i32** %89, align 8
  %90 = load %struct.ath79_gpio_ctrl*, %struct.ath79_gpio_ctrl** %7, align 8
  %91 = getelementptr inbounds %struct.ath79_gpio_ctrl, %struct.ath79_gpio_ctrl* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %80
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %213

97:                                               ; preds = %80
  %98 = load %struct.ath79_gpio_ctrl*, %struct.ath79_gpio_ctrl** %7, align 8
  %99 = getelementptr inbounds %struct.ath79_gpio_ctrl, %struct.ath79_gpio_ctrl* %98, i32 0, i32 2
  %100 = call i32 @raw_spin_lock_init(i32* %99)
  %101 = load %struct.ath79_gpio_ctrl*, %struct.ath79_gpio_ctrl** %7, align 8
  %102 = getelementptr inbounds %struct.ath79_gpio_ctrl, %struct.ath79_gpio_ctrl* %101, i32 0, i32 0
  %103 = load %struct.device*, %struct.device** %5, align 8
  %104 = load %struct.ath79_gpio_ctrl*, %struct.ath79_gpio_ctrl** %7, align 8
  %105 = getelementptr inbounds %struct.ath79_gpio_ctrl, %struct.ath79_gpio_ctrl* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* @AR71XX_GPIO_REG_IN, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load %struct.ath79_gpio_ctrl*, %struct.ath79_gpio_ctrl** %7, align 8
  %111 = getelementptr inbounds %struct.ath79_gpio_ctrl, %struct.ath79_gpio_ctrl* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* @AR71XX_GPIO_REG_SET, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load %struct.ath79_gpio_ctrl*, %struct.ath79_gpio_ctrl** %7, align 8
  %117 = getelementptr inbounds %struct.ath79_gpio_ctrl, %struct.ath79_gpio_ctrl* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* @AR71XX_GPIO_REG_CLEAR, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %11, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %97
  br label %132

125:                                              ; preds = %97
  %126 = load %struct.ath79_gpio_ctrl*, %struct.ath79_gpio_ctrl** %7, align 8
  %127 = getelementptr inbounds %struct.ath79_gpio_ctrl, %struct.ath79_gpio_ctrl* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* @AR71XX_GPIO_REG_OE, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  br label %132

132:                                              ; preds = %125, %124
  %133 = phi i32* [ null, %124 ], [ %131, %125 ]
  %134 = load i32, i32* %11, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %132
  %137 = load %struct.ath79_gpio_ctrl*, %struct.ath79_gpio_ctrl** %7, align 8
  %138 = getelementptr inbounds %struct.ath79_gpio_ctrl, %struct.ath79_gpio_ctrl* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* @AR71XX_GPIO_REG_OE, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  br label %144

143:                                              ; preds = %132
  br label %144

144:                                              ; preds = %143, %136
  %145 = phi i32* [ %142, %136 ], [ null, %143 ]
  %146 = call i32 @bgpio_init(%struct.TYPE_3__* %102, %struct.device* %103, i32 4, i32* %109, i32* %115, i32* %121, i32* %133, i32* %145, i32 0)
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %12, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %144
  %150 = load %struct.device*, %struct.device** %5, align 8
  %151 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %150, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %152 = load i32, i32* %12, align 4
  store i32 %152, i32* %2, align 4
  br label %213

153:                                              ; preds = %144
  %154 = load %struct.ath79_gpio_ctrl*, %struct.ath79_gpio_ctrl** %7, align 8
  %155 = getelementptr inbounds %struct.ath79_gpio_ctrl, %struct.ath79_gpio_ctrl* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 1
  store i64 0, i64* %156, align 8
  %157 = load %struct.device_node*, %struct.device_node** %6, align 8
  %158 = icmp ne %struct.device_node* %157, null
  br i1 %158, label %159, label %163

159:                                              ; preds = %153
  %160 = load %struct.device_node*, %struct.device_node** %6, align 8
  %161 = call i64 @of_property_read_bool(%struct.device_node* %160, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %199

163:                                              ; preds = %159, %153
  %164 = load %struct.ath79_gpio_ctrl*, %struct.ath79_gpio_ctrl** %7, align 8
  %165 = getelementptr inbounds %struct.ath79_gpio_ctrl, %struct.ath79_gpio_ctrl* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 0
  store %struct.gpio_irq_chip* %166, %struct.gpio_irq_chip** %8, align 8
  %167 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %8, align 8
  %168 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %167, i32 0, i32 5
  store i32* @ath79_gpio_irqchip, i32** %168, align 8
  %169 = load i32, i32* @ath79_gpio_irq_handler, align 4
  %170 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %8, align 8
  %171 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %170, i32 0, i32 4
  store i32 %169, i32* %171, align 8
  %172 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %8, align 8
  %173 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %172, i32 0, i32 0
  store i32 1, i32* %173, align 8
  %174 = load %struct.device*, %struct.device** %5, align 8
  %175 = load i32, i32* @GFP_KERNEL, align 4
  %176 = call i32* @devm_kcalloc(%struct.device* %174, i32 1, i32 4, i32 %175)
  %177 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %8, align 8
  %178 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %177, i32 0, i32 3
  store i32* %176, i32** %178, align 8
  %179 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %8, align 8
  %180 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %179, i32 0, i32 3
  %181 = load i32*, i32** %180, align 8
  %182 = icmp ne i32* %181, null
  br i1 %182, label %186, label %183

183:                                              ; preds = %163
  %184 = load i32, i32* @ENOMEM, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %2, align 4
  br label %213

186:                                              ; preds = %163
  %187 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %188 = call i32 @platform_get_irq(%struct.platform_device* %187, i32 0)
  %189 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %8, align 8
  %190 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %189, i32 0, i32 3
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 0
  store i32 %188, i32* %192, align 4
  %193 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %194 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %8, align 8
  %195 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %194, i32 0, i32 2
  store i32 %193, i32* %195, align 8
  %196 = load i32, i32* @handle_simple_irq, align 4
  %197 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %8, align 8
  %198 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %197, i32 0, i32 1
  store i32 %196, i32* %198, align 4
  br label %199

199:                                              ; preds = %186, %159
  %200 = load %struct.device*, %struct.device** %5, align 8
  %201 = load %struct.ath79_gpio_ctrl*, %struct.ath79_gpio_ctrl** %7, align 8
  %202 = getelementptr inbounds %struct.ath79_gpio_ctrl, %struct.ath79_gpio_ctrl* %201, i32 0, i32 0
  %203 = load %struct.ath79_gpio_ctrl*, %struct.ath79_gpio_ctrl** %7, align 8
  %204 = call i32 @devm_gpiochip_add_data(%struct.device* %200, %struct.TYPE_3__* %202, %struct.ath79_gpio_ctrl* %203)
  store i32 %204, i32* %12, align 4
  %205 = load i32, i32* %12, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %199
  %208 = load %struct.device*, %struct.device** %5, align 8
  %209 = load i32, i32* %12, align 4
  %210 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %208, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %209)
  %211 = load i32, i32* %12, align 4
  store i32 %211, i32* %2, align 4
  br label %213

212:                                              ; preds = %199
  store i32 0, i32* %2, align 4
  br label %213

213:                                              ; preds = %212, %207, %183, %149, %94, %77, %66, %57, %40, %26
  %214 = load i32, i32* %2, align 4
  ret i32 %214
}

declare dso_local %struct.ath79_gpio_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.ath79_gpio_ctrl* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ath79_gpio_ctrl*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32* @devm_ioremap_nocache(%struct.device*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i32 @bgpio_init(%struct.TYPE_3__*, %struct.device*, i32, i32*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.device*, %struct.TYPE_3__*, %struct.ath79_gpio_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
