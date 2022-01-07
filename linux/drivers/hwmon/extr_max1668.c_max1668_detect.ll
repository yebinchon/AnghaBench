; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max1668.c_max1668_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max1668.c_max1668_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@MAX1668_REG_MAN_ID = common dso_local global i32 0, align 4
@MAN_ID_MAXIM = common dso_local global i32 0, align 4
@MAX1668_REG_DEV_ID = common dso_local global i32 0, align 4
@DEV_ID_MAX1668 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"max1668\00", align 1
@DEV_ID_MAX1805 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"max1805\00", align 1
@DEV_ID_MAX1989 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"max1989\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_board_info*)* @max1668_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max1668_detect(%struct.i2c_client* %0, %struct.i2c_board_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_board_info*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  store %struct.i2c_adapter* %12, %struct.i2c_adapter** %6, align 8
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %14 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %15 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %69

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load i32, i32* @MAX1668_REG_MAN_ID, align 4
  %23 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @MAN_ID_MAXIM, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %69

30:                                               ; preds = %20
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = load i32, i32* @MAX1668_REG_DEV_ID, align 4
  %33 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %69

39:                                               ; preds = %30
  store i8* null, i8** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @DEV_ID_MAX1668, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %56

44:                                               ; preds = %39
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @DEV_ID_MAX1805, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %55

49:                                               ; preds = %44
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @DEV_ID_MAX1989, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %54

54:                                               ; preds = %53, %49
  br label %55

55:                                               ; preds = %54, %48
  br label %56

56:                                               ; preds = %55, %43
  %57 = load i8*, i8** %7, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %69

62:                                               ; preds = %56
  %63 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %64 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i8*, i8** %7, align 8
  %67 = load i32, i32* @I2C_NAME_SIZE, align 4
  %68 = call i32 @strlcpy(i32 %65, i8* %66, i32 %67)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %62, %59, %36, %27, %17
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
