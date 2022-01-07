; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-usb-gpio.c_usb_extcon_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-usb-gpio.c_usb_extcon_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device, i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.usb_extcon_info = type { i64, i64, %struct.TYPE_2__, i8*, i8*, i32, i8*, %struct.device* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"id\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"failed to get gpios\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@usb_extcon_cable = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"failed to allocate extcon device\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"failed to register extcon device\0A\00", align 1
@USB_GPIO_DEBOUNCE_MS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"failed to get ID IRQ\0A\00", align 1
@usb_irq_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"failed to request handler for ID IRQ\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"failed to get VBUS IRQ\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"failed to request handler for VBUS IRQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @usb_extcon_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_extcon_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.usb_extcon_info*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %5, align 8
  %13 = load %struct.device_node*, %struct.device_node** %5, align 8
  %14 = icmp ne %struct.device_node* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %253

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.usb_extcon_info* @devm_kzalloc(%struct.device* %20, i32 64, i32 %21)
  store %struct.usb_extcon_info* %22, %struct.usb_extcon_info** %6, align 8
  %23 = load %struct.usb_extcon_info*, %struct.usb_extcon_info** %6, align 8
  %24 = icmp ne %struct.usb_extcon_info* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %253

28:                                               ; preds = %18
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load %struct.usb_extcon_info*, %struct.usb_extcon_info** %6, align 8
  %31 = getelementptr inbounds %struct.usb_extcon_info, %struct.usb_extcon_info* %30, i32 0, i32 7
  store %struct.device* %29, %struct.device** %31, align 8
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load i32, i32* @GPIOD_IN, align 4
  %35 = call i8* @devm_gpiod_get_optional(%struct.device* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.usb_extcon_info*, %struct.usb_extcon_info** %6, align 8
  %37 = getelementptr inbounds %struct.usb_extcon_info, %struct.usb_extcon_info* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load i32, i32* @GPIOD_IN, align 4
  %41 = call i8* @devm_gpiod_get_optional(%struct.device* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load %struct.usb_extcon_info*, %struct.usb_extcon_info** %6, align 8
  %43 = getelementptr inbounds %struct.usb_extcon_info, %struct.usb_extcon_info* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  %44 = load %struct.usb_extcon_info*, %struct.usb_extcon_info** %6, align 8
  %45 = getelementptr inbounds %struct.usb_extcon_info, %struct.usb_extcon_info* %44, i32 0, i32 4
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %58, label %48

48:                                               ; preds = %28
  %49 = load %struct.usb_extcon_info*, %struct.usb_extcon_info** %6, align 8
  %50 = getelementptr inbounds %struct.usb_extcon_info, %struct.usb_extcon_info* %49, i32 0, i32 3
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = call i32 @dev_err(%struct.device* %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %253

58:                                               ; preds = %48, %28
  %59 = load %struct.usb_extcon_info*, %struct.usb_extcon_info** %6, align 8
  %60 = getelementptr inbounds %struct.usb_extcon_info, %struct.usb_extcon_info* %59, i32 0, i32 4
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @IS_ERR(i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load %struct.usb_extcon_info*, %struct.usb_extcon_info** %6, align 8
  %66 = getelementptr inbounds %struct.usb_extcon_info, %struct.usb_extcon_info* %65, i32 0, i32 4
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @PTR_ERR(i8* %67)
  store i32 %68, i32* %2, align 4
  br label %253

69:                                               ; preds = %58
  %70 = load %struct.usb_extcon_info*, %struct.usb_extcon_info** %6, align 8
  %71 = getelementptr inbounds %struct.usb_extcon_info, %struct.usb_extcon_info* %70, i32 0, i32 3
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @IS_ERR(i8* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load %struct.usb_extcon_info*, %struct.usb_extcon_info** %6, align 8
  %77 = getelementptr inbounds %struct.usb_extcon_info, %struct.usb_extcon_info* %76, i32 0, i32 3
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @PTR_ERR(i8* %78)
  store i32 %79, i32* %2, align 4
  br label %253

80:                                               ; preds = %69
  %81 = load %struct.device*, %struct.device** %4, align 8
  %82 = load i32, i32* @usb_extcon_cable, align 4
  %83 = call i8* @devm_extcon_dev_allocate(%struct.device* %81, i32 %82)
  %84 = load %struct.usb_extcon_info*, %struct.usb_extcon_info** %6, align 8
  %85 = getelementptr inbounds %struct.usb_extcon_info, %struct.usb_extcon_info* %84, i32 0, i32 6
  store i8* %83, i8** %85, align 8
  %86 = load %struct.usb_extcon_info*, %struct.usb_extcon_info** %6, align 8
  %87 = getelementptr inbounds %struct.usb_extcon_info, %struct.usb_extcon_info* %86, i32 0, i32 6
  %88 = load i8*, i8** %87, align 8
  %89 = call i64 @IS_ERR(i8* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %80
  %92 = load %struct.device*, %struct.device** %4, align 8
  %93 = call i32 @dev_err(%struct.device* %92, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %253

96:                                               ; preds = %80
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = load %struct.usb_extcon_info*, %struct.usb_extcon_info** %6, align 8
  %99 = getelementptr inbounds %struct.usb_extcon_info, %struct.usb_extcon_info* %98, i32 0, i32 6
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @devm_extcon_dev_register(%struct.device* %97, i8* %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %96
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = call i32 @dev_err(%struct.device* %105, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %2, align 4
  br label %253

108:                                              ; preds = %96
  %109 = load %struct.usb_extcon_info*, %struct.usb_extcon_info** %6, align 8
  %110 = getelementptr inbounds %struct.usb_extcon_info, %struct.usb_extcon_info* %109, i32 0, i32 4
  %111 = load i8*, i8** %110, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %120

113:                                              ; preds = %108
  %114 = load %struct.usb_extcon_info*, %struct.usb_extcon_info** %6, align 8
  %115 = getelementptr inbounds %struct.usb_extcon_info, %struct.usb_extcon_info* %114, i32 0, i32 4
  %116 = load i8*, i8** %115, align 8
  %117 = load i32, i32* @USB_GPIO_DEBOUNCE_MS, align 4
  %118 = mul nsw i32 %117, 1000
  %119 = call i32 @gpiod_set_debounce(i8* %116, i32 %118)
  store i32 %119, i32* %7, align 4
  br label %120

120:                                              ; preds = %113, %108
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %135, label %123

123:                                              ; preds = %120
  %124 = load %struct.usb_extcon_info*, %struct.usb_extcon_info** %6, align 8
  %125 = getelementptr inbounds %struct.usb_extcon_info, %struct.usb_extcon_info* %124, i32 0, i32 3
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %135

128:                                              ; preds = %123
  %129 = load %struct.usb_extcon_info*, %struct.usb_extcon_info** %6, align 8
  %130 = getelementptr inbounds %struct.usb_extcon_info, %struct.usb_extcon_info* %129, i32 0, i32 3
  %131 = load i8*, i8** %130, align 8
  %132 = load i32, i32* @USB_GPIO_DEBOUNCE_MS, align 4
  %133 = mul nsw i32 %132, 1000
  %134 = call i32 @gpiod_set_debounce(i8* %131, i32 %133)
  store i32 %134, i32* %7, align 4
  br label %135

135:                                              ; preds = %128, %123, %120
  %136 = load i32, i32* %7, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %135
  %139 = load i32, i32* @USB_GPIO_DEBOUNCE_MS, align 4
  %140 = call i32 @msecs_to_jiffies(i32 %139)
  %141 = load %struct.usb_extcon_info*, %struct.usb_extcon_info** %6, align 8
  %142 = getelementptr inbounds %struct.usb_extcon_info, %struct.usb_extcon_info* %141, i32 0, i32 5
  store i32 %140, i32* %142, align 8
  br label %143

143:                                              ; preds = %138, %135
  %144 = load %struct.usb_extcon_info*, %struct.usb_extcon_info** %6, align 8
  %145 = getelementptr inbounds %struct.usb_extcon_info, %struct.usb_extcon_info* %144, i32 0, i32 2
  %146 = call i32 @INIT_DELAYED_WORK(%struct.TYPE_2__* %145, i32 (i32*)* @usb_extcon_detect_cable)
  %147 = load %struct.usb_extcon_info*, %struct.usb_extcon_info** %6, align 8
  %148 = getelementptr inbounds %struct.usb_extcon_info, %struct.usb_extcon_info* %147, i32 0, i32 4
  %149 = load i8*, i8** %148, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %194

151:                                              ; preds = %143
  %152 = load %struct.usb_extcon_info*, %struct.usb_extcon_info** %6, align 8
  %153 = getelementptr inbounds %struct.usb_extcon_info, %struct.usb_extcon_info* %152, i32 0, i32 4
  %154 = load i8*, i8** %153, align 8
  %155 = call i8* @gpiod_to_irq(i8* %154)
  %156 = ptrtoint i8* %155 to i64
  %157 = load %struct.usb_extcon_info*, %struct.usb_extcon_info** %6, align 8
  %158 = getelementptr inbounds %struct.usb_extcon_info, %struct.usb_extcon_info* %157, i32 0, i32 0
  store i64 %156, i64* %158, align 8
  %159 = load %struct.usb_extcon_info*, %struct.usb_extcon_info** %6, align 8
  %160 = getelementptr inbounds %struct.usb_extcon_info, %struct.usb_extcon_info* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp slt i64 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %151
  %164 = load %struct.device*, %struct.device** %4, align 8
  %165 = call i32 @dev_err(%struct.device* %164, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %166 = load %struct.usb_extcon_info*, %struct.usb_extcon_info** %6, align 8
  %167 = getelementptr inbounds %struct.usb_extcon_info, %struct.usb_extcon_info* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %2, align 4
  br label %253

170:                                              ; preds = %151
  %171 = load %struct.device*, %struct.device** %4, align 8
  %172 = load %struct.usb_extcon_info*, %struct.usb_extcon_info** %6, align 8
  %173 = getelementptr inbounds %struct.usb_extcon_info, %struct.usb_extcon_info* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = trunc i64 %174 to i32
  %176 = load i32, i32* @usb_irq_handler, align 4
  %177 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %178 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* @IRQF_ONESHOT, align 4
  %181 = or i32 %179, %180
  %182 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %183 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.usb_extcon_info*, %struct.usb_extcon_info** %6, align 8
  %186 = call i32 @devm_request_threaded_irq(%struct.device* %171, i32 %175, i32* null, i32 %176, i32 %181, i32 %184, %struct.usb_extcon_info* %185)
  store i32 %186, i32* %7, align 4
  %187 = load i32, i32* %7, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %170
  %190 = load %struct.device*, %struct.device** %4, align 8
  %191 = call i32 @dev_err(%struct.device* %190, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %192 = load i32, i32* %7, align 4
  store i32 %192, i32* %2, align 4
  br label %253

193:                                              ; preds = %170
  br label %194

194:                                              ; preds = %193, %143
  %195 = load %struct.usb_extcon_info*, %struct.usb_extcon_info** %6, align 8
  %196 = getelementptr inbounds %struct.usb_extcon_info, %struct.usb_extcon_info* %195, i32 0, i32 3
  %197 = load i8*, i8** %196, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %199, label %242

199:                                              ; preds = %194
  %200 = load %struct.usb_extcon_info*, %struct.usb_extcon_info** %6, align 8
  %201 = getelementptr inbounds %struct.usb_extcon_info, %struct.usb_extcon_info* %200, i32 0, i32 3
  %202 = load i8*, i8** %201, align 8
  %203 = call i8* @gpiod_to_irq(i8* %202)
  %204 = ptrtoint i8* %203 to i64
  %205 = load %struct.usb_extcon_info*, %struct.usb_extcon_info** %6, align 8
  %206 = getelementptr inbounds %struct.usb_extcon_info, %struct.usb_extcon_info* %205, i32 0, i32 1
  store i64 %204, i64* %206, align 8
  %207 = load %struct.usb_extcon_info*, %struct.usb_extcon_info** %6, align 8
  %208 = getelementptr inbounds %struct.usb_extcon_info, %struct.usb_extcon_info* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = icmp slt i64 %209, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %199
  %212 = load %struct.device*, %struct.device** %4, align 8
  %213 = call i32 @dev_err(%struct.device* %212, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %214 = load %struct.usb_extcon_info*, %struct.usb_extcon_info** %6, align 8
  %215 = getelementptr inbounds %struct.usb_extcon_info, %struct.usb_extcon_info* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* %2, align 4
  br label %253

218:                                              ; preds = %199
  %219 = load %struct.device*, %struct.device** %4, align 8
  %220 = load %struct.usb_extcon_info*, %struct.usb_extcon_info** %6, align 8
  %221 = getelementptr inbounds %struct.usb_extcon_info, %struct.usb_extcon_info* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = trunc i64 %222 to i32
  %224 = load i32, i32* @usb_irq_handler, align 4
  %225 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %226 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %227 = or i32 %225, %226
  %228 = load i32, i32* @IRQF_ONESHOT, align 4
  %229 = or i32 %227, %228
  %230 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %231 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.usb_extcon_info*, %struct.usb_extcon_info** %6, align 8
  %234 = call i32 @devm_request_threaded_irq(%struct.device* %219, i32 %223, i32* null, i32 %224, i32 %229, i32 %232, %struct.usb_extcon_info* %233)
  store i32 %234, i32* %7, align 4
  %235 = load i32, i32* %7, align 4
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %218
  %238 = load %struct.device*, %struct.device** %4, align 8
  %239 = call i32 @dev_err(%struct.device* %238, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  %240 = load i32, i32* %7, align 4
  store i32 %240, i32* %2, align 4
  br label %253

241:                                              ; preds = %218
  br label %242

242:                                              ; preds = %241, %194
  %243 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %244 = load %struct.usb_extcon_info*, %struct.usb_extcon_info** %6, align 8
  %245 = call i32 @platform_set_drvdata(%struct.platform_device* %243, %struct.usb_extcon_info* %244)
  %246 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %247 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %246, i32 0, i32 0
  %248 = call i32 @device_set_wakeup_capable(%struct.device* %247, i32 1)
  %249 = load %struct.usb_extcon_info*, %struct.usb_extcon_info** %6, align 8
  %250 = getelementptr inbounds %struct.usb_extcon_info, %struct.usb_extcon_info* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %250, i32 0, i32 0
  %252 = call i32 @usb_extcon_detect_cable(i32* %251)
  store i32 0, i32* %2, align 4
  br label %253

253:                                              ; preds = %242, %237, %211, %189, %163, %104, %91, %75, %64, %53, %25, %15
  %254 = load i32, i32* %2, align 4
  ret i32 %254
}

declare dso_local %struct.usb_extcon_info* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_extcon_dev_allocate(%struct.device*, i32) #1

declare dso_local i32 @devm_extcon_dev_register(%struct.device*, i8*) #1

declare dso_local i32 @gpiod_set_debounce(i8*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(%struct.TYPE_2__*, i32 (i32*)*) #1

declare dso_local i32 @usb_extcon_detect_cable(i32*) #1

declare dso_local i8* @gpiod_to_irq(i8*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i32, %struct.usb_extcon_info*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.usb_extcon_info*) #1

declare dso_local i32 @device_set_wakeup_capable(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
