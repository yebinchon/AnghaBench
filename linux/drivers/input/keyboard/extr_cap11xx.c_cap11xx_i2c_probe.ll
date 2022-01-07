; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_cap11xx.c_cap11xx_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_cap11xx.c_cap11xx_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cap11xx_hw_model = type { i32, i32, i32 }
%struct.i2c_client = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.i2c_device_id = type { i64 }
%struct.cap11xx_priv = type { %struct.TYPE_6__*, i64*, i32 }
%struct.TYPE_6__ = type { i8*, i32, i32, i32, i32, %struct.TYPE_5__, i64*, i32*, i32* }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@cap11xx_devices = common dso_local global %struct.cap11xx_hw_model* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"Invalid device ID %lu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Invalid device configuration\0A\00", align 1
@keycodes = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cap11xx_regmap_config = common dso_local global i32 0, align 4
@CAP11XX_REG_PRODUCT_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Product ID: Got 0x%02x, expected 0x%02x\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@CAP11XX_REG_MANUFACTURER_ID = common dso_local global i32 0, align 4
@CAP11XX_MANUFACTURER_ID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Manufacturer ID: Got 0x%02x, expected 0x%02x\0A\00", align 1
@CAP11XX_REG_REVISION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"CAP11XX detected, revision 0x%02x\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"microchip,sensor-gain\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Invalid sensor-gain value %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"microchip,irq-active-high\00", align 1
@CAP11XX_REG_CONFIG2 = common dso_local global i32 0, align 4
@CAP11XX_REG_CONFIG2_ALT_POL = common dso_local global i32 0, align 4
@KEY_A = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c"linux,keycodes\00", align 1
@CAP11XX_REG_MAIN_CONTROL = common dso_local global i32 0, align 4
@CAP11XX_REG_MAIN_CONTROL_GAIN_MASK = common dso_local global i32 0, align 4
@CAP11XX_REG_MAIN_CONTROL_GAIN_SHIFT = common dso_local global i32 0, align 4
@CAP11XX_REG_REPEAT_RATE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"CAP11XX capacitive touch sensor\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"autorepeat\00", align 1
@EV_REP = common dso_local global i64 0, align 8
@KEY_RESERVED = common dso_local global i32 0, align 4
@cap11xx_input_open = common dso_local global i32 0, align 4
@cap11xx_input_close = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [28 x i8] c"Unable to parse or map IRQ\0A\00", align 1
@cap11xx_thread_func = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @cap11xx_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cap11xx_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.cap11xx_priv*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.cap11xx_hw_model*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %6, align 8
  store i32 0, i32* %13, align 4
  %19 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %20 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.cap11xx_hw_model*, %struct.cap11xx_hw_model** @cap11xx_devices, align 8
  %23 = call i64 @ARRAY_SIZE(%struct.cap11xx_hw_model* %22)
  %24 = icmp uge i64 %21, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %28 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %403

33:                                               ; preds = %2
  %34 = load %struct.cap11xx_hw_model*, %struct.cap11xx_hw_model** @cap11xx_devices, align 8
  %35 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %36 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.cap11xx_hw_model, %struct.cap11xx_hw_model* %34, i64 %37
  store %struct.cap11xx_hw_model* %38, %struct.cap11xx_hw_model** %9, align 8
  %39 = load %struct.cap11xx_hw_model*, %struct.cap11xx_hw_model** %9, align 8
  %40 = icmp ne %struct.cap11xx_hw_model* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.cap11xx_hw_model*, %struct.cap11xx_hw_model** %9, align 8
  %43 = getelementptr inbounds %struct.cap11xx_hw_model, %struct.cap11xx_hw_model* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41, %33
  %47 = load %struct.device*, %struct.device** %6, align 8
  %48 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %403

51:                                               ; preds = %41
  %52 = load %struct.device*, %struct.device** %6, align 8
  %53 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %7, align 8
  %54 = load i32, i32* @keycodes, align 4
  %55 = load %struct.cap11xx_hw_model*, %struct.cap11xx_hw_model** %9, align 8
  %56 = getelementptr inbounds %struct.cap11xx_hw_model, %struct.cap11xx_hw_model* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @struct_size(%struct.cap11xx_priv* %53, i32 %54, i32 %57)
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call %struct.cap11xx_priv* @devm_kzalloc(%struct.device* %52, i32 %58, i32 %59)
  store %struct.cap11xx_priv* %60, %struct.cap11xx_priv** %7, align 8
  %61 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %7, align 8
  %62 = icmp ne %struct.cap11xx_priv* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %51
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %403

66:                                               ; preds = %51
  %67 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %68 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %67, i32* @cap11xx_regmap_config)
  %69 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %7, align 8
  %70 = getelementptr inbounds %struct.cap11xx_priv, %struct.cap11xx_priv* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %7, align 8
  %72 = getelementptr inbounds %struct.cap11xx_priv, %struct.cap11xx_priv* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @IS_ERR(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %66
  %77 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %7, align 8
  %78 = getelementptr inbounds %struct.cap11xx_priv, %struct.cap11xx_priv* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @PTR_ERR(i32 %79)
  store i32 %80, i32* %3, align 4
  br label %403

81:                                               ; preds = %66
  %82 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %7, align 8
  %83 = getelementptr inbounds %struct.cap11xx_priv, %struct.cap11xx_priv* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @CAP11XX_REG_PRODUCT_ID, align 4
  %86 = call i32 @regmap_read(i32 %84, i32 %85, i32* %14)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %81
  %90 = load i32, i32* %11, align 4
  store i32 %90, i32* %3, align 4
  br label %403

91:                                               ; preds = %81
  %92 = load i32, i32* %14, align 4
  %93 = load %struct.cap11xx_hw_model*, %struct.cap11xx_hw_model** %9, align 8
  %94 = getelementptr inbounds %struct.cap11xx_hw_model, %struct.cap11xx_hw_model* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %92, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %91
  %98 = load %struct.device*, %struct.device** %6, align 8
  %99 = load i32, i32* %14, align 4
  %100 = load %struct.cap11xx_hw_model*, %struct.cap11xx_hw_model** %9, align 8
  %101 = getelementptr inbounds %struct.cap11xx_hw_model, %struct.cap11xx_hw_model* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %98, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %99, i32 %102)
  %104 = load i32, i32* @ENXIO, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %3, align 4
  br label %403

106:                                              ; preds = %91
  %107 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %7, align 8
  %108 = getelementptr inbounds %struct.cap11xx_priv, %struct.cap11xx_priv* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @CAP11XX_REG_MANUFACTURER_ID, align 4
  %111 = call i32 @regmap_read(i32 %109, i32 %110, i32* %14)
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %11, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %106
  %115 = load i32, i32* %11, align 4
  store i32 %115, i32* %3, align 4
  br label %403

116:                                              ; preds = %106
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* @CAP11XX_MANUFACTURER_ID, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %116
  %121 = load %struct.device*, %struct.device** %6, align 8
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* @CAP11XX_MANUFACTURER_ID, align 4
  %124 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %121, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %122, i32 %123)
  %125 = load i32, i32* @ENXIO, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %403

127:                                              ; preds = %116
  %128 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %7, align 8
  %129 = getelementptr inbounds %struct.cap11xx_priv, %struct.cap11xx_priv* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @CAP11XX_REG_REVISION, align 4
  %132 = call i32 @regmap_read(i32 %130, i32 %131, i32* %15)
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %11, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %127
  %136 = load i32, i32* %11, align 4
  store i32 %136, i32* %3, align 4
  br label %403

137:                                              ; preds = %127
  %138 = load %struct.device*, %struct.device** %6, align 8
  %139 = load i32, i32* %15, align 4
  %140 = call i32 @dev_info(%struct.device* %138, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %139)
  %141 = load %struct.device*, %struct.device** %6, align 8
  %142 = getelementptr inbounds %struct.device, %struct.device* %141, i32 0, i32 0
  %143 = load %struct.device_node*, %struct.device_node** %142, align 8
  store %struct.device_node* %143, %struct.device_node** %8, align 8
  %144 = load %struct.device_node*, %struct.device_node** %8, align 8
  %145 = call i32 @of_property_read_u32(%struct.device_node* %144, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32* %16)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %162, label %147

147:                                              ; preds = %137
  %148 = load i32, i32* %16, align 4
  %149 = call i64 @is_power_of_2(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %147
  %152 = load i32, i32* %16, align 4
  %153 = icmp sle i32 %152, 8
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load i32, i32* %16, align 4
  %156 = call i32 @ilog2(i32 %155)
  store i32 %156, i32* %13, align 4
  br label %161

157:                                              ; preds = %151, %147
  %158 = load %struct.device*, %struct.device** %6, align 8
  %159 = load i32, i32* %16, align 4
  %160 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %158, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %159)
  br label %161

161:                                              ; preds = %157, %154
  br label %162

162:                                              ; preds = %161, %137
  %163 = load %struct.device_node*, %struct.device_node** %8, align 8
  %164 = call i64 @of_property_read_bool(%struct.device_node* %163, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %178

166:                                              ; preds = %162
  %167 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %7, align 8
  %168 = getelementptr inbounds %struct.cap11xx_priv, %struct.cap11xx_priv* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @CAP11XX_REG_CONFIG2, align 4
  %171 = load i32, i32* @CAP11XX_REG_CONFIG2_ALT_POL, align 4
  %172 = call i32 @regmap_update_bits(i32 %169, i32 %170, i32 %171, i32 0)
  store i32 %172, i32* %11, align 4
  %173 = load i32, i32* %11, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %166
  %176 = load i32, i32* %11, align 4
  store i32 %176, i32* %3, align 4
  br label %403

177:                                              ; preds = %166
  br label %178

178:                                              ; preds = %177, %162
  store i32 0, i32* %10, align 4
  br label %179

179:                                              ; preds = %196, %178
  %180 = load i32, i32* %10, align 4
  %181 = load %struct.cap11xx_hw_model*, %struct.cap11xx_hw_model** %9, align 8
  %182 = getelementptr inbounds %struct.cap11xx_hw_model, %struct.cap11xx_hw_model* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = icmp slt i32 %180, %183
  br i1 %184, label %185, label %199

185:                                              ; preds = %179
  %186 = load i64, i64* @KEY_A, align 8
  %187 = load i32, i32* %10, align 4
  %188 = sext i32 %187 to i64
  %189 = add nsw i64 %186, %188
  %190 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %7, align 8
  %191 = getelementptr inbounds %struct.cap11xx_priv, %struct.cap11xx_priv* %190, i32 0, i32 1
  %192 = load i64*, i64** %191, align 8
  %193 = load i32, i32* %10, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i64, i64* %192, i64 %194
  store i64 %189, i64* %195, align 8
  br label %196

196:                                              ; preds = %185
  %197 = load i32, i32* %10, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %10, align 4
  br label %179

199:                                              ; preds = %179
  %200 = load %struct.device_node*, %struct.device_node** %8, align 8
  %201 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %7, align 8
  %202 = getelementptr inbounds %struct.cap11xx_priv, %struct.cap11xx_priv* %201, i32 0, i32 1
  %203 = load i64*, i64** %202, align 8
  %204 = load %struct.cap11xx_hw_model*, %struct.cap11xx_hw_model** %9, align 8
  %205 = getelementptr inbounds %struct.cap11xx_hw_model, %struct.cap11xx_hw_model* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @of_property_read_u32_array(%struct.device_node* %200, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i64* %203, i32 %206)
  %208 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %7, align 8
  %209 = getelementptr inbounds %struct.cap11xx_priv, %struct.cap11xx_priv* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @CAP11XX_REG_MAIN_CONTROL, align 4
  %212 = load i32, i32* @CAP11XX_REG_MAIN_CONTROL_GAIN_MASK, align 4
  %213 = load i32, i32* %13, align 4
  %214 = load i32, i32* @CAP11XX_REG_MAIN_CONTROL_GAIN_SHIFT, align 4
  %215 = shl i32 %213, %214
  %216 = call i32 @regmap_update_bits(i32 %210, i32 %211, i32 %212, i32 %215)
  store i32 %216, i32* %11, align 4
  %217 = load i32, i32* %11, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %199
  %220 = load i32, i32* %11, align 4
  store i32 %220, i32* %3, align 4
  br label %403

221:                                              ; preds = %199
  %222 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %7, align 8
  %223 = getelementptr inbounds %struct.cap11xx_priv, %struct.cap11xx_priv* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @CAP11XX_REG_REPEAT_RATE, align 4
  %226 = call i32 @regmap_write(i32 %224, i32 %225, i32 0)
  store i32 %226, i32* %11, align 4
  %227 = load i32, i32* %11, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %221
  %230 = load i32, i32* %11, align 4
  store i32 %230, i32* %3, align 4
  br label %403

231:                                              ; preds = %221
  %232 = load %struct.device*, %struct.device** %6, align 8
  %233 = call %struct.TYPE_6__* @devm_input_allocate_device(%struct.device* %232)
  %234 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %7, align 8
  %235 = getelementptr inbounds %struct.cap11xx_priv, %struct.cap11xx_priv* %234, i32 0, i32 0
  store %struct.TYPE_6__* %233, %struct.TYPE_6__** %235, align 8
  %236 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %7, align 8
  %237 = getelementptr inbounds %struct.cap11xx_priv, %struct.cap11xx_priv* %236, i32 0, i32 0
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %237, align 8
  %239 = icmp ne %struct.TYPE_6__* %238, null
  br i1 %239, label %243, label %240

240:                                              ; preds = %231
  %241 = load i32, i32* @ENOMEM, align 4
  %242 = sub nsw i32 0, %241
  store i32 %242, i32* %3, align 4
  br label %403

243:                                              ; preds = %231
  %244 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %7, align 8
  %245 = getelementptr inbounds %struct.cap11xx_priv, %struct.cap11xx_priv* %244, i32 0, i32 0
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 0
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i8** %247, align 8
  %248 = load i32, i32* @BUS_I2C, align 4
  %249 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %7, align 8
  %250 = getelementptr inbounds %struct.cap11xx_priv, %struct.cap11xx_priv* %249, i32 0, i32 0
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 5
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 3
  store i32 %248, i32* %253, align 4
  %254 = load i32, i32* @EV_KEY, align 4
  %255 = call i32 @BIT_MASK(i32 %254)
  %256 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %7, align 8
  %257 = getelementptr inbounds %struct.cap11xx_priv, %struct.cap11xx_priv* %256, i32 0, i32 0
  %258 = load %struct.TYPE_6__*, %struct.TYPE_6__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 8
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 0
  store i32 %255, i32* %261, align 4
  %262 = load %struct.device_node*, %struct.device_node** %8, align 8
  %263 = call i64 @of_property_read_bool(%struct.device_node* %262, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %273

265:                                              ; preds = %243
  %266 = load i64, i64* @EV_REP, align 8
  %267 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %7, align 8
  %268 = getelementptr inbounds %struct.cap11xx_priv, %struct.cap11xx_priv* %267, i32 0, i32 0
  %269 = load %struct.TYPE_6__*, %struct.TYPE_6__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 8
  %271 = load i32*, i32** %270, align 8
  %272 = call i32 @__set_bit(i64 %266, i32* %271)
  br label %273

273:                                              ; preds = %265, %243
  store i32 0, i32* %10, align 4
  br label %274

274:                                              ; preds = %294, %273
  %275 = load i32, i32* %10, align 4
  %276 = load %struct.cap11xx_hw_model*, %struct.cap11xx_hw_model** %9, align 8
  %277 = getelementptr inbounds %struct.cap11xx_hw_model, %struct.cap11xx_hw_model* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = icmp slt i32 %275, %278
  br i1 %279, label %280, label %297

280:                                              ; preds = %274
  %281 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %7, align 8
  %282 = getelementptr inbounds %struct.cap11xx_priv, %struct.cap11xx_priv* %281, i32 0, i32 1
  %283 = load i64*, i64** %282, align 8
  %284 = load i32, i32* %10, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i64, i64* %283, i64 %285
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %7, align 8
  %289 = getelementptr inbounds %struct.cap11xx_priv, %struct.cap11xx_priv* %288, i32 0, i32 0
  %290 = load %struct.TYPE_6__*, %struct.TYPE_6__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 7
  %292 = load i32*, i32** %291, align 8
  %293 = call i32 @__set_bit(i64 %287, i32* %292)
  br label %294

294:                                              ; preds = %280
  %295 = load i32, i32* %10, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %10, align 4
  br label %274

297:                                              ; preds = %274
  %298 = load i32, i32* @KEY_RESERVED, align 4
  %299 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %7, align 8
  %300 = getelementptr inbounds %struct.cap11xx_priv, %struct.cap11xx_priv* %299, i32 0, i32 0
  %301 = load %struct.TYPE_6__*, %struct.TYPE_6__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i32 0, i32 7
  %303 = load i32*, i32** %302, align 8
  %304 = call i32 @__clear_bit(i32 %298, i32* %303)
  %305 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %7, align 8
  %306 = getelementptr inbounds %struct.cap11xx_priv, %struct.cap11xx_priv* %305, i32 0, i32 1
  %307 = load i64*, i64** %306, align 8
  %308 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %7, align 8
  %309 = getelementptr inbounds %struct.cap11xx_priv, %struct.cap11xx_priv* %308, i32 0, i32 0
  %310 = load %struct.TYPE_6__*, %struct.TYPE_6__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 6
  store i64* %307, i64** %311, align 8
  %312 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %7, align 8
  %313 = getelementptr inbounds %struct.cap11xx_priv, %struct.cap11xx_priv* %312, i32 0, i32 0
  %314 = load %struct.TYPE_6__*, %struct.TYPE_6__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %314, i32 0, i32 1
  store i32 8, i32* %315, align 8
  %316 = load %struct.cap11xx_hw_model*, %struct.cap11xx_hw_model** %9, align 8
  %317 = getelementptr inbounds %struct.cap11xx_hw_model, %struct.cap11xx_hw_model* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %7, align 8
  %320 = getelementptr inbounds %struct.cap11xx_priv, %struct.cap11xx_priv* %319, i32 0, i32 0
  %321 = load %struct.TYPE_6__*, %struct.TYPE_6__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %321, i32 0, i32 2
  store i32 %318, i32* %322, align 4
  %323 = load i32, i32* @CAP11XX_MANUFACTURER_ID, align 4
  %324 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %7, align 8
  %325 = getelementptr inbounds %struct.cap11xx_priv, %struct.cap11xx_priv* %324, i32 0, i32 0
  %326 = load %struct.TYPE_6__*, %struct.TYPE_6__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 0, i32 5
  %328 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %327, i32 0, i32 0
  store i32 %323, i32* %328, align 8
  %329 = load %struct.cap11xx_hw_model*, %struct.cap11xx_hw_model** %9, align 8
  %330 = getelementptr inbounds %struct.cap11xx_hw_model, %struct.cap11xx_hw_model* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %7, align 8
  %333 = getelementptr inbounds %struct.cap11xx_priv, %struct.cap11xx_priv* %332, i32 0, i32 0
  %334 = load %struct.TYPE_6__*, %struct.TYPE_6__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %334, i32 0, i32 5
  %336 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %335, i32 0, i32 1
  store i32 %331, i32* %336, align 4
  %337 = load i32, i32* %15, align 4
  %338 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %7, align 8
  %339 = getelementptr inbounds %struct.cap11xx_priv, %struct.cap11xx_priv* %338, i32 0, i32 0
  %340 = load %struct.TYPE_6__*, %struct.TYPE_6__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i32 0, i32 5
  %342 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %341, i32 0, i32 2
  store i32 %337, i32* %342, align 8
  %343 = load i32, i32* @cap11xx_input_open, align 4
  %344 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %7, align 8
  %345 = getelementptr inbounds %struct.cap11xx_priv, %struct.cap11xx_priv* %344, i32 0, i32 0
  %346 = load %struct.TYPE_6__*, %struct.TYPE_6__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %346, i32 0, i32 4
  store i32 %343, i32* %347, align 4
  %348 = load i32, i32* @cap11xx_input_close, align 4
  %349 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %7, align 8
  %350 = getelementptr inbounds %struct.cap11xx_priv, %struct.cap11xx_priv* %349, i32 0, i32 0
  %351 = load %struct.TYPE_6__*, %struct.TYPE_6__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %351, i32 0, i32 3
  store i32 %348, i32* %352, align 8
  %353 = load %struct.device*, %struct.device** %6, align 8
  %354 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %7, align 8
  %355 = load %struct.cap11xx_hw_model*, %struct.cap11xx_hw_model** %9, align 8
  %356 = getelementptr inbounds %struct.cap11xx_hw_model, %struct.cap11xx_hw_model* %355, i32 0, i32 2
  %357 = load i32, i32* %356, align 4
  %358 = call i32 @cap11xx_init_leds(%struct.device* %353, %struct.cap11xx_priv* %354, i32 %357)
  store i32 %358, i32* %11, align 4
  %359 = load i32, i32* %11, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %363

361:                                              ; preds = %297
  %362 = load i32, i32* %11, align 4
  store i32 %362, i32* %3, align 4
  br label %403

363:                                              ; preds = %297
  %364 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %7, align 8
  %365 = getelementptr inbounds %struct.cap11xx_priv, %struct.cap11xx_priv* %364, i32 0, i32 0
  %366 = load %struct.TYPE_6__*, %struct.TYPE_6__** %365, align 8
  %367 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %7, align 8
  %368 = call i32 @input_set_drvdata(%struct.TYPE_6__* %366, %struct.cap11xx_priv* %367)
  %369 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %7, align 8
  %370 = call i32 @cap11xx_set_sleep(%struct.cap11xx_priv* %369, i32 1)
  %371 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %7, align 8
  %372 = getelementptr inbounds %struct.cap11xx_priv, %struct.cap11xx_priv* %371, i32 0, i32 0
  %373 = load %struct.TYPE_6__*, %struct.TYPE_6__** %372, align 8
  %374 = call i32 @input_register_device(%struct.TYPE_6__* %373)
  store i32 %374, i32* %11, align 4
  %375 = load i32, i32* %11, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %379

377:                                              ; preds = %363
  %378 = load i32, i32* %11, align 4
  store i32 %378, i32* %3, align 4
  br label %403

379:                                              ; preds = %363
  %380 = load %struct.device_node*, %struct.device_node** %8, align 8
  %381 = call i32 @irq_of_parse_and_map(%struct.device_node* %380, i32 0)
  store i32 %381, i32* %12, align 4
  %382 = load i32, i32* %12, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %389, label %384

384:                                              ; preds = %379
  %385 = load %struct.device*, %struct.device** %6, align 8
  %386 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %385, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  %387 = load i32, i32* @ENXIO, align 4
  %388 = sub nsw i32 0, %387
  store i32 %388, i32* %3, align 4
  br label %403

389:                                              ; preds = %379
  %390 = load %struct.device*, %struct.device** %6, align 8
  %391 = load i32, i32* %12, align 4
  %392 = load i32, i32* @cap11xx_thread_func, align 4
  %393 = load i32, i32* @IRQF_ONESHOT, align 4
  %394 = load %struct.device*, %struct.device** %6, align 8
  %395 = call i32 @dev_name(%struct.device* %394)
  %396 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %7, align 8
  %397 = call i32 @devm_request_threaded_irq(%struct.device* %390, i32 %391, i32* null, i32 %392, i32 %393, i32 %395, %struct.cap11xx_priv* %396)
  store i32 %397, i32* %11, align 4
  %398 = load i32, i32* %11, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %402

400:                                              ; preds = %389
  %401 = load i32, i32* %11, align 4
  store i32 %401, i32* %3, align 4
  br label %403

402:                                              ; preds = %389
  store i32 0, i32* %3, align 4
  br label %403

403:                                              ; preds = %402, %400, %384, %377, %361, %240, %229, %219, %175, %135, %120, %114, %97, %89, %76, %63, %46, %25
  %404 = load i32, i32* %3, align 4
  ret i32 %404
}

declare dso_local i64 @ARRAY_SIZE(%struct.cap11xx_hw_model*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.cap11xx_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @struct_size(%struct.cap11xx_priv*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @is_power_of_2(i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @of_property_read_u32_array(%struct.device_node*, i8*, i64*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local %struct.TYPE_6__* @devm_input_allocate_device(%struct.device*) #1

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i32 @__set_bit(i64, i32*) #1

declare dso_local i32 @__clear_bit(i32, i32*) #1

declare dso_local i32 @cap11xx_init_leds(%struct.device*, %struct.cap11xx_priv*, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.TYPE_6__*, %struct.cap11xx_priv*) #1

declare dso_local i32 @cap11xx_set_sleep(%struct.cap11xx_priv*, i32) #1

declare dso_local i32 @input_register_device(%struct.TYPE_6__*) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i32, %struct.cap11xx_priv*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
