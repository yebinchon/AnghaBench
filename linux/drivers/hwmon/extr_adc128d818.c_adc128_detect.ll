; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adc128d818.c_adc128_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adc128d818.c_adc128_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ADC128_REG_MAN_ID = common dso_local global i32 0, align 4
@ADC128_REG_DEV_ID = common dso_local global i32 0, align 4
@ADC128_REG_CONFIG = common dso_local global i32 0, align 4
@ADC128_REG_CONV_RATE = common dso_local global i32 0, align 4
@ADC128_REG_ONESHOT = common dso_local global i32 0, align 4
@ADC128_REG_SHUTDOWN = common dso_local global i32 0, align 4
@ADC128_REG_CONFIG_ADV = common dso_local global i32 0, align 4
@ADC128_REG_BUSY_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"adc128d818\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_board_info*)* @adc128_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc128_detect(%struct.i2c_client* %0, %struct.i2c_board_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_board_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %12 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @i2c_check_functionality(i32 %10, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %94

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load i32, i32* @ADC128_REG_MAN_ID, align 4
  %22 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load i32, i32* @ADC128_REG_DEV_ID, align 4
  %25 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 9
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %19
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %94

34:                                               ; preds = %28
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = load i32, i32* @ADC128_REG_CONFIG, align 4
  %37 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %35, i32 %36)
  %38 = and i32 %37, 244
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %94

43:                                               ; preds = %34
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = load i32, i32* @ADC128_REG_CONV_RATE, align 4
  %46 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %44, i32 %45)
  %47 = and i32 %46, 254
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %94

52:                                               ; preds = %43
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = load i32, i32* @ADC128_REG_ONESHOT, align 4
  %55 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %53, i32 %54)
  %56 = and i32 %55, 254
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %94

61:                                               ; preds = %52
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = load i32, i32* @ADC128_REG_SHUTDOWN, align 4
  %64 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %62, i32 %63)
  %65 = and i32 %64, 254
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* @ENODEV, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %94

70:                                               ; preds = %61
  %71 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %72 = load i32, i32* @ADC128_REG_CONFIG_ADV, align 4
  %73 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %71, i32 %72)
  %74 = and i32 %73, 248
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i32, i32* @ENODEV, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %94

79:                                               ; preds = %70
  %80 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %81 = load i32, i32* @ADC128_REG_BUSY_STATUS, align 4
  %82 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %80, i32 %81)
  %83 = and i32 %82, 252
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i32, i32* @ENODEV, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %94

88:                                               ; preds = %79
  %89 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %90 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @I2C_NAME_SIZE, align 4
  %93 = call i32 @strlcpy(i32 %91, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %92)
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %88, %85, %76, %67, %58, %49, %40, %31, %16
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
