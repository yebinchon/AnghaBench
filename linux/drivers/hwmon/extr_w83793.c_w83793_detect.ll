; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83793.c_w83793_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83793.c_w83793_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i16, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@W83793_REG_BANKSEL = common dso_local global i32 0, align 4
@W83793_REG_VENDORID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"w83793: Detection failed at check vendor id\0A\00", align 1
@W83793_REG_I2C_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"w83793: Detection failed at check i2c addr\0A\00", align 1
@W83793_REG_CHIPID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"w83793\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_board_info*)* @w83793_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83793_detect(%struct.i2c_client* %0, %struct.i2c_board_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_board_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i16, align 2
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 1
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %12, align 8
  store %struct.i2c_adapter* %13, %struct.i2c_adapter** %9, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = load i16, i16* %15, align 8
  store i16 %16, i16* %10, align 2
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %18 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %19 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %77

24:                                               ; preds = %2
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = load i32, i32* @W83793_REG_BANKSEL, align 4
  %27 = call zeroext i16 @i2c_smbus_read_byte_data(%struct.i2c_client* %25, i32 %26)
  %28 = zext i16 %27 to i32
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, 128
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 92, i32 163
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = load i32, i32* @W83793_REG_VENDORID, align 4
  %37 = call zeroext i16 @i2c_smbus_read_byte_data(%struct.i2c_client* %35, i32 %36)
  %38 = zext i16 %37 to i32
  %39 = icmp ne i32 %34, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %24
  %41 = call i32 @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %77

44:                                               ; preds = %24
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, 7
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %44
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = load i32, i32* @W83793_REG_I2C_ADDR, align 4
  %51 = call zeroext i16 @i2c_smbus_read_byte_data(%struct.i2c_client* %49, i32 %50)
  %52 = zext i16 %51 to i32
  %53 = load i16, i16* %10, align 2
  %54 = zext i16 %53 to i32
  %55 = shl i32 %54, 1
  %56 = icmp ne i32 %52, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %48
  %58 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %77

61:                                               ; preds = %48, %44
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = load i32, i32* @W83793_REG_CHIPID, align 4
  %64 = call zeroext i16 @i2c_smbus_read_byte_data(%struct.i2c_client* %62, i32 %63)
  %65 = zext i16 %64 to i32
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 123
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %77

71:                                               ; preds = %61
  %72 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %73 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @I2C_NAME_SIZE, align 4
  %76 = call i32 @strlcpy(i32 %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %71, %68, %57, %40, %21
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local zeroext i16 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
