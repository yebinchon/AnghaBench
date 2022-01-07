; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1026.c_adm1026_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1026.c_adm1026_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ADM1026_REG_COMPANY = common dso_local global i32 0, align 4
@ADM1026_REG_VERSTEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"Detecting device at %d,0x%02x with COMPANY: 0x%02x and VERSTEP: 0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Autodetecting device at %d,0x%02x...\0A\00", align 1
@ADM1026_COMPANY_ANALOG_DEV = common dso_local global i32 0, align 4
@ADM1026_VERSTEP_ADM1026 = common dso_local global i32 0, align 4
@ADM1026_VERSTEP_GENERIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"Unrecognized stepping 0x%02x. Defaulting to ADM1026.\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"Found version/stepping 0x%02x. Assuming generic ADM1026.\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Autodetection failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"adm1026\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_board_info*)* @adm1026_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm1026_detect(%struct.i2c_client* %0, %struct.i2c_board_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_board_info*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  store %struct.i2c_adapter* %12, %struct.i2c_adapter** %6, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %17 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %18 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %94

23:                                               ; preds = %2
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = load i32, i32* @ADM1026_REG_COMPANY, align 4
  %26 = call i32 @adm1026_read_value(%struct.i2c_client* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = load i32, i32* @ADM1026_REG_VERSTEP, align 4
  %29 = call i32 @adm1026_read_value(%struct.i2c_client* %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %31 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %30, i32 0, i32 0
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 1
  %34 = load %struct.i2c_adapter*, %struct.i2c_adapter** %33, align 8
  %35 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %34)
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %31, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %43 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %42, i32 0, i32 0
  %44 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %45 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %44)
  %46 = load i32, i32* %7, align 4
  %47 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @ADM1026_COMPANY_ANALOG_DEV, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %23
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @ADM1026_VERSTEP_ADM1026, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %88

56:                                               ; preds = %51, %23
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @ADM1026_COMPANY_ANALOG_DEV, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %56
  %61 = load i32, i32* %9, align 4
  %62 = and i32 %61, 240
  %63 = load i32, i32* @ADM1026_VERSTEP_GENERIC, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %67 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %66, i32 0, i32 0
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @dev_err(i32* %67, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  br label %87

70:                                               ; preds = %60, %56
  %71 = load i32, i32* %9, align 4
  %72 = and i32 %71, 240
  %73 = load i32, i32* @ADM1026_VERSTEP_GENERIC, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %77 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %76, i32 0, i32 0
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @dev_err(i32* %77, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  br label %86

80:                                               ; preds = %70
  %81 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %82 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %81, i32 0, i32 0
  %83 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %82, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %84 = load i32, i32* @ENODEV, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %94

86:                                               ; preds = %75
  br label %87

87:                                               ; preds = %86, %65
  br label %88

88:                                               ; preds = %87, %55
  %89 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %90 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @I2C_NAME_SIZE, align 4
  %93 = call i32 @strlcpy(i32 %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %92)
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %88, %80, %20
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @adm1026_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @i2c_adapter_id(%struct.i2c_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
