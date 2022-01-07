; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-adp5588.c_adp5588_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-adp5588.c_adp5588_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i64, i32, i32 }
%struct.adp5588_gpio_platform_data = type { i32, i32, i32 (%struct.i2c_client*, i32, i32, i32)*, i32, i32 }
%struct.adp5588_gpio = type { %struct.gpio_chip, i8**, i8**, %struct.i2c_client*, i32 }
%struct.gpio_chip = type { i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"SMBUS Byte Data not Supported\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@adp5588_gpio_direction_input = common dso_local global i32 0, align 4
@adp5588_gpio_direction_output = common dso_local global i32 0, align 4
@adp5588_gpio_get_value = common dso_local global i32 0, align 4
@adp5588_gpio_set_value = common dso_local global i32 0, align 4
@ADP5588_MAXGPIO = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@DEV_ID = common dso_local global i64 0, align 8
@ADP5588_DEVICE_ID_MASK = common dso_local global i32 0, align 4
@GPIO_DAT_OUT1 = common dso_local global i64 0, align 8
@GPIO_DIR1 = common dso_local global i64 0, align 8
@KP_GPIO1 = common dso_local global i64 0, align 8
@GPIO_PULL1 = common dso_local global i64 0, align 8
@GPIO_INT_EN1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"GPIO int not supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"setup failed, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @adp5588_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp5588_gpio_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.adp5588_gpio_platform_data*, align 8
  %5 = alloca %struct.adp5588_gpio*, align 8
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = call %struct.adp5588_gpio_platform_data* @dev_get_platdata(i32* %12)
  store %struct.adp5588_gpio_platform_data* %13, %struct.adp5588_gpio_platform_data** %4, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %18 = call i32 @i2c_check_functionality(i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %242

26:                                               ; preds = %1
  %27 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.adp5588_gpio* @devm_kzalloc(i32* %28, i32 80, i32 %29)
  store %struct.adp5588_gpio* %30, %struct.adp5588_gpio** %5, align 8
  %31 = load %struct.adp5588_gpio*, %struct.adp5588_gpio** %5, align 8
  %32 = icmp ne %struct.adp5588_gpio* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %242

36:                                               ; preds = %26
  %37 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %38 = load %struct.adp5588_gpio*, %struct.adp5588_gpio** %5, align 8
  %39 = getelementptr inbounds %struct.adp5588_gpio, %struct.adp5588_gpio* %38, i32 0, i32 3
  store %struct.i2c_client* %37, %struct.i2c_client** %39, align 8
  %40 = load %struct.adp5588_gpio*, %struct.adp5588_gpio** %5, align 8
  %41 = getelementptr inbounds %struct.adp5588_gpio, %struct.adp5588_gpio* %40, i32 0, i32 0
  store %struct.gpio_chip* %41, %struct.gpio_chip** %6, align 8
  %42 = load i32, i32* @adp5588_gpio_direction_input, align 4
  %43 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %44 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %43, i32 0, i32 10
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @adp5588_gpio_direction_output, align 4
  %46 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %47 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %46, i32 0, i32 9
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @adp5588_gpio_get_value, align 4
  %49 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %50 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %49, i32 0, i32 8
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @adp5588_gpio_set_value, align 4
  %52 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %53 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %52, i32 0, i32 7
  store i32 %51, i32* %53, align 8
  %54 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %55 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %57 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %56, i32 0, i32 1
  store i32 -1, i32* %57, align 4
  %58 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %59 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %58, i32 0, i32 0
  %60 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %61 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %60, i32 0, i32 6
  store i32* %59, i32** %61, align 8
  %62 = load %struct.adp5588_gpio_platform_data*, %struct.adp5588_gpio_platform_data** %4, align 8
  %63 = icmp ne %struct.adp5588_gpio_platform_data* %62, null
  br i1 %63, label %64, label %78

64:                                               ; preds = %36
  %65 = load %struct.adp5588_gpio_platform_data*, %struct.adp5588_gpio_platform_data** %4, align 8
  %66 = getelementptr inbounds %struct.adp5588_gpio_platform_data, %struct.adp5588_gpio_platform_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %69 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.adp5588_gpio_platform_data*, %struct.adp5588_gpio_platform_data** %4, align 8
  %71 = getelementptr inbounds %struct.adp5588_gpio_platform_data, %struct.adp5588_gpio_platform_data* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %74 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 4
  %75 = load %struct.adp5588_gpio_platform_data*, %struct.adp5588_gpio_platform_data** %4, align 8
  %76 = getelementptr inbounds %struct.adp5588_gpio_platform_data, %struct.adp5588_gpio_platform_data* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %64, %36
  %79 = load i32, i32* @ADP5588_MAXGPIO, align 4
  %80 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %81 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %83 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %86 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* @THIS_MODULE, align 4
  %88 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %89 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  %90 = load %struct.adp5588_gpio*, %struct.adp5588_gpio** %5, align 8
  %91 = getelementptr inbounds %struct.adp5588_gpio, %struct.adp5588_gpio* %90, i32 0, i32 4
  %92 = call i32 @mutex_init(i32* %91)
  %93 = load %struct.adp5588_gpio*, %struct.adp5588_gpio** %5, align 8
  %94 = getelementptr inbounds %struct.adp5588_gpio, %struct.adp5588_gpio* %93, i32 0, i32 3
  %95 = load %struct.i2c_client*, %struct.i2c_client** %94, align 8
  %96 = load i64, i64* @DEV_ID, align 8
  %97 = call i8* @adp5588_gpio_read(%struct.i2c_client* %95, i64 %96)
  %98 = ptrtoint i8* %97 to i32
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %78
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %2, align 4
  br label %242

103:                                              ; preds = %78
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @ADP5588_DEVICE_ID_MASK, align 4
  %106 = and i32 %104, %105
  store i32 %106, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %107

107:                                              ; preds = %171, %103
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @ADP5588_MAXGPIO, align 4
  %110 = call i32 @ADP5588_BANK(i32 %109)
  %111 = icmp sle i32 %108, %110
  br i1 %111, label %112, label %174

112:                                              ; preds = %107
  %113 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %114 = load i64, i64* @GPIO_DAT_OUT1, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %114, %116
  %118 = call i8* @adp5588_gpio_read(%struct.i2c_client* %113, i64 %117)
  %119 = load %struct.adp5588_gpio*, %struct.adp5588_gpio** %5, align 8
  %120 = getelementptr inbounds %struct.adp5588_gpio, %struct.adp5588_gpio* %119, i32 0, i32 2
  %121 = load i8**, i8*** %120, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %121, i64 %123
  store i8* %118, i8** %124, align 8
  %125 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %126 = load i64, i64* @GPIO_DIR1, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %126, %128
  %130 = call i8* @adp5588_gpio_read(%struct.i2c_client* %125, i64 %129)
  %131 = load %struct.adp5588_gpio*, %struct.adp5588_gpio** %5, align 8
  %132 = getelementptr inbounds %struct.adp5588_gpio, %struct.adp5588_gpio* %131, i32 0, i32 1
  %133 = load i8**, i8*** %132, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8*, i8** %133, i64 %135
  store i8* %130, i8** %136, align 8
  %137 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %138 = load i64, i64* @KP_GPIO1, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %138, %140
  %142 = call i32 @adp5588_gpio_write(%struct.i2c_client* %137, i64 %141, i32 0)
  %143 = load i32, i32* %7, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %7, align 4
  %145 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %146 = load i64, i64* @GPIO_PULL1, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %146, %148
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* %8, align 4
  %152 = mul nsw i32 8, %151
  %153 = lshr i32 %150, %152
  %154 = and i32 %153, 255
  %155 = call i32 @adp5588_gpio_write(%struct.i2c_client* %145, i64 %149, i32 %154)
  %156 = load i32, i32* %7, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %7, align 4
  %158 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %159 = load i64, i64* @GPIO_INT_EN1, align 8
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = add nsw i64 %159, %161
  %163 = call i32 @adp5588_gpio_write(%struct.i2c_client* %158, i64 %162, i32 0)
  %164 = load i32, i32* %7, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %7, align 4
  %166 = load i32, i32* %7, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %112
  %169 = load i32, i32* %7, align 4
  store i32 %169, i32* %2, align 4
  br label %242

170:                                              ; preds = %112
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %8, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %8, align 4
  br label %107

174:                                              ; preds = %107
  %175 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %176 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %196

179:                                              ; preds = %174
  %180 = load i32, i32* %9, align 4
  %181 = call i64 @WA_DELAYED_READOUT_REVID(i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %179
  %184 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %185 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %184, i32 0, i32 0
  %186 = call i32 (i32*, i8*, ...) @dev_warn(i32* %185, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %195

187:                                              ; preds = %179
  %188 = load %struct.adp5588_gpio*, %struct.adp5588_gpio** %5, align 8
  %189 = call i32 @adp5588_irq_setup(%struct.adp5588_gpio* %188)
  store i32 %189, i32* %7, align 4
  %190 = load i32, i32* %7, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %187
  %193 = load i32, i32* %7, align 4
  store i32 %193, i32* %2, align 4
  br label %242

194:                                              ; preds = %187
  br label %195

195:                                              ; preds = %194, %183
  br label %196

196:                                              ; preds = %195, %174
  %197 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %198 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %197, i32 0, i32 0
  %199 = load %struct.adp5588_gpio*, %struct.adp5588_gpio** %5, align 8
  %200 = getelementptr inbounds %struct.adp5588_gpio, %struct.adp5588_gpio* %199, i32 0, i32 0
  %201 = load %struct.adp5588_gpio*, %struct.adp5588_gpio** %5, align 8
  %202 = call i32 @devm_gpiochip_add_data(i32* %198, %struct.gpio_chip* %200, %struct.adp5588_gpio* %201)
  store i32 %202, i32* %7, align 4
  %203 = load i32, i32* %7, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %196
  %206 = load i32, i32* %7, align 4
  store i32 %206, i32* %2, align 4
  br label %242

207:                                              ; preds = %196
  %208 = load %struct.adp5588_gpio_platform_data*, %struct.adp5588_gpio_platform_data** %4, align 8
  %209 = icmp ne %struct.adp5588_gpio_platform_data* %208, null
  br i1 %209, label %210, label %238

210:                                              ; preds = %207
  %211 = load %struct.adp5588_gpio_platform_data*, %struct.adp5588_gpio_platform_data** %4, align 8
  %212 = getelementptr inbounds %struct.adp5588_gpio_platform_data, %struct.adp5588_gpio_platform_data* %211, i32 0, i32 2
  %213 = load i32 (%struct.i2c_client*, i32, i32, i32)*, i32 (%struct.i2c_client*, i32, i32, i32)** %212, align 8
  %214 = icmp ne i32 (%struct.i2c_client*, i32, i32, i32)* %213, null
  br i1 %214, label %215, label %238

215:                                              ; preds = %210
  %216 = load %struct.adp5588_gpio_platform_data*, %struct.adp5588_gpio_platform_data** %4, align 8
  %217 = getelementptr inbounds %struct.adp5588_gpio_platform_data, %struct.adp5588_gpio_platform_data* %216, i32 0, i32 2
  %218 = load i32 (%struct.i2c_client*, i32, i32, i32)*, i32 (%struct.i2c_client*, i32, i32, i32)** %217, align 8
  %219 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %220 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %221 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %224 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.adp5588_gpio_platform_data*, %struct.adp5588_gpio_platform_data** %4, align 8
  %227 = getelementptr inbounds %struct.adp5588_gpio_platform_data, %struct.adp5588_gpio_platform_data* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 8
  %229 = call i32 %218(%struct.i2c_client* %219, i32 %222, i32 %225, i32 %228)
  store i32 %229, i32* %7, align 4
  %230 = load i32, i32* %7, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %237

232:                                              ; preds = %215
  %233 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %234 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %233, i32 0, i32 0
  %235 = load i32, i32* %7, align 4
  %236 = call i32 (i32*, i8*, ...) @dev_warn(i32* %234, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %235)
  br label %237

237:                                              ; preds = %232, %215
  br label %238

238:                                              ; preds = %237, %210, %207
  %239 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %240 = load %struct.adp5588_gpio*, %struct.adp5588_gpio** %5, align 8
  %241 = call i32 @i2c_set_clientdata(%struct.i2c_client* %239, %struct.adp5588_gpio* %240)
  store i32 0, i32* %2, align 4
  br label %242

242:                                              ; preds = %238, %205, %192, %168, %101, %33, %20
  %243 = load i32, i32* %2, align 4
  ret i32 %243
}

declare dso_local %struct.adp5588_gpio_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.adp5588_gpio* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i8* @adp5588_gpio_read(%struct.i2c_client*, i64) #1

declare dso_local i32 @ADP5588_BANK(i32) #1

declare dso_local i32 @adp5588_gpio_write(%struct.i2c_client*, i64, i32) #1

declare dso_local i64 @WA_DELAYED_READOUT_REVID(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i32 @adp5588_irq_setup(%struct.adp5588_gpio*) #1

declare dso_local i32 @devm_gpiochip_add_data(i32*, %struct.gpio_chip*, %struct.adp5588_gpio*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.adp5588_gpio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
