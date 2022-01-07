; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-mux-pca954x.c_pca954x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-mux-pca954x.c_pca954x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.i2c_client = type { i32, i32, %struct.device, %struct.i2c_adapter* }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i64 }
%struct.gpio_desc = type { i32 }
%struct.i2c_mux_core = type { i32 }
%struct.pca954x = type { %struct.TYPE_5__*, %struct.i2c_client*, i64, i32, i64 }
%struct.i2c_device_identity = type { i64, i64, i32 }

@I2C_FUNC_SMBUS_BYTE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PCA954X_MAX_NCHANS = common dso_local global i32 0, align 4
@pca954x_select_chan = common dso_local global i32 0, align 4
@pca954x_deselect_mux = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@chips = common dso_local global %struct.TYPE_5__* null, align 8
@I2C_DEVICE_ID_NONE = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"unexpected device id %03x-%03x-%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"probe failed\0A\00", align 1
@MUX_IDLE_AS_IS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"i2c-mux-idle-disconnect\00", align 1
@MUX_IDLE_DISCONNECT = common dso_local global i32 0, align 4
@pca954x_irq_handler = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"pca954x\00", align 1
@dev_attr_idle_state = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"registered %d multiplexed busses for I2C %s %s\0A\00", align 1
@pca954x_ismux = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"mux\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"switch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @pca954x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pca954x_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.gpio_desc*, align 8
  %11 = alloca %struct.i2c_mux_core*, align 8
  %12 = alloca %struct.pca954x*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.i2c_device_identity, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 3
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %17, align 8
  store %struct.i2c_adapter* %18, %struct.i2c_adapter** %6, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 2
  store %struct.device* %20, %struct.device** %7, align 8
  %21 = load %struct.device*, %struct.device** %7, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 0
  %23 = load %struct.device_node*, %struct.device_node** %22, align 8
  store %struct.device_node* %23, %struct.device_node** %8, align 8
  %24 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %25 = load i32, i32* @I2C_FUNC_SMBUS_BYTE, align 4
  %26 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %242

31:                                               ; preds = %2
  %32 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %33 = load %struct.device*, %struct.device** %7, align 8
  %34 = load i32, i32* @PCA954X_MAX_NCHANS, align 4
  %35 = load i32, i32* @pca954x_select_chan, align 4
  %36 = load i32, i32* @pca954x_deselect_mux, align 4
  %37 = call %struct.i2c_mux_core* @i2c_mux_alloc(%struct.i2c_adapter* %32, %struct.device* %33, i32 %34, i32 40, i32 0, i32 %35, i32 %36)
  store %struct.i2c_mux_core* %37, %struct.i2c_mux_core** %11, align 8
  %38 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %11, align 8
  %39 = icmp ne %struct.i2c_mux_core* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %31
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %242

43:                                               ; preds = %31
  %44 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %11, align 8
  %45 = call %struct.pca954x* @i2c_mux_priv(%struct.i2c_mux_core* %44)
  store %struct.pca954x* %45, %struct.pca954x** %12, align 8
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %11, align 8
  %48 = call i32 @i2c_set_clientdata(%struct.i2c_client* %46, %struct.i2c_mux_core* %47)
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = load %struct.pca954x*, %struct.pca954x** %12, align 8
  %51 = getelementptr inbounds %struct.pca954x, %struct.pca954x* %50, i32 0, i32 1
  store %struct.i2c_client* %49, %struct.i2c_client** %51, align 8
  %52 = load %struct.device*, %struct.device** %7, align 8
  %53 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %54 = call %struct.gpio_desc* @devm_gpiod_get_optional(%struct.device* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %53)
  store %struct.gpio_desc* %54, %struct.gpio_desc** %10, align 8
  %55 = load %struct.gpio_desc*, %struct.gpio_desc** %10, align 8
  %56 = call i64 @IS_ERR(%struct.gpio_desc* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %43
  %59 = load %struct.gpio_desc*, %struct.gpio_desc** %10, align 8
  %60 = call i32 @PTR_ERR(%struct.gpio_desc* %59)
  store i32 %60, i32* %3, align 4
  br label %242

61:                                               ; preds = %43
  %62 = load %struct.gpio_desc*, %struct.gpio_desc** %10, align 8
  %63 = icmp ne %struct.gpio_desc* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = call i32 @udelay(i32 1)
  %66 = load %struct.gpio_desc*, %struct.gpio_desc** %10, align 8
  %67 = call i32 @gpiod_set_value_cansleep(%struct.gpio_desc* %66, i32 0)
  %68 = call i32 @udelay(i32 1)
  br label %69

69:                                               ; preds = %64, %61
  %70 = load %struct.device*, %struct.device** %7, align 8
  %71 = call %struct.TYPE_5__* @of_device_get_match_data(%struct.device* %70)
  %72 = load %struct.pca954x*, %struct.pca954x** %12, align 8
  %73 = getelementptr inbounds %struct.pca954x, %struct.pca954x* %72, i32 0, i32 0
  store %struct.TYPE_5__* %71, %struct.TYPE_5__** %73, align 8
  %74 = load %struct.pca954x*, %struct.pca954x** %12, align 8
  %75 = getelementptr inbounds %struct.pca954x, %struct.pca954x* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = icmp ne %struct.TYPE_5__* %76, null
  br i1 %77, label %86, label %78

78:                                               ; preds = %69
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** @chips, align 8
  %80 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %81 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %82
  %84 = load %struct.pca954x*, %struct.pca954x** %12, align 8
  %85 = getelementptr inbounds %struct.pca954x, %struct.pca954x* %84, i32 0, i32 0
  store %struct.TYPE_5__* %83, %struct.TYPE_5__** %85, align 8
  br label %86

86:                                               ; preds = %78, %69
  %87 = load %struct.pca954x*, %struct.pca954x** %12, align 8
  %88 = getelementptr inbounds %struct.pca954x, %struct.pca954x* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @I2C_DEVICE_ID_NONE, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %142

95:                                               ; preds = %86
  %96 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %97 = call i32 @i2c_get_device_id(%struct.i2c_client* %96, %struct.i2c_device_identity* %15)
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %95
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* @EOPNOTSUPP, align 4
  %103 = sub nsw i32 0, %102
  %104 = icmp ne i32 %101, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i32, i32* %14, align 4
  store i32 %106, i32* %3, align 4
  br label %242

107:                                              ; preds = %100, %95
  %108 = load i32, i32* %14, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %141, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.i2c_device_identity, %struct.i2c_device_identity* %15, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.pca954x*, %struct.pca954x** %12, align 8
  %114 = getelementptr inbounds %struct.pca954x, %struct.pca954x* %113, i32 0, i32 0
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %112, %118
  br i1 %119, label %130, label %120

120:                                              ; preds = %110
  %121 = getelementptr inbounds %struct.i2c_device_identity, %struct.i2c_device_identity* %15, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.pca954x*, %struct.pca954x** %12, align 8
  %124 = getelementptr inbounds %struct.pca954x, %struct.pca954x* %123, i32 0, i32 0
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %122, %128
  br i1 %129, label %130, label %141

130:                                              ; preds = %120, %110
  %131 = load %struct.device*, %struct.device** %7, align 8
  %132 = getelementptr inbounds %struct.i2c_device_identity, %struct.i2c_device_identity* %15, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds %struct.i2c_device_identity, %struct.i2c_device_identity* %15, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds %struct.i2c_device_identity, %struct.i2c_device_identity* %15, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %131, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %133, i64 %135, i32 %137)
  %139 = load i32, i32* @ENODEV, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %3, align 4
  br label %242

141:                                              ; preds = %120, %107
  br label %142

142:                                              ; preds = %141, %86
  %143 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %144 = call i64 @i2c_smbus_write_byte(%struct.i2c_client* %143, i32 0)
  %145 = icmp slt i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %142
  %147 = load %struct.device*, %struct.device** %7, align 8
  %148 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %147, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %149 = load i32, i32* @ENODEV, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %3, align 4
  br label %242

151:                                              ; preds = %142
  %152 = load %struct.pca954x*, %struct.pca954x** %12, align 8
  %153 = getelementptr inbounds %struct.pca954x, %struct.pca954x* %152, i32 0, i32 4
  store i64 0, i64* %153, align 8
  %154 = load i32, i32* @MUX_IDLE_AS_IS, align 4
  %155 = load %struct.pca954x*, %struct.pca954x** %12, align 8
  %156 = getelementptr inbounds %struct.pca954x, %struct.pca954x* %155, i32 0, i32 3
  store i32 %154, i32* %156, align 8
  %157 = load %struct.device_node*, %struct.device_node** %8, align 8
  %158 = icmp ne %struct.device_node* %157, null
  br i1 %158, label %159, label %163

159:                                              ; preds = %151
  %160 = load %struct.device_node*, %struct.device_node** %8, align 8
  %161 = call i64 @of_property_read_bool(%struct.device_node* %160, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %162 = icmp ne i64 %161, 0
  br label %163

163:                                              ; preds = %159, %151
  %164 = phi i1 [ false, %151 ], [ %162, %159 ]
  %165 = zext i1 %164 to i32
  store i32 %165, i32* %9, align 4
  %166 = load i32, i32* %9, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %163
  %169 = load i32, i32* @MUX_IDLE_DISCONNECT, align 4
  %170 = load %struct.pca954x*, %struct.pca954x** %12, align 8
  %171 = getelementptr inbounds %struct.pca954x, %struct.pca954x* %170, i32 0, i32 3
  store i32 %169, i32* %171, align 8
  br label %172

172:                                              ; preds = %168, %163
  %173 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %11, align 8
  %174 = call i32 @pca954x_irq_setup(%struct.i2c_mux_core* %173)
  store i32 %174, i32* %14, align 4
  %175 = load i32, i32* %14, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %172
  br label %238

178:                                              ; preds = %172
  store i32 0, i32* %13, align 4
  br label %179

179:                                              ; preds = %195, %178
  %180 = load i32, i32* %13, align 4
  %181 = load %struct.pca954x*, %struct.pca954x** %12, align 8
  %182 = getelementptr inbounds %struct.pca954x, %struct.pca954x* %181, i32 0, i32 0
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp slt i32 %180, %185
  br i1 %186, label %187, label %198

187:                                              ; preds = %179
  %188 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %11, align 8
  %189 = load i32, i32* %13, align 4
  %190 = call i32 @i2c_mux_add_adapter(%struct.i2c_mux_core* %188, i32 0, i32 %189, i32 0)
  store i32 %190, i32* %14, align 4
  %191 = load i32, i32* %14, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %187
  br label %238

194:                                              ; preds = %187
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %13, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %13, align 4
  br label %179

198:                                              ; preds = %179
  %199 = load %struct.pca954x*, %struct.pca954x** %12, align 8
  %200 = getelementptr inbounds %struct.pca954x, %struct.pca954x* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %220

203:                                              ; preds = %198
  %204 = load %struct.device*, %struct.device** %7, align 8
  %205 = load %struct.pca954x*, %struct.pca954x** %12, align 8
  %206 = getelementptr inbounds %struct.pca954x, %struct.pca954x* %205, i32 0, i32 1
  %207 = load %struct.i2c_client*, %struct.i2c_client** %206, align 8
  %208 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @pca954x_irq_handler, align 4
  %211 = load i32, i32* @IRQF_ONESHOT, align 4
  %212 = load i32, i32* @IRQF_SHARED, align 4
  %213 = or i32 %211, %212
  %214 = load %struct.pca954x*, %struct.pca954x** %12, align 8
  %215 = call i32 @devm_request_threaded_irq(%struct.device* %204, i32 %209, i32* null, i32 %210, i32 %213, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %struct.pca954x* %214)
  store i32 %215, i32* %14, align 4
  %216 = load i32, i32* %14, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %203
  br label %238

219:                                              ; preds = %203
  br label %220

220:                                              ; preds = %219, %198
  %221 = load %struct.device*, %struct.device** %7, align 8
  %222 = call i32 @device_create_file(%struct.device* %221, i32* @dev_attr_idle_state)
  %223 = load %struct.device*, %struct.device** %7, align 8
  %224 = load i32, i32* %13, align 4
  %225 = load %struct.pca954x*, %struct.pca954x** %12, align 8
  %226 = getelementptr inbounds %struct.pca954x, %struct.pca954x* %225, i32 0, i32 0
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @pca954x_ismux, align 8
  %231 = icmp eq i64 %229, %230
  %232 = zext i1 %231 to i64
  %233 = select i1 %231, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)
  %234 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %235 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @dev_info(%struct.device* %223, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %224, i8* %233, i32 %236)
  store i32 0, i32* %3, align 4
  br label %242

238:                                              ; preds = %218, %193, %177
  %239 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %11, align 8
  %240 = call i32 @pca954x_cleanup(%struct.i2c_mux_core* %239)
  %241 = load i32, i32* %14, align 4
  store i32 %241, i32* %3, align 4
  br label %242

242:                                              ; preds = %238, %220, %146, %130, %105, %58, %40, %28
  %243 = load i32, i32* %3, align 4
  ret i32 %243
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local %struct.i2c_mux_core* @i2c_mux_alloc(%struct.i2c_adapter*, %struct.device*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.pca954x* @i2c_mux_priv(%struct.i2c_mux_core*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.i2c_mux_core*) #1

declare dso_local %struct.gpio_desc* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(%struct.gpio_desc*, i32) #1

declare dso_local %struct.TYPE_5__* @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @i2c_get_device_id(%struct.i2c_client*, %struct.i2c_device_identity*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

declare dso_local i64 @i2c_smbus_write_byte(%struct.i2c_client*, i32) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @pca954x_irq_setup(%struct.i2c_mux_core*) #1

declare dso_local i32 @i2c_mux_add_adapter(%struct.i2c_mux_core*, i32, i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i8*, %struct.pca954x*) #1

declare dso_local i32 @device_create_file(%struct.device*, i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i8*, i32) #1

declare dso_local i32 @pca954x_cleanup(%struct.i2c_mux_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
