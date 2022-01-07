; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-palmas.c_palmas_usb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-palmas.c_palmas_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.device_node*, i32 }
%struct.device_node = type { i32 }
%struct.palmas = type { i32, %struct.palmas_usb* }
%struct.palmas_usb = type { i32, i32, i32, i32, i32, i32, i64, i32, i64, %struct.TYPE_11__, i8*, i8*, %struct.TYPE_10__*, i8*, i8*, i8*, %struct.palmas*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.palmas_usb_platform_data = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"failed to get valid parent\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"ti,wakeup\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"ti,enable-id-detection\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"ti,enable-vbus-detection\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"failed to get id gpio\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"failed to get vbus gpio\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"debounce-delay-ms\00", align 1
@USB_GPIO_DEBOUNCE_MS = common dso_local global i32 0, align 4
@palmas_extcon_cable = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [34 x i8] c"failed to allocate extcon device\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"failed to register extcon device\0A\00", align 1
@PALMAS_ID_OTG_IRQ = common dso_local global i32 0, align 4
@PALMAS_ID_IRQ = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"palmas_usb_id\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"can't get IRQ %d, err %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"failed to get id irq\0A\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"failed to request handler for id irq\0A\00", align 1
@PALMAS_VBUS_OTG_IRQ = common dso_local global i32 0, align 4
@PALMAS_VBUS_IRQ = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"palmas_usb_vbus\00", align 1
@PALMAS_PU_PD_OD_BASE = common dso_local global i32 0, align 4
@PALMAS_PRIMARY_SECONDARY_PAD1 = common dso_local global i32 0, align 4
@PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_1_MASK = common dso_local global i32 0, align 4
@PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_1_SHIFT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [19 x i8] c"can't remux GPIO1\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"failed to get vbus irq\0A\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"failed to request handler for vbus irq\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @palmas_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmas_usb_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.palmas*, align 8
  %5 = alloca %struct.palmas_usb_platform_data*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.palmas_usb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.palmas* @dev_get_drvdata(i32 %13)
  store %struct.palmas* %14, %struct.palmas** %4, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call %struct.palmas_usb_platform_data* @dev_get_platdata(%struct.TYPE_10__* %16)
  store %struct.palmas_usb_platform_data* %17, %struct.palmas_usb_platform_data** %5, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load %struct.device_node*, %struct.device_node** %20, align 8
  store %struct.device_node* %21, %struct.device_node** %6, align 8
  %22 = load %struct.palmas*, %struct.palmas** %4, align 8
  %23 = icmp ne %struct.palmas* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %1
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %459

30:                                               ; preds = %1
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.palmas_usb* @devm_kzalloc(%struct.TYPE_10__* %32, i32 120, i32 %33)
  store %struct.palmas_usb* %34, %struct.palmas_usb** %7, align 8
  %35 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %36 = icmp ne %struct.palmas_usb* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %459

40:                                               ; preds = %30
  %41 = load %struct.device_node*, %struct.device_node** %6, align 8
  %42 = icmp ne %struct.device_node* %41, null
  br i1 %42, label %43, label %62

43:                                               ; preds = %40
  %44 = load %struct.palmas_usb_platform_data*, %struct.palmas_usb_platform_data** %5, align 8
  %45 = icmp ne %struct.palmas_usb_platform_data* %44, null
  br i1 %45, label %62, label %46

46:                                               ; preds = %43
  %47 = load %struct.device_node*, %struct.device_node** %6, align 8
  %48 = call i8* @of_property_read_bool(%struct.device_node* %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %49 = ptrtoint i8* %48 to i32
  %50 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %51 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.device_node*, %struct.device_node** %6, align 8
  %53 = call i8* @of_property_read_bool(%struct.device_node* %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %54 = ptrtoint i8* %53 to i32
  %55 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %56 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.device_node*, %struct.device_node** %6, align 8
  %58 = call i8* @of_property_read_bool(%struct.device_node* %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %59 = ptrtoint i8* %58 to i32
  %60 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %61 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  br label %78

62:                                               ; preds = %43, %40
  %63 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %64 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %66 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  %67 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %68 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %67, i32 0, i32 2
  store i32 1, i32* %68, align 8
  %69 = load %struct.palmas_usb_platform_data*, %struct.palmas_usb_platform_data** %5, align 8
  %70 = icmp ne %struct.palmas_usb_platform_data* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %62
  %72 = load %struct.palmas_usb_platform_data*, %struct.palmas_usb_platform_data** %5, align 8
  %73 = getelementptr inbounds %struct.palmas_usb_platform_data, %struct.palmas_usb_platform_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %76 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %71, %62
  br label %78

78:                                               ; preds = %77, %46
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = load i32, i32* @GPIOD_IN, align 4
  %82 = call i8* @devm_gpiod_get_optional(%struct.TYPE_10__* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %81)
  %83 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %84 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %83, i32 0, i32 13
  store i8* %82, i8** %84, align 8
  %85 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %86 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %85, i32 0, i32 13
  %87 = load i8*, i8** %86, align 8
  %88 = call i64 @IS_ERR(i8* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %78
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  %93 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %92, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %94 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %95 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %94, i32 0, i32 13
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @PTR_ERR(i8* %96)
  store i32 %97, i32* %2, align 4
  br label %459

98:                                               ; preds = %78
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = load i32, i32* @GPIOD_IN, align 4
  %102 = call i8* @devm_gpiod_get_optional(%struct.TYPE_10__* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %101)
  %103 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %104 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %103, i32 0, i32 10
  store i8* %102, i8** %104, align 8
  %105 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %106 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %105, i32 0, i32 10
  %107 = load i8*, i8** %106, align 8
  %108 = call i64 @IS_ERR(i8* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %98
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %112, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %114 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %115 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %114, i32 0, i32 10
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @PTR_ERR(i8* %116)
  store i32 %117, i32* %2, align 4
  br label %459

118:                                              ; preds = %98
  %119 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %120 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %118
  %124 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %125 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %124, i32 0, i32 13
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %130 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %129, i32 0, i32 1
  store i32 0, i32* %130, align 4
  %131 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %132 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %131, i32 0, i32 3
  store i32 1, i32* %132, align 4
  br label %133

133:                                              ; preds = %128, %123, %118
  %134 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %135 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %133
  %139 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %140 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %139, i32 0, i32 10
  %141 = load i8*, i8** %140, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %145 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %144, i32 0, i32 2
  store i32 0, i32* %145, align 8
  %146 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %147 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %146, i32 0, i32 4
  store i32 1, i32* %147, align 8
  br label %148

148:                                              ; preds = %143, %138, %133
  %149 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %150 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %174

153:                                              ; preds = %148
  %154 = load %struct.device_node*, %struct.device_node** %6, align 8
  %155 = call i64 @of_property_read_u32(%struct.device_node* %154, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32* %9)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %153
  %158 = load i32, i32* @USB_GPIO_DEBOUNCE_MS, align 4
  store i32 %158, i32* %9, align 4
  br label %159

159:                                              ; preds = %157, %153
  %160 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %161 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %160, i32 0, i32 13
  %162 = load i8*, i8** %161, align 8
  %163 = load i32, i32* %9, align 4
  %164 = mul nsw i32 %163, 1000
  %165 = call i32 @gpiod_set_debounce(i8* %162, i32 %164)
  store i32 %165, i32* %8, align 4
  %166 = load i32, i32* %8, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %159
  %169 = load i32, i32* %9, align 4
  %170 = call i32 @msecs_to_jiffies(i32 %169)
  %171 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %172 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %171, i32 0, i32 17
  store i32 %170, i32* %172, align 8
  br label %173

173:                                              ; preds = %168, %159
  br label %174

174:                                              ; preds = %173, %148
  %175 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %176 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %175, i32 0, i32 9
  %177 = call i32 @INIT_DELAYED_WORK(%struct.TYPE_11__* %176, i32 (i32*)* @palmas_gpio_id_detect)
  %178 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %179 = load %struct.palmas*, %struct.palmas** %4, align 8
  %180 = getelementptr inbounds %struct.palmas, %struct.palmas* %179, i32 0, i32 1
  store %struct.palmas_usb* %178, %struct.palmas_usb** %180, align 8
  %181 = load %struct.palmas*, %struct.palmas** %4, align 8
  %182 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %183 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %182, i32 0, i32 16
  store %struct.palmas* %181, %struct.palmas** %183, align 8
  %184 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %185 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %184, i32 0, i32 0
  %186 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %187 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %186, i32 0, i32 12
  store %struct.TYPE_10__* %185, %struct.TYPE_10__** %187, align 8
  %188 = load %struct.palmas*, %struct.palmas** %4, align 8
  %189 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %190 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @palmas_usb_wakeup(%struct.palmas* %188, i32 %191)
  %193 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %194 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %195 = call i32 @platform_set_drvdata(%struct.platform_device* %193, %struct.palmas_usb* %194)
  %196 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %197 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %196, i32 0, i32 0
  %198 = load i32, i32* @palmas_extcon_cable, align 4
  %199 = call i8* @devm_extcon_dev_allocate(%struct.TYPE_10__* %197, i32 %198)
  %200 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %201 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %200, i32 0, i32 15
  store i8* %199, i8** %201, align 8
  %202 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %203 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %202, i32 0, i32 15
  %204 = load i8*, i8** %203, align 8
  %205 = call i64 @IS_ERR(i8* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %174
  %208 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %209 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %208, i32 0, i32 0
  %210 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %209, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  %211 = load i32, i32* @ENOMEM, align 4
  %212 = sub nsw i32 0, %211
  store i32 %212, i32* %2, align 4
  br label %459

213:                                              ; preds = %174
  %214 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %215 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %214, i32 0, i32 0
  %216 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %217 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %216, i32 0, i32 15
  %218 = load i8*, i8** %217, align 8
  %219 = call i32 @devm_extcon_dev_register(%struct.TYPE_10__* %215, i8* %218)
  store i32 %219, i32* %8, align 4
  %220 = load i32, i32* %8, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %213
  %223 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %224 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %223, i32 0, i32 0
  %225 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %224, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  %226 = load i32, i32* %8, align 4
  store i32 %226, i32* %2, align 4
  br label %459

227:                                              ; preds = %213
  %228 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %229 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %273

232:                                              ; preds = %227
  %233 = load %struct.palmas*, %struct.palmas** %4, align 8
  %234 = getelementptr inbounds %struct.palmas, %struct.palmas* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @PALMAS_ID_OTG_IRQ, align 4
  %237 = call i8* @regmap_irq_get_virq(i32 %235, i32 %236)
  %238 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %239 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %238, i32 0, i32 14
  store i8* %237, i8** %239, align 8
  %240 = load %struct.palmas*, %struct.palmas** %4, align 8
  %241 = getelementptr inbounds %struct.palmas, %struct.palmas* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @PALMAS_ID_IRQ, align 4
  %244 = call i8* @regmap_irq_get_virq(i32 %242, i32 %243)
  %245 = ptrtoint i8* %244 to i32
  %246 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %247 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %246, i32 0, i32 5
  store i32 %245, i32* %247, align 4
  %248 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %249 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %248, i32 0, i32 12
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %249, align 8
  %251 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %252 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %251, i32 0, i32 5
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %255 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %256 = or i32 %254, %255
  %257 = load i32, i32* @IRQF_ONESHOT, align 4
  %258 = or i32 %256, %257
  %259 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %260 = call i32 @devm_request_threaded_irq(%struct.TYPE_10__* %250, i32 %253, i32* null, i32 (i32, %struct.palmas_usb*)* @palmas_id_irq_handler, i32 %258, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), %struct.palmas_usb* %259)
  store i32 %260, i32* %8, align 4
  %261 = load i32, i32* %8, align 4
  %262 = icmp slt i32 %261, 0
  br i1 %262, label %263, label %272

263:                                              ; preds = %232
  %264 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %265 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %264, i32 0, i32 0
  %266 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %267 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %266, i32 0, i32 5
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* %8, align 4
  %270 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %265, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 %268, i32 %269)
  %271 = load i32, i32* %8, align 4
  store i32 %271, i32* %2, align 4
  br label %459

272:                                              ; preds = %232
  br label %321

273:                                              ; preds = %227
  %274 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %275 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %320

278:                                              ; preds = %273
  %279 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %280 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %279, i32 0, i32 13
  %281 = load i8*, i8** %280, align 8
  %282 = call i8* @gpiod_to_irq(i8* %281)
  %283 = ptrtoint i8* %282 to i64
  %284 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %285 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %284, i32 0, i32 6
  store i64 %283, i64* %285, align 8
  %286 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %287 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %286, i32 0, i32 6
  %288 = load i64, i64* %287, align 8
  %289 = icmp slt i64 %288, 0
  br i1 %289, label %290, label %298

290:                                              ; preds = %278
  %291 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %292 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %291, i32 0, i32 0
  %293 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %292, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %294 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %295 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %294, i32 0, i32 6
  %296 = load i64, i64* %295, align 8
  %297 = trunc i64 %296 to i32
  store i32 %297, i32* %2, align 4
  br label %459

298:                                              ; preds = %278
  %299 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %300 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %299, i32 0, i32 0
  %301 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %302 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %301, i32 0, i32 6
  %303 = load i64, i64* %302, align 8
  %304 = trunc i64 %303 to i32
  %305 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %306 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %307 = or i32 %305, %306
  %308 = load i32, i32* @IRQF_ONESHOT, align 4
  %309 = or i32 %307, %308
  %310 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %311 = call i32 @devm_request_threaded_irq(%struct.TYPE_10__* %300, i32 %304, i32* null, i32 (i32, %struct.palmas_usb*)* @palmas_gpio_id_irq_handler, i32 %309, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), %struct.palmas_usb* %310)
  store i32 %311, i32* %8, align 4
  %312 = load i32, i32* %8, align 4
  %313 = icmp slt i32 %312, 0
  br i1 %313, label %314, label %319

314:                                              ; preds = %298
  %315 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %316 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %315, i32 0, i32 0
  %317 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %316, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0))
  %318 = load i32, i32* %8, align 4
  store i32 %318, i32* %2, align 4
  br label %459

319:                                              ; preds = %298
  br label %320

320:                                              ; preds = %319, %273
  br label %321

321:                                              ; preds = %320, %272
  %322 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %323 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 8
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %367

326:                                              ; preds = %321
  %327 = load %struct.palmas*, %struct.palmas** %4, align 8
  %328 = getelementptr inbounds %struct.palmas, %struct.palmas* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* @PALMAS_VBUS_OTG_IRQ, align 4
  %331 = call i8* @regmap_irq_get_virq(i32 %329, i32 %330)
  %332 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %333 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %332, i32 0, i32 11
  store i8* %331, i8** %333, align 8
  %334 = load %struct.palmas*, %struct.palmas** %4, align 8
  %335 = getelementptr inbounds %struct.palmas, %struct.palmas* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* @PALMAS_VBUS_IRQ, align 4
  %338 = call i8* @regmap_irq_get_virq(i32 %336, i32 %337)
  %339 = ptrtoint i8* %338 to i32
  %340 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %341 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %340, i32 0, i32 7
  store i32 %339, i32* %341, align 8
  %342 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %343 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %342, i32 0, i32 12
  %344 = load %struct.TYPE_10__*, %struct.TYPE_10__** %343, align 8
  %345 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %346 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %345, i32 0, i32 7
  %347 = load i32, i32* %346, align 8
  %348 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %349 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %350 = or i32 %348, %349
  %351 = load i32, i32* @IRQF_ONESHOT, align 4
  %352 = or i32 %350, %351
  %353 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %354 = call i32 @devm_request_threaded_irq(%struct.TYPE_10__* %344, i32 %347, i32* null, i32 (i32, %struct.palmas_usb*)* @palmas_vbus_irq_handler, i32 %352, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), %struct.palmas_usb* %353)
  store i32 %354, i32* %8, align 4
  %355 = load i32, i32* %8, align 4
  %356 = icmp slt i32 %355, 0
  br i1 %356, label %357, label %366

357:                                              ; preds = %326
  %358 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %359 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %358, i32 0, i32 0
  %360 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %361 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %360, i32 0, i32 7
  %362 = load i32, i32* %361, align 8
  %363 = load i32, i32* %8, align 4
  %364 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %359, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 %362, i32 %363)
  %365 = load i32, i32* %8, align 4
  store i32 %365, i32* %2, align 4
  br label %459

366:                                              ; preds = %326
  br label %437

367:                                              ; preds = %321
  %368 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %369 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %368, i32 0, i32 4
  %370 = load i32, i32* %369, align 8
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %436

372:                                              ; preds = %367
  %373 = load %struct.palmas*, %struct.palmas** %4, align 8
  %374 = load i32, i32* @PALMAS_PU_PD_OD_BASE, align 4
  %375 = load i32, i32* @PALMAS_PRIMARY_SECONDARY_PAD1, align 4
  %376 = load i32, i32* @PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_1_MASK, align 4
  %377 = load i32, i32* @PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_1_SHIFT, align 4
  %378 = shl i32 1, %377
  %379 = call i32 @palmas_update_bits(%struct.palmas* %373, i32 %374, i32 %375, i32 %376, i32 %378)
  store i32 %379, i32* %8, align 4
  %380 = load i32, i32* %8, align 4
  %381 = icmp slt i32 %380, 0
  br i1 %381, label %382, label %387

382:                                              ; preds = %372
  %383 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %384 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %383, i32 0, i32 0
  %385 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %384, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0))
  %386 = load i32, i32* %8, align 4
  store i32 %386, i32* %2, align 4
  br label %459

387:                                              ; preds = %372
  %388 = load %struct.palmas*, %struct.palmas** %4, align 8
  %389 = getelementptr inbounds %struct.palmas, %struct.palmas* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 8
  %391 = load i32, i32* @PALMAS_VBUS_OTG_IRQ, align 4
  %392 = call i8* @regmap_irq_get_virq(i32 %390, i32 %391)
  %393 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %394 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %393, i32 0, i32 11
  store i8* %392, i8** %394, align 8
  %395 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %396 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %395, i32 0, i32 10
  %397 = load i8*, i8** %396, align 8
  %398 = call i8* @gpiod_to_irq(i8* %397)
  %399 = ptrtoint i8* %398 to i64
  %400 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %401 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %400, i32 0, i32 8
  store i64 %399, i64* %401, align 8
  %402 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %403 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %402, i32 0, i32 8
  %404 = load i64, i64* %403, align 8
  %405 = icmp slt i64 %404, 0
  br i1 %405, label %406, label %414

406:                                              ; preds = %387
  %407 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %408 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %407, i32 0, i32 0
  %409 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %408, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0))
  %410 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %411 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %410, i32 0, i32 8
  %412 = load i64, i64* %411, align 8
  %413 = trunc i64 %412 to i32
  store i32 %413, i32* %2, align 4
  br label %459

414:                                              ; preds = %387
  %415 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %416 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %415, i32 0, i32 0
  %417 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %418 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %417, i32 0, i32 8
  %419 = load i64, i64* %418, align 8
  %420 = trunc i64 %419 to i32
  %421 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %422 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %423 = or i32 %421, %422
  %424 = load i32, i32* @IRQF_ONESHOT, align 4
  %425 = or i32 %423, %424
  %426 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %427 = call i32 @devm_request_threaded_irq(%struct.TYPE_10__* %416, i32 %420, i32* null, i32 (i32, %struct.palmas_usb*)* @palmas_vbus_irq_handler, i32 %425, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), %struct.palmas_usb* %426)
  store i32 %427, i32* %8, align 4
  %428 = load i32, i32* %8, align 4
  %429 = icmp slt i32 %428, 0
  br i1 %429, label %430, label %435

430:                                              ; preds = %414
  %431 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %432 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %431, i32 0, i32 0
  %433 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %432, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i64 0, i64 0))
  %434 = load i32, i32* %8, align 4
  store i32 %434, i32* %2, align 4
  br label %459

435:                                              ; preds = %414
  br label %436

436:                                              ; preds = %435, %367
  br label %437

437:                                              ; preds = %436, %366
  %438 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %439 = call i32 @palmas_enable_irq(%struct.palmas_usb* %438)
  %440 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %441 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %440, i32 0, i32 4
  %442 = load i32, i32* %441, align 8
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %451

444:                                              ; preds = %437
  %445 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %446 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %445, i32 0, i32 8
  %447 = load i64, i64* %446, align 8
  %448 = trunc i64 %447 to i32
  %449 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %450 = call i32 @palmas_vbus_irq_handler(i32 %448, %struct.palmas_usb* %449)
  br label %451

451:                                              ; preds = %444, %437
  %452 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %453 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %452, i32 0, i32 9
  %454 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %453, i32 0, i32 0
  %455 = call i32 @palmas_gpio_id_detect(i32* %454)
  %456 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %457 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %456, i32 0, i32 0
  %458 = call i32 @device_set_wakeup_capable(%struct.TYPE_10__* %457, i32 1)
  store i32 0, i32* %2, align 4
  br label %459

459:                                              ; preds = %451, %430, %406, %382, %357, %314, %290, %263, %222, %207, %110, %90, %37, %24
  %460 = load i32, i32* %2, align 4
  ret i32 %460
}

declare dso_local %struct.palmas* @dev_get_drvdata(i32) #1

declare dso_local %struct.palmas_usb_platform_data* @dev_get_platdata(%struct.TYPE_10__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local %struct.palmas_usb* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i8* @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i8* @devm_gpiod_get_optional(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @gpiod_set_debounce(i8*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(%struct.TYPE_11__*, i32 (i32*)*) #1

declare dso_local i32 @palmas_gpio_id_detect(i32*) #1

declare dso_local i32 @palmas_usb_wakeup(%struct.palmas*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.palmas_usb*) #1

declare dso_local i8* @devm_extcon_dev_allocate(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @devm_extcon_dev_register(%struct.TYPE_10__*, i8*) #1

declare dso_local i8* @regmap_irq_get_virq(i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_10__*, i32, i32*, i32 (i32, %struct.palmas_usb*)*, i32, i8*, %struct.palmas_usb*) #1

declare dso_local i32 @palmas_id_irq_handler(i32, %struct.palmas_usb*) #1

declare dso_local i8* @gpiod_to_irq(i8*) #1

declare dso_local i32 @palmas_gpio_id_irq_handler(i32, %struct.palmas_usb*) #1

declare dso_local i32 @palmas_vbus_irq_handler(i32, %struct.palmas_usb*) #1

declare dso_local i32 @palmas_update_bits(%struct.palmas*, i32, i32, i32, i32) #1

declare dso_local i32 @palmas_enable_irq(%struct.palmas_usb*) #1

declare dso_local i32 @device_set_wakeup_capable(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
