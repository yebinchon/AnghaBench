; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stm32f4.c_stm32f4_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stm32f4.c_stm32f4_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.stm32f4_i2c_dev = type { %struct.reset_control*, %struct.TYPE_10__*, i32, %struct.i2c_adapter, i32, %struct.reset_control* }
%struct.i2c_adapter = type { i32, %struct.TYPE_9__, i32*, i64, i32, i32 }
%struct.TYPE_9__ = type { %struct.device_node*, %struct.TYPE_10__* }
%struct.reset_control = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"IRQ event missing or invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"IRQ error missing or invalid\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Error: Missing controller clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to prepare_enable clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Error: Missing controller reset\0A\00", align 1
@STM32_I2C_SPEED_STANDARD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@STM32_I2C_SPEED_FAST = common dso_local global i32 0, align 4
@stm32f4_i2c_isr_event = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"Failed to request irq event %i\0A\00", align 1
@stm32f4_i2c_isr_error = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"Failed to request irq error %i\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"STM32 I2C(%pa)\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@stm32f4_i2c_algo = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"STM32F4 I2C driver registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stm32f4_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32f4_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.stm32f4_i2c_dev*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_adapter*, align 8
  %11 = alloca %struct.reset_control*, align 8
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %4, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.stm32f4_i2c_dev* @devm_kzalloc(%struct.TYPE_10__* %18, i32 88, i32 %19)
  store %struct.stm32f4_i2c_dev* %20, %struct.stm32f4_i2c_dev** %5, align 8
  %21 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %5, align 8
  %22 = icmp ne %struct.stm32f4_i2c_dev* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %238

26:                                               ; preds = %1
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = load i32, i32* @IORESOURCE_MEM, align 4
  %29 = call %struct.resource* @platform_get_resource(%struct.platform_device* %27, i32 %28, i32 0)
  store %struct.resource* %29, %struct.resource** %6, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load %struct.resource*, %struct.resource** %6, align 8
  %33 = call %struct.reset_control* @devm_ioremap_resource(%struct.TYPE_10__* %31, %struct.resource* %32)
  %34 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %5, align 8
  %35 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %34, i32 0, i32 5
  store %struct.reset_control* %33, %struct.reset_control** %35, align 8
  %36 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %5, align 8
  %37 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %36, i32 0, i32 5
  %38 = load %struct.reset_control*, %struct.reset_control** %37, align 8
  %39 = call i64 @IS_ERR(%struct.reset_control* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %26
  %42 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %5, align 8
  %43 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %42, i32 0, i32 5
  %44 = load %struct.reset_control*, %struct.reset_control** %43, align 8
  %45 = call i32 @PTR_ERR(%struct.reset_control* %44)
  store i32 %45, i32* %2, align 4
  br label %238

46:                                               ; preds = %26
  %47 = load %struct.device_node*, %struct.device_node** %4, align 8
  %48 = call i32 @irq_of_parse_and_map(%struct.device_node* %47, i32 0)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %46
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %53, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %238

57:                                               ; preds = %46
  %58 = load %struct.device_node*, %struct.device_node** %4, align 8
  %59 = call i32 @irq_of_parse_and_map(%struct.device_node* %58, i32 1)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %57
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %238

68:                                               ; preds = %57
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = call %struct.reset_control* @devm_clk_get(%struct.TYPE_10__* %70, i32* null)
  %72 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %5, align 8
  %73 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %72, i32 0, i32 0
  store %struct.reset_control* %71, %struct.reset_control** %73, align 8
  %74 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %5, align 8
  %75 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %74, i32 0, i32 0
  %76 = load %struct.reset_control*, %struct.reset_control** %75, align 8
  %77 = call i64 @IS_ERR(%struct.reset_control* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %68
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %81, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %83 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %5, align 8
  %84 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %83, i32 0, i32 0
  %85 = load %struct.reset_control*, %struct.reset_control** %84, align 8
  %86 = call i32 @PTR_ERR(%struct.reset_control* %85)
  store i32 %86, i32* %2, align 4
  br label %238

87:                                               ; preds = %68
  %88 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %5, align 8
  %89 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %88, i32 0, i32 0
  %90 = load %struct.reset_control*, %struct.reset_control** %89, align 8
  %91 = call i32 @clk_prepare_enable(%struct.reset_control* %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %87
  %95 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %5, align 8
  %96 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %95, i32 0, i32 1
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %97, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %2, align 4
  br label %238

100:                                              ; preds = %87
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = call %struct.reset_control* @devm_reset_control_get_exclusive(%struct.TYPE_10__* %102, i32* null)
  store %struct.reset_control* %103, %struct.reset_control** %11, align 8
  %104 = load %struct.reset_control*, %struct.reset_control** %11, align 8
  %105 = call i64 @IS_ERR(%struct.reset_control* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %100
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %109, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %111 = load %struct.reset_control*, %struct.reset_control** %11, align 8
  %112 = call i32 @PTR_ERR(%struct.reset_control* %111)
  store i32 %112, i32* %12, align 4
  br label %232

113:                                              ; preds = %100
  %114 = load %struct.reset_control*, %struct.reset_control** %11, align 8
  %115 = call i32 @reset_control_assert(%struct.reset_control* %114)
  %116 = call i32 @udelay(i32 2)
  %117 = load %struct.reset_control*, %struct.reset_control** %11, align 8
  %118 = call i32 @reset_control_deassert(%struct.reset_control* %117)
  %119 = load i32, i32* @STM32_I2C_SPEED_STANDARD, align 4
  %120 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %5, align 8
  %121 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 8
  %122 = load %struct.device_node*, %struct.device_node** %4, align 8
  %123 = call i32 @of_property_read_u32(%struct.device_node* %122, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32* %9)
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %133, label %126

126:                                              ; preds = %113
  %127 = load i32, i32* %9, align 4
  %128 = icmp sge i32 %127, 400000
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load i32, i32* @STM32_I2C_SPEED_FAST, align 4
  %131 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %5, align 8
  %132 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 8
  br label %133

133:                                              ; preds = %129, %126, %113
  %134 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %135 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %134, i32 0, i32 0
  %136 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %5, align 8
  %137 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %136, i32 0, i32 1
  store %struct.TYPE_10__* %135, %struct.TYPE_10__** %137, align 8
  %138 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %139 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %138, i32 0, i32 0
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* @stm32f4_i2c_isr_event, align 4
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %5, align 8
  %146 = call i32 @devm_request_irq(%struct.TYPE_10__* %139, i32 %140, i32 %141, i32 0, i32 %144, %struct.stm32f4_i2c_dev* %145)
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %12, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %133
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %150, i32 0, i32 0
  %152 = load i32, i32* %7, align 4
  %153 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %151, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %152)
  br label %232

154:                                              ; preds = %133
  %155 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %156 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %155, i32 0, i32 0
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* @stm32f4_i2c_isr_error, align 4
  %159 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %160 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %5, align 8
  %163 = call i32 @devm_request_irq(%struct.TYPE_10__* %156, i32 %157, i32 %158, i32 0, i32 %161, %struct.stm32f4_i2c_dev* %162)
  store i32 %163, i32* %12, align 4
  %164 = load i32, i32* %12, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %154
  %167 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %168 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %167, i32 0, i32 0
  %169 = load i32, i32* %8, align 4
  %170 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %168, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %169)
  br label %232

171:                                              ; preds = %154
  %172 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %5, align 8
  %173 = call i32 @stm32f4_i2c_hw_config(%struct.stm32f4_i2c_dev* %172)
  store i32 %173, i32* %12, align 4
  %174 = load i32, i32* %12, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %171
  br label %232

177:                                              ; preds = %171
  %178 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %5, align 8
  %179 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %178, i32 0, i32 3
  store %struct.i2c_adapter* %179, %struct.i2c_adapter** %10, align 8
  %180 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %181 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %5, align 8
  %182 = call i32 @i2c_set_adapdata(%struct.i2c_adapter* %180, %struct.stm32f4_i2c_dev* %181)
  %183 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %184 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.resource*, %struct.resource** %6, align 8
  %187 = getelementptr inbounds %struct.resource, %struct.resource* %186, i32 0, i32 0
  %188 = call i32 @snprintf(i32 %185, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32* %187)
  %189 = load i32, i32* @THIS_MODULE, align 4
  %190 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %191 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %190, i32 0, i32 4
  store i32 %189, i32* %191, align 8
  %192 = load i32, i32* @HZ, align 4
  %193 = mul nsw i32 2, %192
  %194 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %195 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 8
  %196 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %197 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %196, i32 0, i32 3
  store i64 0, i64* %197, align 8
  %198 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %199 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %198, i32 0, i32 2
  store i32* @stm32f4_i2c_algo, i32** %199, align 8
  %200 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %201 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %200, i32 0, i32 0
  %202 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %203 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 1
  store %struct.TYPE_10__* %201, %struct.TYPE_10__** %204, align 8
  %205 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %206 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 0
  %208 = load %struct.device_node*, %struct.device_node** %207, align 8
  %209 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %210 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 0
  store %struct.device_node* %208, %struct.device_node** %211, align 8
  %212 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %5, align 8
  %213 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %212, i32 0, i32 2
  %214 = call i32 @init_completion(i32* %213)
  %215 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %216 = call i32 @i2c_add_adapter(%struct.i2c_adapter* %215)
  store i32 %216, i32* %12, align 4
  %217 = load i32, i32* %12, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %177
  br label %232

220:                                              ; preds = %177
  %221 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %222 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %5, align 8
  %223 = call i32 @platform_set_drvdata(%struct.platform_device* %221, %struct.stm32f4_i2c_dev* %222)
  %224 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %5, align 8
  %225 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %224, i32 0, i32 0
  %226 = load %struct.reset_control*, %struct.reset_control** %225, align 8
  %227 = call i32 @clk_disable(%struct.reset_control* %226)
  %228 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %5, align 8
  %229 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %228, i32 0, i32 1
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %229, align 8
  %231 = call i32 @dev_info(%struct.TYPE_10__* %230, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %238

232:                                              ; preds = %219, %176, %166, %149, %107
  %233 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %5, align 8
  %234 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %233, i32 0, i32 0
  %235 = load %struct.reset_control*, %struct.reset_control** %234, align 8
  %236 = call i32 @clk_disable_unprepare(%struct.reset_control* %235)
  %237 = load i32, i32* %12, align 4
  store i32 %237, i32* %2, align 4
  br label %238

238:                                              ; preds = %232, %220, %94, %79, %62, %51, %41, %23
  %239 = load i32, i32* %2, align 4
  ret i32 %239
}

declare dso_local %struct.stm32f4_i2c_dev* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.reset_control* @devm_ioremap_resource(%struct.TYPE_10__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.reset_control*) #1

declare dso_local i32 @PTR_ERR(%struct.reset_control*) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local %struct.reset_control* @devm_clk_get(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @clk_prepare_enable(%struct.reset_control*) #1

declare dso_local %struct.reset_control* @devm_reset_control_get_exclusive(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @reset_control_assert(%struct.reset_control*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @reset_control_deassert(%struct.reset_control*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_10__*, i32, i32, i32, i32, %struct.stm32f4_i2c_dev*) #1

declare dso_local i32 @stm32f4_i2c_hw_config(%struct.stm32f4_i2c_dev*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.i2c_adapter*, %struct.stm32f4_i2c_dev*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @i2c_add_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.stm32f4_i2c_dev*) #1

declare dso_local i32 @clk_disable(%struct.reset_control*) #1

declare dso_local i32 @dev_info(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.reset_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
