; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pcf857x.c_pcf857x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pcf857x.c_pcf857x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_17__, i32, i32 }
%struct.TYPE_17__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.pcf857x_platform_data = type { i32, i32, i32 (%struct.i2c_client.0*, i32, i32, i32)*, i32 }
%struct.i2c_client.0 = type opaque
%struct.pcf857x = type { i32 (%struct.i2c_client.1*)*, i32, i32, %struct.TYPE_15__, %struct.TYPE_16__, %struct.i2c_client*, i32, i32 }
%struct.i2c_client.1 = type opaque
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i8*, i32, i32, i32, i8*, i8*, i8*, i32, i32 }

@CONFIG_OF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"lines-initial-states\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"no platform data\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@pcf857x_get = common dso_local global i32 0, align 4
@pcf857x_set = common dso_local global i32 0, align 4
@pcf857x_input = common dso_local global i32 0, align 4
@pcf857x_output = common dso_local global i32 0, align 4
@i2c_write_le8 = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BYTE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@i2c_write_le16 = common dso_local global i32 0, align 4
@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"unsupported number of gpios\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"pcf857x\00", align 1
@pcf857x_irq_enable = common dso_local global i32 0, align 4
@pcf857x_irq_disable = common dso_local global i32 0, align 4
@noop = common dso_local global i8* null, align 8
@pcf857x_irq_set_wake = common dso_local global i32 0, align 4
@pcf857x_irq_bus_lock = common dso_local global i32 0, align 4
@pcf857x_irq_bus_sync_unlock = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"cannot add irqchip\0A\00", align 1
@pcf857x_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"setup --> %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"probed\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"probe error %d for '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @pcf857x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf857x_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.pcf857x_platform_data*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.pcf857x*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 1
  %13 = call %struct.pcf857x_platform_data* @dev_get_platdata(%struct.TYPE_17__* %12)
  store %struct.pcf857x_platform_data* %13, %struct.pcf857x_platform_data** %6, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %7, align 8
  store i32 0, i32* %9, align 4
  %18 = load i32, i32* @CONFIG_OF, align 4
  %19 = call i64 @IS_ENABLED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.device_node*, %struct.device_node** %7, align 8
  %23 = icmp ne %struct.device_node* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %struct.device_node*, %struct.device_node** %7, align 8
  %26 = call i32 @of_property_read_u32(%struct.device_node* %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %9)
  br label %39

27:                                               ; preds = %21, %2
  %28 = load %struct.pcf857x_platform_data*, %struct.pcf857x_platform_data** %6, align 8
  %29 = icmp ne %struct.pcf857x_platform_data* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load %struct.pcf857x_platform_data*, %struct.pcf857x_platform_data** %6, align 8
  %32 = getelementptr inbounds %struct.pcf857x_platform_data, %struct.pcf857x_platform_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %9, align 4
  br label %38

34:                                               ; preds = %27
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 1
  %37 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_dbg(%struct.TYPE_17__* %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %34, %30
  br label %39

39:                                               ; preds = %38, %24
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 1
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.pcf857x* @devm_kzalloc(%struct.TYPE_17__* %41, i32 136, i32 %42)
  store %struct.pcf857x* %43, %struct.pcf857x** %8, align 8
  %44 = load %struct.pcf857x*, %struct.pcf857x** %8, align 8
  %45 = icmp ne %struct.pcf857x* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %320

49:                                               ; preds = %39
  %50 = load %struct.pcf857x*, %struct.pcf857x** %8, align 8
  %51 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %50, i32 0, i32 7
  %52 = call i32 @mutex_init(i32* %51)
  %53 = load %struct.pcf857x_platform_data*, %struct.pcf857x_platform_data** %6, align 8
  %54 = icmp ne %struct.pcf857x_platform_data* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load %struct.pcf857x_platform_data*, %struct.pcf857x_platform_data** %6, align 8
  %57 = getelementptr inbounds %struct.pcf857x_platform_data, %struct.pcf857x_platform_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  br label %60

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %55
  %61 = phi i32 [ %58, %55 ], [ -1, %59 ]
  %62 = load %struct.pcf857x*, %struct.pcf857x** %8, align 8
  %63 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  %65 = load %struct.pcf857x*, %struct.pcf857x** %8, align 8
  %66 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 1
  %70 = load %struct.pcf857x*, %struct.pcf857x** %8, align 8
  %71 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 9
  store %struct.TYPE_17__* %69, %struct.TYPE_17__** %72, align 8
  %73 = load i32, i32* @THIS_MODULE, align 4
  %74 = load %struct.pcf857x*, %struct.pcf857x** %8, align 8
  %75 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 8
  store i32 %73, i32* %76, align 8
  %77 = load i32, i32* @pcf857x_get, align 4
  %78 = load %struct.pcf857x*, %struct.pcf857x** %8, align 8
  %79 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 7
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* @pcf857x_set, align 4
  %82 = load %struct.pcf857x*, %struct.pcf857x** %8, align 8
  %83 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 6
  store i32 %81, i32* %84, align 8
  %85 = load i32, i32* @pcf857x_input, align 4
  %86 = load %struct.pcf857x*, %struct.pcf857x** %8, align 8
  %87 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 5
  store i32 %85, i32* %88, align 4
  %89 = load i32, i32* @pcf857x_output, align 4
  %90 = load %struct.pcf857x*, %struct.pcf857x** %8, align 8
  %91 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 4
  store i32 %89, i32* %92, align 8
  %93 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %94 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.pcf857x*, %struct.pcf857x** %8, align 8
  %97 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 2
  store i32 %95, i32* %98, align 8
  %99 = load %struct.pcf857x*, %struct.pcf857x** %8, align 8
  %100 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 8
  br i1 %103, label %104, label %123

104:                                              ; preds = %60
  %105 = load i32, i32* @i2c_write_le8, align 4
  %106 = load %struct.pcf857x*, %struct.pcf857x** %8, align 8
  %107 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %106, i32 0, i32 6
  store i32 %105, i32* %107, align 8
  %108 = load %struct.pcf857x*, %struct.pcf857x** %8, align 8
  %109 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %108, i32 0, i32 0
  store i32 (%struct.i2c_client.1*)* bitcast (i32 (%struct.i2c_client*)* @i2c_read_le8 to i32 (%struct.i2c_client.1*)*), i32 (%struct.i2c_client.1*)** %109, align 8
  %110 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %111 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @I2C_FUNC_SMBUS_BYTE, align 4
  %114 = call i32 @i2c_check_functionality(i32 %112, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %104
  %117 = load i32, i32* @EIO, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %10, align 4
  br label %122

119:                                              ; preds = %104
  %120 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %121 = call i32 @i2c_smbus_read_byte(%struct.i2c_client* %120)
  store i32 %121, i32* %10, align 4
  br label %122

122:                                              ; preds = %119, %116
  br label %155

123:                                              ; preds = %60
  %124 = load %struct.pcf857x*, %struct.pcf857x** %8, align 8
  %125 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = icmp eq i32 %127, 16
  br i1 %128, label %129, label %148

129:                                              ; preds = %123
  %130 = load i32, i32* @i2c_write_le16, align 4
  %131 = load %struct.pcf857x*, %struct.pcf857x** %8, align 8
  %132 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %131, i32 0, i32 6
  store i32 %130, i32* %132, align 8
  %133 = load %struct.pcf857x*, %struct.pcf857x** %8, align 8
  %134 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %133, i32 0, i32 0
  store i32 (%struct.i2c_client.1*)* bitcast (i32 (%struct.i2c_client*)* @i2c_read_le16 to i32 (%struct.i2c_client.1*)*), i32 (%struct.i2c_client.1*)** %134, align 8
  %135 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %136 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @I2C_FUNC_I2C, align 4
  %139 = call i32 @i2c_check_functionality(i32 %137, i32 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %129
  %142 = load i32, i32* @EIO, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %10, align 4
  br label %147

144:                                              ; preds = %129
  %145 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %146 = call i32 @i2c_read_le16(%struct.i2c_client* %145)
  store i32 %146, i32* %10, align 4
  br label %147

147:                                              ; preds = %144, %141
  br label %154

148:                                              ; preds = %123
  %149 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %150 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %149, i32 0, i32 1
  %151 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_dbg(%struct.TYPE_17__* %150, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %10, align 4
  br label %154

154:                                              ; preds = %148, %147
  br label %155

155:                                              ; preds = %154, %122
  %156 = load i32, i32* %10, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  br label %311

159:                                              ; preds = %155
  %160 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %161 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.pcf857x*, %struct.pcf857x** %8, align 8
  %164 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 3
  store i32 %162, i32* %165, align 4
  %166 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %167 = load %struct.pcf857x*, %struct.pcf857x** %8, align 8
  %168 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %167, i32 0, i32 5
  store %struct.i2c_client* %166, %struct.i2c_client** %168, align 8
  %169 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %170 = load %struct.pcf857x*, %struct.pcf857x** %8, align 8
  %171 = call i32 @i2c_set_clientdata(%struct.i2c_client* %169, %struct.pcf857x* %170)
  %172 = load i32, i32* %9, align 4
  %173 = xor i32 %172, -1
  %174 = load %struct.pcf857x*, %struct.pcf857x** %8, align 8
  %175 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 8
  %176 = load %struct.pcf857x*, %struct.pcf857x** %8, align 8
  %177 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.pcf857x*, %struct.pcf857x** %8, align 8
  %180 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 4
  %181 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %182 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %181, i32 0, i32 1
  %183 = load %struct.pcf857x*, %struct.pcf857x** %8, align 8
  %184 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %183, i32 0, i32 3
  %185 = load %struct.pcf857x*, %struct.pcf857x** %8, align 8
  %186 = call i32 @devm_gpiochip_add_data(%struct.TYPE_17__* %182, %struct.TYPE_15__* %184, %struct.pcf857x* %185)
  store i32 %186, i32* %10, align 4
  %187 = load i32, i32* %10, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %159
  br label %311

190:                                              ; preds = %159
  %191 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %192 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %273

195:                                              ; preds = %190
  %196 = load %struct.pcf857x*, %struct.pcf857x** %8, align 8
  %197 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %196, i32 0, i32 4
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %198, align 8
  %199 = load i32, i32* @pcf857x_irq_enable, align 4
  %200 = load %struct.pcf857x*, %struct.pcf857x** %8, align 8
  %201 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %200, i32 0, i32 4
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 8
  store i32 %199, i32* %202, align 4
  %203 = load i32, i32* @pcf857x_irq_disable, align 4
  %204 = load %struct.pcf857x*, %struct.pcf857x** %8, align 8
  %205 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %204, i32 0, i32 4
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 7
  store i32 %203, i32* %206, align 8
  %207 = load i8*, i8** @noop, align 8
  %208 = load %struct.pcf857x*, %struct.pcf857x** %8, align 8
  %209 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %208, i32 0, i32 4
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 6
  store i8* %207, i8** %210, align 8
  %211 = load i8*, i8** @noop, align 8
  %212 = load %struct.pcf857x*, %struct.pcf857x** %8, align 8
  %213 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %212, i32 0, i32 4
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 5
  store i8* %211, i8** %214, align 8
  %215 = load i8*, i8** @noop, align 8
  %216 = load %struct.pcf857x*, %struct.pcf857x** %8, align 8
  %217 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %216, i32 0, i32 4
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 4
  store i8* %215, i8** %218, align 8
  %219 = load i32, i32* @pcf857x_irq_set_wake, align 4
  %220 = load %struct.pcf857x*, %struct.pcf857x** %8, align 8
  %221 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %220, i32 0, i32 4
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 3
  store i32 %219, i32* %222, align 8
  %223 = load i32, i32* @pcf857x_irq_bus_lock, align 4
  %224 = load %struct.pcf857x*, %struct.pcf857x** %8, align 8
  %225 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %224, i32 0, i32 4
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 2
  store i32 %223, i32* %226, align 4
  %227 = load i32, i32* @pcf857x_irq_bus_sync_unlock, align 4
  %228 = load %struct.pcf857x*, %struct.pcf857x** %8, align 8
  %229 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %228, i32 0, i32 4
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 1
  store i32 %227, i32* %230, align 8
  %231 = load %struct.pcf857x*, %struct.pcf857x** %8, align 8
  %232 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %231, i32 0, i32 3
  %233 = load %struct.pcf857x*, %struct.pcf857x** %8, align 8
  %234 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %233, i32 0, i32 4
  %235 = load i32, i32* @handle_level_irq, align 4
  %236 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %237 = call i32 @gpiochip_irqchip_add_nested(%struct.TYPE_15__* %232, %struct.TYPE_16__* %234, i32 0, i32 %235, i32 %236)
  store i32 %237, i32* %10, align 4
  %238 = load i32, i32* %10, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %195
  %241 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %242 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %241, i32 0, i32 1
  %243 = call i32 @dev_err(%struct.TYPE_17__* %242, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %311

244:                                              ; preds = %195
  %245 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %246 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %245, i32 0, i32 1
  %247 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %248 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @pcf857x_irq, align 4
  %251 = load i32, i32* @IRQF_ONESHOT, align 4
  %252 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %253 = or i32 %251, %252
  %254 = load i32, i32* @IRQF_SHARED, align 4
  %255 = or i32 %253, %254
  %256 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %257 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %256, i32 0, i32 1
  %258 = call i32 @dev_name(%struct.TYPE_17__* %257)
  %259 = load %struct.pcf857x*, %struct.pcf857x** %8, align 8
  %260 = call i32 @devm_request_threaded_irq(%struct.TYPE_17__* %246, i32 %249, i32* null, i32 %250, i32 %255, i32 %258, %struct.pcf857x* %259)
  store i32 %260, i32* %10, align 4
  %261 = load i32, i32* %10, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %244
  br label %311

264:                                              ; preds = %244
  %265 = load %struct.pcf857x*, %struct.pcf857x** %8, align 8
  %266 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %265, i32 0, i32 3
  %267 = load %struct.pcf857x*, %struct.pcf857x** %8, align 8
  %268 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %267, i32 0, i32 4
  %269 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %270 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = call i32 @gpiochip_set_nested_irqchip(%struct.TYPE_15__* %266, %struct.TYPE_16__* %268, i32 %271)
  br label %273

273:                                              ; preds = %264, %190
  %274 = load %struct.pcf857x_platform_data*, %struct.pcf857x_platform_data** %6, align 8
  %275 = icmp ne %struct.pcf857x_platform_data* %274, null
  br i1 %275, label %276, label %307

276:                                              ; preds = %273
  %277 = load %struct.pcf857x_platform_data*, %struct.pcf857x_platform_data** %6, align 8
  %278 = getelementptr inbounds %struct.pcf857x_platform_data, %struct.pcf857x_platform_data* %277, i32 0, i32 2
  %279 = load i32 (%struct.i2c_client.0*, i32, i32, i32)*, i32 (%struct.i2c_client.0*, i32, i32, i32)** %278, align 8
  %280 = icmp ne i32 (%struct.i2c_client.0*, i32, i32, i32)* %279, null
  br i1 %280, label %281, label %307

281:                                              ; preds = %276
  %282 = load %struct.pcf857x_platform_data*, %struct.pcf857x_platform_data** %6, align 8
  %283 = getelementptr inbounds %struct.pcf857x_platform_data, %struct.pcf857x_platform_data* %282, i32 0, i32 2
  %284 = load i32 (%struct.i2c_client.0*, i32, i32, i32)*, i32 (%struct.i2c_client.0*, i32, i32, i32)** %283, align 8
  %285 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %286 = bitcast %struct.i2c_client* %285 to %struct.i2c_client.0*
  %287 = load %struct.pcf857x*, %struct.pcf857x** %8, align 8
  %288 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %287, i32 0, i32 3
  %289 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.pcf857x*, %struct.pcf857x** %8, align 8
  %292 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %291, i32 0, i32 3
  %293 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 8
  %295 = load %struct.pcf857x_platform_data*, %struct.pcf857x_platform_data** %6, align 8
  %296 = getelementptr inbounds %struct.pcf857x_platform_data, %struct.pcf857x_platform_data* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 8
  %298 = call i32 %284(%struct.i2c_client.0* %286, i32 %290, i32 %294, i32 %297)
  store i32 %298, i32* %10, align 4
  %299 = load i32, i32* %10, align 4
  %300 = icmp slt i32 %299, 0
  br i1 %300, label %301, label %306

301:                                              ; preds = %281
  %302 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %303 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %302, i32 0, i32 1
  %304 = load i32, i32* %10, align 4
  %305 = call i32 @dev_warn(%struct.TYPE_17__* %303, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %304)
  br label %306

306:                                              ; preds = %301, %281
  br label %307

307:                                              ; preds = %306, %276, %273
  %308 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %309 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %308, i32 0, i32 1
  %310 = call i32 @dev_info(%struct.TYPE_17__* %309, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %320

311:                                              ; preds = %263, %240, %189, %158
  %312 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %313 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %312, i32 0, i32 1
  %314 = load i32, i32* %10, align 4
  %315 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %316 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_dbg(%struct.TYPE_17__* %313, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %314, i32 %317)
  %319 = load i32, i32* %10, align 4
  store i32 %319, i32* %3, align 4
  br label %320

320:                                              ; preds = %311, %307, %46
  %321 = load i32, i32* %3, align 4
  ret i32 %321
}

declare dso_local %struct.pcf857x_platform_data* @dev_get_platdata(%struct.TYPE_17__*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_17__*, i8*, ...) #1

declare dso_local %struct.pcf857x* @devm_kzalloc(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @i2c_read_le8(%struct.i2c_client*) #1

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @i2c_smbus_read_byte(%struct.i2c_client*) #1

declare dso_local i32 @i2c_read_le16(%struct.i2c_client*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.pcf857x*) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_17__*, %struct.TYPE_15__*, %struct.pcf857x*) #1

declare dso_local i32 @gpiochip_irqchip_add_nested(%struct.TYPE_15__*, %struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_17__*, i32, i32*, i32, i32, i32, %struct.pcf857x*) #1

declare dso_local i32 @dev_name(%struct.TYPE_17__*) #1

declare dso_local i32 @gpiochip_set_nested_irqchip(%struct.TYPE_15__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_17__*, i8*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_17__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
