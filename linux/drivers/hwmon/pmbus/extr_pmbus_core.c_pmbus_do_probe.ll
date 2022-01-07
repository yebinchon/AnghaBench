; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_do_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_do_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.pmbus_driver_info = type { i64* }
%struct.pmbus_platform_data = type { i32 }
%struct.pmbus_data = type { %struct.TYPE_4__, i32, %struct.TYPE_4__**, i32, %struct.pmbus_driver_info*, i32, %struct.device*, i32 }
%struct.TYPE_4__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WRITE_BYTE = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"No attributes found\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to register hwmon device\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to register debugfs\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmbus_do_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1, %struct.pmbus_driver_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.i2c_device_id*, align 8
  %7 = alloca %struct.pmbus_driver_info*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.pmbus_platform_data*, align 8
  %10 = alloca %struct.pmbus_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %6, align 8
  store %struct.pmbus_driver_info* %2, %struct.pmbus_driver_info** %7, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 2
  store %struct.device* %14, %struct.device** %8, align 8
  %15 = load %struct.device*, %struct.device** %8, align 8
  %16 = call %struct.pmbus_platform_data* @dev_get_platdata(%struct.device* %15)
  store %struct.pmbus_platform_data* %16, %struct.pmbus_platform_data** %9, align 8
  store i64 0, i64* %11, align 8
  %17 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %7, align 8
  %18 = icmp ne %struct.pmbus_driver_info* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %194

22:                                               ; preds = %3
  %23 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_BYTE, align 4
  %27 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @i2c_check_functionality(i32 %25, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %22
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %194

36:                                               ; preds = %22
  %37 = load %struct.device*, %struct.device** %8, align 8
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.pmbus_data* @devm_kzalloc(%struct.device* %37, i32 56, i32 %38)
  store %struct.pmbus_data* %39, %struct.pmbus_data** %10, align 8
  %40 = load %struct.pmbus_data*, %struct.pmbus_data** %10, align 8
  %41 = icmp ne %struct.pmbus_data* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %194

45:                                               ; preds = %36
  %46 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %7, align 8
  %47 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = icmp ne i64* %48, null
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %59, %50
  %52 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %7, align 8
  %53 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* %11, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load i64, i64* %11, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %11, align 8
  br label %51

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62, %45
  %64 = load %struct.device*, %struct.device** %8, align 8
  %65 = load i64, i64* %11, align 8
  %66 = add i64 %65, 2
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call %struct.TYPE_4__** @devm_kcalloc(%struct.device* %64, i64 %66, i32 8, i32 %67)
  %69 = load %struct.pmbus_data*, %struct.pmbus_data** %10, align 8
  %70 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %69, i32 0, i32 2
  store %struct.TYPE_4__** %68, %struct.TYPE_4__*** %70, align 8
  %71 = load %struct.pmbus_data*, %struct.pmbus_data** %10, align 8
  %72 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %71, i32 0, i32 2
  %73 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %72, align 8
  %74 = icmp ne %struct.TYPE_4__** %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %63
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %194

78:                                               ; preds = %63
  %79 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %80 = load %struct.pmbus_data*, %struct.pmbus_data** %10, align 8
  %81 = call i32 @i2c_set_clientdata(%struct.i2c_client* %79, %struct.pmbus_data* %80)
  %82 = load %struct.pmbus_data*, %struct.pmbus_data** %10, align 8
  %83 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %82, i32 0, i32 7
  %84 = call i32 @mutex_init(i32* %83)
  %85 = load %struct.device*, %struct.device** %8, align 8
  %86 = load %struct.pmbus_data*, %struct.pmbus_data** %10, align 8
  %87 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %86, i32 0, i32 6
  store %struct.device* %85, %struct.device** %87, align 8
  %88 = load %struct.pmbus_platform_data*, %struct.pmbus_platform_data** %9, align 8
  %89 = icmp ne %struct.pmbus_platform_data* %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %78
  %91 = load %struct.pmbus_platform_data*, %struct.pmbus_platform_data** %9, align 8
  %92 = getelementptr inbounds %struct.pmbus_platform_data, %struct.pmbus_platform_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.pmbus_data*, %struct.pmbus_data** %10, align 8
  %95 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %94, i32 0, i32 5
  store i32 %93, i32* %95, align 8
  br label %96

96:                                               ; preds = %90, %78
  %97 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %7, align 8
  %98 = load %struct.pmbus_data*, %struct.pmbus_data** %10, align 8
  %99 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %98, i32 0, i32 4
  store %struct.pmbus_driver_info* %97, %struct.pmbus_driver_info** %99, align 8
  %100 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %101 = load %struct.pmbus_data*, %struct.pmbus_data** %10, align 8
  %102 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %7, align 8
  %103 = call i32 @pmbus_init_common(%struct.i2c_client* %100, %struct.pmbus_data* %101, %struct.pmbus_driver_info* %102)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %96
  %107 = load i32, i32* %12, align 4
  store i32 %107, i32* %4, align 4
  br label %194

108:                                              ; preds = %96
  %109 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %110 = load %struct.pmbus_data*, %struct.pmbus_data** %10, align 8
  %111 = call i32 @pmbus_find_attributes(%struct.i2c_client* %109, %struct.pmbus_data* %110)
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %187

115:                                              ; preds = %108
  %116 = load %struct.pmbus_data*, %struct.pmbus_data** %10, align 8
  %117 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %115
  %121 = load %struct.device*, %struct.device** %8, align 8
  %122 = call i32 @dev_err(%struct.device* %121, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %123 = load i32, i32* @ENODEV, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %12, align 4
  br label %187

125:                                              ; preds = %115
  %126 = load %struct.pmbus_data*, %struct.pmbus_data** %10, align 8
  %127 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %126, i32 0, i32 0
  %128 = load %struct.pmbus_data*, %struct.pmbus_data** %10, align 8
  %129 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %128, i32 0, i32 2
  %130 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %130, i64 0
  store %struct.TYPE_4__* %127, %struct.TYPE_4__** %131, align 8
  %132 = load %struct.pmbus_data*, %struct.pmbus_data** %10, align 8
  %133 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %132, i32 0, i32 2
  %134 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %134, i64 1
  %136 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %7, align 8
  %137 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %136, i32 0, i32 0
  %138 = load i64*, i64** %137, align 8
  %139 = load i64, i64* %11, align 8
  %140 = mul i64 8, %139
  %141 = trunc i64 %140 to i32
  %142 = call i32 @memcpy(%struct.TYPE_4__** %135, i64* %138, i32 %141)
  %143 = load %struct.device*, %struct.device** %8, align 8
  %144 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %145 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.pmbus_data*, %struct.pmbus_data** %10, align 8
  %148 = load %struct.pmbus_data*, %struct.pmbus_data** %10, align 8
  %149 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %148, i32 0, i32 2
  %150 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %149, align 8
  %151 = call i32 @hwmon_device_register_with_groups(%struct.device* %143, i32 %146, %struct.pmbus_data* %147, %struct.TYPE_4__** %150)
  %152 = load %struct.pmbus_data*, %struct.pmbus_data** %10, align 8
  %153 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  %154 = load %struct.pmbus_data*, %struct.pmbus_data** %10, align 8
  %155 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i64 @IS_ERR(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %125
  %160 = load %struct.pmbus_data*, %struct.pmbus_data** %10, align 8
  %161 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @PTR_ERR(i32 %162)
  store i32 %163, i32* %12, align 4
  %164 = load %struct.device*, %struct.device** %8, align 8
  %165 = call i32 @dev_err(%struct.device* %164, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %187

166:                                              ; preds = %125
  %167 = load %struct.pmbus_data*, %struct.pmbus_data** %10, align 8
  %168 = call i32 @pmbus_regulator_register(%struct.pmbus_data* %167)
  store i32 %168, i32* %12, align 4
  %169 = load i32, i32* %12, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  br label %182

172:                                              ; preds = %166
  %173 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %174 = load %struct.pmbus_data*, %struct.pmbus_data** %10, align 8
  %175 = call i32 @pmbus_init_debugfs(%struct.i2c_client* %173, %struct.pmbus_data* %174)
  store i32 %175, i32* %12, align 4
  %176 = load i32, i32* %12, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %172
  %179 = load %struct.device*, %struct.device** %8, align 8
  %180 = call i32 @dev_warn(%struct.device* %179, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %181

181:                                              ; preds = %178, %172
  store i32 0, i32* %4, align 4
  br label %194

182:                                              ; preds = %171
  %183 = load %struct.pmbus_data*, %struct.pmbus_data** %10, align 8
  %184 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @hwmon_device_unregister(i32 %185)
  br label %187

187:                                              ; preds = %182, %159, %120, %114
  %188 = load %struct.pmbus_data*, %struct.pmbus_data** %10, align 8
  %189 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @kfree(i32 %191)
  %193 = load i32, i32* %12, align 4
  store i32 %193, i32* %4, align 4
  br label %194

194:                                              ; preds = %187, %181, %106, %75, %42, %33, %19
  %195 = load i32, i32* %4, align 4
  ret i32 %195
}

declare dso_local %struct.pmbus_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.pmbus_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.TYPE_4__** @devm_kcalloc(%struct.device*, i64, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.pmbus_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @pmbus_init_common(%struct.i2c_client*, %struct.pmbus_data*, %struct.pmbus_driver_info*) #1

declare dso_local i32 @pmbus_find_attributes(%struct.i2c_client*, %struct.pmbus_data*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @memcpy(%struct.TYPE_4__**, i64*, i32) #1

declare dso_local i32 @hwmon_device_register_with_groups(%struct.device*, i32, %struct.pmbus_data*, %struct.TYPE_4__**) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @pmbus_regulator_register(%struct.pmbus_data*) #1

declare dso_local i32 @pmbus_init_debugfs(%struct.i2c_client*, %struct.pmbus_data*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @hwmon_device_unregister(i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
