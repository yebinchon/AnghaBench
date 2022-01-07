; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max732x.c_max732x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max732x.c_max732x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.max732x_platform_data = type { i32 (%struct.i2c_client.0*, i32, i32, i32)*, i32, i32 }
%struct.i2c_client.0 = type opaque
%struct.max732x_chip = type { %struct.TYPE_11__, i32*, i32, %struct.i2c_client*, %struct.i2c_client*, %struct.i2c_client*, %struct.i2c_client* }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__* }

@.str = private unnamed_addr constant [18 x i8] c"no platform data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to allocate I2C device\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"invalid I2C address specified %02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Failed to allocate second group I2C device\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"setup failed, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @max732x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max732x_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.max732x_platform_data*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.max732x_chip*, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 1
  %16 = call %struct.max732x_platform_data* @dev_get_platdata(%struct.TYPE_10__* %15)
  store %struct.max732x_platform_data* %16, %struct.max732x_platform_data** %6, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.device_node*, %struct.device_node** %19, align 8
  store %struct.device_node* %20, %struct.device_node** %7, align 8
  %21 = load %struct.max732x_platform_data*, %struct.max732x_platform_data** %6, align 8
  %22 = icmp ne %struct.max732x_platform_data* %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %2
  %24 = load %struct.device_node*, %struct.device_node** %7, align 8
  %25 = icmp ne %struct.device_node* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 1
  %29 = call %struct.max732x_platform_data* @of_gpio_max732x(%struct.TYPE_10__* %28)
  store %struct.max732x_platform_data* %29, %struct.max732x_platform_data** %6, align 8
  br label %30

30:                                               ; preds = %26, %23, %2
  %31 = load %struct.max732x_platform_data*, %struct.max732x_platform_data** %6, align 8
  %32 = icmp ne %struct.max732x_platform_data* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 1
  %36 = call i32 @dev_dbg(%struct.TYPE_10__* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %251

39:                                               ; preds = %30
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 1
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.max732x_chip* @devm_kzalloc(%struct.TYPE_10__* %41, i32 64, i32 %42)
  store %struct.max732x_chip* %43, %struct.max732x_chip** %8, align 8
  %44 = load %struct.max732x_chip*, %struct.max732x_chip** %8, align 8
  %45 = icmp eq %struct.max732x_chip* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %251

49:                                               ; preds = %39
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = load %struct.max732x_chip*, %struct.max732x_chip** %8, align 8
  %52 = getelementptr inbounds %struct.max732x_chip, %struct.max732x_chip* %51, i32 0, i32 6
  store %struct.i2c_client* %50, %struct.i2c_client** %52, align 8
  %53 = load %struct.max732x_chip*, %struct.max732x_chip** %8, align 8
  %54 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %55 = load %struct.max732x_platform_data*, %struct.max732x_platform_data** %6, align 8
  %56 = getelementptr inbounds %struct.max732x_platform_data, %struct.max732x_platform_data* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @max732x_setup_gpio(%struct.max732x_chip* %53, %struct.i2c_device_id* %54, i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %59, i32 0, i32 1
  %61 = load %struct.max732x_chip*, %struct.max732x_chip** %8, align 8
  %62 = getelementptr inbounds %struct.max732x_chip, %struct.max732x_chip* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  store %struct.TYPE_10__* %60, %struct.TYPE_10__** %63, align 8
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, 15
  %68 = or i32 %67, 96
  store i32 %68, i32* %10, align 4
  %69 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %70 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, 15
  %73 = or i32 %72, 80
  store i32 %73, i32* %11, align 4
  %74 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %75 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, 112
  switch i32 %77, label %138 [
    i32 96, label %78
    i32 80, label %108
  ]

78:                                               ; preds = %49
  %79 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %80 = load %struct.max732x_chip*, %struct.max732x_chip** %8, align 8
  %81 = getelementptr inbounds %struct.max732x_chip, %struct.max732x_chip* %80, i32 0, i32 4
  store %struct.i2c_client* %79, %struct.i2c_client** %81, align 8
  %82 = load i32, i32* %13, align 4
  %83 = icmp sgt i32 %82, 8
  br i1 %83, label %84, label %107

84:                                               ; preds = %78
  %85 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %86 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %85, i32 0, i32 1
  %87 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %88 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = call %struct.i2c_client* @devm_i2c_new_dummy_device(%struct.TYPE_10__* %86, i32 %89, i32 %90)
  store %struct.i2c_client* %91, %struct.i2c_client** %9, align 8
  %92 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %93 = call i32 @IS_ERR(%struct.i2c_client* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %84
  %96 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %97 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %96, i32 0, i32 1
  %98 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %97, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %99 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %100 = call i32 @PTR_ERR(%struct.i2c_client* %99)
  store i32 %100, i32* %3, align 4
  br label %251

101:                                              ; preds = %84
  %102 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %103 = load %struct.max732x_chip*, %struct.max732x_chip** %8, align 8
  %104 = getelementptr inbounds %struct.max732x_chip, %struct.max732x_chip* %103, i32 0, i32 3
  store %struct.i2c_client* %102, %struct.i2c_client** %104, align 8
  %105 = load %struct.max732x_chip*, %struct.max732x_chip** %8, align 8
  %106 = getelementptr inbounds %struct.max732x_chip, %struct.max732x_chip* %105, i32 0, i32 5
  store %struct.i2c_client* %102, %struct.i2c_client** %106, align 8
  br label %107

107:                                              ; preds = %101, %78
  br label %147

108:                                              ; preds = %49
  %109 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %110 = load %struct.max732x_chip*, %struct.max732x_chip** %8, align 8
  %111 = getelementptr inbounds %struct.max732x_chip, %struct.max732x_chip* %110, i32 0, i32 5
  store %struct.i2c_client* %109, %struct.i2c_client** %111, align 8
  %112 = load i32, i32* %13, align 4
  %113 = icmp sgt i32 %112, 8
  br i1 %113, label %114, label %137

114:                                              ; preds = %108
  %115 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %116 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %115, i32 0, i32 1
  %117 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %118 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = call %struct.i2c_client* @devm_i2c_new_dummy_device(%struct.TYPE_10__* %116, i32 %119, i32 %120)
  store %struct.i2c_client* %121, %struct.i2c_client** %9, align 8
  %122 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %123 = call i32 @IS_ERR(%struct.i2c_client* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %114
  %126 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %127 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %126, i32 0, i32 1
  %128 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %127, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %129 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %130 = call i32 @PTR_ERR(%struct.i2c_client* %129)
  store i32 %130, i32* %3, align 4
  br label %251

131:                                              ; preds = %114
  %132 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %133 = load %struct.max732x_chip*, %struct.max732x_chip** %8, align 8
  %134 = getelementptr inbounds %struct.max732x_chip, %struct.max732x_chip* %133, i32 0, i32 3
  store %struct.i2c_client* %132, %struct.i2c_client** %134, align 8
  %135 = load %struct.max732x_chip*, %struct.max732x_chip** %8, align 8
  %136 = getelementptr inbounds %struct.max732x_chip, %struct.max732x_chip* %135, i32 0, i32 4
  store %struct.i2c_client* %132, %struct.i2c_client** %136, align 8
  br label %137

137:                                              ; preds = %131, %108
  br label %147

138:                                              ; preds = %49
  %139 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %140 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %139, i32 0, i32 1
  %141 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %142 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %140, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %3, align 4
  br label %251

147:                                              ; preds = %137, %107
  %148 = load i32, i32* %13, align 4
  %149 = icmp sgt i32 %148, 8
  br i1 %149, label %150, label %161

150:                                              ; preds = %147
  %151 = load %struct.max732x_chip*, %struct.max732x_chip** %8, align 8
  %152 = getelementptr inbounds %struct.max732x_chip, %struct.max732x_chip* %151, i32 0, i32 3
  %153 = load %struct.i2c_client*, %struct.i2c_client** %152, align 8
  %154 = icmp ne %struct.i2c_client* %153, null
  br i1 %154, label %161, label %155

155:                                              ; preds = %150
  %156 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %157 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %156, i32 0, i32 1
  %158 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %157, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %159 = load i32, i32* @ENODEV, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %3, align 4
  br label %251

161:                                              ; preds = %150, %147
  %162 = load %struct.max732x_chip*, %struct.max732x_chip** %8, align 8
  %163 = getelementptr inbounds %struct.max732x_chip, %struct.max732x_chip* %162, i32 0, i32 2
  %164 = call i32 @mutex_init(i32* %163)
  %165 = load %struct.max732x_chip*, %struct.max732x_chip** %8, align 8
  %166 = load %struct.max732x_chip*, %struct.max732x_chip** %8, align 8
  %167 = call i32 @is_group_a(%struct.max732x_chip* %166, i32 0)
  %168 = load %struct.max732x_chip*, %struct.max732x_chip** %8, align 8
  %169 = getelementptr inbounds %struct.max732x_chip, %struct.max732x_chip* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = call i32 @max732x_readb(%struct.max732x_chip* %165, i32 %167, i32* %171)
  store i32 %172, i32* %12, align 4
  %173 = load i32, i32* %12, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %161
  %176 = load i32, i32* %12, align 4
  store i32 %176, i32* %3, align 4
  br label %251

177:                                              ; preds = %161
  %178 = load i32, i32* %13, align 4
  %179 = icmp sgt i32 %178, 8
  br i1 %179, label %180, label %194

180:                                              ; preds = %177
  %181 = load %struct.max732x_chip*, %struct.max732x_chip** %8, align 8
  %182 = load %struct.max732x_chip*, %struct.max732x_chip** %8, align 8
  %183 = call i32 @is_group_a(%struct.max732x_chip* %182, i32 8)
  %184 = load %struct.max732x_chip*, %struct.max732x_chip** %8, align 8
  %185 = getelementptr inbounds %struct.max732x_chip, %struct.max732x_chip* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 1
  %188 = call i32 @max732x_readb(%struct.max732x_chip* %181, i32 %183, i32* %187)
  store i32 %188, i32* %12, align 4
  %189 = load i32, i32* %12, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %180
  %192 = load i32, i32* %12, align 4
  store i32 %192, i32* %3, align 4
  br label %251

193:                                              ; preds = %180
  br label %194

194:                                              ; preds = %193, %177
  %195 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %196 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %195, i32 0, i32 1
  %197 = load %struct.max732x_chip*, %struct.max732x_chip** %8, align 8
  %198 = getelementptr inbounds %struct.max732x_chip, %struct.max732x_chip* %197, i32 0, i32 0
  %199 = load %struct.max732x_chip*, %struct.max732x_chip** %8, align 8
  %200 = call i32 @devm_gpiochip_add_data(%struct.TYPE_10__* %196, %struct.TYPE_11__* %198, %struct.max732x_chip* %199)
  store i32 %200, i32* %12, align 4
  %201 = load i32, i32* %12, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %194
  %204 = load i32, i32* %12, align 4
  store i32 %204, i32* %3, align 4
  br label %251

205:                                              ; preds = %194
  %206 = load %struct.max732x_chip*, %struct.max732x_chip** %8, align 8
  %207 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %208 = call i32 @max732x_irq_setup(%struct.max732x_chip* %206, %struct.i2c_device_id* %207)
  store i32 %208, i32* %12, align 4
  %209 = load i32, i32* %12, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %205
  %212 = load i32, i32* %12, align 4
  store i32 %212, i32* %3, align 4
  br label %251

213:                                              ; preds = %205
  %214 = load %struct.max732x_platform_data*, %struct.max732x_platform_data** %6, align 8
  %215 = icmp ne %struct.max732x_platform_data* %214, null
  br i1 %215, label %216, label %247

216:                                              ; preds = %213
  %217 = load %struct.max732x_platform_data*, %struct.max732x_platform_data** %6, align 8
  %218 = getelementptr inbounds %struct.max732x_platform_data, %struct.max732x_platform_data* %217, i32 0, i32 0
  %219 = load i32 (%struct.i2c_client.0*, i32, i32, i32)*, i32 (%struct.i2c_client.0*, i32, i32, i32)** %218, align 8
  %220 = icmp ne i32 (%struct.i2c_client.0*, i32, i32, i32)* %219, null
  br i1 %220, label %221, label %247

221:                                              ; preds = %216
  %222 = load %struct.max732x_platform_data*, %struct.max732x_platform_data** %6, align 8
  %223 = getelementptr inbounds %struct.max732x_platform_data, %struct.max732x_platform_data* %222, i32 0, i32 0
  %224 = load i32 (%struct.i2c_client.0*, i32, i32, i32)*, i32 (%struct.i2c_client.0*, i32, i32, i32)** %223, align 8
  %225 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %226 = bitcast %struct.i2c_client* %225 to %struct.i2c_client.0*
  %227 = load %struct.max732x_chip*, %struct.max732x_chip** %8, align 8
  %228 = getelementptr inbounds %struct.max732x_chip, %struct.max732x_chip* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.max732x_chip*, %struct.max732x_chip** %8, align 8
  %232 = getelementptr inbounds %struct.max732x_chip, %struct.max732x_chip* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.max732x_platform_data*, %struct.max732x_platform_data** %6, align 8
  %236 = getelementptr inbounds %struct.max732x_platform_data, %struct.max732x_platform_data* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = call i32 %224(%struct.i2c_client.0* %226, i32 %230, i32 %234, i32 %237)
  store i32 %238, i32* %12, align 4
  %239 = load i32, i32* %12, align 4
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %246

241:                                              ; preds = %221
  %242 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %243 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %242, i32 0, i32 1
  %244 = load i32, i32* %12, align 4
  %245 = call i32 @dev_warn(%struct.TYPE_10__* %243, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %244)
  br label %246

246:                                              ; preds = %241, %221
  br label %247

247:                                              ; preds = %246, %216, %213
  %248 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %249 = load %struct.max732x_chip*, %struct.max732x_chip** %8, align 8
  %250 = call i32 @i2c_set_clientdata(%struct.i2c_client* %248, %struct.max732x_chip* %249)
  store i32 0, i32* %3, align 4
  br label %251

251:                                              ; preds = %247, %211, %203, %191, %175, %155, %138, %125, %95, %46, %33
  %252 = load i32, i32* %3, align 4
  ret i32 %252
}

declare dso_local %struct.max732x_platform_data* @dev_get_platdata(%struct.TYPE_10__*) #1

declare dso_local %struct.max732x_platform_data* @of_gpio_max732x(%struct.TYPE_10__*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_10__*, i8*) #1

declare dso_local %struct.max732x_chip* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @max732x_setup_gpio(%struct.max732x_chip*, %struct.i2c_device_id*, i32) #1

declare dso_local %struct.i2c_client* @devm_i2c_new_dummy_device(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @IS_ERR(%struct.i2c_client*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.i2c_client*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @max732x_readb(%struct.max732x_chip*, i32, i32*) #1

declare dso_local i32 @is_group_a(%struct.max732x_chip*, i32) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_10__*, %struct.TYPE_11__*, %struct.max732x_chip*) #1

declare dso_local i32 @max732x_irq_setup(%struct.max732x_chip*, %struct.i2c_device_id*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.max732x_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
