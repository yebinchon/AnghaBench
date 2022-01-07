; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pmic-eic-sprd.c_sprd_pmic_eic_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pmic-eic-sprd.c_sprd_pmic_eic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.gpio_irq_chip = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i8* }
%struct.sprd_pmic_eic = type { i32, %struct.TYPE_10__, %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.gpio_irq_chip, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to get PMIC EIC base address.\0A\00", align 1
@sprd_pmic_eic_irq_handler = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_NO_SUSPEND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to request PMIC EIC IRQ.\0A\00", align 1
@SPRD_PMIC_EIC_NR = common dso_local global i32 0, align 4
@sprd_pmic_eic_direction_input = common dso_local global i32 0, align 4
@sprd_pmic_eic_request = common dso_local global i32 0, align 4
@sprd_pmic_eic_free = common dso_local global i32 0, align 4
@sprd_pmic_eic_set_config = common dso_local global i32 0, align 4
@sprd_pmic_eic_set = common dso_local global i32 0, align 4
@sprd_pmic_eic_get = common dso_local global i32 0, align 4
@sprd_pmic_eic_irq_mask = common dso_local global i32 0, align 4
@sprd_pmic_eic_irq_unmask = common dso_local global i32 0, align 4
@sprd_pmic_eic_irq_set_type = common dso_local global i32 0, align 4
@sprd_pmic_eic_bus_lock = common dso_local global i32 0, align 4
@sprd_pmic_eic_bus_sync_unlock = common dso_local global i32 0, align 4
@IRQCHIP_SKIP_SET_WAKE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Could not register gpiochip %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sprd_pmic_eic_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_pmic_eic_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.gpio_irq_chip*, align 8
  %5 = alloca %struct.sprd_pmic_eic*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.sprd_pmic_eic* @devm_kzalloc(%struct.TYPE_9__* %8, i32 136, i32 %9)
  store %struct.sprd_pmic_eic* %10, %struct.sprd_pmic_eic** %5, align 8
  %11 = load %struct.sprd_pmic_eic*, %struct.sprd_pmic_eic** %5, align 8
  %12 = icmp ne %struct.sprd_pmic_eic* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %191

16:                                               ; preds = %1
  %17 = load %struct.sprd_pmic_eic*, %struct.sprd_pmic_eic** %5, align 8
  %18 = getelementptr inbounds %struct.sprd_pmic_eic, %struct.sprd_pmic_eic* %17, i32 0, i32 5
  %19 = call i32 @mutex_init(i32* %18)
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = call i32 @platform_get_irq(%struct.platform_device* %20, i32 0)
  %22 = load %struct.sprd_pmic_eic*, %struct.sprd_pmic_eic** %5, align 8
  %23 = getelementptr inbounds %struct.sprd_pmic_eic, %struct.sprd_pmic_eic* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.sprd_pmic_eic*, %struct.sprd_pmic_eic** %5, align 8
  %25 = getelementptr inbounds %struct.sprd_pmic_eic, %struct.sprd_pmic_eic* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %16
  %29 = load %struct.sprd_pmic_eic*, %struct.sprd_pmic_eic** %5, align 8
  %30 = getelementptr inbounds %struct.sprd_pmic_eic, %struct.sprd_pmic_eic* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %2, align 4
  br label %191

32:                                               ; preds = %16
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_get_regmap(i32 %36, i32* null)
  %38 = load %struct.sprd_pmic_eic*, %struct.sprd_pmic_eic** %5, align 8
  %39 = getelementptr inbounds %struct.sprd_pmic_eic, %struct.sprd_pmic_eic* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load %struct.sprd_pmic_eic*, %struct.sprd_pmic_eic** %5, align 8
  %41 = getelementptr inbounds %struct.sprd_pmic_eic, %struct.sprd_pmic_eic* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %32
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %191

47:                                               ; preds = %32
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sprd_pmic_eic*, %struct.sprd_pmic_eic** %5, align 8
  %53 = getelementptr inbounds %struct.sprd_pmic_eic, %struct.sprd_pmic_eic* %52, i32 0, i32 3
  %54 = call i32 @of_property_read_u32(i32 %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %47
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %59, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %191

62:                                               ; preds = %47
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = load %struct.sprd_pmic_eic*, %struct.sprd_pmic_eic** %5, align 8
  %66 = getelementptr inbounds %struct.sprd_pmic_eic, %struct.sprd_pmic_eic* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @sprd_pmic_eic_irq_handler, align 4
  %69 = load i32, i32* @IRQF_ONESHOT, align 4
  %70 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = call i8* @dev_name(%struct.TYPE_9__* %73)
  %75 = load %struct.sprd_pmic_eic*, %struct.sprd_pmic_eic** %5, align 8
  %76 = call i32 @devm_request_threaded_irq(%struct.TYPE_9__* %64, i32 %67, i32* null, i32 %68, i32 %71, i8* %74, %struct.sprd_pmic_eic* %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %62
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %81, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %2, align 4
  br label %191

84:                                               ; preds = %62
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = call i8* @dev_name(%struct.TYPE_9__* %86)
  %88 = load %struct.sprd_pmic_eic*, %struct.sprd_pmic_eic** %5, align 8
  %89 = getelementptr inbounds %struct.sprd_pmic_eic, %struct.sprd_pmic_eic* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 11
  store i8* %87, i8** %90, align 8
  %91 = load i32, i32* @SPRD_PMIC_EIC_NR, align 4
  %92 = load %struct.sprd_pmic_eic*, %struct.sprd_pmic_eic** %5, align 8
  %93 = getelementptr inbounds %struct.sprd_pmic_eic, %struct.sprd_pmic_eic* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 10
  store i32 %91, i32* %94, align 8
  %95 = load %struct.sprd_pmic_eic*, %struct.sprd_pmic_eic** %5, align 8
  %96 = getelementptr inbounds %struct.sprd_pmic_eic, %struct.sprd_pmic_eic* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  store i32 -1, i32* %97, align 8
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = load %struct.sprd_pmic_eic*, %struct.sprd_pmic_eic** %5, align 8
  %101 = getelementptr inbounds %struct.sprd_pmic_eic, %struct.sprd_pmic_eic* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 9
  store %struct.TYPE_9__* %99, %struct.TYPE_9__** %102, align 8
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.sprd_pmic_eic*, %struct.sprd_pmic_eic** %5, align 8
  %108 = getelementptr inbounds %struct.sprd_pmic_eic, %struct.sprd_pmic_eic* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 8
  store i32 %106, i32* %109, align 8
  %110 = load i32, i32* @sprd_pmic_eic_direction_input, align 4
  %111 = load %struct.sprd_pmic_eic*, %struct.sprd_pmic_eic** %5, align 8
  %112 = getelementptr inbounds %struct.sprd_pmic_eic, %struct.sprd_pmic_eic* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 7
  store i32 %110, i32* %113, align 4
  %114 = load i32, i32* @sprd_pmic_eic_request, align 4
  %115 = load %struct.sprd_pmic_eic*, %struct.sprd_pmic_eic** %5, align 8
  %116 = getelementptr inbounds %struct.sprd_pmic_eic, %struct.sprd_pmic_eic* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 6
  store i32 %114, i32* %117, align 8
  %118 = load i32, i32* @sprd_pmic_eic_free, align 4
  %119 = load %struct.sprd_pmic_eic*, %struct.sprd_pmic_eic** %5, align 8
  %120 = getelementptr inbounds %struct.sprd_pmic_eic, %struct.sprd_pmic_eic* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 5
  store i32 %118, i32* %121, align 4
  %122 = load i32, i32* @sprd_pmic_eic_set_config, align 4
  %123 = load %struct.sprd_pmic_eic*, %struct.sprd_pmic_eic** %5, align 8
  %124 = getelementptr inbounds %struct.sprd_pmic_eic, %struct.sprd_pmic_eic* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 4
  store i32 %122, i32* %125, align 8
  %126 = load i32, i32* @sprd_pmic_eic_set, align 4
  %127 = load %struct.sprd_pmic_eic*, %struct.sprd_pmic_eic** %5, align 8
  %128 = getelementptr inbounds %struct.sprd_pmic_eic, %struct.sprd_pmic_eic* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 3
  store i32 %126, i32* %129, align 4
  %130 = load i32, i32* @sprd_pmic_eic_get, align 4
  %131 = load %struct.sprd_pmic_eic*, %struct.sprd_pmic_eic** %5, align 8
  %132 = getelementptr inbounds %struct.sprd_pmic_eic, %struct.sprd_pmic_eic* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 2
  store i32 %130, i32* %133, align 8
  %134 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %135 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %134, i32 0, i32 0
  %136 = call i8* @dev_name(%struct.TYPE_9__* %135)
  %137 = load %struct.sprd_pmic_eic*, %struct.sprd_pmic_eic** %5, align 8
  %138 = getelementptr inbounds %struct.sprd_pmic_eic, %struct.sprd_pmic_eic* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 6
  store i8* %136, i8** %139, align 8
  %140 = load i32, i32* @sprd_pmic_eic_irq_mask, align 4
  %141 = load %struct.sprd_pmic_eic*, %struct.sprd_pmic_eic** %5, align 8
  %142 = getelementptr inbounds %struct.sprd_pmic_eic, %struct.sprd_pmic_eic* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 5
  store i32 %140, i32* %143, align 4
  %144 = load i32, i32* @sprd_pmic_eic_irq_unmask, align 4
  %145 = load %struct.sprd_pmic_eic*, %struct.sprd_pmic_eic** %5, align 8
  %146 = getelementptr inbounds %struct.sprd_pmic_eic, %struct.sprd_pmic_eic* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 4
  store i32 %144, i32* %147, align 8
  %148 = load i32, i32* @sprd_pmic_eic_irq_set_type, align 4
  %149 = load %struct.sprd_pmic_eic*, %struct.sprd_pmic_eic** %5, align 8
  %150 = getelementptr inbounds %struct.sprd_pmic_eic, %struct.sprd_pmic_eic* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 3
  store i32 %148, i32* %151, align 4
  %152 = load i32, i32* @sprd_pmic_eic_bus_lock, align 4
  %153 = load %struct.sprd_pmic_eic*, %struct.sprd_pmic_eic** %5, align 8
  %154 = getelementptr inbounds %struct.sprd_pmic_eic, %struct.sprd_pmic_eic* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 2
  store i32 %152, i32* %155, align 8
  %156 = load i32, i32* @sprd_pmic_eic_bus_sync_unlock, align 4
  %157 = load %struct.sprd_pmic_eic*, %struct.sprd_pmic_eic** %5, align 8
  %158 = getelementptr inbounds %struct.sprd_pmic_eic, %struct.sprd_pmic_eic* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  store i32 %156, i32* %159, align 4
  %160 = load i32, i32* @IRQCHIP_SKIP_SET_WAKE, align 4
  %161 = load %struct.sprd_pmic_eic*, %struct.sprd_pmic_eic** %5, align 8
  %162 = getelementptr inbounds %struct.sprd_pmic_eic, %struct.sprd_pmic_eic* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  store i32 %160, i32* %163, align 8
  %164 = load %struct.sprd_pmic_eic*, %struct.sprd_pmic_eic** %5, align 8
  %165 = getelementptr inbounds %struct.sprd_pmic_eic, %struct.sprd_pmic_eic* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 1
  store %struct.gpio_irq_chip* %166, %struct.gpio_irq_chip** %4, align 8
  %167 = load %struct.sprd_pmic_eic*, %struct.sprd_pmic_eic** %5, align 8
  %168 = getelementptr inbounds %struct.sprd_pmic_eic, %struct.sprd_pmic_eic* %167, i32 0, i32 2
  %169 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %4, align 8
  %170 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %169, i32 0, i32 1
  store %struct.TYPE_8__* %168, %struct.TYPE_8__** %170, align 8
  %171 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %4, align 8
  %172 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %171, i32 0, i32 0
  store i32 1, i32* %172, align 8
  %173 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %174 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %173, i32 0, i32 0
  %175 = load %struct.sprd_pmic_eic*, %struct.sprd_pmic_eic** %5, align 8
  %176 = getelementptr inbounds %struct.sprd_pmic_eic, %struct.sprd_pmic_eic* %175, i32 0, i32 1
  %177 = load %struct.sprd_pmic_eic*, %struct.sprd_pmic_eic** %5, align 8
  %178 = call i32 @devm_gpiochip_add_data(%struct.TYPE_9__* %174, %struct.TYPE_10__* %176, %struct.sprd_pmic_eic* %177)
  store i32 %178, i32* %6, align 4
  %179 = load i32, i32* %6, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %84
  %182 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %183 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %182, i32 0, i32 0
  %184 = load i32, i32* %6, align 4
  %185 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %183, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %184)
  %186 = load i32, i32* %6, align 4
  store i32 %186, i32* %2, align 4
  br label %191

187:                                              ; preds = %84
  %188 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %189 = load %struct.sprd_pmic_eic*, %struct.sprd_pmic_eic** %5, align 8
  %190 = call i32 @platform_set_drvdata(%struct.platform_device* %188, %struct.sprd_pmic_eic* %189)
  store i32 0, i32* %2, align 4
  br label %191

191:                                              ; preds = %187, %181, %79, %57, %44, %28, %13
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local %struct.sprd_pmic_eic* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_get_regmap(i32, i32*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_9__*, i32, i32*, i32, i32, i8*, %struct.sprd_pmic_eic*) #1

declare dso_local i8* @dev_name(%struct.TYPE_9__*) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_9__*, %struct.TYPE_10__*, %struct.sprd_pmic_eic*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sprd_pmic_eic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
