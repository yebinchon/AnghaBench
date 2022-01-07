; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3642.c_lm3642_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3642.c_lm3642_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.lm3642_platform_data = type { i32, i32, i32 }
%struct.lm3642_chip_data = type { %struct.TYPE_3__, %struct.TYPE_3__, i32*, %struct.TYPE_3__, i32, i32, i32, i32, i32, %struct.lm3642_platform_data* }
%struct.TYPE_3__ = type { i8*, i32, i8*, i32, i32 }
%struct.device = type { i32 }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"i2c functionality check fail.\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"needs Platform Data.\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lm3642_regmap = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"flash\00", align 1
@lm3642_strobe_brightness_set = common dso_local global i32 0, align 4
@lm3642_flash_groups = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"failed to register flash\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"torch\00", align 1
@lm3642_torch_brightness_set = common dso_local global i32 0, align 4
@lm3642_torch_groups = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"failed to register torch\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"indicator\00", align 1
@lm3642_indicator_brightness_set = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"failed to register indicator\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"LM3642 is initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lm3642_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3642_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.lm3642_platform_data*, align 8
  %7 = alloca %struct.lm3642_chip_data*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = call %struct.lm3642_platform_data* @dev_get_platdata(i32* %10)
  store %struct.lm3642_platform_data* %11, %struct.lm3642_platform_data** %6, align 8
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
  br label %197

24:                                               ; preds = %2
  %25 = load %struct.lm3642_platform_data*, %struct.lm3642_platform_data** %6, align 8
  %26 = icmp eq %struct.lm3642_platform_data* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = call i32 (i32*, i8*, ...) @dev_err(i32* %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @ENODATA, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %197

33:                                               ; preds = %24
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.lm3642_chip_data* @devm_kzalloc(i32* %35, i32 136, i32 %36)
  store %struct.lm3642_chip_data* %37, %struct.lm3642_chip_data** %7, align 8
  %38 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %7, align 8
  %39 = icmp ne %struct.lm3642_chip_data* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %197

43:                                               ; preds = %33
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %44, i32 0, i32 0
  %46 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %7, align 8
  %47 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %46, i32 0, i32 2
  store i32* %45, i32** %47, align 8
  %48 = load %struct.lm3642_platform_data*, %struct.lm3642_platform_data** %6, align 8
  %49 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %7, align 8
  %50 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %49, i32 0, i32 9
  store %struct.lm3642_platform_data* %48, %struct.lm3642_platform_data** %50, align 8
  %51 = load %struct.lm3642_platform_data*, %struct.lm3642_platform_data** %6, align 8
  %52 = getelementptr inbounds %struct.lm3642_platform_data, %struct.lm3642_platform_data* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %7, align 8
  %55 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %54, i32 0, i32 8
  store i32 %53, i32* %55, align 8
  %56 = load %struct.lm3642_platform_data*, %struct.lm3642_platform_data** %6, align 8
  %57 = getelementptr inbounds %struct.lm3642_platform_data, %struct.lm3642_platform_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %7, align 8
  %60 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %59, i32 0, i32 7
  store i32 %58, i32* %60, align 4
  %61 = load %struct.lm3642_platform_data*, %struct.lm3642_platform_data** %6, align 8
  %62 = getelementptr inbounds %struct.lm3642_platform_data, %struct.lm3642_platform_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %7, align 8
  %65 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 8
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %66, i32* @lm3642_regmap)
  %68 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %7, align 8
  %69 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 4
  %70 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %7, align 8
  %71 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @IS_ERR(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %43
  %76 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %7, align 8
  %77 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @PTR_ERR(i32 %78)
  store i32 %79, i32* %8, align 4
  %80 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %81 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %80, i32 0, i32 0
  %82 = load i32, i32* %8, align 4
  %83 = call i32 (i32*, i8*, ...) @dev_err(i32* %81, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %3, align 4
  br label %197

85:                                               ; preds = %43
  %86 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %7, align 8
  %87 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %86, i32 0, i32 4
  %88 = call i32 @mutex_init(i32* %87)
  %89 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %90 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %7, align 8
  %91 = call i32 @i2c_set_clientdata(%struct.i2c_client* %89, %struct.lm3642_chip_data* %90)
  %92 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %7, align 8
  %93 = call i32 @lm3642_chip_init(%struct.lm3642_chip_data* %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %85
  br label %195

97:                                               ; preds = %85
  %98 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %7, align 8
  %99 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %100, align 8
  %101 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %7, align 8
  %102 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  store i32 16, i32* %103, align 8
  %104 = load i32, i32* @lm3642_strobe_brightness_set, align 4
  %105 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %7, align 8
  %106 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 3
  store i32 %104, i32* %107, align 8
  %108 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %7, align 8
  %109 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %110, align 8
  %111 = load i32, i32* @lm3642_flash_groups, align 4
  %112 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %7, align 8
  %113 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 4
  store i32 %111, i32* %114, align 4
  %115 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %116 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %115, i32 0, i32 0
  %117 = bitcast i32* %116 to %struct.device*
  %118 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %7, align 8
  %119 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %118, i32 0, i32 0
  %120 = call i32 @led_classdev_register(%struct.device* %117, %struct.TYPE_3__* %119)
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %97
  %124 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %7, align 8
  %125 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 (i32*, i8*, ...) @dev_err(i32* %126, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %195

128:                                              ; preds = %97
  %129 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %7, align 8
  %130 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %131, align 8
  %132 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %7, align 8
  %133 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  store i32 8, i32* %134, align 8
  %135 = load i32, i32* @lm3642_torch_brightness_set, align 4
  %136 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %7, align 8
  %137 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 3
  store i32 %135, i32* %138, align 8
  %139 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %7, align 8
  %140 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %141, align 8
  %142 = load i32, i32* @lm3642_torch_groups, align 4
  %143 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %7, align 8
  %144 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 4
  store i32 %142, i32* %145, align 4
  %146 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %147 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %146, i32 0, i32 0
  %148 = bitcast i32* %147 to %struct.device*
  %149 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %7, align 8
  %150 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %149, i32 0, i32 1
  %151 = call i32 @led_classdev_register(%struct.device* %148, %struct.TYPE_3__* %150)
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %8, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %128
  %155 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %7, align 8
  %156 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = call i32 (i32*, i8*, ...) @dev_err(i32* %157, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %191

159:                                              ; preds = %128
  %160 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %7, align 8
  %161 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %162, align 8
  %163 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %7, align 8
  %164 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 1
  store i32 8, i32* %165, align 8
  %166 = load i32, i32* @lm3642_indicator_brightness_set, align 4
  %167 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %7, align 8
  %168 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 3
  store i32 %166, i32* %169, align 8
  %170 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %171 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %170, i32 0, i32 0
  %172 = bitcast i32* %171 to %struct.device*
  %173 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %7, align 8
  %174 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %173, i32 0, i32 3
  %175 = call i32 @led_classdev_register(%struct.device* %172, %struct.TYPE_3__* %174)
  store i32 %175, i32* %8, align 4
  %176 = load i32, i32* %8, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %159
  %179 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %7, align 8
  %180 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %179, i32 0, i32 2
  %181 = load i32*, i32** %180, align 8
  %182 = call i32 (i32*, i8*, ...) @dev_err(i32* %181, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  br label %187

183:                                              ; preds = %159
  %184 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %185 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %184, i32 0, i32 0
  %186 = call i32 @dev_info(i32* %185, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %197

187:                                              ; preds = %178
  %188 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %7, align 8
  %189 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %188, i32 0, i32 1
  %190 = call i32 @led_classdev_unregister(%struct.TYPE_3__* %189)
  br label %191

191:                                              ; preds = %187, %154
  %192 = load %struct.lm3642_chip_data*, %struct.lm3642_chip_data** %7, align 8
  %193 = getelementptr inbounds %struct.lm3642_chip_data, %struct.lm3642_chip_data* %192, i32 0, i32 0
  %194 = call i32 @led_classdev_unregister(%struct.TYPE_3__* %193)
  br label %195

195:                                              ; preds = %191, %123, %96
  %196 = load i32, i32* %8, align 4
  store i32 %196, i32* %3, align 4
  br label %197

197:                                              ; preds = %195, %183, %75, %40, %27, %18
  %198 = load i32, i32* %3, align 4
  ret i32 %198
}

declare dso_local %struct.lm3642_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.lm3642_chip_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.lm3642_chip_data*) #1

declare dso_local i32 @lm3642_chip_init(%struct.lm3642_chip_data*) #1

declare dso_local i32 @led_classdev_register(%struct.device*, %struct.TYPE_3__*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @led_classdev_unregister(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
