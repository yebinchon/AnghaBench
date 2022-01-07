; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_silead.c_silead_ts_load_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_silead.c_silead_ts_load_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.silead_ts_data = type { i32 }
%struct.firmware = type { i32, i64 }
%struct.silead_fw_data = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Firmware file name: %s\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Firmware request error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Firmware load error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @silead_ts_load_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @silead_ts_load_fw(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.silead_ts_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.firmware*, align 8
  %9 = alloca %struct.silead_fw_data*, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %14 = call %struct.silead_ts_data* @i2c_get_clientdata(%struct.i2c_client* %13)
  store %struct.silead_ts_data* %14, %struct.silead_ts_data** %5, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load %struct.silead_ts_data*, %struct.silead_ts_data** %5, align 8
  %17 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_dbg(%struct.device* %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.silead_ts_data*, %struct.silead_ts_data** %5, align 8
  %21 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i32 @request_firmware(%struct.firmware** %8, i32 %22, %struct.device* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @dev_err(%struct.device* %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %2, align 4
  br label %80

32:                                               ; preds = %1
  %33 = load %struct.firmware*, %struct.firmware** %8, align 8
  %34 = getelementptr inbounds %struct.firmware, %struct.firmware* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = udiv i64 %36, 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %6, align 4
  %39 = load %struct.firmware*, %struct.firmware** %8, align 8
  %40 = getelementptr inbounds %struct.firmware, %struct.firmware* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.silead_fw_data*
  store %struct.silead_fw_data* %42, %struct.silead_fw_data** %9, align 8
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %68, %32
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %71

47:                                               ; preds = %43
  %48 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %49 = load %struct.silead_fw_data*, %struct.silead_fw_data** %9, align 8
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.silead_fw_data, %struct.silead_fw_data* %49, i64 %51
  %53 = getelementptr inbounds %struct.silead_fw_data, %struct.silead_fw_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.silead_fw_data*, %struct.silead_fw_data** %9, align 8
  %56 = load i32, i32* %7, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.silead_fw_data, %struct.silead_fw_data* %55, i64 %57
  %59 = getelementptr inbounds %struct.silead_fw_data, %struct.silead_fw_data* %58, i32 0, i32 0
  %60 = call i32 @i2c_smbus_write_i2c_block_data(%struct.i2c_client* %48, i32 %54, i32 4, i32* %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %47
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  br label %71

67:                                               ; preds = %47
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %7, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %43

71:                                               ; preds = %63, %43
  %72 = load %struct.firmware*, %struct.firmware** %8, align 8
  %73 = call i32 @release_firmware(%struct.firmware* %72)
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %78

77:                                               ; preds = %71
  br label %78

78:                                               ; preds = %77, %76
  %79 = phi i32 [ %74, %76 ], [ 0, %77 ]
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %78, %27
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.silead_ts_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i32, %struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @i2c_smbus_write_i2c_block_data(%struct.i2c_client*, i32, i32, i32*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
