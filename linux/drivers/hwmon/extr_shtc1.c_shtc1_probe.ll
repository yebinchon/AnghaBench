; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_shtc1.c_shtc1_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_shtc1.c_shtc1_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device, %struct.i2c_adapter* }
%struct.device = type { i64 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.shtc1_data = type { i32, i32, %struct.shtc1_platform_data, %struct.i2c_client* }
%struct.shtc1_platform_data = type { i32, i32 }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"plain i2c transactions not supported\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@shtc1_cmd_read_id_reg = common dso_local global i32 0, align 4
@SHTC1_CMD_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"could not send read_id_reg command: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"could not read ID register: %d\0A\00", align 1
@shtc3 = common dso_local global i32 0, align 4
@SHTC3_ID_MASK = common dso_local global i32 0, align 4
@SHTC3_ID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"SHTC3 ID register does not match\0A\00", align 1
@SHTC1_ID_MASK = common dso_local global i32 0, align 4
@SHTC1_ID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"SHTC1 ID register does not match\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@shtc1_groups = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"unable to register hwmon device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @shtc1_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shtc1_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i8], align 1
  %9 = alloca %struct.shtc1_data*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.i2c_adapter*, align 8
  %13 = alloca %struct.device*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %14 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %15 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %11, align 4
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 2
  %19 = load %struct.i2c_adapter*, %struct.i2c_adapter** %18, align 8
  store %struct.i2c_adapter* %19, %struct.i2c_adapter** %12, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 1
  store %struct.device* %21, %struct.device** %13, align 8
  %22 = load %struct.i2c_adapter*, %struct.i2c_adapter** %12, align 8
  %23 = load i32, i32* @I2C_FUNC_I2C, align 4
  %24 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %2
  %27 = load %struct.device*, %struct.device** %13, align 8
  %28 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %154

31:                                               ; preds = %2
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = load i32, i32* @shtc1_cmd_read_id_reg, align 4
  %34 = load i32, i32* @SHTC1_CMD_LENGTH, align 4
  %35 = call i32 @i2c_master_send(%struct.i2c_client* %32, i32 %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @SHTC1_CMD_LENGTH, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %31
  %40 = load %struct.device*, %struct.device** %13, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %40, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %6, align 4
  br label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  br label %50

50:                                               ; preds = %47, %45
  %51 = phi i32 [ %46, %45 ], [ %49, %47 ]
  store i32 %51, i32* %3, align 4
  br label %154

52:                                               ; preds = %31
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %55 = call i32 @i2c_master_recv(%struct.i2c_client* %53, i8* %54, i32 2)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = icmp ne i64 %57, 2
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load %struct.device*, %struct.device** %13, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %60, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %154

65:                                               ; preds = %52
  %66 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %67 = bitcast i8* %66 to i32*
  %68 = call i32 @be16_to_cpup(i32* %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @shtc3, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %65
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @SHTC3_ID_MASK, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* @SHTC3_ID, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = load %struct.device*, %struct.device** %13, align 8
  %80 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %79, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %81 = load i32, i32* @ENODEV, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %154

83:                                               ; preds = %72
  br label %96

84:                                               ; preds = %65
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @SHTC1_ID_MASK, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* @SHTC1_ID, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load %struct.device*, %struct.device** %13, align 8
  %92 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %91, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %93 = load i32, i32* @ENODEV, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %154

95:                                               ; preds = %84
  br label %96

96:                                               ; preds = %95, %83
  %97 = load %struct.device*, %struct.device** %13, align 8
  %98 = load i32, i32* @GFP_KERNEL, align 4
  %99 = call %struct.shtc1_data* @devm_kzalloc(%struct.device* %97, i32 24, i32 %98)
  store %struct.shtc1_data* %99, %struct.shtc1_data** %9, align 8
  %100 = load %struct.shtc1_data*, %struct.shtc1_data** %9, align 8
  %101 = icmp ne %struct.shtc1_data* %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %96
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %154

105:                                              ; preds = %96
  %106 = load %struct.shtc1_data*, %struct.shtc1_data** %9, align 8
  %107 = getelementptr inbounds %struct.shtc1_data, %struct.shtc1_data* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.shtc1_platform_data, %struct.shtc1_platform_data* %107, i32 0, i32 0
  store i32 0, i32* %108, align 8
  %109 = load %struct.shtc1_data*, %struct.shtc1_data** %9, align 8
  %110 = getelementptr inbounds %struct.shtc1_data, %struct.shtc1_data* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.shtc1_platform_data, %struct.shtc1_platform_data* %110, i32 0, i32 1
  store i32 1, i32* %111, align 4
  %112 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %113 = load %struct.shtc1_data*, %struct.shtc1_data** %9, align 8
  %114 = getelementptr inbounds %struct.shtc1_data, %struct.shtc1_data* %113, i32 0, i32 3
  store %struct.i2c_client* %112, %struct.i2c_client** %114, align 8
  %115 = load i32, i32* %11, align 4
  %116 = load %struct.shtc1_data*, %struct.shtc1_data** %9, align 8
  %117 = getelementptr inbounds %struct.shtc1_data, %struct.shtc1_data* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %119 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.device, %struct.device* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %105
  %124 = load %struct.shtc1_data*, %struct.shtc1_data** %9, align 8
  %125 = getelementptr inbounds %struct.shtc1_data, %struct.shtc1_data* %124, i32 0, i32 2
  %126 = load %struct.device*, %struct.device** %13, align 8
  %127 = getelementptr inbounds %struct.device, %struct.device* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = inttoptr i64 %128 to %struct.shtc1_platform_data*
  %130 = bitcast %struct.shtc1_platform_data* %125 to i8*
  %131 = bitcast %struct.shtc1_platform_data* %129 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %130, i8* align 4 %131, i64 8, i1 false)
  br label %132

132:                                              ; preds = %123, %105
  %133 = load %struct.shtc1_data*, %struct.shtc1_data** %9, align 8
  %134 = call i32 @shtc1_select_command(%struct.shtc1_data* %133)
  %135 = load %struct.shtc1_data*, %struct.shtc1_data** %9, align 8
  %136 = getelementptr inbounds %struct.shtc1_data, %struct.shtc1_data* %135, i32 0, i32 1
  %137 = call i32 @mutex_init(i32* %136)
  %138 = load %struct.device*, %struct.device** %13, align 8
  %139 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %140 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.shtc1_data*, %struct.shtc1_data** %9, align 8
  %143 = load i32, i32* @shtc1_groups, align 4
  %144 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %138, i32 %141, %struct.shtc1_data* %142, i32 %143)
  store %struct.device* %144, %struct.device** %10, align 8
  %145 = load %struct.device*, %struct.device** %10, align 8
  %146 = call i64 @IS_ERR(%struct.device* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %132
  %149 = load %struct.device*, %struct.device** %13, align 8
  %150 = call i32 @dev_dbg(%struct.device* %149, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %151

151:                                              ; preds = %148, %132
  %152 = load %struct.device*, %struct.device** %10, align 8
  %153 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %152)
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %151, %102, %90, %78, %59, %50, %26
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i8*, i32) #1

declare dso_local i32 @be16_to_cpup(i32*) #1

declare dso_local %struct.shtc1_data* @devm_kzalloc(%struct.device*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @shtc1_select_command(%struct.shtc1_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i32, %struct.shtc1_data*, i32) #1

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
