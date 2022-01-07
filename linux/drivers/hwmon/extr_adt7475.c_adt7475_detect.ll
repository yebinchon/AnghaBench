; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7475.c_adt7475_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7475.c_adt7475_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@REG_VENDID = common dso_local global i32 0, align 4
@REG_DEVID2 = common dso_local global i32 0, align 4
@REG_DEVID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"adt7473\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"adt7475\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"adt7476\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"adt7490\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"Couldn't detect an ADT7473/75/76/90 part at 0x%02x\0A\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_board_info*)* @adt7475_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adt7475_detect(%struct.i2c_client* %0, %struct.i2c_board_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_board_info*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 1
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %12, align 8
  store %struct.i2c_adapter* %13, %struct.i2c_adapter** %6, align 8
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %15 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %16 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %78

21:                                               ; preds = %2
  %22 = load i32, i32* @REG_VENDID, align 4
  %23 = call i32 @adt7475_read(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @REG_DEVID2, align 4
  %25 = call i32 @adt7475_read(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 65
  br i1 %27, label %32, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* %9, align 4
  %30 = and i32 %29, 248
  %31 = icmp ne i32 %30, 104
  br i1 %31, label %32, label %35

32:                                               ; preds = %28, %21
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %78

35:                                               ; preds = %28
  %36 = load i32, i32* @REG_DEVID, align 4
  %37 = call i32 @adt7475_read(i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 115
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %71

41:                                               ; preds = %35
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, 117
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 46
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %70

50:                                               ; preds = %44, %41
  %51 = load i32, i32* %8, align 4
  %52 = icmp eq i32 %51, 118
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %69

54:                                               ; preds = %50
  %55 = load i32, i32* %9, align 4
  %56 = and i32 %55, 252
  %57 = icmp eq i32 %56, 108
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %68

59:                                               ; preds = %54
  %60 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %61 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %60, i32 0, i32 0
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @dev_dbg(i32* %61, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @ENODEV, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %78

68:                                               ; preds = %58
  br label %69

69:                                               ; preds = %68, %53
  br label %70

70:                                               ; preds = %69, %49
  br label %71

71:                                               ; preds = %70, %40
  %72 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %73 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i8*, i8** %10, align 8
  %76 = load i32, i32* @I2C_NAME_SIZE, align 4
  %77 = call i32 @strlcpy(i32 %74, i8* %75, i32 %76)
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %71, %59, %32, %18
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @adt7475_read(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
