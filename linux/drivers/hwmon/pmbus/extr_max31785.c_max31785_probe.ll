; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_max31785.c_max31785_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_max31785.c_max31785_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmbus_driver_info = type { i32 }
%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@max31785_info = common dso_local global %struct.pmbus_driver_info zeroinitializer, align 4
@PMBUS_PAGE = common dso_local global i32 0, align 4
@MFR_REVISION = common dso_local global i32 0, align 4
@MAX31785A = common dso_local global i64 0, align 8
@MAX31785 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"max31785a\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"Expected max3175a, found max31785: cannot provide secondary tachometer readings\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @max31785_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max31785_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.pmbus_driver_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  store %struct.device* %11, %struct.device** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %16 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @i2c_check_functionality(i32 %14, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %93

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.pmbus_driver_info* @devm_kzalloc(%struct.device* %24, i32 4, i32 %25)
  store %struct.pmbus_driver_info* %26, %struct.pmbus_driver_info** %7, align 8
  %27 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %7, align 8
  %28 = icmp ne %struct.pmbus_driver_info* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %93

32:                                               ; preds = %23
  %33 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %7, align 8
  %34 = bitcast %struct.pmbus_driver_info* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 bitcast (%struct.pmbus_driver_info* @max31785_info to i8*), i64 4, i1 false)
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = load i32, i32* @PMBUS_PAGE, align 4
  %37 = call i64 @i2c_smbus_write_byte_data(%struct.i2c_client* %35, i32 %36, i32 255)
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i64, i64* %9, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %93

43:                                               ; preds = %32
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = load i32, i32* @MFR_REVISION, align 4
  %46 = call i64 @i2c_smbus_read_word_data(%struct.i2c_client* %44, i32 %45)
  store i64 %46, i64* %9, align 8
  %47 = load i64, i64* %9, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i64, i64* %9, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %3, align 4
  br label %93

52:                                               ; preds = %43
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* @MAX31785A, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 1, i32* %8, align 4
  br label %75

57:                                               ; preds = %52
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* @MAX31785, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %57
  %62 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %63 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %61
  %68 = load %struct.device*, %struct.device** %6, align 8
  %69 = call i32 @dev_warn(%struct.device* %68, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %61
  br label %74

71:                                               ; preds = %57
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %93

74:                                               ; preds = %70
  br label %75

75:                                               ; preds = %74, %56
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %75
  %79 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %80 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %7, align 8
  %81 = call i64 @max31785_configure_dual_tach(%struct.i2c_client* %79, %struct.pmbus_driver_info* %80)
  store i64 %81, i64* %9, align 8
  %82 = load i64, i64* %9, align 8
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i64, i64* %9, align 8
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %3, align 4
  br label %93

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %87, %75
  %89 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %90 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %91 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %7, align 8
  %92 = call i32 @pmbus_do_probe(%struct.i2c_client* %89, %struct.i2c_device_id* %90, %struct.pmbus_driver_info* %91)
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %88, %84, %71, %49, %40, %29, %20
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.pmbus_driver_info* @devm_kzalloc(%struct.device*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i64 @i2c_smbus_read_word_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i64 @max31785_configure_dual_tach(%struct.i2c_client*, %struct.pmbus_driver_info*) #1

declare dso_local i32 @pmbus_do_probe(%struct.i2c_client*, %struct.i2c_device_id*, %struct.pmbus_driver_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
