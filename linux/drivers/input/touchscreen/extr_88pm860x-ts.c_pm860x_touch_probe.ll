; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_88pm860x-ts.c_pm860x_touch_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_88pm860x-ts.c_pm860x_touch_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.pm860x_chip = type { i64, %struct.TYPE_15__*, %struct.i2c_client*, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.pm860x_touch_pdata = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pm860x_touch = type { i32, i32, %struct.TYPE_14__*, %struct.i2c_client*, %struct.pm860x_chip* }
%struct.TYPE_14__ = type { i8*, i8*, i32, i32, i32, i32, i32, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.TYPE_12__ = type { i32 }

@CHIP_PM8607 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PM8607_GPADC_PREBIAS_MASK = common dso_local global i32 0, align 4
@PM8607_GPADC_SLOT_CYCLE_MASK = common dso_local global i32 0, align 4
@PM8607_GPADC_OFF_SCALE_MASK = common dso_local global i32 0, align 4
@PM8607_GPADC_SW_CAL_MASK = common dso_local global i32 0, align 4
@PM8607_GPADC_MISC1 = common dso_local global i32 0, align 4
@PM8607_TSI_PREBIAS = common dso_local global i32 0, align 4
@PM8607_PD_PREBIAS_MASK = common dso_local global i32 0, align 4
@PM8607_PD_PRECHG_MASK = common dso_local global i32 0, align 4
@PM8607_PD_PREBIAS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to get platform data\0A\00", align 1
@PM8607_GPADC_EN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to allocate input device!\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"88pm860x-touch\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"88pm860x/input0\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@pm860x_touch_open = common dso_local global i32 0, align 4
@pm860x_touch_close = common dso_local global i32 0, align 4
@pm860x_touch_handler = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"touch\00", align 1
@EV_ABS = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@EV_SYN = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ACCURATE_BIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Failed to register touch!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pm860x_touch_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm860x_touch_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pm860x_chip*, align 8
  %5 = alloca %struct.pm860x_touch_pdata*, align 8
  %6 = alloca %struct.pm860x_touch*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.pm860x_chip* @dev_get_drvdata(i32 %15)
  store %struct.pm860x_chip* %16, %struct.pm860x_chip** %4, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call %struct.pm860x_touch_pdata* @dev_get_platdata(%struct.TYPE_15__* %18)
  store %struct.pm860x_touch_pdata* %19, %struct.pm860x_touch_pdata** %5, align 8
  %20 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %21 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CHIP_PM8607, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %27 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %26, i32 0, i32 3
  %28 = load %struct.i2c_client*, %struct.i2c_client** %27, align 8
  br label %33

29:                                               ; preds = %1
  %30 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %31 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %30, i32 0, i32 2
  %32 = load %struct.i2c_client*, %struct.i2c_client** %31, align 8
  br label %33

33:                                               ; preds = %29, %25
  %34 = phi %struct.i2c_client* [ %28, %25 ], [ %32, %29 ]
  store %struct.i2c_client* %34, %struct.i2c_client** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = call i32 @platform_get_irq(%struct.platform_device* %35, i32 0)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %337

42:                                               ; preds = %33
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %45 = call i64 @pm860x_touch_dt_init(%struct.platform_device* %43, %struct.pm860x_chip* %44, i32* %10)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %155

47:                                               ; preds = %42
  %48 = load %struct.pm860x_touch_pdata*, %struct.pm860x_touch_pdata** %5, align 8
  %49 = icmp ne %struct.pm860x_touch_pdata* %48, null
  br i1 %49, label %50, label %148

50:                                               ; preds = %47
  store i32 0, i32* %11, align 4
  %51 = load %struct.pm860x_touch_pdata*, %struct.pm860x_touch_pdata** %5, align 8
  %52 = getelementptr inbounds %struct.pm860x_touch_pdata, %struct.pm860x_touch_pdata* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 1
  %55 = load i32, i32* @PM8607_GPADC_PREBIAS_MASK, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* %11, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %11, align 4
  %59 = load %struct.pm860x_touch_pdata*, %struct.pm860x_touch_pdata** %5, align 8
  %60 = getelementptr inbounds %struct.pm860x_touch_pdata, %struct.pm860x_touch_pdata* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 %61, 3
  %63 = load i32, i32* @PM8607_GPADC_SLOT_CYCLE_MASK, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* %11, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %11, align 4
  %67 = load %struct.pm860x_touch_pdata*, %struct.pm860x_touch_pdata** %5, align 8
  %68 = getelementptr inbounds %struct.pm860x_touch_pdata, %struct.pm860x_touch_pdata* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 5
  %71 = load i32, i32* @PM8607_GPADC_OFF_SCALE_MASK, align 4
  %72 = and i32 %70, %71
  %73 = load i32, i32* %11, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %11, align 4
  %75 = load %struct.pm860x_touch_pdata*, %struct.pm860x_touch_pdata** %5, align 8
  %76 = getelementptr inbounds %struct.pm860x_touch_pdata, %struct.pm860x_touch_pdata* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 7
  %79 = load i32, i32* @PM8607_GPADC_SW_CAL_MASK, align 4
  %80 = and i32 %78, %79
  %81 = load i32, i32* %11, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %50
  %86 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %87 = load i32, i32* @PM8607_GPADC_MISC1, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @pm860x_reg_write(%struct.i2c_client* %86, i32 %87, i32 %88)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %337

95:                                               ; preds = %85
  br label %96

96:                                               ; preds = %95, %50
  %97 = load %struct.pm860x_touch_pdata*, %struct.pm860x_touch_pdata** %5, align 8
  %98 = getelementptr inbounds %struct.pm860x_touch_pdata, %struct.pm860x_touch_pdata* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %96
  %102 = load %struct.pm860x_touch_pdata*, %struct.pm860x_touch_pdata** %5, align 8
  %103 = getelementptr inbounds %struct.pm860x_touch_pdata, %struct.pm860x_touch_pdata* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %11, align 4
  %105 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %106 = load i32, i32* @PM8607_TSI_PREBIAS, align 4
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @pm860x_reg_write(%struct.i2c_client* %105, i32 %106, i32 %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %101
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %2, align 4
  br label %337

114:                                              ; preds = %101
  br label %115

115:                                              ; preds = %114, %96
  store i32 0, i32* %11, align 4
  %116 = load %struct.pm860x_touch_pdata*, %struct.pm860x_touch_pdata** %5, align 8
  %117 = getelementptr inbounds %struct.pm860x_touch_pdata, %struct.pm860x_touch_pdata* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @PM8607_PD_PREBIAS_MASK, align 4
  %120 = and i32 %118, %119
  %121 = load i32, i32* %11, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %11, align 4
  %123 = load %struct.pm860x_touch_pdata*, %struct.pm860x_touch_pdata** %5, align 8
  %124 = getelementptr inbounds %struct.pm860x_touch_pdata, %struct.pm860x_touch_pdata* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 4
  %126 = shl i32 %125, 5
  %127 = load i32, i32* @PM8607_PD_PRECHG_MASK, align 4
  %128 = and i32 %126, %127
  %129 = load i32, i32* %11, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %115
  %134 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %135 = load i32, i32* @PM8607_PD_PREBIAS, align 4
  %136 = load i32, i32* %11, align 4
  %137 = call i32 @pm860x_reg_write(%struct.i2c_client* %134, i32 %135, i32 %136)
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* %9, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %133
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %2, align 4
  br label %337

143:                                              ; preds = %133
  br label %144

144:                                              ; preds = %143, %115
  %145 = load %struct.pm860x_touch_pdata*, %struct.pm860x_touch_pdata** %5, align 8
  %146 = getelementptr inbounds %struct.pm860x_touch_pdata, %struct.pm860x_touch_pdata* %145, i32 0, i32 7
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %10, align 4
  br label %154

148:                                              ; preds = %47
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %149, i32 0, i32 0
  %151 = call i32 @dev_err(%struct.TYPE_15__* %150, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %2, align 4
  br label %337

154:                                              ; preds = %144
  br label %155

155:                                              ; preds = %154, %42
  %156 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %157 = load i32, i32* @PM8607_GPADC_MISC1, align 4
  %158 = load i32, i32* @PM8607_GPADC_EN, align 4
  %159 = load i32, i32* @PM8607_GPADC_EN, align 4
  %160 = call i32 @pm860x_set_bits(%struct.i2c_client* %156, i32 %157, i32 %158, i32 %159)
  store i32 %160, i32* %9, align 4
  %161 = load i32, i32* %9, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %155
  %164 = load i32, i32* %9, align 4
  store i32 %164, i32* %2, align 4
  br label %337

165:                                              ; preds = %155
  %166 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %167 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %166, i32 0, i32 0
  %168 = load i32, i32* @GFP_KERNEL, align 4
  %169 = call %struct.pm860x_touch* @devm_kzalloc(%struct.TYPE_15__* %167, i32 32, i32 %168)
  store %struct.pm860x_touch* %169, %struct.pm860x_touch** %6, align 8
  %170 = load %struct.pm860x_touch*, %struct.pm860x_touch** %6, align 8
  %171 = icmp ne %struct.pm860x_touch* %170, null
  br i1 %171, label %175, label %172

172:                                              ; preds = %165
  %173 = load i32, i32* @ENOMEM, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %2, align 4
  br label %337

175:                                              ; preds = %165
  %176 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %177 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %176, i32 0, i32 0
  %178 = call %struct.TYPE_14__* @devm_input_allocate_device(%struct.TYPE_15__* %177)
  %179 = load %struct.pm860x_touch*, %struct.pm860x_touch** %6, align 8
  %180 = getelementptr inbounds %struct.pm860x_touch, %struct.pm860x_touch* %179, i32 0, i32 2
  store %struct.TYPE_14__* %178, %struct.TYPE_14__** %180, align 8
  %181 = load %struct.pm860x_touch*, %struct.pm860x_touch** %6, align 8
  %182 = getelementptr inbounds %struct.pm860x_touch, %struct.pm860x_touch* %181, i32 0, i32 2
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %182, align 8
  %184 = icmp ne %struct.TYPE_14__* %183, null
  br i1 %184, label %191, label %185

185:                                              ; preds = %175
  %186 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %187 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %186, i32 0, i32 0
  %188 = call i32 @dev_err(%struct.TYPE_15__* %187, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %189 = load i32, i32* @ENOMEM, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %2, align 4
  br label %337

191:                                              ; preds = %175
  %192 = load %struct.pm860x_touch*, %struct.pm860x_touch** %6, align 8
  %193 = getelementptr inbounds %struct.pm860x_touch, %struct.pm860x_touch* %192, i32 0, i32 2
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %195, align 8
  %196 = load %struct.pm860x_touch*, %struct.pm860x_touch** %6, align 8
  %197 = getelementptr inbounds %struct.pm860x_touch, %struct.pm860x_touch* %196, i32 0, i32 2
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8** %199, align 8
  %200 = load i32, i32* @BUS_I2C, align 4
  %201 = load %struct.pm860x_touch*, %struct.pm860x_touch** %6, align 8
  %202 = getelementptr inbounds %struct.pm860x_touch, %struct.pm860x_touch* %201, i32 0, i32 2
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 0
  store i32 %200, i32* %205, align 8
  %206 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %207 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %206, i32 0, i32 0
  %208 = load %struct.pm860x_touch*, %struct.pm860x_touch** %6, align 8
  %209 = getelementptr inbounds %struct.pm860x_touch, %struct.pm860x_touch* %208, i32 0, i32 2
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 7
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 0
  store %struct.TYPE_15__* %207, %struct.TYPE_15__** %212, align 8
  %213 = load i32, i32* @pm860x_touch_open, align 4
  %214 = load %struct.pm860x_touch*, %struct.pm860x_touch** %6, align 8
  %215 = getelementptr inbounds %struct.pm860x_touch, %struct.pm860x_touch* %214, i32 0, i32 2
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 6
  store i32 %213, i32* %217, align 8
  %218 = load i32, i32* @pm860x_touch_close, align 4
  %219 = load %struct.pm860x_touch*, %struct.pm860x_touch** %6, align 8
  %220 = getelementptr inbounds %struct.pm860x_touch, %struct.pm860x_touch* %219, i32 0, i32 2
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 5
  store i32 %218, i32* %222, align 4
  %223 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %224 = load %struct.pm860x_touch*, %struct.pm860x_touch** %6, align 8
  %225 = getelementptr inbounds %struct.pm860x_touch, %struct.pm860x_touch* %224, i32 0, i32 4
  store %struct.pm860x_chip* %223, %struct.pm860x_chip** %225, align 8
  %226 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %227 = load %struct.pm860x_touch*, %struct.pm860x_touch** %6, align 8
  %228 = getelementptr inbounds %struct.pm860x_touch, %struct.pm860x_touch* %227, i32 0, i32 3
  store %struct.i2c_client* %226, %struct.i2c_client** %228, align 8
  %229 = load i32, i32* %8, align 4
  %230 = load %struct.pm860x_touch*, %struct.pm860x_touch** %6, align 8
  %231 = getelementptr inbounds %struct.pm860x_touch, %struct.pm860x_touch* %230, i32 0, i32 0
  store i32 %229, i32* %231, align 8
  %232 = load i32, i32* %10, align 4
  %233 = load %struct.pm860x_touch*, %struct.pm860x_touch** %6, align 8
  %234 = getelementptr inbounds %struct.pm860x_touch, %struct.pm860x_touch* %233, i32 0, i32 1
  store i32 %232, i32* %234, align 4
  %235 = load %struct.pm860x_touch*, %struct.pm860x_touch** %6, align 8
  %236 = getelementptr inbounds %struct.pm860x_touch, %struct.pm860x_touch* %235, i32 0, i32 2
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %236, align 8
  %238 = load %struct.pm860x_touch*, %struct.pm860x_touch** %6, align 8
  %239 = call i32 @input_set_drvdata(%struct.TYPE_14__* %237, %struct.pm860x_touch* %238)
  %240 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %241 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %240, i32 0, i32 0
  %242 = load %struct.pm860x_touch*, %struct.pm860x_touch** %6, align 8
  %243 = getelementptr inbounds %struct.pm860x_touch, %struct.pm860x_touch* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @pm860x_touch_handler, align 4
  %246 = load i32, i32* @IRQF_ONESHOT, align 4
  %247 = load %struct.pm860x_touch*, %struct.pm860x_touch** %6, align 8
  %248 = call i32 @devm_request_threaded_irq(%struct.TYPE_15__* %241, i32 %244, i32* null, i32 %245, i32 %246, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), %struct.pm860x_touch* %247)
  store i32 %248, i32* %9, align 4
  %249 = load i32, i32* %9, align 4
  %250 = icmp slt i32 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %191
  %252 = load i32, i32* %9, align 4
  store i32 %252, i32* %2, align 4
  br label %337

253:                                              ; preds = %191
  %254 = load i32, i32* @EV_ABS, align 4
  %255 = load %struct.pm860x_touch*, %struct.pm860x_touch** %6, align 8
  %256 = getelementptr inbounds %struct.pm860x_touch, %struct.pm860x_touch* %255, i32 0, i32 2
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @__set_bit(i32 %254, i32 %259)
  %261 = load i32, i32* @ABS_X, align 4
  %262 = load %struct.pm860x_touch*, %struct.pm860x_touch** %6, align 8
  %263 = getelementptr inbounds %struct.pm860x_touch, %struct.pm860x_touch* %262, i32 0, i32 2
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 4
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @__set_bit(i32 %261, i32 %266)
  %268 = load i32, i32* @ABS_Y, align 4
  %269 = load %struct.pm860x_touch*, %struct.pm860x_touch** %6, align 8
  %270 = getelementptr inbounds %struct.pm860x_touch, %struct.pm860x_touch* %269, i32 0, i32 2
  %271 = load %struct.TYPE_14__*, %struct.TYPE_14__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %271, i32 0, i32 4
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @__set_bit(i32 %268, i32 %273)
  %275 = load i32, i32* @ABS_PRESSURE, align 4
  %276 = load %struct.pm860x_touch*, %struct.pm860x_touch** %6, align 8
  %277 = getelementptr inbounds %struct.pm860x_touch, %struct.pm860x_touch* %276, i32 0, i32 2
  %278 = load %struct.TYPE_14__*, %struct.TYPE_14__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %278, i32 0, i32 4
  %280 = load i32, i32* %279, align 8
  %281 = call i32 @__set_bit(i32 %275, i32 %280)
  %282 = load i32, i32* @EV_SYN, align 4
  %283 = load %struct.pm860x_touch*, %struct.pm860x_touch** %6, align 8
  %284 = getelementptr inbounds %struct.pm860x_touch, %struct.pm860x_touch* %283, i32 0, i32 2
  %285 = load %struct.TYPE_14__*, %struct.TYPE_14__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @__set_bit(i32 %282, i32 %287)
  %289 = load i32, i32* @EV_KEY, align 4
  %290 = load %struct.pm860x_touch*, %struct.pm860x_touch** %6, align 8
  %291 = getelementptr inbounds %struct.pm860x_touch, %struct.pm860x_touch* %290, i32 0, i32 2
  %292 = load %struct.TYPE_14__*, %struct.TYPE_14__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @__set_bit(i32 %289, i32 %294)
  %296 = load i32, i32* @BTN_TOUCH, align 4
  %297 = load %struct.pm860x_touch*, %struct.pm860x_touch** %6, align 8
  %298 = getelementptr inbounds %struct.pm860x_touch, %struct.pm860x_touch* %297, i32 0, i32 2
  %299 = load %struct.TYPE_14__*, %struct.TYPE_14__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 8
  %302 = call i32 @__set_bit(i32 %296, i32 %301)
  %303 = load %struct.pm860x_touch*, %struct.pm860x_touch** %6, align 8
  %304 = getelementptr inbounds %struct.pm860x_touch, %struct.pm860x_touch* %303, i32 0, i32 2
  %305 = load %struct.TYPE_14__*, %struct.TYPE_14__** %304, align 8
  %306 = load i32, i32* @ABS_X, align 4
  %307 = load i32, i32* @ACCURATE_BIT, align 4
  %308 = shl i32 1, %307
  %309 = call i32 @input_set_abs_params(%struct.TYPE_14__* %305, i32 %306, i32 0, i32 %308, i32 0, i32 0)
  %310 = load %struct.pm860x_touch*, %struct.pm860x_touch** %6, align 8
  %311 = getelementptr inbounds %struct.pm860x_touch, %struct.pm860x_touch* %310, i32 0, i32 2
  %312 = load %struct.TYPE_14__*, %struct.TYPE_14__** %311, align 8
  %313 = load i32, i32* @ABS_Y, align 4
  %314 = load i32, i32* @ACCURATE_BIT, align 4
  %315 = shl i32 1, %314
  %316 = call i32 @input_set_abs_params(%struct.TYPE_14__* %312, i32 %313, i32 0, i32 %315, i32 0, i32 0)
  %317 = load %struct.pm860x_touch*, %struct.pm860x_touch** %6, align 8
  %318 = getelementptr inbounds %struct.pm860x_touch, %struct.pm860x_touch* %317, i32 0, i32 2
  %319 = load %struct.TYPE_14__*, %struct.TYPE_14__** %318, align 8
  %320 = load i32, i32* @ABS_PRESSURE, align 4
  %321 = load i32, i32* @ACCURATE_BIT, align 4
  %322 = shl i32 1, %321
  %323 = call i32 @input_set_abs_params(%struct.TYPE_14__* %319, i32 %320, i32 0, i32 %322, i32 0, i32 0)
  %324 = load %struct.pm860x_touch*, %struct.pm860x_touch** %6, align 8
  %325 = getelementptr inbounds %struct.pm860x_touch, %struct.pm860x_touch* %324, i32 0, i32 2
  %326 = load %struct.TYPE_14__*, %struct.TYPE_14__** %325, align 8
  %327 = call i32 @input_register_device(%struct.TYPE_14__* %326)
  store i32 %327, i32* %9, align 4
  %328 = load i32, i32* %9, align 4
  %329 = icmp slt i32 %328, 0
  br i1 %329, label %330, label %336

330:                                              ; preds = %253
  %331 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %332 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %331, i32 0, i32 1
  %333 = load %struct.TYPE_15__*, %struct.TYPE_15__** %332, align 8
  %334 = call i32 @dev_err(%struct.TYPE_15__* %333, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %335 = load i32, i32* %9, align 4
  store i32 %335, i32* %2, align 4
  br label %337

336:                                              ; preds = %253
  store i32 0, i32* %2, align 4
  br label %337

337:                                              ; preds = %336, %330, %251, %185, %172, %163, %148, %140, %111, %92, %39
  %338 = load i32, i32* %2, align 4
  ret i32 %338
}

declare dso_local %struct.pm860x_chip* @dev_get_drvdata(i32) #1

declare dso_local %struct.pm860x_touch_pdata* @dev_get_platdata(%struct.TYPE_15__*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i64 @pm860x_touch_dt_init(%struct.platform_device*, %struct.pm860x_chip*, i32*) #1

declare dso_local i32 @pm860x_reg_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @pm860x_set_bits(%struct.i2c_client*, i32, i32, i32) #1

declare dso_local %struct.pm860x_touch* @devm_kzalloc(%struct.TYPE_15__*, i32, i32) #1

declare dso_local %struct.TYPE_14__* @devm_input_allocate_device(%struct.TYPE_15__*) #1

declare dso_local i32 @input_set_drvdata(%struct.TYPE_14__*, %struct.pm860x_touch*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_15__*, i32, i32*, i32, i32, i8*, %struct.pm860x_touch*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.TYPE_14__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_register_device(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
