; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_tmp421.c_tmp421_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_tmp421.c_tmp421_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@tmp421_detect.names = internal constant [5 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [7 x i8] c"TMP421\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"TMP422\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"TMP423\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"TMP441\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"TMP442\00", align 1
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@TMP421_MANUFACTURER_ID_REG = common dso_local global i32 0, align 4
@TMP421_MANUFACTURER_ID = common dso_local global i32 0, align 4
@TMP421_CONVERSION_RATE_REG = common dso_local global i32 0, align 4
@TMP421_STATUS_REG = common dso_local global i32 0, align 4
@TMP421_DEVICE_ID_REG = common dso_local global i32 0, align 4
@tmp421 = common dso_local global i32 0, align 4
@tmp422 = common dso_local global i32 0, align 4
@tmp423 = common dso_local global i32 0, align 4
@tmp441 = common dso_local global i32 0, align 4
@tmp442 = common dso_local global i32 0, align 4
@tmp421_id = common dso_local global %struct.TYPE_2__* null, align 8
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Detected TI %s chip at 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_board_info*)* @tmp421_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmp421_detect(%struct.i2c_client* %0, %struct.i2c_board_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_board_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  store %struct.i2c_adapter* %12, %struct.i2c_adapter** %7, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %17 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %18 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %117

23:                                               ; preds = %2
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = load i32, i32* @TMP421_MANUFACTURER_ID_REG, align 4
  %26 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @TMP421_MANUFACTURER_ID, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %117

33:                                               ; preds = %23
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = load i32, i32* @TMP421_CONVERSION_RATE_REG, align 4
  %36 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %34, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, 248
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %117

43:                                               ; preds = %33
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = load i32, i32* @TMP421_STATUS_REG, align 4
  %46 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %44, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = and i32 %47, 127
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %117

53:                                               ; preds = %43
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = load i32, i32* @TMP421_DEVICE_ID_REG, align 4
  %56 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %54, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  switch i32 %57, label %92 [
    i32 132, label %58
    i32 131, label %60
    i32 130, label %68
    i32 129, label %79
    i32 128, label %81
  ]

58:                                               ; preds = %53
  %59 = load i32, i32* @tmp421, align 4
  store i32 %59, i32* %6, align 4
  br label %95

60:                                               ; preds = %53
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %61, 42
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* @ENODEV, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %117

66:                                               ; preds = %60
  %67 = load i32, i32* @tmp422, align 4
  store i32 %67, i32* %6, align 4
  br label %95

68:                                               ; preds = %53
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 76
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 77
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* @ENODEV, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %117

77:                                               ; preds = %71, %68
  %78 = load i32, i32* @tmp423, align 4
  store i32 %78, i32* %6, align 4
  br label %95

79:                                               ; preds = %53
  %80 = load i32, i32* @tmp441, align 4
  store i32 %80, i32* %6, align 4
  br label %95

81:                                               ; preds = %53
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 76
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 77
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* @ENODEV, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %117

90:                                               ; preds = %84, %81
  %91 = load i32, i32* @tmp442, align 4
  store i32 %91, i32* %6, align 4
  br label %95

92:                                               ; preds = %53
  %93 = load i32, i32* @ENODEV, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %117

95:                                               ; preds = %90, %79, %77, %66, %58
  %96 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %97 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tmp421_id, align 8
  %100 = load i32, i32* %6, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @I2C_NAME_SIZE, align 4
  %106 = call i32 @strlcpy(i32 %98, i32 %104, i32 %105)
  %107 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %108 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %107, i32 0, i32 0
  %109 = load i32, i32* %6, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds [5 x i8*], [5 x i8*]* @tmp421_detect.names, i64 0, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %114 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @dev_info(i32* %108, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %112, i32 %115)
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %95, %92, %87, %74, %63, %50, %40, %30, %20
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
