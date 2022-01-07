; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_sht3x.c_sht3x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_sht3x.c_sht3x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attribute_group = type { i32 }
%struct.i2c_client = type { i32, %struct.device, %struct.i2c_adapter* }
%struct.device = type { i64 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i64 }
%struct.sht3x_data = type { i32, i32, %struct.sht3x_platform_data, %struct.i2c_client*, i64, i64 }
%struct.sht3x_platform_data = type { i32, i32 }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@sht3x_cmd_clear_status_reg = common dso_local global i32 0, align 4
@SHT3X_CMD_LENGTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@sht3x_crc8_table = common dso_local global i32 0, align 4
@SHT3X_CRC8_POLYNOMIAL = common dso_local global i32 0, align 4
@sts3x = common dso_local global i64 0, align 8
@sts3x_groups = common dso_local global %struct.attribute_group** null, align 8
@sht3x_groups = common dso_local global %struct.attribute_group** null, align 8
@.str = private unnamed_addr constant [33 x i8] c"unable to register hwmon device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @sht3x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sht3x_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sht3x_data*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.attribute_group**, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 2
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %13, align 8
  store %struct.i2c_adapter* %14, %struct.i2c_adapter** %9, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 1
  store %struct.device* %16, %struct.device** %10, align 8
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %18 = load i32, i32* @I2C_FUNC_I2C, align 4
  %19 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %128

24:                                               ; preds = %2
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = load i32, i32* @sht3x_cmd_clear_status_reg, align 4
  %27 = load i32, i32* @SHT3X_CMD_LENGTH, align 4
  %28 = call i32 @i2c_master_send(%struct.i2c_client* %25, i32 %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @SHT3X_CMD_LENGTH, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  br label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  br label %40

40:                                               ; preds = %37, %35
  %41 = phi i32 [ %36, %35 ], [ %39, %37 ]
  store i32 %41, i32* %3, align 4
  br label %128

42:                                               ; preds = %24
  %43 = load %struct.device*, %struct.device** %10, align 8
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.sht3x_data* @devm_kzalloc(%struct.device* %43, i32 40, i32 %44)
  store %struct.sht3x_data* %45, %struct.sht3x_data** %7, align 8
  %46 = load %struct.sht3x_data*, %struct.sht3x_data** %7, align 8
  %47 = icmp ne %struct.sht3x_data* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %128

51:                                               ; preds = %42
  %52 = load %struct.sht3x_data*, %struct.sht3x_data** %7, align 8
  %53 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.sht3x_platform_data, %struct.sht3x_platform_data* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  %55 = load %struct.sht3x_data*, %struct.sht3x_data** %7, align 8
  %56 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.sht3x_platform_data, %struct.sht3x_platform_data* %56, i32 0, i32 1
  store i32 1, i32* %57, align 4
  %58 = load %struct.sht3x_data*, %struct.sht3x_data** %7, align 8
  %59 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %58, i32 0, i32 5
  store i64 0, i64* %59, align 8
  %60 = load i64, i64* @jiffies, align 8
  %61 = call i64 @msecs_to_jiffies(i32 3000)
  %62 = sub nsw i64 %60, %61
  %63 = load %struct.sht3x_data*, %struct.sht3x_data** %7, align 8
  %64 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %63, i32 0, i32 4
  store i64 %62, i64* %64, align 8
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = load %struct.sht3x_data*, %struct.sht3x_data** %7, align 8
  %67 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %66, i32 0, i32 3
  store %struct.i2c_client* %65, %struct.i2c_client** %67, align 8
  %68 = load i32, i32* @sht3x_crc8_table, align 4
  %69 = load i32, i32* @SHT3X_CRC8_POLYNOMIAL, align 4
  %70 = call i32 @crc8_populate_msb(i32 %68, i32 %69)
  %71 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %72 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.device, %struct.device* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %51
  %77 = load %struct.sht3x_data*, %struct.sht3x_data** %7, align 8
  %78 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %77, i32 0, i32 2
  %79 = load %struct.device*, %struct.device** %10, align 8
  %80 = getelementptr inbounds %struct.device, %struct.device* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to %struct.sht3x_platform_data*
  %83 = bitcast %struct.sht3x_platform_data* %78 to i8*
  %84 = bitcast %struct.sht3x_platform_data* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %83, i8* align 4 %84, i64 8, i1 false)
  br label %85

85:                                               ; preds = %76, %51
  %86 = load %struct.sht3x_data*, %struct.sht3x_data** %7, align 8
  %87 = call i32 @sht3x_select_command(%struct.sht3x_data* %86)
  %88 = load %struct.sht3x_data*, %struct.sht3x_data** %7, align 8
  %89 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %88, i32 0, i32 1
  %90 = call i32 @mutex_init(i32* %89)
  %91 = load %struct.sht3x_data*, %struct.sht3x_data** %7, align 8
  %92 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %91, i32 0, i32 0
  %93 = call i32 @mutex_init(i32* %92)
  %94 = call i32 @usleep_range(i32 500, i32 600)
  %95 = load %struct.sht3x_data*, %struct.sht3x_data** %7, align 8
  %96 = call i32 @limits_update(%struct.sht3x_data* %95)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %85
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %3, align 4
  br label %128

101:                                              ; preds = %85
  %102 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %103 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @sts3x, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load %struct.attribute_group**, %struct.attribute_group*** @sts3x_groups, align 8
  store %struct.attribute_group** %108, %struct.attribute_group*** %11, align 8
  br label %111

109:                                              ; preds = %101
  %110 = load %struct.attribute_group**, %struct.attribute_group*** @sht3x_groups, align 8
  store %struct.attribute_group** %110, %struct.attribute_group*** %11, align 8
  br label %111

111:                                              ; preds = %109, %107
  %112 = load %struct.device*, %struct.device** %10, align 8
  %113 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %114 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.sht3x_data*, %struct.sht3x_data** %7, align 8
  %117 = load %struct.attribute_group**, %struct.attribute_group*** %11, align 8
  %118 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %112, i32 %115, %struct.sht3x_data* %116, %struct.attribute_group** %117)
  store %struct.device* %118, %struct.device** %8, align 8
  %119 = load %struct.device*, %struct.device** %8, align 8
  %120 = call i64 @IS_ERR(%struct.device* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %111
  %123 = load %struct.device*, %struct.device** %10, align 8
  %124 = call i32 @dev_dbg(%struct.device* %123, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %111
  %126 = load %struct.device*, %struct.device** %8, align 8
  %127 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %126)
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %125, %99, %48, %40, %21
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i32, i32) #1

declare dso_local %struct.sht3x_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @crc8_populate_msb(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sht3x_select_command(%struct.sht3x_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @limits_update(%struct.sht3x_data*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i32, %struct.sht3x_data*, %struct.attribute_group**) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
