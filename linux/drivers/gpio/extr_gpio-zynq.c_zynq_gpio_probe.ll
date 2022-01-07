; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-zynq.c_zynq_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-zynq.c_zynq_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.zynq_gpio = type { i64, i64, i64, %struct.TYPE_11__*, %struct.gpio_chip }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.gpio_chip = type { %struct.gpio_irq_chip, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_12__*, i32, i32 }
%struct.gpio_irq_chip = type { i32, i32*, i32, i32, i32, i32* }
%struct.of_device_id = type { %struct.TYPE_11__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@zynq_gpio_of_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"of_match_node() failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@zynq_gpio_get_value = common dso_local global i32 0, align 4
@zynq_gpio_set_value = common dso_local global i32 0, align 4
@zynq_gpio_request = common dso_local global i32 0, align 4
@zynq_gpio_free = common dso_local global i32 0, align 4
@zynq_gpio_dir_in = common dso_local global i32 0, align 4
@zynq_gpio_dir_out = common dso_local global i32 0, align 4
@zynq_gpio_get_direction = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"input clock not found.\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Unable to enable clock.\0A\00", align 1
@ZYNQ_GPIO_IXR_DISABLE_ALL = common dso_local global i32 0, align 4
@zynq_gpio_edge_irqchip = common dso_local global i32 0, align 4
@zynq_gpio_irqhandler = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Failed to add gpio chip\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @zynq_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynq_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.zynq_gpio*, align 8
  %7 = alloca %struct.gpio_chip*, align 8
  %8 = alloca %struct.gpio_irq_chip*, align 8
  %9 = alloca %struct.of_device_id*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.zynq_gpio* @devm_kzalloc(%struct.TYPE_12__* %11, i32 128, i32 %12)
  store %struct.zynq_gpio* %13, %struct.zynq_gpio** %6, align 8
  %14 = load %struct.zynq_gpio*, %struct.zynq_gpio** %6, align 8
  %15 = icmp ne %struct.zynq_gpio* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %251

19:                                               ; preds = %1
  %20 = load i32, i32* @zynq_gpio_of_match, align 4
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.of_device_id* @of_match_node(i32 %20, i32 %24)
  store %struct.of_device_id* %25, %struct.of_device_id** %9, align 8
  %26 = load %struct.of_device_id*, %struct.of_device_id** %9, align 8
  %27 = icmp ne %struct.of_device_id* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %19
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i32 @dev_err(%struct.TYPE_12__* %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %251

34:                                               ; preds = %19
  %35 = load %struct.of_device_id*, %struct.of_device_id** %9, align 8
  %36 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %35, i32 0, i32 0
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = load %struct.zynq_gpio*, %struct.zynq_gpio** %6, align 8
  %39 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %38, i32 0, i32 3
  store %struct.TYPE_11__* %37, %struct.TYPE_11__** %39, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = load %struct.zynq_gpio*, %struct.zynq_gpio** %6, align 8
  %42 = call i32 @platform_set_drvdata(%struct.platform_device* %40, %struct.zynq_gpio* %41)
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = call i64 @devm_platform_ioremap_resource(%struct.platform_device* %43, i32 0)
  %45 = load %struct.zynq_gpio*, %struct.zynq_gpio** %6, align 8
  %46 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 8
  %47 = load %struct.zynq_gpio*, %struct.zynq_gpio** %6, align 8
  %48 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @IS_ERR(i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %34
  %53 = load %struct.zynq_gpio*, %struct.zynq_gpio** %6, align 8
  %54 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @PTR_ERR(i64 %55)
  store i32 %56, i32* %2, align 4
  br label %251

57:                                               ; preds = %34
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = call i64 @platform_get_irq(%struct.platform_device* %58, i32 0)
  %60 = load %struct.zynq_gpio*, %struct.zynq_gpio** %6, align 8
  %61 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.zynq_gpio*, %struct.zynq_gpio** %6, align 8
  %63 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %57
  %67 = load %struct.zynq_gpio*, %struct.zynq_gpio** %6, align 8
  %68 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %2, align 4
  br label %251

71:                                               ; preds = %57
  %72 = load %struct.zynq_gpio*, %struct.zynq_gpio** %6, align 8
  %73 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %72, i32 0, i32 4
  store %struct.gpio_chip* %73, %struct.gpio_chip** %7, align 8
  %74 = load %struct.zynq_gpio*, %struct.zynq_gpio** %6, align 8
  %75 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %74, i32 0, i32 3
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %80 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %79, i32 0, i32 12
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @THIS_MODULE, align 4
  %82 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %83 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %82, i32 0, i32 11
  store i32 %81, i32* %83, align 8
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %87 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %86, i32 0, i32 10
  store %struct.TYPE_12__* %85, %struct.TYPE_12__** %87, align 8
  %88 = load i32, i32* @zynq_gpio_get_value, align 4
  %89 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %90 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %89, i32 0, i32 9
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* @zynq_gpio_set_value, align 4
  %92 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %93 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %92, i32 0, i32 8
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @zynq_gpio_request, align 4
  %95 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %96 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %95, i32 0, i32 7
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* @zynq_gpio_free, align 4
  %98 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %99 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %98, i32 0, i32 6
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @zynq_gpio_dir_in, align 4
  %101 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %102 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %101, i32 0, i32 5
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* @zynq_gpio_dir_out, align 4
  %104 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %105 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @zynq_gpio_get_direction, align 4
  %107 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %108 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 8
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @of_alias_get_id(i32 %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %114 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %115 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 4
  %116 = load %struct.zynq_gpio*, %struct.zynq_gpio** %6, align 8
  %117 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %116, i32 0, i32 3
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %122 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 8
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = call i64 @devm_clk_get(%struct.TYPE_12__* %124, i32* null)
  %126 = load %struct.zynq_gpio*, %struct.zynq_gpio** %6, align 8
  %127 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %126, i32 0, i32 1
  store i64 %125, i64* %127, align 8
  %128 = load %struct.zynq_gpio*, %struct.zynq_gpio** %6, align 8
  %129 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = call i64 @IS_ERR(i64 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %71
  %134 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %135 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %134, i32 0, i32 0
  %136 = call i32 @dev_err(%struct.TYPE_12__* %135, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %137 = load %struct.zynq_gpio*, %struct.zynq_gpio** %6, align 8
  %138 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @PTR_ERR(i64 %139)
  store i32 %140, i32* %2, align 4
  br label %251

141:                                              ; preds = %71
  %142 = load %struct.zynq_gpio*, %struct.zynq_gpio** %6, align 8
  %143 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @clk_prepare_enable(i64 %144)
  store i32 %145, i32* %4, align 4
  %146 = load i32, i32* %4, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %141
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %149, i32 0, i32 0
  %151 = call i32 @dev_err(%struct.TYPE_12__* %150, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %152 = load i32, i32* %4, align 4
  store i32 %152, i32* %2, align 4
  br label %251

153:                                              ; preds = %141
  %154 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %155 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %154, i32 0, i32 0
  %156 = call i32 @pm_runtime_set_active(%struct.TYPE_12__* %155)
  %157 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %158 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %157, i32 0, i32 0
  %159 = call i32 @pm_runtime_enable(%struct.TYPE_12__* %158)
  %160 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %161 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %160, i32 0, i32 0
  %162 = call i32 @pm_runtime_get_sync(%struct.TYPE_12__* %161)
  store i32 %162, i32* %4, align 4
  %163 = load i32, i32* %4, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %153
  br label %242

166:                                              ; preds = %153
  store i32 0, i32* %5, align 4
  br label %167

167:                                              ; preds = %184, %166
  %168 = load i32, i32* %5, align 4
  %169 = load %struct.zynq_gpio*, %struct.zynq_gpio** %6, align 8
  %170 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %169, i32 0, i32 3
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = icmp slt i32 %168, %173
  br i1 %174, label %175, label %187

175:                                              ; preds = %167
  %176 = load i32, i32* @ZYNQ_GPIO_IXR_DISABLE_ALL, align 4
  %177 = load %struct.zynq_gpio*, %struct.zynq_gpio** %6, align 8
  %178 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = load i32, i32* %5, align 4
  %181 = call i64 @ZYNQ_GPIO_INTDIS_OFFSET(i32 %180)
  %182 = add nsw i64 %179, %181
  %183 = call i32 @writel_relaxed(i32 %176, i64 %182)
  br label %184

184:                                              ; preds = %175
  %185 = load i32, i32* %5, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %5, align 4
  br label %167

187:                                              ; preds = %167
  %188 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %189 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %188, i32 0, i32 0
  store %struct.gpio_irq_chip* %189, %struct.gpio_irq_chip** %8, align 8
  %190 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %8, align 8
  %191 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %190, i32 0, i32 5
  store i32* @zynq_gpio_edge_irqchip, i32** %191, align 8
  %192 = load i32, i32* @zynq_gpio_irqhandler, align 4
  %193 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %8, align 8
  %194 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %193, i32 0, i32 4
  store i32 %192, i32* %194, align 8
  %195 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %8, align 8
  %196 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %195, i32 0, i32 0
  store i32 1, i32* %196, align 8
  %197 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %198 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %197, i32 0, i32 0
  %199 = load i32, i32* @GFP_KERNEL, align 4
  %200 = call i32* @devm_kcalloc(%struct.TYPE_12__* %198, i32 1, i32 4, i32 %199)
  %201 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %8, align 8
  %202 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %201, i32 0, i32 1
  store i32* %200, i32** %202, align 8
  %203 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %8, align 8
  %204 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = icmp ne i32* %205, null
  br i1 %206, label %210, label %207

207:                                              ; preds = %187
  %208 = load i32, i32* @ENOMEM, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %4, align 4
  br label %238

210:                                              ; preds = %187
  %211 = load %struct.zynq_gpio*, %struct.zynq_gpio** %6, align 8
  %212 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = trunc i64 %213 to i32
  %215 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %8, align 8
  %216 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %215, i32 0, i32 1
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 0
  store i32 %214, i32* %218, align 4
  %219 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %220 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %8, align 8
  %221 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %220, i32 0, i32 3
  store i32 %219, i32* %221, align 4
  %222 = load i32, i32* @handle_level_irq, align 4
  %223 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %8, align 8
  %224 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %223, i32 0, i32 2
  store i32 %222, i32* %224, align 8
  %225 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %226 = load %struct.zynq_gpio*, %struct.zynq_gpio** %6, align 8
  %227 = call i32 @gpiochip_add_data(%struct.gpio_chip* %225, %struct.zynq_gpio* %226)
  store i32 %227, i32* %4, align 4
  %228 = load i32, i32* %4, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %210
  %231 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %232 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %231, i32 0, i32 0
  %233 = call i32 @dev_err(%struct.TYPE_12__* %232, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %238

234:                                              ; preds = %210
  %235 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %236 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %235, i32 0, i32 0
  %237 = call i32 @pm_runtime_put(%struct.TYPE_12__* %236)
  store i32 0, i32* %2, align 4
  br label %251

238:                                              ; preds = %230, %207
  %239 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %240 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %239, i32 0, i32 0
  %241 = call i32 @pm_runtime_put(%struct.TYPE_12__* %240)
  br label %242

242:                                              ; preds = %238, %165
  %243 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %244 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %243, i32 0, i32 0
  %245 = call i32 @pm_runtime_disable(%struct.TYPE_12__* %244)
  %246 = load %struct.zynq_gpio*, %struct.zynq_gpio** %6, align 8
  %247 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = call i32 @clk_disable_unprepare(i64 %248)
  %250 = load i32, i32* %4, align 4
  store i32 %250, i32* %2, align 4
  br label %251

251:                                              ; preds = %242, %234, %148, %133, %66, %52, %28, %16
  %252 = load i32, i32* %2, align 4
  ret i32 %252
}

declare dso_local %struct.zynq_gpio* @devm_kzalloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.zynq_gpio*) #1

declare dso_local i64 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @of_alias_get_id(i32, i8*) #1

declare dso_local i64 @devm_clk_get(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @pm_runtime_set_active(%struct.TYPE_12__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_12__*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.TYPE_12__*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @ZYNQ_GPIO_INTDIS_OFFSET(i32) #1

declare dso_local i32* @devm_kcalloc(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @gpiochip_add_data(%struct.gpio_chip*, %struct.zynq_gpio*) #1

declare dso_local i32 @pm_runtime_put(%struct.TYPE_12__*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_12__*) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
