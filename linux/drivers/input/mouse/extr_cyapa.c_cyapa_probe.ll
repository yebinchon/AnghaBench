; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa.c_cyapa_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa.c_cyapa_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, %struct.TYPE_2__*, %struct.device }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.cyapa = type { i32, i64, i32, i32, %struct.i2c_client* }
%union.i2c_smbus_data = type { i32 }

@CYAPA_ADAPTER_FUNC_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"not a supported I2C/SMBus adapter\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@I2C_SMBUS_READ = common dso_local global i32 0, align 4
@I2C_SMBUS_BYTE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CYAPA_ADAPTER_FUNC_SMBUS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"i2c-%d-%04x/input0\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to get vcc regulator: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"failed to enable regulator: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"failed to add disable regulator action: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"failed to detect and initialize tp device.\0A\00", align 1
@cyapa_sysfs_group = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"failed to create sysfs entries: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"failed to prepare wakeup controls: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"failed to start pm_runtime: %d\0A\00", align 1
@cyapa_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"cyapa\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"failed to request threaded irq: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"create input_dev instance failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @cyapa_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.cyapa*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %union.i2c_smbus_data, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 3
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = call i64 @cyapa_check_adapter_functionality(%struct.i2c_client* %13)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @CYAPA_ADAPTER_FUNC_NONE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %193

23:                                               ; preds = %2
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @I2C_SMBUS_READ, align 4
  %31 = load i32, i32* @I2C_SMBUS_BYTE, align 4
  %32 = call i64 @i2c_smbus_xfer(%struct.TYPE_2__* %26, i32 %29, i32 0, i32 %30, i32 0, i32 %31, %union.i2c_smbus_data* %9)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %193

37:                                               ; preds = %23
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.cyapa* @devm_kzalloc(%struct.device* %38, i32 32, i32 %39)
  store %struct.cyapa* %40, %struct.cyapa** %7, align 8
  %41 = load %struct.cyapa*, %struct.cyapa** %7, align 8
  %42 = icmp ne %struct.cyapa* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %193

46:                                               ; preds = %37
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* @CYAPA_ADAPTER_FUNC_SMBUS, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load %struct.cyapa*, %struct.cyapa** %7, align 8
  %52 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  br label %53

53:                                               ; preds = %50, %46
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = load %struct.cyapa*, %struct.cyapa** %7, align 8
  %56 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %55, i32 0, i32 4
  store %struct.i2c_client* %54, %struct.i2c_client** %56, align 8
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = load %struct.cyapa*, %struct.cyapa** %7, align 8
  %59 = call i32 @i2c_set_clientdata(%struct.i2c_client* %57, %struct.cyapa* %58)
  %60 = load %struct.cyapa*, %struct.cyapa** %7, align 8
  %61 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %64 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @sprintf(i32 %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %70)
  %72 = load %struct.device*, %struct.device** %6, align 8
  %73 = call i32 @devm_regulator_get(%struct.device* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %74 = load %struct.cyapa*, %struct.cyapa** %7, align 8
  %75 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.cyapa*, %struct.cyapa** %7, align 8
  %77 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @IS_ERR(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %53
  %82 = load %struct.cyapa*, %struct.cyapa** %7, align 8
  %83 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @PTR_ERR(i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load %struct.device*, %struct.device** %6, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %86, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %3, align 4
  br label %193

90:                                               ; preds = %53
  %91 = load %struct.cyapa*, %struct.cyapa** %7, align 8
  %92 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @regulator_enable(i32 %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %90
  %98 = load %struct.device*, %struct.device** %6, align 8
  %99 = load i32, i32* %10, align 4
  %100 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %98, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %3, align 4
  br label %193

102:                                              ; preds = %90
  %103 = load %struct.device*, %struct.device** %6, align 8
  %104 = load %struct.cyapa*, %struct.cyapa** %7, align 8
  %105 = call i32 @devm_add_action(%struct.device* %103, i32 (%struct.cyapa*)* @cyapa_disable_regulator, %struct.cyapa* %104)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %102
  %109 = load %struct.cyapa*, %struct.cyapa** %7, align 8
  %110 = call i32 @cyapa_disable_regulator(%struct.cyapa* %109)
  %111 = load %struct.device*, %struct.device** %6, align 8
  %112 = load i32, i32* %10, align 4
  %113 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %111, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %3, align 4
  br label %193

115:                                              ; preds = %102
  %116 = load %struct.cyapa*, %struct.cyapa** %7, align 8
  %117 = call i32 @cyapa_initialize(%struct.cyapa* %116)
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load %struct.device*, %struct.device** %6, align 8
  %122 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %121, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %3, align 4
  br label %193

124:                                              ; preds = %115
  %125 = load %struct.device*, %struct.device** %6, align 8
  %126 = call i32 @devm_device_add_group(%struct.device* %125, i32* @cyapa_sysfs_group)
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = load %struct.device*, %struct.device** %6, align 8
  %131 = load i32, i32* %10, align 4
  %132 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %130, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* %10, align 4
  store i32 %133, i32* %3, align 4
  br label %193

134:                                              ; preds = %124
  %135 = load %struct.cyapa*, %struct.cyapa** %7, align 8
  %136 = call i32 @cyapa_prepare_wakeup_controls(%struct.cyapa* %135)
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %134
  %140 = load %struct.device*, %struct.device** %6, align 8
  %141 = load i32, i32* %10, align 4
  %142 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %140, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* %10, align 4
  store i32 %143, i32* %3, align 4
  br label %193

144:                                              ; preds = %134
  %145 = load %struct.cyapa*, %struct.cyapa** %7, align 8
  %146 = call i32 @cyapa_start_runtime(%struct.cyapa* %145)
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %10, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %144
  %150 = load %struct.device*, %struct.device** %6, align 8
  %151 = load i32, i32* %10, align 4
  %152 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %150, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* %10, align 4
  store i32 %153, i32* %3, align 4
  br label %193

154:                                              ; preds = %144
  %155 = load %struct.device*, %struct.device** %6, align 8
  %156 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %157 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @cyapa_irq, align 4
  %160 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %161 = load i32, i32* @IRQF_ONESHOT, align 4
  %162 = or i32 %160, %161
  %163 = load %struct.cyapa*, %struct.cyapa** %7, align 8
  %164 = call i32 @devm_request_threaded_irq(%struct.device* %155, i32 %158, i32* null, i32 %159, i32 %162, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), %struct.cyapa* %163)
  store i32 %164, i32* %10, align 4
  %165 = load i32, i32* %10, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %154
  %168 = load %struct.device*, %struct.device** %6, align 8
  %169 = load i32, i32* %10, align 4
  %170 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %168, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %169)
  %171 = load i32, i32* %10, align 4
  store i32 %171, i32* %3, align 4
  br label %193

172:                                              ; preds = %154
  %173 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %174 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @disable_irq(i32 %175)
  %177 = load %struct.cyapa*, %struct.cyapa** %7, align 8
  %178 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %192

181:                                              ; preds = %172
  %182 = load %struct.cyapa*, %struct.cyapa** %7, align 8
  %183 = call i32 @cyapa_create_input_dev(%struct.cyapa* %182)
  store i32 %183, i32* %10, align 4
  %184 = load i32, i32* %10, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %181
  %187 = load %struct.device*, %struct.device** %6, align 8
  %188 = load i32, i32* %10, align 4
  %189 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %187, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i32 %188)
  %190 = load i32, i32* %10, align 4
  store i32 %190, i32* %3, align 4
  br label %193

191:                                              ; preds = %181
  br label %192

192:                                              ; preds = %191, %172
  store i32 0, i32* %3, align 4
  br label %193

193:                                              ; preds = %192, %186, %167, %149, %139, %129, %120, %108, %97, %81, %43, %34, %18
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local i64 @cyapa_check_adapter_functionality(%struct.i2c_client*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @i2c_smbus_xfer(%struct.TYPE_2__*, i32, i32, i32, i32, i32, %union.i2c_smbus_data*) #1

declare dso_local %struct.cyapa* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.cyapa*) #1

declare dso_local i32 @sprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @devm_add_action(%struct.device*, i32 (%struct.cyapa*)*, %struct.cyapa*) #1

declare dso_local i32 @cyapa_disable_regulator(%struct.cyapa*) #1

declare dso_local i32 @cyapa_initialize(%struct.cyapa*) #1

declare dso_local i32 @devm_device_add_group(%struct.device*, i32*) #1

declare dso_local i32 @cyapa_prepare_wakeup_controls(%struct.cyapa*) #1

declare dso_local i32 @cyapa_start_runtime(%struct.cyapa*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i8*, %struct.cyapa*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @cyapa_create_input_dev(%struct.cyapa*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
