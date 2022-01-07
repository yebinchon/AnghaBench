; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_drv.c_adv7511_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_drv.c_adv7511_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i64 }
%struct.i2c_device_id = type { i32 }
%struct.adv7511_link_config = type { i32 }
%struct.adv7511 = type { i32, i32, %struct.TYPE_11__*, %struct.TYPE_11__*, i64, %struct.TYPE_11__*, %struct.TYPE_12__, i32, i32, %struct.TYPE_11__*, %struct.TYPE_11__*, i32, %struct.i2c_client* }
%struct.TYPE_12__ = type { i64, i32* }
%struct.TYPE_11__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@connector_status_disconnected = common dso_local global i32 0, align 4
@ADV7511 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"failed to init regulators\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"pd\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@adv7511_regmap_config = common dso_local global i32 0, align 4
@ADV7511_REG_CHIP_REVISION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"Rev. %d\0A\00", align 1
@adv7511_fixed_registers = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"edid\00", align 1
@ADV7511_EDID_I2C_ADDR_DEFAULT = common dso_local global i32 0, align 4
@ADV7511_REG_EDID_I2C_ADDR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"packet\00", align 1
@ADV7511_PACKET_I2C_ADDR_DEFAULT = common dso_local global i32 0, align 4
@ADV7511_REG_PACKET_I2C_ADDR = common dso_local global i32 0, align 4
@ADV7511_REG_CEC_I2C_ADDR = common dso_local global i32 0, align 4
@adv7511_hpd_work = common dso_local global i32 0, align 4
@adv7511_irq_handler = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@adv7511_bridge_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @adv7511_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7511_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.adv7511_link_config, align 4
  %7 = alloca %struct.adv7511*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 1
  store %struct.device* %12, %struct.device** %8, align 8
  %13 = load %struct.device*, %struct.device** %8, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %332

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %8, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.adv7511* @devm_kzalloc(%struct.device* %21, i32 96, i32 %22)
  store %struct.adv7511* %23, %struct.adv7511** %7, align 8
  %24 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %25 = icmp ne %struct.adv7511* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %332

29:                                               ; preds = %20
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %32 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %31, i32 0, i32 12
  store %struct.i2c_client* %30, %struct.i2c_client** %32, align 8
  %33 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %34 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load i32, i32* @connector_status_disconnected, align 4
  %36 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %37 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %36, i32 0, i32 11
  store i32 %35, i32* %37, align 8
  %38 = load %struct.device*, %struct.device** %8, align 8
  %39 = getelementptr inbounds %struct.device, %struct.device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %29
  %43 = load %struct.device*, %struct.device** %8, align 8
  %44 = call i64 @of_device_get_match_data(%struct.device* %43)
  %45 = trunc i64 %44 to i32
  %46 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %47 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  br label %54

48:                                               ; preds = %29
  %49 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %50 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %53 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %48, %42
  %55 = call i32 @memset(%struct.adv7511_link_config* %6, i32 0, i32 4)
  %56 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %57 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* @ADV7511, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %54
  %63 = load %struct.device*, %struct.device** %8, align 8
  %64 = getelementptr inbounds %struct.device, %struct.device* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @adv7511_parse_dt(i64 %65, %struct.adv7511_link_config* %6)
  store i32 %66, i32* %10, align 4
  br label %73

67:                                               ; preds = %54
  %68 = load %struct.device*, %struct.device** %8, align 8
  %69 = getelementptr inbounds %struct.device, %struct.device* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %72 = call i32 @adv7533_parse_dt(i64 %70, %struct.adv7511* %71)
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %67, %62
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %3, align 4
  br label %332

78:                                               ; preds = %73
  %79 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %80 = call i32 @adv7511_init_regulators(%struct.adv7511* %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load %struct.device*, %struct.device** %8, align 8
  %85 = call i32 @dev_err(%struct.device* %84, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %3, align 4
  br label %332

87:                                               ; preds = %78
  %88 = load %struct.device*, %struct.device** %8, align 8
  %89 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %90 = call %struct.TYPE_11__* @devm_gpiod_get_optional(%struct.device* %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %92 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %91, i32 0, i32 10
  store %struct.TYPE_11__* %90, %struct.TYPE_11__** %92, align 8
  %93 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %94 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %93, i32 0, i32 10
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %94, align 8
  %96 = call i64 @IS_ERR(%struct.TYPE_11__* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %87
  %99 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %100 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %99, i32 0, i32 10
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = call i32 @PTR_ERR(%struct.TYPE_11__* %101)
  store i32 %102, i32* %10, align 4
  br label %328

103:                                              ; preds = %87
  %104 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %105 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %104, i32 0, i32 10
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = icmp ne %struct.TYPE_11__* %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = call i32 @usleep_range(i32 5000, i32 6000)
  %110 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %111 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %110, i32 0, i32 10
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = call i32 @gpiod_set_value_cansleep(%struct.TYPE_11__* %112, i32 0)
  br label %114

114:                                              ; preds = %108, %103
  %115 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %116 = call %struct.TYPE_11__* @devm_regmap_init_i2c(%struct.i2c_client* %115, i32* @adv7511_regmap_config)
  %117 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %118 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %117, i32 0, i32 9
  store %struct.TYPE_11__* %116, %struct.TYPE_11__** %118, align 8
  %119 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %120 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %119, i32 0, i32 9
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %120, align 8
  %122 = call i64 @IS_ERR(%struct.TYPE_11__* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %114
  %125 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %126 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %125, i32 0, i32 9
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %126, align 8
  %128 = call i32 @PTR_ERR(%struct.TYPE_11__* %127)
  store i32 %128, i32* %10, align 4
  br label %328

129:                                              ; preds = %114
  %130 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %131 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %130, i32 0, i32 9
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %131, align 8
  %133 = load i32, i32* @ADV7511_REG_CHIP_REVISION, align 4
  %134 = call i32 @regmap_read(%struct.TYPE_11__* %132, i32 %133, i32* %9)
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %10, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %129
  br label %328

138:                                              ; preds = %129
  %139 = load %struct.device*, %struct.device** %8, align 8
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @dev_dbg(%struct.device* %139, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %140)
  %142 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %143 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = load i64, i64* @ADV7511, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %156

148:                                              ; preds = %138
  %149 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %150 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %149, i32 0, i32 9
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %150, align 8
  %152 = load i32, i32* @adv7511_fixed_registers, align 4
  %153 = load i32, i32* @adv7511_fixed_registers, align 4
  %154 = call i32 @ARRAY_SIZE(i32 %153)
  %155 = call i32 @regmap_register_patch(%struct.TYPE_11__* %151, i32 %152, i32 %154)
  store i32 %155, i32* %10, align 4
  br label %159

156:                                              ; preds = %138
  %157 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %158 = call i32 @adv7533_patch_registers(%struct.adv7511* %157)
  store i32 %158, i32* %10, align 4
  br label %159

159:                                              ; preds = %156, %148
  %160 = load i32, i32* %10, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %159
  br label %328

163:                                              ; preds = %159
  %164 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %165 = call i32 @adv7511_packet_disable(%struct.adv7511* %164, i32 65535)
  %166 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %167 = load i32, i32* @ADV7511_EDID_I2C_ADDR_DEFAULT, align 4
  %168 = call i8* @i2c_new_ancillary_device(%struct.i2c_client* %166, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %167)
  %169 = bitcast i8* %168 to %struct.TYPE_11__*
  %170 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %171 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %170, i32 0, i32 2
  store %struct.TYPE_11__* %169, %struct.TYPE_11__** %171, align 8
  %172 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %173 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %172, i32 0, i32 2
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %173, align 8
  %175 = call i64 @IS_ERR(%struct.TYPE_11__* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %163
  %178 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %179 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %178, i32 0, i32 2
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %179, align 8
  %181 = call i32 @PTR_ERR(%struct.TYPE_11__* %180)
  store i32 %181, i32* %10, align 4
  br label %328

182:                                              ; preds = %163
  %183 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %184 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %183, i32 0, i32 9
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %184, align 8
  %186 = load i32, i32* @ADV7511_REG_EDID_I2C_ADDR, align 4
  %187 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %188 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %187, i32 0, i32 2
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = shl i32 %191, 1
  %193 = call i32 @regmap_write(%struct.TYPE_11__* %185, i32 %186, i32 %192)
  %194 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %195 = load i32, i32* @ADV7511_PACKET_I2C_ADDR_DEFAULT, align 4
  %196 = call i8* @i2c_new_ancillary_device(%struct.i2c_client* %194, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %195)
  %197 = bitcast i8* %196 to %struct.TYPE_11__*
  %198 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %199 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %198, i32 0, i32 3
  store %struct.TYPE_11__* %197, %struct.TYPE_11__** %199, align 8
  %200 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %201 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %200, i32 0, i32 3
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %201, align 8
  %203 = call i64 @IS_ERR(%struct.TYPE_11__* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %182
  %206 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %207 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %206, i32 0, i32 3
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %207, align 8
  %209 = call i32 @PTR_ERR(%struct.TYPE_11__* %208)
  store i32 %209, i32* %10, align 4
  br label %323

210:                                              ; preds = %182
  %211 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %212 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %211, i32 0, i32 9
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %212, align 8
  %214 = load i32, i32* @ADV7511_REG_PACKET_I2C_ADDR, align 4
  %215 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %216 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %215, i32 0, i32 3
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = shl i32 %219, 1
  %221 = call i32 @regmap_write(%struct.TYPE_11__* %213, i32 %214, i32 %220)
  %222 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %223 = call i32 @adv7511_init_cec_regmap(%struct.adv7511* %222)
  store i32 %223, i32* %10, align 4
  %224 = load i32, i32* %10, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %210
  br label %318

227:                                              ; preds = %210
  %228 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %229 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %228, i32 0, i32 9
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %229, align 8
  %231 = load i32, i32* @ADV7511_REG_CEC_I2C_ADDR, align 4
  %232 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %233 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %232, i32 0, i32 5
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = shl i32 %236, 1
  %238 = call i32 @regmap_write(%struct.TYPE_11__* %230, i32 %231, i32 %237)
  %239 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %240 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %239, i32 0, i32 8
  %241 = load i32, i32* @adv7511_hpd_work, align 4
  %242 = call i32 @INIT_WORK(i32* %240, i32 %241)
  %243 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %244 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %265

247:                                              ; preds = %227
  %248 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %249 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %248, i32 0, i32 7
  %250 = call i32 @init_waitqueue_head(i32* %249)
  %251 = load %struct.device*, %struct.device** %8, align 8
  %252 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %253 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @adv7511_irq_handler, align 4
  %256 = load i32, i32* @IRQF_ONESHOT, align 4
  %257 = load %struct.device*, %struct.device** %8, align 8
  %258 = call i32 @dev_name(%struct.device* %257)
  %259 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %260 = call i32 @devm_request_threaded_irq(%struct.device* %251, i32 %254, i32* null, i32 %255, i32 %256, i32 %258, %struct.adv7511* %259)
  store i32 %260, i32* %10, align 4
  %261 = load i32, i32* %10, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %247
  br label %303

264:                                              ; preds = %247
  br label %265

265:                                              ; preds = %264, %227
  %266 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %267 = call i32 @adv7511_power_off(%struct.adv7511* %266)
  %268 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %269 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %270 = call i32 @i2c_set_clientdata(%struct.i2c_client* %268, %struct.adv7511* %269)
  %271 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %272 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = sext i32 %273 to i64
  %275 = load i64, i64* @ADV7511, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %277, label %280

277:                                              ; preds = %265
  %278 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %279 = call i32 @adv7511_set_link_config(%struct.adv7511* %278, %struct.adv7511_link_config* %6)
  br label %280

280:                                              ; preds = %277, %265
  %281 = load %struct.device*, %struct.device** %8, align 8
  %282 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %283 = call i32 @adv7511_cec_init(%struct.device* %281, %struct.adv7511* %282)
  store i32 %283, i32* %10, align 4
  %284 = load i32, i32* %10, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %280
  br label %303

287:                                              ; preds = %280
  %288 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %289 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %288, i32 0, i32 6
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 1
  store i32* @adv7511_bridge_funcs, i32** %290, align 8
  %291 = load %struct.device*, %struct.device** %8, align 8
  %292 = getelementptr inbounds %struct.device, %struct.device* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %295 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %294, i32 0, i32 6
  %296 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %295, i32 0, i32 0
  store i64 %293, i64* %296, align 8
  %297 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %298 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %297, i32 0, i32 6
  %299 = call i32 @drm_bridge_add(%struct.TYPE_12__* %298)
  %300 = load %struct.device*, %struct.device** %8, align 8
  %301 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %302 = call i32 @adv7511_audio_init(%struct.device* %300, %struct.adv7511* %301)
  store i32 0, i32* %3, align 4
  br label %332

303:                                              ; preds = %286, %263
  %304 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %305 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %304, i32 0, i32 5
  %306 = load %struct.TYPE_11__*, %struct.TYPE_11__** %305, align 8
  %307 = call i32 @i2c_unregister_device(%struct.TYPE_11__* %306)
  %308 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %309 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %308, i32 0, i32 4
  %310 = load i64, i64* %309, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %317

312:                                              ; preds = %303
  %313 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %314 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %313, i32 0, i32 4
  %315 = load i64, i64* %314, align 8
  %316 = call i32 @clk_disable_unprepare(i64 %315)
  br label %317

317:                                              ; preds = %312, %303
  br label %318

318:                                              ; preds = %317, %226
  %319 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %320 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %319, i32 0, i32 3
  %321 = load %struct.TYPE_11__*, %struct.TYPE_11__** %320, align 8
  %322 = call i32 @i2c_unregister_device(%struct.TYPE_11__* %321)
  br label %323

323:                                              ; preds = %318, %205
  %324 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %325 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %324, i32 0, i32 2
  %326 = load %struct.TYPE_11__*, %struct.TYPE_11__** %325, align 8
  %327 = call i32 @i2c_unregister_device(%struct.TYPE_11__* %326)
  br label %328

328:                                              ; preds = %323, %177, %162, %137, %124, %98
  %329 = load %struct.adv7511*, %struct.adv7511** %7, align 8
  %330 = call i32 @adv7511_uninit_regulators(%struct.adv7511* %329)
  %331 = load i32, i32* %10, align 4
  store i32 %331, i32* %3, align 4
  br label %332

332:                                              ; preds = %328, %287, %83, %76, %26, %17
  %333 = load i32, i32* %3, align 4
  ret i32 %333
}

declare dso_local %struct.adv7511* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @memset(%struct.adv7511_link_config*, i32, i32) #1

declare dso_local i32 @adv7511_parse_dt(i64, %struct.adv7511_link_config*) #1

declare dso_local i32 @adv7533_parse_dt(i64, %struct.adv7511*) #1

declare dso_local i32 @adv7511_init_regulators(%struct.adv7511*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.TYPE_11__* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_11__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_11__*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(%struct.TYPE_11__*, i32) #1

declare dso_local %struct.TYPE_11__* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i32 @regmap_read(%struct.TYPE_11__*, i32, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @regmap_register_patch(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @adv7533_patch_registers(%struct.adv7511*) #1

declare dso_local i32 @adv7511_packet_disable(%struct.adv7511*, i32) #1

declare dso_local i8* @i2c_new_ancillary_device(%struct.i2c_client*, i8*, i32) #1

declare dso_local i32 @regmap_write(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @adv7511_init_cec_regmap(%struct.adv7511*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i32, %struct.adv7511*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @adv7511_power_off(%struct.adv7511*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.adv7511*) #1

declare dso_local i32 @adv7511_set_link_config(%struct.adv7511*, %struct.adv7511_link_config*) #1

declare dso_local i32 @adv7511_cec_init(%struct.device*, %struct.adv7511*) #1

declare dso_local i32 @drm_bridge_add(%struct.TYPE_12__*) #1

declare dso_local i32 @adv7511_audio_init(%struct.device*, %struct.adv7511*) #1

declare dso_local i32 @i2c_unregister_device(%struct.TYPE_11__*) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

declare dso_local i32 @adv7511_uninit_regulators(%struct.adv7511*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
