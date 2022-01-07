; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_smsc47m192.c_smsc47m192_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_smsc47m192.c_smsc47m192_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SMSC47M192_REG_VERSION = common dso_local global i32 0, align 4
@SMSC47M192_REG_COMPANY_ID = common dso_local global i32 0, align 4
@SMSC47M192_REG_VID = common dso_local global i32 0, align 4
@SMSC47M192_REG_VID4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"found SMSC47M192 or compatible, version 2, stepping A%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"SMSC47M192 detection failed at 0x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"smsc47m192\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_board_info*)* @smsc47m192_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc47m192_detect(%struct.i2c_client* %0, %struct.i2c_board_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_board_info*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 1
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  store %struct.i2c_adapter* %10, %struct.i2c_adapter** %6, align 8
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %12 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %13 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %63

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load i32, i32* @SMSC47M192_REG_VERSION, align 4
  %21 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = load i32, i32* @SMSC47M192_REG_COMPANY_ID, align 4
  %24 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %22, i32 %23)
  %25 = icmp eq i32 %24, 85
  br i1 %25, label %26, label %48

26:                                               ; preds = %18
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 240
  %29 = icmp eq i32 %28, 32
  br i1 %29, label %30, label %48

30:                                               ; preds = %26
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = load i32, i32* @SMSC47M192_REG_VID, align 4
  %33 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %31, i32 %32)
  %34 = and i32 %33, 112
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %30
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = load i32, i32* @SMSC47M192_REG_VID4, align 4
  %39 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %37, i32 %38)
  %40 = and i32 %39, 254
  %41 = icmp eq i32 %40, 128
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %44 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %43, i32 0, i32 0
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, 15
  %47 = call i32 @dev_info(i32* %44, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %57

48:                                               ; preds = %36, %30, %26, %18
  %49 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %50 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %49, i32 0, i32 0
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dev_dbg(i32* %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %63

57:                                               ; preds = %42
  %58 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %59 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @I2C_NAME_SIZE, align 4
  %62 = call i32 @strlcpy(i32 %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %57, %48, %15
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
