; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm355x.c_lm355x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm355x.c_lm355x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.lm355x_platform_data = type { i32 }
%struct.lm355x_chip_data = type { i32, %struct.TYPE_3__, %struct.TYPE_3__, %struct.TYPE_3__, i32, i32, %struct.lm355x_platform_data*, i32, i32* }
%struct.TYPE_3__ = type { i8*, i32, i8*, i32, i32 }
%struct.device = type { i32 }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"i2c functionality check fail.\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"needs Platform Data.\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lm3554_regs = common dso_local global i32 0, align 4
@lm3556_regs = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@lm355x_regmap = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"flash\00", align 1
@lm355x_strobe_brightness_set = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"torch\00", align 1
@lm355x_torch_brightness_set = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"indicator\00", align 1
@lm355x_indicator_brightness_set = common dso_local global i32 0, align 4
@lm355x_indicator_groups = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"%s is initialized\0A\00", align 1
@lm355x_name = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lm355x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm355x_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.lm355x_platform_data*, align 8
  %7 = alloca %struct.lm355x_chip_data*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = call %struct.lm355x_platform_data* @dev_get_platdata(i32* %10)
  store %struct.lm355x_platform_data* %11, %struct.lm355x_platform_data** %6, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @I2C_FUNC_I2C, align 4
  %16 = call i32 @i2c_check_functionality(i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = call i32 (i32*, i8*, ...) @dev_err(i32* %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %209

24:                                               ; preds = %2
  %25 = load %struct.lm355x_platform_data*, %struct.lm355x_platform_data** %6, align 8
  %26 = icmp eq %struct.lm355x_platform_data* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = call i32 (i32*, i8*, ...) @dev_err(i32* %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @ENODATA, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %209

33:                                               ; preds = %24
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.lm355x_chip_data* @devm_kzalloc(i32* %35, i32 136, i32 %36)
  store %struct.lm355x_chip_data* %37, %struct.lm355x_chip_data** %7, align 8
  %38 = load %struct.lm355x_chip_data*, %struct.lm355x_chip_data** %7, align 8
  %39 = icmp ne %struct.lm355x_chip_data* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %209

43:                                               ; preds = %33
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %44, i32 0, i32 0
  %46 = load %struct.lm355x_chip_data*, %struct.lm355x_chip_data** %7, align 8
  %47 = getelementptr inbounds %struct.lm355x_chip_data, %struct.lm355x_chip_data* %46, i32 0, i32 8
  store i32* %45, i32** %47, align 8
  %48 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %49 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.lm355x_chip_data*, %struct.lm355x_chip_data** %7, align 8
  %52 = getelementptr inbounds %struct.lm355x_chip_data, %struct.lm355x_chip_data* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %54 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %64 [
    i32 129, label %56
    i32 128, label %60
  ]

56:                                               ; preds = %43
  %57 = load i32, i32* @lm3554_regs, align 4
  %58 = load %struct.lm355x_chip_data*, %struct.lm355x_chip_data** %7, align 8
  %59 = getelementptr inbounds %struct.lm355x_chip_data, %struct.lm355x_chip_data* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 8
  br label %67

60:                                               ; preds = %43
  %61 = load i32, i32* @lm3556_regs, align 4
  %62 = load %struct.lm355x_chip_data*, %struct.lm355x_chip_data** %7, align 8
  %63 = getelementptr inbounds %struct.lm355x_chip_data, %struct.lm355x_chip_data* %62, i32 0, i32 7
  store i32 %61, i32* %63, align 8
  br label %67

64:                                               ; preds = %43
  %65 = load i32, i32* @ENOSYS, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %209

67:                                               ; preds = %60, %56
  %68 = load %struct.lm355x_platform_data*, %struct.lm355x_platform_data** %6, align 8
  %69 = load %struct.lm355x_chip_data*, %struct.lm355x_chip_data** %7, align 8
  %70 = getelementptr inbounds %struct.lm355x_chip_data, %struct.lm355x_chip_data* %69, i32 0, i32 6
  store %struct.lm355x_platform_data* %68, %struct.lm355x_platform_data** %70, align 8
  %71 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %72 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %71, i32* @lm355x_regmap)
  %73 = load %struct.lm355x_chip_data*, %struct.lm355x_chip_data** %7, align 8
  %74 = getelementptr inbounds %struct.lm355x_chip_data, %struct.lm355x_chip_data* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 4
  %75 = load %struct.lm355x_chip_data*, %struct.lm355x_chip_data** %7, align 8
  %76 = getelementptr inbounds %struct.lm355x_chip_data, %struct.lm355x_chip_data* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @IS_ERR(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %67
  %81 = load %struct.lm355x_chip_data*, %struct.lm355x_chip_data** %7, align 8
  %82 = getelementptr inbounds %struct.lm355x_chip_data, %struct.lm355x_chip_data* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @PTR_ERR(i32 %83)
  store i32 %84, i32* %8, align 4
  %85 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %86 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %85, i32 0, i32 0
  %87 = load i32, i32* %8, align 4
  %88 = call i32 (i32*, i8*, ...) @dev_err(i32* %86, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %3, align 4
  br label %209

90:                                               ; preds = %67
  %91 = load %struct.lm355x_chip_data*, %struct.lm355x_chip_data** %7, align 8
  %92 = getelementptr inbounds %struct.lm355x_chip_data, %struct.lm355x_chip_data* %91, i32 0, i32 4
  %93 = call i32 @mutex_init(i32* %92)
  %94 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %95 = load %struct.lm355x_chip_data*, %struct.lm355x_chip_data** %7, align 8
  %96 = call i32 @i2c_set_clientdata(%struct.i2c_client* %94, %struct.lm355x_chip_data* %95)
  %97 = load %struct.lm355x_chip_data*, %struct.lm355x_chip_data** %7, align 8
  %98 = call i32 @lm355x_chip_init(%struct.lm355x_chip_data* %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %90
  br label %207

102:                                              ; preds = %90
  %103 = load %struct.lm355x_chip_data*, %struct.lm355x_chip_data** %7, align 8
  %104 = getelementptr inbounds %struct.lm355x_chip_data, %struct.lm355x_chip_data* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %105, align 8
  %106 = load %struct.lm355x_chip_data*, %struct.lm355x_chip_data** %7, align 8
  %107 = getelementptr inbounds %struct.lm355x_chip_data, %struct.lm355x_chip_data* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  store i32 16, i32* %108, align 8
  %109 = load i32, i32* @lm355x_strobe_brightness_set, align 4
  %110 = load %struct.lm355x_chip_data*, %struct.lm355x_chip_data** %7, align 8
  %111 = getelementptr inbounds %struct.lm355x_chip_data, %struct.lm355x_chip_data* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 4
  store i32 %109, i32* %112, align 4
  %113 = load %struct.lm355x_chip_data*, %struct.lm355x_chip_data** %7, align 8
  %114 = getelementptr inbounds %struct.lm355x_chip_data, %struct.lm355x_chip_data* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %115, align 8
  %116 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %117 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %116, i32 0, i32 0
  %118 = bitcast i32* %117 to %struct.device*
  %119 = load %struct.lm355x_chip_data*, %struct.lm355x_chip_data** %7, align 8
  %120 = getelementptr inbounds %struct.lm355x_chip_data, %struct.lm355x_chip_data* %119, i32 0, i32 1
  %121 = call i32 @led_classdev_register(%struct.device* %118, %struct.TYPE_3__* %120)
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %102
  br label %207

125:                                              ; preds = %102
  %126 = load %struct.lm355x_chip_data*, %struct.lm355x_chip_data** %7, align 8
  %127 = getelementptr inbounds %struct.lm355x_chip_data, %struct.lm355x_chip_data* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %128, align 8
  %129 = load %struct.lm355x_chip_data*, %struct.lm355x_chip_data** %7, align 8
  %130 = getelementptr inbounds %struct.lm355x_chip_data, %struct.lm355x_chip_data* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  store i32 8, i32* %131, align 8
  %132 = load i32, i32* @lm355x_torch_brightness_set, align 4
  %133 = load %struct.lm355x_chip_data*, %struct.lm355x_chip_data** %7, align 8
  %134 = getelementptr inbounds %struct.lm355x_chip_data, %struct.lm355x_chip_data* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 4
  store i32 %132, i32* %135, align 4
  %136 = load %struct.lm355x_chip_data*, %struct.lm355x_chip_data** %7, align 8
  %137 = getelementptr inbounds %struct.lm355x_chip_data, %struct.lm355x_chip_data* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %138, align 8
  %139 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %140 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %139, i32 0, i32 0
  %141 = bitcast i32* %140 to %struct.device*
  %142 = load %struct.lm355x_chip_data*, %struct.lm355x_chip_data** %7, align 8
  %143 = getelementptr inbounds %struct.lm355x_chip_data, %struct.lm355x_chip_data* %142, i32 0, i32 2
  %144 = call i32 @led_classdev_register(%struct.device* %141, %struct.TYPE_3__* %143)
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %8, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %125
  br label %203

148:                                              ; preds = %125
  %149 = load %struct.lm355x_chip_data*, %struct.lm355x_chip_data** %7, align 8
  %150 = getelementptr inbounds %struct.lm355x_chip_data, %struct.lm355x_chip_data* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %151, align 8
  %152 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %153 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %154, 129
  br i1 %155, label %156, label %160

156:                                              ; preds = %148
  %157 = load %struct.lm355x_chip_data*, %struct.lm355x_chip_data** %7, align 8
  %158 = getelementptr inbounds %struct.lm355x_chip_data, %struct.lm355x_chip_data* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 1
  store i32 4, i32* %159, align 8
  br label %164

160:                                              ; preds = %148
  %161 = load %struct.lm355x_chip_data*, %struct.lm355x_chip_data** %7, align 8
  %162 = getelementptr inbounds %struct.lm355x_chip_data, %struct.lm355x_chip_data* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 1
  store i32 8, i32* %163, align 8
  br label %164

164:                                              ; preds = %160, %156
  %165 = load i32, i32* @lm355x_indicator_brightness_set, align 4
  %166 = load %struct.lm355x_chip_data*, %struct.lm355x_chip_data** %7, align 8
  %167 = getelementptr inbounds %struct.lm355x_chip_data, %struct.lm355x_chip_data* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 4
  store i32 %165, i32* %168, align 4
  %169 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %170 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = icmp eq i32 %171, 128
  br i1 %172, label %173, label %178

173:                                              ; preds = %164
  %174 = load i32, i32* @lm355x_indicator_groups, align 4
  %175 = load %struct.lm355x_chip_data*, %struct.lm355x_chip_data** %7, align 8
  %176 = getelementptr inbounds %struct.lm355x_chip_data, %struct.lm355x_chip_data* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 3
  store i32 %174, i32* %177, align 8
  br label %178

178:                                              ; preds = %173, %164
  %179 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %180 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %179, i32 0, i32 0
  %181 = bitcast i32* %180 to %struct.device*
  %182 = load %struct.lm355x_chip_data*, %struct.lm355x_chip_data** %7, align 8
  %183 = getelementptr inbounds %struct.lm355x_chip_data, %struct.lm355x_chip_data* %182, i32 0, i32 3
  %184 = call i32 @led_classdev_register(%struct.device* %181, %struct.TYPE_3__* %183)
  store i32 %184, i32* %8, align 4
  %185 = load i32, i32* %8, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %178
  br label %199

188:                                              ; preds = %178
  %189 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %190 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %189, i32 0, i32 0
  %191 = load i32*, i32** @lm355x_name, align 8
  %192 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %193 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %191, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @dev_info(i32* %190, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %197)
  store i32 0, i32* %3, align 4
  br label %209

199:                                              ; preds = %187
  %200 = load %struct.lm355x_chip_data*, %struct.lm355x_chip_data** %7, align 8
  %201 = getelementptr inbounds %struct.lm355x_chip_data, %struct.lm355x_chip_data* %200, i32 0, i32 2
  %202 = call i32 @led_classdev_unregister(%struct.TYPE_3__* %201)
  br label %203

203:                                              ; preds = %199, %147
  %204 = load %struct.lm355x_chip_data*, %struct.lm355x_chip_data** %7, align 8
  %205 = getelementptr inbounds %struct.lm355x_chip_data, %struct.lm355x_chip_data* %204, i32 0, i32 1
  %206 = call i32 @led_classdev_unregister(%struct.TYPE_3__* %205)
  br label %207

207:                                              ; preds = %203, %124, %101
  %208 = load i32, i32* %8, align 4
  store i32 %208, i32* %3, align 4
  br label %209

209:                                              ; preds = %207, %188, %80, %64, %40, %27, %18
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local %struct.lm355x_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.lm355x_chip_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.lm355x_chip_data*) #1

declare dso_local i32 @lm355x_chip_init(%struct.lm355x_chip_data*) #1

declare dso_local i32 @led_classdev_register(%struct.device*, %struct.TYPE_3__*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @led_classdev_unregister(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
