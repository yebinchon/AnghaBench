; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_goodix.c_goodix_ts_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_goodix.c_goodix_ts_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.goodix_ts_data = type { i32, i32, i64, i64, i32, i32, i32, i32, i32, %struct.i2c_client* }

@.str = private unnamed_addr constant [21 x i8] c"I2C Address: 0x%02x\0A\00", align 1
@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"I2C check functionality failed.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GOODIX_CONTACT_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to enable AVDD28 regulator: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Failed to enable VDDIO regulator: %d\0A\00", align 1
@goodix_disable_regulators = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Controller reset failed.\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"I2C communication failure: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Read version failed.\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"goodix_%d_cfg.bin\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@goodix_config_cb = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"Failed to invoke firmware loader: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @goodix_ts_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goodix_ts_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.goodix_ts_data*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dev_dbg(i32* %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @I2C_FUNC_I2C, align 4
  %18 = call i32 @i2c_check_functionality(i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = call i32 (i32*, i8*, ...) @dev_err(i32* %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @ENXIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %199

26:                                               ; preds = %2
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.goodix_ts_data* @devm_kzalloc(i32* %28, i32 56, i32 %29)
  store %struct.goodix_ts_data* %30, %struct.goodix_ts_data** %6, align 8
  %31 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %6, align 8
  %32 = icmp ne %struct.goodix_ts_data* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %199

36:                                               ; preds = %26
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %6, align 8
  %39 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %38, i32 0, i32 9
  store %struct.i2c_client* %37, %struct.i2c_client** %39, align 8
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %6, align 8
  %42 = call i32 @i2c_set_clientdata(%struct.i2c_client* %40, %struct.goodix_ts_data* %41)
  %43 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %6, align 8
  %44 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %43, i32 0, i32 8
  %45 = call i32 @init_completion(i32* %44)
  %46 = load i32, i32* @GOODIX_CONTACT_SIZE, align 4
  %47 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %6, align 8
  %48 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 4
  %49 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %6, align 8
  %50 = call i32 @goodix_get_gpio_config(%struct.goodix_ts_data* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %36
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %199

55:                                               ; preds = %36
  %56 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %6, align 8
  %57 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @regulator_enable(i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %64 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %63, i32 0, i32 0
  %65 = load i32, i32* %7, align 4
  %66 = call i32 (i32*, i8*, ...) @dev_err(i32* %64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %3, align 4
  br label %199

68:                                               ; preds = %55
  %69 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %6, align 8
  %70 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @regulator_enable(i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %68
  %76 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %77 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %76, i32 0, i32 0
  %78 = load i32, i32* %7, align 4
  %79 = call i32 (i32*, i8*, ...) @dev_err(i32* %77, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  %80 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %6, align 8
  %81 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @regulator_disable(i32 %82)
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %3, align 4
  br label %199

85:                                               ; preds = %68
  %86 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %87 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %86, i32 0, i32 0
  %88 = load i32, i32* @goodix_disable_regulators, align 4
  %89 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %6, align 8
  %90 = call i32 @devm_add_action_or_reset(i32* %87, i32 %88, %struct.goodix_ts_data* %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %85
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %3, align 4
  br label %199

95:                                               ; preds = %85
  %96 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %6, align 8
  %97 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %116

100:                                              ; preds = %95
  %101 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %6, align 8
  %102 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %100
  %106 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %6, align 8
  %107 = call i32 @goodix_reset(%struct.goodix_ts_data* %106)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %112 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %111, i32 0, i32 0
  %113 = call i32 (i32*, i8*, ...) @dev_err(i32* %112, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %114 = load i32, i32* %7, align 4
  store i32 %114, i32* %3, align 4
  br label %199

115:                                              ; preds = %105
  br label %116

116:                                              ; preds = %115, %100, %95
  %117 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %118 = call i32 @goodix_i2c_test(%struct.i2c_client* %117)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %116
  %122 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %123 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %122, i32 0, i32 0
  %124 = load i32, i32* %7, align 4
  %125 = call i32 (i32*, i8*, ...) @dev_err(i32* %123, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %3, align 4
  br label %199

127:                                              ; preds = %116
  %128 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %6, align 8
  %129 = call i32 @goodix_read_version(%struct.goodix_ts_data* %128)
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %134 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %133, i32 0, i32 0
  %135 = call i32 (i32*, i8*, ...) @dev_err(i32* %134, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %136 = load i32, i32* %7, align 4
  store i32 %136, i32* %3, align 4
  br label %199

137:                                              ; preds = %127
  %138 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %6, align 8
  %139 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @goodix_get_chip_data(i32 %140)
  %142 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %6, align 8
  %143 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %142, i32 0, i32 4
  store i32 %141, i32* %143, align 8
  %144 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %6, align 8
  %145 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %190

148:                                              ; preds = %137
  %149 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %6, align 8
  %150 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %190

153:                                              ; preds = %148
  %154 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %155 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %154, i32 0, i32 0
  %156 = load i32, i32* @GFP_KERNEL, align 4
  %157 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %6, align 8
  %158 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @devm_kasprintf(i32* %155, i32 %156, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %159)
  %161 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %6, align 8
  %162 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  %163 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %6, align 8
  %164 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %153
  %168 = load i32, i32* @ENOMEM, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %3, align 4
  br label %199

170:                                              ; preds = %153
  %171 = load i32, i32* @THIS_MODULE, align 4
  %172 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %6, align 8
  %173 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %176 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %175, i32 0, i32 0
  %177 = load i32, i32* @GFP_KERNEL, align 4
  %178 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %6, align 8
  %179 = load i32, i32* @goodix_config_cb, align 4
  %180 = call i32 @request_firmware_nowait(i32 %171, i32 1, i32 %174, i32* %176, i32 %177, %struct.goodix_ts_data* %178, i32 %179)
  store i32 %180, i32* %7, align 4
  %181 = load i32, i32* %7, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %170
  %184 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %185 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %184, i32 0, i32 0
  %186 = load i32, i32* %7, align 4
  %187 = call i32 (i32*, i8*, ...) @dev_err(i32* %185, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 %186)
  %188 = load i32, i32* %7, align 4
  store i32 %188, i32* %3, align 4
  br label %199

189:                                              ; preds = %170
  store i32 0, i32* %3, align 4
  br label %199

190:                                              ; preds = %148, %137
  %191 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %6, align 8
  %192 = call i32 @goodix_configure_dev(%struct.goodix_ts_data* %191)
  store i32 %192, i32* %7, align 4
  %193 = load i32, i32* %7, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %190
  %196 = load i32, i32* %7, align 4
  store i32 %196, i32* %3, align 4
  br label %199

197:                                              ; preds = %190
  br label %198

198:                                              ; preds = %197
  store i32 0, i32* %3, align 4
  br label %199

199:                                              ; preds = %198, %195, %189, %183, %167, %132, %121, %110, %93, %75, %62, %53, %33, %20
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.goodix_ts_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.goodix_ts_data*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @goodix_get_gpio_config(%struct.goodix_ts_data*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @devm_add_action_or_reset(i32*, i32, %struct.goodix_ts_data*) #1

declare dso_local i32 @goodix_reset(%struct.goodix_ts_data*) #1

declare dso_local i32 @goodix_i2c_test(%struct.i2c_client*) #1

declare dso_local i32 @goodix_read_version(%struct.goodix_ts_data*) #1

declare dso_local i32 @goodix_get_chip_data(i32) #1

declare dso_local i32 @devm_kasprintf(i32*, i32, i8*, i32) #1

declare dso_local i32 @request_firmware_nowait(i32, i32, i32, i32*, i32, %struct.goodix_ts_data*, i32) #1

declare dso_local i32 @goodix_configure_dev(%struct.goodix_ts_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
