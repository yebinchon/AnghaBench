; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_hideep.c_hideep_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_hideep.c_hideep_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.hideep_ts = type { i8*, i8*, i8*, i8*, i32, %struct.i2c_client* }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"check i2c device error\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"missing irq: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hideep_regmap_config = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to initialize regmap: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"vid\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"power on failed: %d\0A\00", align 1
@hideep_power_off = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"failed to load dwz: %d\00", align 1
@hideep_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"failed to request irq %d: %d\0A\00", align 1
@hideep_ts_attr_group = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [36 x i8] c"failed to add sysfs attributes: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @hideep_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hideep_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.hideep_ts*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @I2C_FUNC_I2C, align 4
  %12 = call i32 @i2c_check_functionality(i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 1
  %17 = call i32 (i32*, i8*, ...) @dev_err(i32* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %198

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 1
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32*, i8*, ...) @dev_err(i32* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %198

34:                                               ; preds = %20
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 1
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.hideep_ts* @devm_kzalloc(i32* %36, i32 48, i32 %37)
  store %struct.hideep_ts* %38, %struct.hideep_ts** %6, align 8
  %39 = load %struct.hideep_ts*, %struct.hideep_ts** %6, align 8
  %40 = icmp ne %struct.hideep_ts* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %198

44:                                               ; preds = %34
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = load %struct.hideep_ts*, %struct.hideep_ts** %6, align 8
  %47 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %46, i32 0, i32 5
  store %struct.i2c_client* %45, %struct.i2c_client** %47, align 8
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = load %struct.hideep_ts*, %struct.hideep_ts** %6, align 8
  %50 = call i32 @i2c_set_clientdata(%struct.i2c_client* %48, %struct.hideep_ts* %49)
  %51 = load %struct.hideep_ts*, %struct.hideep_ts** %6, align 8
  %52 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %51, i32 0, i32 4
  %53 = call i32 @mutex_init(i32* %52)
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = call i8* @devm_regmap_init_i2c(%struct.i2c_client* %54, i32* @hideep_regmap_config)
  %56 = load %struct.hideep_ts*, %struct.hideep_ts** %6, align 8
  %57 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load %struct.hideep_ts*, %struct.hideep_ts** %6, align 8
  %59 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %58, i32 0, i32 3
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @IS_ERR(i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %44
  %64 = load %struct.hideep_ts*, %struct.hideep_ts** %6, align 8
  %65 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %64, i32 0, i32 3
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @PTR_ERR(i8* %66)
  store i32 %67, i32* %7, align 4
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 1
  %70 = load i32, i32* %7, align 4
  %71 = call i32 (i32*, i8*, ...) @dev_err(i32* %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %3, align 4
  br label %198

73:                                               ; preds = %44
  %74 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %75 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %74, i32 0, i32 1
  %76 = call i8* @devm_regulator_get(i32* %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %77 = load %struct.hideep_ts*, %struct.hideep_ts** %6, align 8
  %78 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  %79 = load %struct.hideep_ts*, %struct.hideep_ts** %6, align 8
  %80 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = call i64 @IS_ERR(i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %73
  %85 = load %struct.hideep_ts*, %struct.hideep_ts** %6, align 8
  %86 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %85, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @PTR_ERR(i8* %87)
  store i32 %88, i32* %3, align 4
  br label %198

89:                                               ; preds = %73
  %90 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %91 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %90, i32 0, i32 1
  %92 = call i8* @devm_regulator_get(i32* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %93 = load %struct.hideep_ts*, %struct.hideep_ts** %6, align 8
  %94 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = load %struct.hideep_ts*, %struct.hideep_ts** %6, align 8
  %96 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = call i64 @IS_ERR(i8* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %89
  %101 = load %struct.hideep_ts*, %struct.hideep_ts** %6, align 8
  %102 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @PTR_ERR(i8* %103)
  store i32 %104, i32* %3, align 4
  br label %198

105:                                              ; preds = %89
  %106 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %107 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %106, i32 0, i32 1
  %108 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %109 = call i8* @devm_gpiod_get_optional(i32* %107, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %108)
  %110 = load %struct.hideep_ts*, %struct.hideep_ts** %6, align 8
  %111 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %110, i32 0, i32 0
  store i8* %109, i8** %111, align 8
  %112 = load %struct.hideep_ts*, %struct.hideep_ts** %6, align 8
  %113 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = call i64 @IS_ERR(i8* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %105
  %118 = load %struct.hideep_ts*, %struct.hideep_ts** %6, align 8
  %119 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @PTR_ERR(i8* %120)
  store i32 %121, i32* %3, align 4
  br label %198

122:                                              ; preds = %105
  %123 = load %struct.hideep_ts*, %struct.hideep_ts** %6, align 8
  %124 = call i32 @hideep_power_on(%struct.hideep_ts* %123)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %122
  %128 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %129 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %128, i32 0, i32 1
  %130 = load i32, i32* %7, align 4
  %131 = call i32 (i32*, i8*, ...) @dev_err(i32* %129, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* %7, align 4
  store i32 %132, i32* %3, align 4
  br label %198

133:                                              ; preds = %122
  %134 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %135 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %134, i32 0, i32 1
  %136 = load i32, i32* @hideep_power_off, align 4
  %137 = load %struct.hideep_ts*, %struct.hideep_ts** %6, align 8
  %138 = call i32 @devm_add_action_or_reset(i32* %135, i32 %136, %struct.hideep_ts* %137)
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %7, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %133
  %142 = load i32, i32* %7, align 4
  store i32 %142, i32* %3, align 4
  br label %198

143:                                              ; preds = %133
  %144 = load %struct.hideep_ts*, %struct.hideep_ts** %6, align 8
  %145 = call i32 @hideep_load_dwz(%struct.hideep_ts* %144)
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %143
  %149 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %150 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %149, i32 0, i32 1
  %151 = load i32, i32* %7, align 4
  %152 = call i32 (i32*, i8*, ...) @dev_err(i32* %150, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* %7, align 4
  store i32 %153, i32* %3, align 4
  br label %198

154:                                              ; preds = %143
  %155 = load %struct.hideep_ts*, %struct.hideep_ts** %6, align 8
  %156 = call i32 @hideep_init_input(%struct.hideep_ts* %155)
  store i32 %156, i32* %7, align 4
  %157 = load i32, i32* %7, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %154
  %160 = load i32, i32* %7, align 4
  store i32 %160, i32* %3, align 4
  br label %198

161:                                              ; preds = %154
  %162 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %163 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %162, i32 0, i32 1
  %164 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %165 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @hideep_irq, align 4
  %168 = load i32, i32* @IRQF_ONESHOT, align 4
  %169 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %170 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.hideep_ts*, %struct.hideep_ts** %6, align 8
  %173 = call i32 @devm_request_threaded_irq(i32* %163, i32 %166, i32* null, i32 %167, i32 %168, i32 %171, %struct.hideep_ts* %172)
  store i32 %173, i32* %7, align 4
  %174 = load i32, i32* %7, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %161
  %177 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %178 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %177, i32 0, i32 1
  %179 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %180 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %7, align 4
  %183 = call i32 (i32*, i8*, ...) @dev_err(i32* %178, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %181, i32 %182)
  %184 = load i32, i32* %7, align 4
  store i32 %184, i32* %3, align 4
  br label %198

185:                                              ; preds = %161
  %186 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %187 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %186, i32 0, i32 1
  %188 = call i32 @devm_device_add_group(i32* %187, i32* @hideep_ts_attr_group)
  store i32 %188, i32* %7, align 4
  %189 = load i32, i32* %7, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %185
  %192 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %193 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %192, i32 0, i32 1
  %194 = load i32, i32* %7, align 4
  %195 = call i32 (i32*, i8*, ...) @dev_err(i32* %193, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i32 %194)
  %196 = load i32, i32* %7, align 4
  store i32 %196, i32* %3, align 4
  br label %198

197:                                              ; preds = %185
  store i32 0, i32* %3, align 4
  br label %198

198:                                              ; preds = %197, %191, %176, %159, %148, %141, %127, %117, %100, %84, %63, %41, %25, %14
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.hideep_ts* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.hideep_ts*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i8* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_regulator_get(i32*, i8*) #1

declare dso_local i8* @devm_gpiod_get_optional(i32*, i8*, i32) #1

declare dso_local i32 @hideep_power_on(%struct.hideep_ts*) #1

declare dso_local i32 @devm_add_action_or_reset(i32*, i32, %struct.hideep_ts*) #1

declare dso_local i32 @hideep_load_dwz(%struct.hideep_ts*) #1

declare dso_local i32 @hideep_init_input(%struct.hideep_ts*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i32, %struct.hideep_ts*) #1

declare dso_local i32 @devm_device_add_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
