; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_tmp401.c_tmp401_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_tmp401.c_tmp401_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@TMP401_MANUFACTURER_ID_REG = common dso_local global i32 0, align 4
@TMP401_MANUFACTURER_ID = common dso_local global i32 0, align 4
@TMP401_DEVICE_ID_REG = common dso_local global i32 0, align 4
@tmp401 = common dso_local global i32 0, align 4
@tmp411 = common dso_local global i32 0, align 4
@tmp431 = common dso_local global i32 0, align 4
@tmp432 = common dso_local global i32 0, align 4
@tmp435 = common dso_local global i32 0, align 4
@TMP401_CONFIG_READ = common dso_local global i32 0, align 4
@TMP401_CONVERSION_RATE_READ = common dso_local global i32 0, align 4
@tmp401_id = common dso_local global %struct.TYPE_2__* null, align 8
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_board_info*)* @tmp401_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmp401_detect(%struct.i2c_client* %0, %struct.i2c_board_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_board_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  store %struct.i2c_adapter* %11, %struct.i2c_adapter** %7, align 8
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %13 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %14 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %140

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load i32, i32* @TMP401_MANUFACTURER_ID_REG, align 4
  %22 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @TMP401_MANUFACTURER_ID, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %140

29:                                               ; preds = %19
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = load i32, i32* @TMP401_DEVICE_ID_REG, align 4
  %32 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  switch i32 %33, label %106 [
    i32 134, label %34
    i32 133, label %44
    i32 132, label %54
    i32 131, label %64
    i32 130, label %74
    i32 129, label %89
    i32 128, label %104
  ]

34:                                               ; preds = %29
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 76
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %140

42:                                               ; preds = %34
  %43 = load i32, i32* @tmp401, align 4
  store i32 %43, i32* %6, align 4
  br label %109

44:                                               ; preds = %29
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 76
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %140

52:                                               ; preds = %44
  %53 = load i32, i32* @tmp411, align 4
  store i32 %53, i32* %6, align 4
  br label %109

54:                                               ; preds = %29
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 77
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %140

62:                                               ; preds = %54
  %63 = load i32, i32* @tmp411, align 4
  store i32 %63, i32* %6, align 4
  br label %109

64:                                               ; preds = %29
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 78
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* @ENODEV, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %140

72:                                               ; preds = %64
  %73 = load i32, i32* @tmp411, align 4
  store i32 %73, i32* %6, align 4
  br label %109

74:                                               ; preds = %29
  %75 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %76 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 76
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %81 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 77
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i32, i32* @ENODEV, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %140

87:                                               ; preds = %79, %74
  %88 = load i32, i32* @tmp431, align 4
  store i32 %88, i32* %6, align 4
  br label %109

89:                                               ; preds = %29
  %90 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %91 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 76
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %96 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 77
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i32, i32* @ENODEV, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %140

102:                                              ; preds = %94, %89
  %103 = load i32, i32* @tmp432, align 4
  store i32 %103, i32* %6, align 4
  br label %109

104:                                              ; preds = %29
  %105 = load i32, i32* @tmp435, align 4
  store i32 %105, i32* %6, align 4
  br label %109

106:                                              ; preds = %29
  %107 = load i32, i32* @ENODEV, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %140

109:                                              ; preds = %104, %102, %87, %72, %62, %52, %42
  %110 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %111 = load i32, i32* @TMP401_CONFIG_READ, align 4
  %112 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %110, i32 %111)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = and i32 %113, 27
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %109
  %117 = load i32, i32* @ENODEV, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %140

119:                                              ; preds = %109
  %120 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %121 = load i32, i32* @TMP401_CONVERSION_RATE_READ, align 4
  %122 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %120, i32 %121)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp sgt i32 %123, 15
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load i32, i32* @ENODEV, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %3, align 4
  br label %140

128:                                              ; preds = %119
  %129 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %130 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tmp401_id, align 8
  %133 = load i32, i32* %6, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @I2C_NAME_SIZE, align 4
  %139 = call i32 @strlcpy(i32 %131, i32 %137, i32 %138)
  store i32 0, i32* %3, align 4
  br label %140

140:                                              ; preds = %128, %125, %116, %106, %99, %84, %69, %59, %49, %39, %26, %16
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
