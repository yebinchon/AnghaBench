; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-cadence.c_cdns_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-cadence.c_cdns_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.cdns_gpio_chip = type { i64, i64, i8*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, %struct.gpio_irq_chip, i32, i32, i32, %struct.TYPE_10__*, i32 }
%struct.gpio_irq_chip = type { i32, i32*, i32, i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ngpios\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"ngpios must be less or equal 32\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CDNS_GPIO_DIRECTION_MODE = common dso_local global i64 0, align 8
@CDNS_GPIO_INPUT_VALUE = common dso_local global i64 0, align 8
@CDNS_GPIO_OUTPUT_VALUE = common dso_local global i64 0, align 8
@BGPIOF_READ_OUTPUT_REG_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to register generic gpio, %d\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@cdns_gpio_request = common dso_local global i32 0, align 4
@cdns_gpio_free = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Failed to retrieve peripheral clock, %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Failed to enable the peripheral clock, %d\0A\00", align 1
@cdns_gpio_irqchip = common dso_local global i32 0, align 4
@cdns_gpio_irq_handler = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Could not register gpiochip, %d\0A\00", align 1
@CDNS_GPIO_BYPASS_MODE = common dso_local global i64 0, align 8
@CDNS_GPIO_OUTPUT_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cdns_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.cdns_gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gpio_irq_chip*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 32, i32* %8, align 4
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.cdns_gpio_chip* @devm_kzalloc(%struct.TYPE_10__* %11, i32 104, i32 %12)
  store %struct.cdns_gpio_chip* %13, %struct.cdns_gpio_chip** %4, align 8
  %14 = load %struct.cdns_gpio_chip*, %struct.cdns_gpio_chip** %4, align 8
  %15 = icmp ne %struct.cdns_gpio_chip* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %251

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = call i64 @devm_platform_ioremap_resource(%struct.platform_device* %20, i32 0)
  %22 = load %struct.cdns_gpio_chip*, %struct.cdns_gpio_chip** %4, align 8
  %23 = getelementptr inbounds %struct.cdns_gpio_chip, %struct.cdns_gpio_chip* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.cdns_gpio_chip*, %struct.cdns_gpio_chip** %4, align 8
  %25 = getelementptr inbounds %struct.cdns_gpio_chip, %struct.cdns_gpio_chip* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @IS_ERR(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load %struct.cdns_gpio_chip*, %struct.cdns_gpio_chip** %4, align 8
  %31 = getelementptr inbounds %struct.cdns_gpio_chip, %struct.cdns_gpio_chip* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @PTR_ERR(i64 %32)
  store i32 %33, i32* %2, align 4
  br label %251

34:                                               ; preds = %19
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @of_property_read_u32(i32 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %8)
  %40 = load i32, i32* %8, align 4
  %41 = icmp sgt i32 %40, 32
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %251

48:                                               ; preds = %34
  %49 = load %struct.cdns_gpio_chip*, %struct.cdns_gpio_chip** %4, align 8
  %50 = getelementptr inbounds %struct.cdns_gpio_chip, %struct.cdns_gpio_chip* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @CDNS_GPIO_DIRECTION_MODE, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i8* @ioread32(i64 %53)
  %55 = ptrtoint i8* %54 to i32
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = sub nsw i32 %56, 1
  %58 = call i32 @GENMASK(i32 %57, i32 0)
  %59 = load %struct.cdns_gpio_chip*, %struct.cdns_gpio_chip** %4, align 8
  %60 = getelementptr inbounds %struct.cdns_gpio_chip, %struct.cdns_gpio_chip* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @CDNS_GPIO_DIRECTION_MODE, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @iowrite32(i32 %58, i64 %63)
  %65 = load %struct.cdns_gpio_chip*, %struct.cdns_gpio_chip** %4, align 8
  %66 = getelementptr inbounds %struct.cdns_gpio_chip, %struct.cdns_gpio_chip* %65, i32 0, i32 3
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = load %struct.cdns_gpio_chip*, %struct.cdns_gpio_chip** %4, align 8
  %70 = getelementptr inbounds %struct.cdns_gpio_chip, %struct.cdns_gpio_chip* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @CDNS_GPIO_INPUT_VALUE, align 8
  %73 = add nsw i64 %71, %72
  %74 = load %struct.cdns_gpio_chip*, %struct.cdns_gpio_chip** %4, align 8
  %75 = getelementptr inbounds %struct.cdns_gpio_chip, %struct.cdns_gpio_chip* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @CDNS_GPIO_OUTPUT_VALUE, align 8
  %78 = add nsw i64 %76, %77
  %79 = load %struct.cdns_gpio_chip*, %struct.cdns_gpio_chip** %4, align 8
  %80 = getelementptr inbounds %struct.cdns_gpio_chip, %struct.cdns_gpio_chip* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @CDNS_GPIO_DIRECTION_MODE, align 8
  %83 = add nsw i64 %81, %82
  %84 = load i32, i32* @BGPIOF_READ_OUTPUT_REG_SET, align 4
  %85 = call i32 @bgpio_init(%struct.TYPE_11__* %66, %struct.TYPE_10__* %68, i32 4, i64 %73, i64 %78, i32* null, i32* null, i64 %83, i32 %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %48
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = load i32, i32* %5, align 4
  %92 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %90, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  br label %242

93:                                               ; preds = %48
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = call i32 @dev_name(%struct.TYPE_10__* %95)
  %97 = load %struct.cdns_gpio_chip*, %struct.cdns_gpio_chip** %4, align 8
  %98 = getelementptr inbounds %struct.cdns_gpio_chip, %struct.cdns_gpio_chip* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 7
  store i32 %96, i32* %99, align 8
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.cdns_gpio_chip*, %struct.cdns_gpio_chip** %4, align 8
  %102 = getelementptr inbounds %struct.cdns_gpio_chip, %struct.cdns_gpio_chip* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 8
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = load %struct.cdns_gpio_chip*, %struct.cdns_gpio_chip** %4, align 8
  %107 = getelementptr inbounds %struct.cdns_gpio_chip, %struct.cdns_gpio_chip* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 6
  store %struct.TYPE_10__* %105, %struct.TYPE_10__** %108, align 8
  %109 = load %struct.cdns_gpio_chip*, %struct.cdns_gpio_chip** %4, align 8
  %110 = getelementptr inbounds %struct.cdns_gpio_chip, %struct.cdns_gpio_chip* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  store i32 -1, i32* %111, align 4
  %112 = load i32, i32* @THIS_MODULE, align 4
  %113 = load %struct.cdns_gpio_chip*, %struct.cdns_gpio_chip** %4, align 8
  %114 = getelementptr inbounds %struct.cdns_gpio_chip, %struct.cdns_gpio_chip* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 5
  store i32 %112, i32* %115, align 8
  %116 = load i32, i32* @cdns_gpio_request, align 4
  %117 = load %struct.cdns_gpio_chip*, %struct.cdns_gpio_chip** %4, align 8
  %118 = getelementptr inbounds %struct.cdns_gpio_chip, %struct.cdns_gpio_chip* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 4
  store i32 %116, i32* %119, align 4
  %120 = load i32, i32* @cdns_gpio_free, align 4
  %121 = load %struct.cdns_gpio_chip*, %struct.cdns_gpio_chip** %4, align 8
  %122 = getelementptr inbounds %struct.cdns_gpio_chip, %struct.cdns_gpio_chip* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 3
  store i32 %120, i32* %123, align 8
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 0
  %126 = call i64 @devm_clk_get(%struct.TYPE_10__* %125, i32* null)
  %127 = load %struct.cdns_gpio_chip*, %struct.cdns_gpio_chip** %4, align 8
  %128 = getelementptr inbounds %struct.cdns_gpio_chip, %struct.cdns_gpio_chip* %127, i32 0, i32 1
  store i64 %126, i64* %128, align 8
  %129 = load %struct.cdns_gpio_chip*, %struct.cdns_gpio_chip** %4, align 8
  %130 = getelementptr inbounds %struct.cdns_gpio_chip, %struct.cdns_gpio_chip* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = call i64 @IS_ERR(i64 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %93
  %135 = load %struct.cdns_gpio_chip*, %struct.cdns_gpio_chip** %4, align 8
  %136 = getelementptr inbounds %struct.cdns_gpio_chip, %struct.cdns_gpio_chip* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @PTR_ERR(i64 %137)
  store i32 %138, i32* %5, align 4
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %139, i32 0, i32 0
  %141 = load i32, i32* %5, align 4
  %142 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %140, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %141)
  br label %242

143:                                              ; preds = %93
  %144 = load %struct.cdns_gpio_chip*, %struct.cdns_gpio_chip** %4, align 8
  %145 = getelementptr inbounds %struct.cdns_gpio_chip, %struct.cdns_gpio_chip* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @clk_prepare_enable(i64 %146)
  store i32 %147, i32* %5, align 4
  %148 = load i32, i32* %5, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %143
  %151 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %152 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %151, i32 0, i32 0
  %153 = load i32, i32* %5, align 4
  %154 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %152, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %153)
  br label %242

155:                                              ; preds = %143
  %156 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %157 = call i32 @platform_get_irq(%struct.platform_device* %156, i32 0)
  store i32 %157, i32* %6, align 4
  %158 = load i32, i32* %6, align 4
  %159 = icmp sge i32 %158, 0
  br i1 %159, label %160, label %196

160:                                              ; preds = %155
  %161 = load %struct.cdns_gpio_chip*, %struct.cdns_gpio_chip** %4, align 8
  %162 = getelementptr inbounds %struct.cdns_gpio_chip, %struct.cdns_gpio_chip* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 2
  store %struct.gpio_irq_chip* %163, %struct.gpio_irq_chip** %9, align 8
  %164 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %9, align 8
  %165 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %164, i32 0, i32 5
  store i32* @cdns_gpio_irqchip, i32** %165, align 8
  %166 = load i32, i32* @cdns_gpio_irq_handler, align 4
  %167 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %9, align 8
  %168 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %167, i32 0, i32 4
  store i32 %166, i32* %168, align 8
  %169 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %9, align 8
  %170 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %169, i32 0, i32 0
  store i32 1, i32* %170, align 8
  %171 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %172 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %171, i32 0, i32 0
  %173 = load i32, i32* @GFP_KERNEL, align 4
  %174 = call i32* @devm_kcalloc(%struct.TYPE_10__* %172, i32 1, i32 4, i32 %173)
  %175 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %9, align 8
  %176 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %175, i32 0, i32 1
  store i32* %174, i32** %176, align 8
  %177 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %9, align 8
  %178 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %184, label %181

181:                                              ; preds = %160
  %182 = load i32, i32* @ENOMEM, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %5, align 4
  br label %237

184:                                              ; preds = %160
  %185 = load i32, i32* %6, align 4
  %186 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %9, align 8
  %187 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 0
  store i32 %185, i32* %189, align 4
  %190 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %191 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %9, align 8
  %192 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %191, i32 0, i32 3
  store i32 %190, i32* %192, align 4
  %193 = load i32, i32* @handle_level_irq, align 4
  %194 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %9, align 8
  %195 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %194, i32 0, i32 2
  store i32 %193, i32* %195, align 8
  br label %196

196:                                              ; preds = %184, %155
  %197 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %198 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %197, i32 0, i32 0
  %199 = load %struct.cdns_gpio_chip*, %struct.cdns_gpio_chip** %4, align 8
  %200 = getelementptr inbounds %struct.cdns_gpio_chip, %struct.cdns_gpio_chip* %199, i32 0, i32 3
  %201 = load %struct.cdns_gpio_chip*, %struct.cdns_gpio_chip** %4, align 8
  %202 = call i32 @devm_gpiochip_add_data(%struct.TYPE_10__* %198, %struct.TYPE_11__* %200, %struct.cdns_gpio_chip* %201)
  store i32 %202, i32* %5, align 4
  %203 = load i32, i32* %5, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %196
  %206 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %207 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %206, i32 0, i32 0
  %208 = load i32, i32* %5, align 4
  %209 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %207, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %208)
  br label %237

210:                                              ; preds = %196
  %211 = load %struct.cdns_gpio_chip*, %struct.cdns_gpio_chip** %4, align 8
  %212 = getelementptr inbounds %struct.cdns_gpio_chip, %struct.cdns_gpio_chip* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @CDNS_GPIO_BYPASS_MODE, align 8
  %215 = add nsw i64 %213, %214
  %216 = call i8* @ioread32(i64 %215)
  %217 = load %struct.cdns_gpio_chip*, %struct.cdns_gpio_chip** %4, align 8
  %218 = getelementptr inbounds %struct.cdns_gpio_chip, %struct.cdns_gpio_chip* %217, i32 0, i32 2
  store i8* %216, i8** %218, align 8
  %219 = load i32, i32* %8, align 4
  %220 = sub nsw i32 %219, 1
  %221 = call i32 @GENMASK(i32 %220, i32 0)
  %222 = load %struct.cdns_gpio_chip*, %struct.cdns_gpio_chip** %4, align 8
  %223 = getelementptr inbounds %struct.cdns_gpio_chip, %struct.cdns_gpio_chip* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @CDNS_GPIO_OUTPUT_EN, align 8
  %226 = add nsw i64 %224, %225
  %227 = call i32 @iowrite32(i32 %221, i64 %226)
  %228 = load %struct.cdns_gpio_chip*, %struct.cdns_gpio_chip** %4, align 8
  %229 = getelementptr inbounds %struct.cdns_gpio_chip, %struct.cdns_gpio_chip* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @CDNS_GPIO_BYPASS_MODE, align 8
  %232 = add nsw i64 %230, %231
  %233 = call i32 @iowrite32(i32 0, i64 %232)
  %234 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %235 = load %struct.cdns_gpio_chip*, %struct.cdns_gpio_chip** %4, align 8
  %236 = call i32 @platform_set_drvdata(%struct.platform_device* %234, %struct.cdns_gpio_chip* %235)
  store i32 0, i32* %2, align 4
  br label %251

237:                                              ; preds = %205, %181
  %238 = load %struct.cdns_gpio_chip*, %struct.cdns_gpio_chip** %4, align 8
  %239 = getelementptr inbounds %struct.cdns_gpio_chip, %struct.cdns_gpio_chip* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = call i32 @clk_disable_unprepare(i64 %240)
  br label %242

242:                                              ; preds = %237, %150, %134, %88
  %243 = load i32, i32* %7, align 4
  %244 = load %struct.cdns_gpio_chip*, %struct.cdns_gpio_chip** %4, align 8
  %245 = getelementptr inbounds %struct.cdns_gpio_chip, %struct.cdns_gpio_chip* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @CDNS_GPIO_DIRECTION_MODE, align 8
  %248 = add nsw i64 %246, %247
  %249 = call i32 @iowrite32(i32 %243, i64 %248)
  %250 = load i32, i32* %5, align 4
  store i32 %250, i32* %2, align 4
  br label %251

251:                                              ; preds = %242, %210, %42, %29, %16
  %252 = load i32, i32* %2, align 4
  ret i32 %252
}

declare dso_local %struct.cdns_gpio_chip* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i64 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i8* @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @bgpio_init(%struct.TYPE_11__*, %struct.TYPE_10__*, i32, i64, i64, i32*, i32*, i64, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_10__*) #1

declare dso_local i64 @devm_clk_get(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32* @devm_kcalloc(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_10__*, %struct.TYPE_11__*, %struct.cdns_gpio_chip*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.cdns_gpio_chip*) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
