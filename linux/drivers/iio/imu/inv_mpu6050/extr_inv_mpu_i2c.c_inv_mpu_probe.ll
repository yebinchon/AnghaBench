; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/inv_mpu6050/extr_inv_mpu_i2c.c_inv_mpu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/inv_mpu6050/extr_inv_mpu_i2c.c_inv_mpu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i8*, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.i2c_device_id = type { i8*, i64 }
%struct.inv_mpu6050_state = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.regmap = type { i32 }

@I2C_FUNC_SMBUS_I2C_BLOCK = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@inv_mpu_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to register i2c regmap %d\0A\00", align 1
@I2C_MUX_LOCKED = common dso_local global i32 0, align 4
@I2C_MUX_GATE = common dso_local global i32 0, align 4
@inv_mpu6050_select_bypass = common dso_local global i32 0, align 4
@inv_mpu6050_deselect_bypass = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @inv_mpu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inv_mpu_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.inv_mpu6050_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.regmap*, align 8
  %10 = alloca i8*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @I2C_FUNC_SMBUS_I2C_BLOCK, align 4
  %15 = call i32 @i2c_check_functionality(i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %151

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 1
  %29 = call i64 @of_device_get_match_data(%struct.TYPE_10__* %28)
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %10, align 8
  br label %65

34:                                               ; preds = %20
  %35 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %36 = icmp ne %struct.i2c_device_id* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %39 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %8, align 4
  %42 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %43 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %10, align 8
  br label %64

45:                                               ; preds = %34
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 1
  %48 = call i64 @ACPI_HANDLE(%struct.TYPE_10__* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 1
  %53 = call i8* @inv_mpu_match_acpi_device(%struct.TYPE_10__* %52, i32* %8)
  store i8* %53, i8** %10, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %151

59:                                               ; preds = %50
  br label %63

60:                                               ; preds = %45
  %61 = load i32, i32* @ENOSYS, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %151

63:                                               ; preds = %59
  br label %64

64:                                               ; preds = %63, %37
  br label %65

65:                                               ; preds = %64, %26
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = call %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client* %66, i32* @inv_mpu_regmap_config)
  store %struct.regmap* %67, %struct.regmap** %9, align 8
  %68 = load %struct.regmap*, %struct.regmap** %9, align 8
  %69 = call i64 @IS_ERR(%struct.regmap* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %73 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %72, i32 0, i32 1
  %74 = load %struct.regmap*, %struct.regmap** %9, align 8
  %75 = call i32 @PTR_ERR(%struct.regmap* %74)
  %76 = call i32 @dev_err(%struct.TYPE_10__* %73, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load %struct.regmap*, %struct.regmap** %9, align 8
  %78 = call i32 @PTR_ERR(%struct.regmap* %77)
  store i32 %78, i32* %3, align 4
  br label %151

79:                                               ; preds = %65
  %80 = load %struct.regmap*, %struct.regmap** %9, align 8
  %81 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %82 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load i8*, i8** %10, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @inv_mpu_core_probe(%struct.regmap* %80, i32 %83, i8* %84, i32* null, i32 %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %79
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %3, align 4
  br label %151

91:                                               ; preds = %79
  %92 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %93 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %92, i32 0, i32 1
  %94 = call i32 @dev_get_drvdata(%struct.TYPE_10__* %93)
  %95 = call %struct.inv_mpu6050_state* @iio_priv(i32 %94)
  store %struct.inv_mpu6050_state* %95, %struct.inv_mpu6050_state** %6, align 8
  %96 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %97 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  switch i32 %98, label %100 [
    i32 128, label %99
    i32 129, label %99
  ]

99:                                               ; preds = %91, %91
  br label %144

100:                                              ; preds = %91
  %101 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %102 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %105 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %104, i32 0, i32 1
  %106 = load i32, i32* @I2C_MUX_LOCKED, align 4
  %107 = load i32, i32* @I2C_MUX_GATE, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @inv_mpu6050_select_bypass, align 4
  %110 = load i32, i32* @inv_mpu6050_deselect_bypass, align 4
  %111 = call %struct.TYPE_11__* @i2c_mux_alloc(i32 %103, %struct.TYPE_10__* %105, i32 1, i32 0, i32 %108, i32 %109, i32 %110)
  %112 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %113 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %112, i32 0, i32 1
  store %struct.TYPE_11__* %111, %struct.TYPE_11__** %113, align 8
  %114 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %115 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %114, i32 0, i32 1
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %115, align 8
  %117 = icmp ne %struct.TYPE_11__* %116, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %100
  %119 = load i32, i32* @ENOMEM, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %3, align 4
  br label %151

121:                                              ; preds = %100
  %122 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %123 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %122, i32 0, i32 1
  %124 = call i32 @dev_get_drvdata(%struct.TYPE_10__* %123)
  %125 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %126 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %125, i32 0, i32 1
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  store i32 %124, i32* %128, align 4
  %129 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %130 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %129, i32 0, i32 1
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %130, align 8
  %132 = call i32 @i2c_mux_add_adapter(%struct.TYPE_11__* %131, i32 0, i32 0, i32 0)
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %121
  %136 = load i32, i32* %7, align 4
  store i32 %136, i32* %3, align 4
  br label %151

137:                                              ; preds = %121
  %138 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %139 = call i32 @inv_mpu_acpi_create_mux_client(%struct.i2c_client* %138)
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  br label %145

143:                                              ; preds = %137
  br label %144

144:                                              ; preds = %143, %99
  store i32 0, i32* %3, align 4
  br label %151

145:                                              ; preds = %142
  %146 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %147 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %146, i32 0, i32 1
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %147, align 8
  %149 = call i32 @i2c_mux_del_adapters(%struct.TYPE_11__* %148)
  %150 = load i32, i32* %7, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %145, %144, %135, %118, %89, %71, %60, %56, %17
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i64 @of_device_get_match_data(%struct.TYPE_10__*) #1

declare dso_local i64 @ACPI_HANDLE(%struct.TYPE_10__*) #1

declare dso_local i8* @inv_mpu_match_acpi_device(%struct.TYPE_10__*, i32*) #1

declare dso_local %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @inv_mpu_core_probe(%struct.regmap*, i32, i8*, i32*, i32) #1

declare dso_local %struct.inv_mpu6050_state* @iio_priv(i32) #1

declare dso_local i32 @dev_get_drvdata(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_11__* @i2c_mux_alloc(i32, %struct.TYPE_10__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @i2c_mux_add_adapter(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @inv_mpu_acpi_create_mux_client(%struct.i2c_client*) #1

declare dso_local i32 @i2c_mux_del_adapters(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
