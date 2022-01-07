; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda9950.c_tda9950_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda9950.c_tda9950_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device, i32, i32 }
%struct.device = type { %struct.tda9950_glue* }
%struct.tda9950_glue = type { i64, %struct.device* }
%struct.i2c_device_id = type { i32 }
%struct.tda9950_priv = type { i32, i32, %struct.device*, %struct.tda9950_glue*, %struct.i2c_client* }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"adapter does not support I2C functionality\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"driver requires an interrupt\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tda9950_cec_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"tda9950\00", align 1
@CEC_CAP_DEFAULTS = common dso_local global i32 0, align 4
@CEC_MAX_LOG_ADDRS = common dso_local global i32 0, align 4
@tda9950_cec_del = common dso_local global i32 0, align 4
@REG_CVR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"TDA9950 CEC interface, hardware version %u.%u\0A\00", align 1
@IRQF_TRIGGER_FALLING = common dso_local global i64 0, align 8
@tda9950_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i64 0, align 8
@IRQF_ONESHOT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tda9950_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda9950_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.tda9950_glue*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.tda9950_priv*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.tda9950_glue*, %struct.tda9950_glue** %14, align 8
  store %struct.tda9950_glue* %15, %struct.tda9950_glue** %6, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %7, align 8
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @I2C_FUNC_I2C, align 4
  %22 = call i32 @i2c_check_functionality(i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENXIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %203

30:                                               ; preds = %2
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = call i32 @dev_err(%struct.device* %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @ENXIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %203

41:                                               ; preds = %30
  %42 = load %struct.device*, %struct.device** %7, align 8
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.tda9950_priv* @devm_kzalloc(%struct.device* %42, i32 32, i32 %43)
  store %struct.tda9950_priv* %44, %struct.tda9950_priv** %8, align 8
  %45 = load %struct.tda9950_priv*, %struct.tda9950_priv** %8, align 8
  %46 = icmp ne %struct.tda9950_priv* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %203

50:                                               ; preds = %41
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = load %struct.tda9950_priv*, %struct.tda9950_priv** %8, align 8
  %53 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %52, i32 0, i32 4
  store %struct.i2c_client* %51, %struct.i2c_client** %53, align 8
  %54 = load %struct.tda9950_glue*, %struct.tda9950_glue** %6, align 8
  %55 = load %struct.tda9950_priv*, %struct.tda9950_priv** %8, align 8
  %56 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %55, i32 0, i32 3
  store %struct.tda9950_glue* %54, %struct.tda9950_glue** %56, align 8
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = load %struct.tda9950_priv*, %struct.tda9950_priv** %8, align 8
  %59 = call i32 @i2c_set_clientdata(%struct.i2c_client* %57, %struct.tda9950_priv* %58)
  %60 = load %struct.device*, %struct.device** %7, align 8
  %61 = load %struct.tda9950_priv*, %struct.tda9950_priv** %8, align 8
  %62 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %61, i32 0, i32 2
  store %struct.device* %60, %struct.device** %62, align 8
  %63 = load %struct.tda9950_glue*, %struct.tda9950_glue** %6, align 8
  %64 = icmp ne %struct.tda9950_glue* %63, null
  br i1 %64, label %65, label %76

65:                                               ; preds = %50
  %66 = load %struct.tda9950_glue*, %struct.tda9950_glue** %6, align 8
  %67 = getelementptr inbounds %struct.tda9950_glue, %struct.tda9950_glue* %66, i32 0, i32 1
  %68 = load %struct.device*, %struct.device** %67, align 8
  %69 = icmp ne %struct.device* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.tda9950_glue*, %struct.tda9950_glue** %6, align 8
  %72 = getelementptr inbounds %struct.tda9950_glue, %struct.tda9950_glue* %71, i32 0, i32 1
  %73 = load %struct.device*, %struct.device** %72, align 8
  %74 = load %struct.tda9950_priv*, %struct.tda9950_priv** %8, align 8
  %75 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %74, i32 0, i32 2
  store %struct.device* %73, %struct.device** %75, align 8
  br label %76

76:                                               ; preds = %70, %65, %50
  %77 = load %struct.tda9950_priv*, %struct.tda9950_priv** %8, align 8
  %78 = load i32, i32* @CEC_CAP_DEFAULTS, align 4
  %79 = load i32, i32* @CEC_MAX_LOG_ADDRS, align 4
  %80 = call i32 @cec_allocate_adapter(i32* @tda9950_cec_ops, %struct.tda9950_priv* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %78, i32 %79)
  %81 = load %struct.tda9950_priv*, %struct.tda9950_priv** %8, align 8
  %82 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.tda9950_priv*, %struct.tda9950_priv** %8, align 8
  %84 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @IS_ERR(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %76
  %89 = load %struct.tda9950_priv*, %struct.tda9950_priv** %8, align 8
  %90 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @PTR_ERR(i32 %91)
  store i32 %92, i32* %3, align 4
  br label %203

93:                                               ; preds = %76
  %94 = load %struct.device*, %struct.device** %7, align 8
  %95 = load i32, i32* @tda9950_cec_del, align 4
  %96 = load %struct.tda9950_priv*, %struct.tda9950_priv** %8, align 8
  %97 = call i32 @devm_add_action(%struct.device* %94, i32 %95, %struct.tda9950_priv* %96)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %93
  %101 = load %struct.tda9950_priv*, %struct.tda9950_priv** %8, align 8
  %102 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @cec_delete_adapter(i32 %103)
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %3, align 4
  br label %203

106:                                              ; preds = %93
  %107 = load %struct.device*, %struct.device** %7, align 8
  %108 = load %struct.tda9950_glue*, %struct.tda9950_glue** %6, align 8
  %109 = call i32 @tda9950_devm_glue_init(%struct.device* %107, %struct.tda9950_glue* %108)
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = load i32, i32* %10, align 4
  store i32 %113, i32* %3, align 4
  br label %203

114:                                              ; preds = %106
  %115 = load %struct.tda9950_priv*, %struct.tda9950_priv** %8, align 8
  %116 = call i32 @tda9950_glue_open(%struct.tda9950_priv* %115)
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %3, align 4
  br label %203

121:                                              ; preds = %114
  %122 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %123 = load i32, i32* @REG_CVR, align 4
  %124 = call i32 @tda9950_read(%struct.i2c_client* %122, i32 %123)
  store i32 %124, i32* %11, align 4
  %125 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %126 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %125, i32 0, i32 0
  %127 = load i32, i32* %11, align 4
  %128 = ashr i32 %127, 4
  %129 = load i32, i32* %11, align 4
  %130 = and i32 %129, 15
  %131 = call i32 @dev_info(%struct.device* %126, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %128, i32 %130)
  %132 = load %struct.tda9950_priv*, %struct.tda9950_priv** %8, align 8
  %133 = call i32 @tda9950_glue_release(%struct.tda9950_priv* %132)
  %134 = load i64, i64* @IRQF_TRIGGER_FALLING, align 8
  store i64 %134, i64* %9, align 8
  %135 = load %struct.tda9950_glue*, %struct.tda9950_glue** %6, align 8
  %136 = icmp ne %struct.tda9950_glue* %135, null
  br i1 %136, label %137, label %141

137:                                              ; preds = %121
  %138 = load %struct.tda9950_glue*, %struct.tda9950_glue** %6, align 8
  %139 = getelementptr inbounds %struct.tda9950_glue, %struct.tda9950_glue* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %9, align 8
  br label %141

141:                                              ; preds = %137, %121
  %142 = load %struct.device*, %struct.device** %7, align 8
  %143 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %144 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @tda9950_irq, align 4
  %147 = load i64, i64* %9, align 8
  %148 = load i64, i64* @IRQF_SHARED, align 8
  %149 = or i64 %147, %148
  %150 = load i64, i64* @IRQF_ONESHOT, align 8
  %151 = or i64 %149, %150
  %152 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %153 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %152, i32 0, i32 0
  %154 = call i32 @dev_name(%struct.device* %153)
  %155 = load %struct.tda9950_priv*, %struct.tda9950_priv** %8, align 8
  %156 = call i32 @devm_request_threaded_irq(%struct.device* %142, i32 %145, i32* null, i32 %146, i64 %151, i32 %154, %struct.tda9950_priv* %155)
  store i32 %156, i32* %10, align 4
  %157 = load i32, i32* %10, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %141
  %160 = load i32, i32* %10, align 4
  store i32 %160, i32* %3, align 4
  br label %203

161:                                              ; preds = %141
  %162 = load %struct.tda9950_priv*, %struct.tda9950_priv** %8, align 8
  %163 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %162, i32 0, i32 2
  %164 = load %struct.device*, %struct.device** %163, align 8
  %165 = call i32 @cec_notifier_get(%struct.device* %164)
  %166 = load %struct.tda9950_priv*, %struct.tda9950_priv** %8, align 8
  %167 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 8
  %168 = load %struct.tda9950_priv*, %struct.tda9950_priv** %8, align 8
  %169 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %161
  %173 = load i32, i32* @ENOMEM, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %3, align 4
  br label %203

175:                                              ; preds = %161
  %176 = load %struct.tda9950_priv*, %struct.tda9950_priv** %8, align 8
  %177 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.tda9950_priv*, %struct.tda9950_priv** %8, align 8
  %180 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %179, i32 0, i32 2
  %181 = load %struct.device*, %struct.device** %180, align 8
  %182 = call i32 @cec_register_adapter(i32 %178, %struct.device* %181)
  store i32 %182, i32* %10, align 4
  %183 = load i32, i32* %10, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %175
  %186 = load %struct.tda9950_priv*, %struct.tda9950_priv** %8, align 8
  %187 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @cec_notifier_put(i32 %188)
  %190 = load i32, i32* %10, align 4
  store i32 %190, i32* %3, align 4
  br label %203

191:                                              ; preds = %175
  %192 = load %struct.device*, %struct.device** %7, align 8
  %193 = load i32, i32* @tda9950_cec_del, align 4
  %194 = load %struct.tda9950_priv*, %struct.tda9950_priv** %8, align 8
  %195 = call i32 @devm_remove_action(%struct.device* %192, i32 %193, %struct.tda9950_priv* %194)
  %196 = load %struct.tda9950_priv*, %struct.tda9950_priv** %8, align 8
  %197 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.tda9950_priv*, %struct.tda9950_priv** %8, align 8
  %200 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @cec_register_cec_notifier(i32 %198, i32 %201)
  store i32 0, i32* %3, align 4
  br label %203

203:                                              ; preds = %191, %185, %172, %159, %119, %112, %100, %88, %47, %35, %24
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.tda9950_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.tda9950_priv*) #1

declare dso_local i32 @cec_allocate_adapter(i32*, %struct.tda9950_priv*, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_add_action(%struct.device*, i32, %struct.tda9950_priv*) #1

declare dso_local i32 @cec_delete_adapter(i32) #1

declare dso_local i32 @tda9950_devm_glue_init(%struct.device*, %struct.tda9950_glue*) #1

declare dso_local i32 @tda9950_glue_open(%struct.tda9950_priv*) #1

declare dso_local i32 @tda9950_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @tda9950_glue_release(%struct.tda9950_priv*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i64, i32, %struct.tda9950_priv*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @cec_notifier_get(%struct.device*) #1

declare dso_local i32 @cec_register_adapter(i32, %struct.device*) #1

declare dso_local i32 @cec_notifier_put(i32) #1

declare dso_local i32 @devm_remove_action(%struct.device*, i32, %struct.tda9950_priv*) #1

declare dso_local i32 @cec_register_cec_notifier(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
