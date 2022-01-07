; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii902x.c_sii902x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii902x.c_sii902x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.sii902x = type { %struct.TYPE_4__*, %struct.TYPE_5__, i32, i32, i32, %struct.i2c_client* }
%struct.TYPE_4__ = type { %struct.sii902x* }
%struct.TYPE_5__ = type { i32*, i32, i32* }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"I2C adapter not suitable\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sii902x_regmap_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Failed to retrieve/request reset gpio: %ld\0A\00", align 1
@SII902X_REG_TPI_RQB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"regmap_read failed %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Invalid chipid: %02x (expecting 0xb0)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SII902X_INT_STATUS = common dso_local global i32 0, align 4
@SII902X_INT_ENABLE = common dso_local global i32 0, align 4
@SII902X_HOTPLUG_EVENT = common dso_local global i32 0, align 4
@sii902x_interrupt = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@sii902x_bridge_funcs = common dso_local global i32 0, align 4
@default_sii902x_timings = common dso_local global i32 0, align 4
@I2C_MUX_GATE = common dso_local global i32 0, align 4
@sii902x_i2c_bypass_select = common dso_local global i32 0, align 4
@sii902x_i2c_bypass_deselect = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @sii902x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sii902x_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sii902x*, align 8
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 2
  store %struct.device* %12, %struct.device** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %17 = call i32 @i2c_check_functionality(i32 %15, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %201

25:                                               ; preds = %2
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.sii902x* @devm_kzalloc(%struct.device* %26, i32 56, i32 %27)
  store %struct.sii902x* %28, %struct.sii902x** %8, align 8
  %29 = load %struct.sii902x*, %struct.sii902x** %8, align 8
  %30 = icmp ne %struct.sii902x* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %201

34:                                               ; preds = %25
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = load %struct.sii902x*, %struct.sii902x** %8, align 8
  %37 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %36, i32 0, i32 5
  store %struct.i2c_client* %35, %struct.i2c_client** %37, align 8
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %38, i32* @sii902x_regmap_config)
  %40 = load %struct.sii902x*, %struct.sii902x** %8, align 8
  %41 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.sii902x*, %struct.sii902x** %8, align 8
  %43 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @IS_ERR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %34
  %48 = load %struct.sii902x*, %struct.sii902x** %8, align 8
  %49 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @PTR_ERR(i32 %50)
  store i32 %51, i32* %3, align 4
  br label %201

52:                                               ; preds = %34
  %53 = load %struct.device*, %struct.device** %6, align 8
  %54 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %55 = call i32 @devm_gpiod_get_optional(%struct.device* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load %struct.sii902x*, %struct.sii902x** %8, align 8
  %57 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load %struct.sii902x*, %struct.sii902x** %8, align 8
  %59 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @IS_ERR(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %52
  %64 = load %struct.device*, %struct.device** %6, align 8
  %65 = load %struct.sii902x*, %struct.sii902x** %8, align 8
  %66 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @PTR_ERR(i32 %67)
  %69 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %64, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load %struct.sii902x*, %struct.sii902x** %8, align 8
  %71 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @PTR_ERR(i32 %72)
  store i32 %73, i32* %3, align 4
  br label %201

74:                                               ; preds = %52
  %75 = load %struct.sii902x*, %struct.sii902x** %8, align 8
  %76 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %75, i32 0, i32 3
  %77 = call i32 @mutex_init(i32* %76)
  %78 = load %struct.sii902x*, %struct.sii902x** %8, align 8
  %79 = call i32 @sii902x_reset(%struct.sii902x* %78)
  %80 = load %struct.sii902x*, %struct.sii902x** %8, align 8
  %81 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @SII902X_REG_TPI_RQB, align 4
  %84 = call i32 @regmap_write(i32 %82, i32 %83, i32 0)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %74
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %3, align 4
  br label %201

89:                                               ; preds = %74
  %90 = load %struct.sii902x*, %struct.sii902x** %8, align 8
  %91 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @SII902X_REG_CHIPID(i32 0)
  %94 = bitcast [4 x i32]* %9 to i32**
  %95 = call i32 @regmap_bulk_read(i32 %92, i32 %93, i32** %94, i32 4)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %89
  %99 = load %struct.device*, %struct.device** %6, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %99, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %3, align 4
  br label %201

103:                                              ; preds = %89
  %104 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %105 = load i32, i32* %104, align 16
  %106 = icmp ne i32 %105, 176
  br i1 %106, label %107, label %114

107:                                              ; preds = %103
  %108 = load %struct.device*, %struct.device** %6, align 8
  %109 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %110 = load i32, i32* %109, align 16
  %111 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %108, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %3, align 4
  br label %201

114:                                              ; preds = %103
  %115 = load %struct.sii902x*, %struct.sii902x** %8, align 8
  %116 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @SII902X_INT_STATUS, align 4
  %119 = call i32 @regmap_read(i32 %117, i32 %118, i32* %7)
  %120 = load %struct.sii902x*, %struct.sii902x** %8, align 8
  %121 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @SII902X_INT_STATUS, align 4
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @regmap_write(i32 %122, i32 %123, i32 %124)
  %126 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %127 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %152

130:                                              ; preds = %114
  %131 = load %struct.sii902x*, %struct.sii902x** %8, align 8
  %132 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @SII902X_INT_ENABLE, align 4
  %135 = load i32, i32* @SII902X_HOTPLUG_EVENT, align 4
  %136 = call i32 @regmap_write(i32 %133, i32 %134, i32 %135)
  %137 = load %struct.device*, %struct.device** %6, align 8
  %138 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %139 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @sii902x_interrupt, align 4
  %142 = load i32, i32* @IRQF_ONESHOT, align 4
  %143 = load %struct.device*, %struct.device** %6, align 8
  %144 = call i32 @dev_name(%struct.device* %143)
  %145 = load %struct.sii902x*, %struct.sii902x** %8, align 8
  %146 = call i32 @devm_request_threaded_irq(%struct.device* %137, i32 %140, i32* null, i32 %141, i32 %142, i32 %144, %struct.sii902x* %145)
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %10, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %130
  %150 = load i32, i32* %10, align 4
  store i32 %150, i32* %3, align 4
  br label %201

151:                                              ; preds = %130
  br label %152

152:                                              ; preds = %151, %114
  %153 = load %struct.sii902x*, %struct.sii902x** %8, align 8
  %154 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 2
  store i32* @sii902x_bridge_funcs, i32** %155, align 8
  %156 = load %struct.device*, %struct.device** %6, align 8
  %157 = getelementptr inbounds %struct.device, %struct.device* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.sii902x*, %struct.sii902x** %8, align 8
  %160 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 1
  store i32 %158, i32* %161, align 8
  %162 = load %struct.sii902x*, %struct.sii902x** %8, align 8
  %163 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  store i32* @default_sii902x_timings, i32** %164, align 8
  %165 = load %struct.sii902x*, %struct.sii902x** %8, align 8
  %166 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %165, i32 0, i32 1
  %167 = call i32 @drm_bridge_add(%struct.TYPE_5__* %166)
  %168 = load %struct.sii902x*, %struct.sii902x** %8, align 8
  %169 = load %struct.device*, %struct.device** %6, align 8
  %170 = call i32 @sii902x_audio_codec_init(%struct.sii902x* %168, %struct.device* %169)
  %171 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %172 = load %struct.sii902x*, %struct.sii902x** %8, align 8
  %173 = call i32 @i2c_set_clientdata(%struct.i2c_client* %171, %struct.sii902x* %172)
  %174 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %175 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.device*, %struct.device** %6, align 8
  %178 = load i32, i32* @I2C_MUX_GATE, align 4
  %179 = load i32, i32* @sii902x_i2c_bypass_select, align 4
  %180 = load i32, i32* @sii902x_i2c_bypass_deselect, align 4
  %181 = call %struct.TYPE_4__* @i2c_mux_alloc(i32 %176, %struct.device* %177, i32 1, i32 0, i32 %178, i32 %179, i32 %180)
  %182 = load %struct.sii902x*, %struct.sii902x** %8, align 8
  %183 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %182, i32 0, i32 0
  store %struct.TYPE_4__* %181, %struct.TYPE_4__** %183, align 8
  %184 = load %struct.sii902x*, %struct.sii902x** %8, align 8
  %185 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %184, i32 0, i32 0
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %185, align 8
  %187 = icmp ne %struct.TYPE_4__* %186, null
  br i1 %187, label %191, label %188

188:                                              ; preds = %152
  %189 = load i32, i32* @ENOMEM, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %3, align 4
  br label %201

191:                                              ; preds = %152
  %192 = load %struct.sii902x*, %struct.sii902x** %8, align 8
  %193 = load %struct.sii902x*, %struct.sii902x** %8, align 8
  %194 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %193, i32 0, i32 0
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  store %struct.sii902x* %192, %struct.sii902x** %196, align 8
  %197 = load %struct.sii902x*, %struct.sii902x** %8, align 8
  %198 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %197, i32 0, i32 0
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %198, align 8
  %200 = call i32 @i2c_mux_add_adapter(%struct.TYPE_4__* %199, i32 0, i32 0, i32 0)
  store i32 %200, i32* %3, align 4
  br label %201

201:                                              ; preds = %191, %188, %149, %107, %98, %87, %63, %47, %31, %20
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.sii902x* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @sii902x_reset(%struct.sii902x*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32**, i32) #1

declare dso_local i32 @SII902X_REG_CHIPID(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i32, %struct.sii902x*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @drm_bridge_add(%struct.TYPE_5__*) #1

declare dso_local i32 @sii902x_audio_codec_init(%struct.sii902x*, %struct.device*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.sii902x*) #1

declare dso_local %struct.TYPE_4__* @i2c_mux_alloc(i32, %struct.device*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @i2c_mux_add_adapter(%struct.TYPE_4__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
