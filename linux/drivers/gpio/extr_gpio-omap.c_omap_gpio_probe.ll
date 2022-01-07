; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-omap.c_omap_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-omap.c_omap_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.of_device_id = type { %struct.omap_gpio_platform_data* }
%struct.omap_gpio_platform_data = type { i32, i32, i32, %struct.TYPE_6__*, i32, i64, i32, i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.gpio_bank = type { i32, i32, i32, %struct.TYPE_8__, i32, i64, i32, i32, i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, %struct.device* }
%struct.irq_chip = type { %struct.device*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@omap_gpio_match = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@omap_gpio_irq_startup = common dso_local global i32 0, align 4
@omap_gpio_irq_shutdown = common dso_local global i32 0, align 4
@dummy_irq_chip = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@omap_gpio_mask_irq = common dso_local global i32 0, align 4
@omap_gpio_unmask_irq = common dso_local global i32 0, align 4
@omap_gpio_irq_type = common dso_local global i32 0, align 4
@omap_gpio_wake_enable = common dso_local global i32 0, align 4
@omap_gpio_irq_bus_lock = common dso_local global i32 0, align 4
@gpio_irq_bus_sync_unlock = common dso_local global i32 0, align 4
@IRQCHIP_MASK_ON_SUSPEND = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"can't get irq resource ret=%d\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"ti,gpio-always-on\00", align 1
@omap_set_gpio_dataout_reg = common dso_local global i32 0, align 4
@omap_set_gpio_dataout_mask = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"dbclk\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Could not get gpio dbck. Disable debounce\0A\00", align 1
@gpio_omap_cpu_notifier = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @omap_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca %struct.omap_gpio_platform_data*, align 8
  %8 = alloca %struct.gpio_bank*, align 8
  %9 = alloca %struct.irq_chip*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %5, align 8
  %16 = load i32, i32* @omap_gpio_match, align 4
  %17 = call i32 @of_match_ptr(i32 %16)
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call %struct.of_device_id* @of_match_device(i32 %17, %struct.device* %18)
  store %struct.of_device_id* %19, %struct.of_device_id** %6, align 8
  %20 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %21 = icmp ne %struct.of_device_id* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %24 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %23, i32 0, i32 0
  %25 = load %struct.omap_gpio_platform_data*, %struct.omap_gpio_platform_data** %24, align 8
  br label %29

26:                                               ; preds = %1
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = call %struct.omap_gpio_platform_data* @dev_get_platdata(%struct.device* %27)
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi %struct.omap_gpio_platform_data* [ %25, %22 ], [ %28, %26 ]
  store %struct.omap_gpio_platform_data* %30, %struct.omap_gpio_platform_data** %7, align 8
  %31 = load %struct.omap_gpio_platform_data*, %struct.omap_gpio_platform_data** %7, align 8
  %32 = icmp ne %struct.omap_gpio_platform_data* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %316

36:                                               ; preds = %29
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i8* @devm_kzalloc(%struct.device* %37, i32 96, i32 %38)
  %40 = bitcast i8* %39 to %struct.gpio_bank*
  store %struct.gpio_bank* %40, %struct.gpio_bank** %8, align 8
  %41 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %42 = icmp ne %struct.gpio_bank* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %316

46:                                               ; preds = %36
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i8* @devm_kzalloc(%struct.device* %47, i32 56, i32 %48)
  %50 = bitcast i8* %49 to %struct.irq_chip*
  store %struct.irq_chip* %50, %struct.irq_chip** %9, align 8
  %51 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %52 = icmp ne %struct.irq_chip* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %316

56:                                               ; preds = %46
  %57 = load i32, i32* @omap_gpio_irq_startup, align 4
  %58 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %59 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %58, i32 0, i32 11
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @omap_gpio_irq_shutdown, align 4
  %61 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %62 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %61, i32 0, i32 10
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dummy_irq_chip, i32 0, i32 0), align 4
  %64 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %65 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %64, i32 0, i32 9
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @omap_gpio_mask_irq, align 4
  %67 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %68 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %67, i32 0, i32 8
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @omap_gpio_unmask_irq, align 4
  %70 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %71 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %70, i32 0, i32 7
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* @omap_gpio_irq_type, align 4
  %73 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %74 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %73, i32 0, i32 6
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @omap_gpio_wake_enable, align 4
  %76 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %77 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @omap_gpio_irq_bus_lock, align 4
  %79 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %80 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @gpio_irq_bus_sync_unlock, align 4
  %82 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %83 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 8
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = call i32 @dev_name(%struct.device* %85)
  %87 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %88 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* @IRQCHIP_MASK_ON_SUSPEND, align 4
  %90 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %91 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 8
  %92 = load %struct.device*, %struct.device** %4, align 8
  %93 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %94 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %93, i32 0, i32 0
  store %struct.device* %92, %struct.device** %94, align 8
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = call i32 @platform_get_irq(%struct.platform_device* %95, i32 0)
  %97 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %98 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %100 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp sle i32 %101, 0
  br i1 %102, label %103, label %130

103:                                              ; preds = %56
  %104 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %105 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %103
  %109 = load i32, i32* @ENXIO, align 4
  %110 = sub nsw i32 0, %109
  %111 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %112 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  br label %113

113:                                              ; preds = %108, %103
  %114 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %115 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @EPROBE_DEFER, align 4
  %118 = sub nsw i32 0, %117
  %119 = icmp ne i32 %116, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %113
  %121 = load %struct.device*, %struct.device** %4, align 8
  %122 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %123 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %121, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %120, %113
  %127 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %128 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  store i32 %129, i32* %2, align 4
  br label %316

130:                                              ; preds = %56
  %131 = load %struct.device*, %struct.device** %4, align 8
  %132 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %133 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %132, i32 0, i32 12
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 2
  store %struct.device* %131, %struct.device** %134, align 8
  %135 = load i32, i32* @THIS_MODULE, align 4
  %136 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %137 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %136, i32 0, i32 12
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  store i32 %135, i32* %138, align 4
  %139 = load %struct.omap_gpio_platform_data*, %struct.omap_gpio_platform_data** %7, align 8
  %140 = getelementptr inbounds %struct.omap_gpio_platform_data, %struct.omap_gpio_platform_data* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %143 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  %144 = load %struct.omap_gpio_platform_data*, %struct.omap_gpio_platform_data** %7, align 8
  %145 = getelementptr inbounds %struct.omap_gpio_platform_data, %struct.omap_gpio_platform_data* %144, i32 0, i32 7
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %148 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %147, i32 0, i32 15
  store i32 %146, i32* %148, align 8
  %149 = load %struct.omap_gpio_platform_data*, %struct.omap_gpio_platform_data** %7, align 8
  %150 = getelementptr inbounds %struct.omap_gpio_platform_data, %struct.omap_gpio_platform_data* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %153 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %152, i32 0, i32 14
  store i32 %151, i32* %153, align 4
  %154 = load %struct.omap_gpio_platform_data*, %struct.omap_gpio_platform_data** %7, align 8
  %155 = getelementptr inbounds %struct.omap_gpio_platform_data, %struct.omap_gpio_platform_data* %154, i32 0, i32 5
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %158 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %157, i32 0, i32 5
  store i64 %156, i64* %158, align 8
  %159 = load %struct.omap_gpio_platform_data*, %struct.omap_gpio_platform_data** %7, align 8
  %160 = getelementptr inbounds %struct.omap_gpio_platform_data, %struct.omap_gpio_platform_data* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %163 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %162, i32 0, i32 13
  store i32 %161, i32* %163, align 8
  %164 = load %struct.omap_gpio_platform_data*, %struct.omap_gpio_platform_data** %7, align 8
  %165 = getelementptr inbounds %struct.omap_gpio_platform_data, %struct.omap_gpio_platform_data* %164, i32 0, i32 3
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %165, align 8
  %167 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %168 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %167, i32 0, i32 10
  store %struct.TYPE_6__* %166, %struct.TYPE_6__** %168, align 8
  %169 = load %struct.device_node*, %struct.device_node** %5, align 8
  %170 = icmp ne %struct.device_node* %169, null
  br i1 %170, label %171, label %179

171:                                              ; preds = %130
  %172 = load %struct.device_node*, %struct.device_node** %5, align 8
  %173 = call i32 @of_property_read_bool(%struct.device_node* %172, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %171
  %176 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %177 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %176, i32 0, i32 2
  store i32 1, i32* %177, align 8
  br label %178

178:                                              ; preds = %175, %171
  br label %196

179:                                              ; preds = %130
  %180 = load %struct.omap_gpio_platform_data*, %struct.omap_gpio_platform_data** %7, align 8
  %181 = getelementptr inbounds %struct.omap_gpio_platform_data, %struct.omap_gpio_platform_data* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %184 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %183, i32 0, i32 2
  store i32 %182, i32* %184, align 8
  %185 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %186 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %179
  %190 = load %struct.omap_gpio_platform_data*, %struct.omap_gpio_platform_data** %7, align 8
  %191 = getelementptr inbounds %struct.omap_gpio_platform_data, %struct.omap_gpio_platform_data* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %194 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %193, i32 0, i32 11
  store i32 %192, i32* %194, align 8
  br label %195

195:                                              ; preds = %189, %179
  br label %196

196:                                              ; preds = %195, %178
  %197 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %198 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %197, i32 0, i32 10
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %214

203:                                              ; preds = %196
  %204 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %205 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %204, i32 0, i32 10
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %203
  %211 = load i32, i32* @omap_set_gpio_dataout_reg, align 4
  %212 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %213 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %212, i32 0, i32 9
  store i32 %211, i32* %213, align 4
  br label %218

214:                                              ; preds = %203, %196
  %215 = load i32, i32* @omap_set_gpio_dataout_mask, align 4
  %216 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %217 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %216, i32 0, i32 9
  store i32 %215, i32* %217, align 4
  br label %218

218:                                              ; preds = %214, %210
  %219 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %220 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %219, i32 0, i32 8
  %221 = call i32 @raw_spin_lock_init(i32* %220)
  %222 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %223 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %222, i32 0, i32 7
  %224 = call i32 @raw_spin_lock_init(i32* %223)
  %225 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %226 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %225, i32 0)
  %227 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %228 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %227, i32 0, i32 6
  store i32 %226, i32* %228, align 8
  %229 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %230 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %229, i32 0, i32 6
  %231 = load i32, i32* %230, align 8
  %232 = call i64 @IS_ERR(i32 %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %239

234:                                              ; preds = %218
  %235 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %236 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %235, i32 0, i32 6
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @PTR_ERR(i32 %237)
  store i32 %238, i32* %2, align 4
  br label %316

239:                                              ; preds = %218
  %240 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %241 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %265

244:                                              ; preds = %239
  %245 = load %struct.device*, %struct.device** %4, align 8
  %246 = call i32 @devm_clk_get(%struct.device* %245, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %247 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %248 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %247, i32 0, i32 4
  store i32 %246, i32* %248, align 8
  %249 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %250 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 8
  %252 = call i64 @IS_ERR(i32 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %259

254:                                              ; preds = %244
  %255 = load %struct.device*, %struct.device** %4, align 8
  %256 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %255, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %257 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %258 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %257, i32 0, i32 1
  store i32 0, i32* %258, align 4
  br label %264

259:                                              ; preds = %244
  %260 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %261 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %260, i32 0, i32 4
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @clk_prepare(i32 %262)
  br label %264

264:                                              ; preds = %259, %254
  br label %265

265:                                              ; preds = %264, %239
  %266 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %267 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %268 = call i32 @platform_set_drvdata(%struct.platform_device* %266, %struct.gpio_bank* %267)
  %269 = load %struct.device*, %struct.device** %4, align 8
  %270 = call i32 @pm_runtime_enable(%struct.device* %269)
  %271 = load %struct.device*, %struct.device** %4, align 8
  %272 = call i32 @pm_runtime_get_sync(%struct.device* %271)
  %273 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %274 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %273, i32 0, i32 5
  %275 = load i64, i64* %274, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %280

277:                                              ; preds = %265
  %278 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %279 = call i32 @omap_mpuio_init(%struct.gpio_bank* %278)
  br label %280

280:                                              ; preds = %277, %265
  %281 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %282 = call i32 @omap_gpio_mod_init(%struct.gpio_bank* %281)
  %283 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %284 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %285 = call i32 @omap_gpio_chip_init(%struct.gpio_bank* %283, %struct.irq_chip* %284)
  store i32 %285, i32* %10, align 4
  %286 = load i32, i32* %10, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %304

288:                                              ; preds = %280
  %289 = load %struct.device*, %struct.device** %4, align 8
  %290 = call i32 @pm_runtime_put_sync(%struct.device* %289)
  %291 = load %struct.device*, %struct.device** %4, align 8
  %292 = call i32 @pm_runtime_disable(%struct.device* %291)
  %293 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %294 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %302

297:                                              ; preds = %288
  %298 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %299 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %298, i32 0, i32 4
  %300 = load i32, i32* %299, align 8
  %301 = call i32 @clk_unprepare(i32 %300)
  br label %302

302:                                              ; preds = %297, %288
  %303 = load i32, i32* %10, align 4
  store i32 %303, i32* %2, align 4
  br label %316

304:                                              ; preds = %280
  %305 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %306 = call i32 @omap_gpio_show_rev(%struct.gpio_bank* %305)
  %307 = load i32, i32* @gpio_omap_cpu_notifier, align 4
  %308 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %309 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %308, i32 0, i32 3
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i32 0, i32 0
  store i32 %307, i32* %310, align 4
  %311 = load %struct.gpio_bank*, %struct.gpio_bank** %8, align 8
  %312 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %311, i32 0, i32 3
  %313 = call i32 @cpu_pm_register_notifier(%struct.TYPE_8__* %312)
  %314 = load %struct.device*, %struct.device** %4, align 8
  %315 = call i32 @pm_runtime_put(%struct.device* %314)
  store i32 0, i32* %2, align 4
  br label %316

316:                                              ; preds = %304, %302, %234, %126, %53, %43, %33
  %317 = load i32, i32* %2, align 4
  ret i32 %317
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local i32 @of_match_ptr(i32) #1

declare dso_local %struct.omap_gpio_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @clk_prepare(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.gpio_bank*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @omap_mpuio_init(%struct.gpio_bank*) #1

declare dso_local i32 @omap_gpio_mod_init(%struct.gpio_bank*) #1

declare dso_local i32 @omap_gpio_chip_init(%struct.gpio_bank*, %struct.irq_chip*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @clk_unprepare(i32) #1

declare dso_local i32 @omap_gpio_show_rev(%struct.gpio_bank*) #1

declare dso_local i32 @cpu_pm_register_notifier(%struct.TYPE_8__*) #1

declare dso_local i32 @pm_runtime_put(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
