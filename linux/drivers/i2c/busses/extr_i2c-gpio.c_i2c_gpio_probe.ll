; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-gpio.c_i2c_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-gpio.c_i2c_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.i2c_gpio_private_data = type { i8*, i8*, %struct.i2c_gpio_platform_data, %struct.i2c_algo_bit_data, %struct.i2c_adapter }
%struct.i2c_gpio_platform_data = type { i32, i32, i64, i64, i64 }
%struct.i2c_algo_bit_data = type { i32, i32, i32, %struct.i2c_gpio_private_data*, i32, i32, i32, i32 }
%struct.i2c_adapter = type { i32, i32, %struct.TYPE_2__, %struct.i2c_algo_bit_data*, i32, i32 }
%struct.TYPE_2__ = type { %struct.device_node*, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@GPIOD_OUT_HIGH_OPEN_DRAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"sda\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"scl\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"Slow GPIO pins might wreak havoc into I2C/SMBus bus timing\00", align 1
@i2c_gpio_setsda_val = common dso_local global i32 0, align 4
@i2c_gpio_setscl_val = common dso_local global i32 0, align 4
@i2c_gpio_getscl = common dso_local global i32 0, align 4
@i2c_gpio_getsda = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"i2c-gpio%d\00", align 1
@I2C_CLASS_HWMON = common dso_local global i32 0, align 4
@I2C_CLASS_SPD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"using lines %u (SDA) and %u (SCL%s)\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c", no clock stretching\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @i2c_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.i2c_gpio_private_data*, align 8
  %5 = alloca %struct.i2c_gpio_platform_data*, align 8
  %6 = alloca %struct.i2c_algo_bit_data*, align 8
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 1
  store %struct.device* %13, %struct.device** %8, align 8
  %14 = load %struct.device*, %struct.device** %8, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %9, align 8
  %17 = load %struct.device*, %struct.device** %8, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.i2c_gpio_private_data* @devm_kzalloc(%struct.device* %17, i32 128, i32 %18)
  store %struct.i2c_gpio_private_data* %19, %struct.i2c_gpio_private_data** %4, align 8
  %20 = load %struct.i2c_gpio_private_data*, %struct.i2c_gpio_private_data** %4, align 8
  %21 = icmp ne %struct.i2c_gpio_private_data* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %247

25:                                               ; preds = %1
  %26 = load %struct.i2c_gpio_private_data*, %struct.i2c_gpio_private_data** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_gpio_private_data, %struct.i2c_gpio_private_data* %26, i32 0, i32 4
  store %struct.i2c_adapter* %27, %struct.i2c_adapter** %7, align 8
  %28 = load %struct.i2c_gpio_private_data*, %struct.i2c_gpio_private_data** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_gpio_private_data, %struct.i2c_gpio_private_data* %28, i32 0, i32 3
  store %struct.i2c_algo_bit_data* %29, %struct.i2c_algo_bit_data** %6, align 8
  %30 = load %struct.i2c_gpio_private_data*, %struct.i2c_gpio_private_data** %4, align 8
  %31 = getelementptr inbounds %struct.i2c_gpio_private_data, %struct.i2c_gpio_private_data* %30, i32 0, i32 2
  store %struct.i2c_gpio_platform_data* %31, %struct.i2c_gpio_platform_data** %5, align 8
  %32 = load %struct.device_node*, %struct.device_node** %9, align 8
  %33 = icmp ne %struct.device_node* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = load %struct.device_node*, %struct.device_node** %9, align 8
  %36 = load %struct.i2c_gpio_platform_data*, %struct.i2c_gpio_platform_data** %5, align 8
  %37 = call i32 @of_i2c_gpio_get_props(%struct.device_node* %35, %struct.i2c_gpio_platform_data* %36)
  br label %48

38:                                               ; preds = %25
  %39 = load %struct.device*, %struct.device** %8, align 8
  %40 = call i64 @dev_get_platdata(%struct.device* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load %struct.i2c_gpio_platform_data*, %struct.i2c_gpio_platform_data** %5, align 8
  %44 = load %struct.device*, %struct.device** %8, align 8
  %45 = call i64 @dev_get_platdata(%struct.device* %44)
  %46 = call i32 @memcpy(%struct.i2c_gpio_platform_data* %43, i64 %45, i32 32)
  br label %47

47:                                               ; preds = %42, %38
  br label %48

48:                                               ; preds = %47, %34
  %49 = load %struct.i2c_gpio_platform_data*, %struct.i2c_gpio_platform_data** %5, align 8
  %50 = getelementptr inbounds %struct.i2c_gpio_platform_data, %struct.i2c_gpio_platform_data* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  store i32 %54, i32* %10, align 4
  br label %57

55:                                               ; preds = %48
  %56 = load i32, i32* @GPIOD_OUT_HIGH_OPEN_DRAIN, align 4
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = load %struct.device*, %struct.device** %8, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i8* @i2c_gpio_get_desc(%struct.device* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 0, i32 %59)
  %61 = load %struct.i2c_gpio_private_data*, %struct.i2c_gpio_private_data** %4, align 8
  %62 = getelementptr inbounds %struct.i2c_gpio_private_data, %struct.i2c_gpio_private_data* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load %struct.i2c_gpio_private_data*, %struct.i2c_gpio_private_data** %4, align 8
  %64 = getelementptr inbounds %struct.i2c_gpio_private_data, %struct.i2c_gpio_private_data* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @IS_ERR(i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %57
  %69 = load %struct.i2c_gpio_private_data*, %struct.i2c_gpio_private_data** %4, align 8
  %70 = getelementptr inbounds %struct.i2c_gpio_private_data, %struct.i2c_gpio_private_data* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @PTR_ERR(i8* %71)
  store i32 %72, i32* %2, align 4
  br label %247

73:                                               ; preds = %57
  %74 = load %struct.i2c_gpio_platform_data*, %struct.i2c_gpio_platform_data** %5, align 8
  %75 = getelementptr inbounds %struct.i2c_gpio_platform_data, %struct.i2c_gpio_platform_data* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  store i32 %79, i32* %10, align 4
  br label %82

80:                                               ; preds = %73
  %81 = load i32, i32* @GPIOD_OUT_HIGH_OPEN_DRAIN, align 4
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = load %struct.device*, %struct.device** %8, align 8
  %84 = load i32, i32* %10, align 4
  %85 = call i8* @i2c_gpio_get_desc(%struct.device* %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 %84)
  %86 = load %struct.i2c_gpio_private_data*, %struct.i2c_gpio_private_data** %4, align 8
  %87 = getelementptr inbounds %struct.i2c_gpio_private_data, %struct.i2c_gpio_private_data* %86, i32 0, i32 0
  store i8* %85, i8** %87, align 8
  %88 = load %struct.i2c_gpio_private_data*, %struct.i2c_gpio_private_data** %4, align 8
  %89 = getelementptr inbounds %struct.i2c_gpio_private_data, %struct.i2c_gpio_private_data* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @IS_ERR(i8* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %82
  %94 = load %struct.i2c_gpio_private_data*, %struct.i2c_gpio_private_data** %4, align 8
  %95 = getelementptr inbounds %struct.i2c_gpio_private_data, %struct.i2c_gpio_private_data* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @PTR_ERR(i8* %96)
  store i32 %97, i32* %2, align 4
  br label %247

98:                                               ; preds = %82
  %99 = load %struct.i2c_gpio_private_data*, %struct.i2c_gpio_private_data** %4, align 8
  %100 = getelementptr inbounds %struct.i2c_gpio_private_data, %struct.i2c_gpio_private_data* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = call i64 @gpiod_cansleep(i8* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %98
  %105 = load %struct.i2c_gpio_private_data*, %struct.i2c_gpio_private_data** %4, align 8
  %106 = getelementptr inbounds %struct.i2c_gpio_private_data, %struct.i2c_gpio_private_data* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i64 @gpiod_cansleep(i8* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %104, %98
  %111 = load %struct.device*, %struct.device** %8, align 8
  %112 = call i32 @dev_warn(%struct.device* %111, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  br label %116

113:                                              ; preds = %104
  %114 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %6, align 8
  %115 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %114, i32 0, i32 0
  store i32 1, i32* %115, align 8
  br label %116

116:                                              ; preds = %113, %110
  %117 = load i32, i32* @i2c_gpio_setsda_val, align 4
  %118 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %6, align 8
  %119 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %118, i32 0, i32 7
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* @i2c_gpio_setscl_val, align 4
  %121 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %6, align 8
  %122 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %121, i32 0, i32 6
  store i32 %120, i32* %122, align 8
  %123 = load %struct.i2c_gpio_platform_data*, %struct.i2c_gpio_platform_data** %5, align 8
  %124 = getelementptr inbounds %struct.i2c_gpio_platform_data, %struct.i2c_gpio_platform_data* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %116
  %128 = load i32, i32* @i2c_gpio_getscl, align 4
  %129 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %6, align 8
  %130 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %129, i32 0, i32 5
  store i32 %128, i32* %130, align 4
  br label %131

131:                                              ; preds = %127, %116
  %132 = load i32, i32* @i2c_gpio_getsda, align 4
  %133 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %6, align 8
  %134 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %133, i32 0, i32 4
  store i32 %132, i32* %134, align 8
  %135 = load %struct.i2c_gpio_platform_data*, %struct.i2c_gpio_platform_data** %5, align 8
  %136 = getelementptr inbounds %struct.i2c_gpio_platform_data, %struct.i2c_gpio_platform_data* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %131
  %140 = load %struct.i2c_gpio_platform_data*, %struct.i2c_gpio_platform_data** %5, align 8
  %141 = getelementptr inbounds %struct.i2c_gpio_platform_data, %struct.i2c_gpio_platform_data* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %6, align 8
  %144 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  br label %157

145:                                              ; preds = %131
  %146 = load %struct.i2c_gpio_platform_data*, %struct.i2c_gpio_platform_data** %5, align 8
  %147 = getelementptr inbounds %struct.i2c_gpio_platform_data, %struct.i2c_gpio_platform_data* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %6, align 8
  %152 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %151, i32 0, i32 1
  store i32 50, i32* %152, align 4
  br label %156

153:                                              ; preds = %145
  %154 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %6, align 8
  %155 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %154, i32 0, i32 1
  store i32 5, i32* %155, align 4
  br label %156

156:                                              ; preds = %153, %150
  br label %157

157:                                              ; preds = %156, %139
  %158 = load %struct.i2c_gpio_platform_data*, %struct.i2c_gpio_platform_data** %5, align 8
  %159 = getelementptr inbounds %struct.i2c_gpio_platform_data, %struct.i2c_gpio_platform_data* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %157
  %163 = load %struct.i2c_gpio_platform_data*, %struct.i2c_gpio_platform_data** %5, align 8
  %164 = getelementptr inbounds %struct.i2c_gpio_platform_data, %struct.i2c_gpio_platform_data* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %6, align 8
  %167 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 8
  br label %173

168:                                              ; preds = %157
  %169 = load i32, i32* @HZ, align 4
  %170 = sdiv i32 %169, 10
  %171 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %6, align 8
  %172 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %171, i32 0, i32 2
  store i32 %170, i32* %172, align 8
  br label %173

173:                                              ; preds = %168, %162
  %174 = load %struct.i2c_gpio_private_data*, %struct.i2c_gpio_private_data** %4, align 8
  %175 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %6, align 8
  %176 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %175, i32 0, i32 3
  store %struct.i2c_gpio_private_data* %174, %struct.i2c_gpio_private_data** %176, align 8
  %177 = load i32, i32* @THIS_MODULE, align 4
  %178 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %179 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %178, i32 0, i32 5
  store i32 %177, i32* %179, align 4
  %180 = load %struct.device_node*, %struct.device_node** %9, align 8
  %181 = icmp ne %struct.device_node* %180, null
  br i1 %181, label %182, label %189

182:                                              ; preds = %173
  %183 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %184 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.device*, %struct.device** %8, align 8
  %187 = call i32 @dev_name(%struct.device* %186)
  %188 = call i32 @strlcpy(i32 %185, i32 %187, i32 4)
  br label %197

189:                                              ; preds = %173
  %190 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %191 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %194 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @snprintf(i32 %192, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %195)
  br label %197

197:                                              ; preds = %189, %182
  %198 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %6, align 8
  %199 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %200 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %199, i32 0, i32 3
  store %struct.i2c_algo_bit_data* %198, %struct.i2c_algo_bit_data** %200, align 8
  %201 = load i32, i32* @I2C_CLASS_HWMON, align 4
  %202 = load i32, i32* @I2C_CLASS_SPD, align 4
  %203 = or i32 %201, %202
  %204 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %205 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 8
  %206 = load %struct.device*, %struct.device** %8, align 8
  %207 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %208 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 1
  store %struct.device* %206, %struct.device** %209, align 8
  %210 = load %struct.device_node*, %struct.device_node** %9, align 8
  %211 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %212 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 0
  store %struct.device_node* %210, %struct.device_node** %213, align 8
  %214 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %215 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %218 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %217, i32 0, i32 1
  store i32 %216, i32* %218, align 4
  %219 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %220 = call i32 @i2c_bit_add_numbered_bus(%struct.i2c_adapter* %219)
  store i32 %220, i32* %11, align 4
  %221 = load i32, i32* %11, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %197
  %224 = load i32, i32* %11, align 4
  store i32 %224, i32* %2, align 4
  br label %247

225:                                              ; preds = %197
  %226 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %227 = load %struct.i2c_gpio_private_data*, %struct.i2c_gpio_private_data** %4, align 8
  %228 = call i32 @platform_set_drvdata(%struct.platform_device* %226, %struct.i2c_gpio_private_data* %227)
  %229 = load %struct.device*, %struct.device** %8, align 8
  %230 = load %struct.i2c_gpio_private_data*, %struct.i2c_gpio_private_data** %4, align 8
  %231 = getelementptr inbounds %struct.i2c_gpio_private_data, %struct.i2c_gpio_private_data* %230, i32 0, i32 1
  %232 = load i8*, i8** %231, align 8
  %233 = call i32 @desc_to_gpio(i8* %232)
  %234 = load %struct.i2c_gpio_private_data*, %struct.i2c_gpio_private_data** %4, align 8
  %235 = getelementptr inbounds %struct.i2c_gpio_private_data, %struct.i2c_gpio_private_data* %234, i32 0, i32 0
  %236 = load i8*, i8** %235, align 8
  %237 = call i32 @desc_to_gpio(i8* %236)
  %238 = load %struct.i2c_gpio_platform_data*, %struct.i2c_gpio_platform_data** %5, align 8
  %239 = getelementptr inbounds %struct.i2c_gpio_platform_data, %struct.i2c_gpio_platform_data* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  %242 = zext i1 %241 to i64
  %243 = select i1 %241, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %244 = call i32 @dev_info(%struct.device* %229, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %233, i32 %237, i8* %243)
  %245 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %246 = call i32 @i2c_gpio_fault_injector_init(%struct.platform_device* %245)
  store i32 0, i32* %2, align 4
  br label %247

247:                                              ; preds = %225, %223, %93, %68, %22
  %248 = load i32, i32* %2, align 4
  ret i32 %248
}

declare dso_local %struct.i2c_gpio_private_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @of_i2c_gpio_get_props(%struct.device_node*, %struct.i2c_gpio_platform_data*) #1

declare dso_local i64 @dev_get_platdata(%struct.device*) #1

declare dso_local i32 @memcpy(%struct.i2c_gpio_platform_data*, i64, i32) #1

declare dso_local i8* @i2c_gpio_get_desc(%struct.device*, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i64 @gpiod_cansleep(i8*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @i2c_bit_add_numbered_bus(%struct.i2c_adapter*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.i2c_gpio_private_data*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32, i8*) #1

declare dso_local i32 @desc_to_gpio(i8*) #1

declare dso_local i32 @i2c_gpio_fault_injector_init(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
