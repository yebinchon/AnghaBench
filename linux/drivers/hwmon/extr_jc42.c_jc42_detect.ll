; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_jc42.c_jc42_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_jc42.c_jc42_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jc42_chips = type { i32, i32, i32 }
%struct.i2c_client = type { %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@JC42_REG_CAP = common dso_local global i32 0, align 4
@JC42_REG_CONFIG = common dso_local global i32 0, align 4
@JC42_REG_MANID = common dso_local global i32 0, align 4
@JC42_REG_DEVICEID = common dso_local global i32 0, align 4
@jc42_chips = common dso_local global %struct.jc42_chips* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"jc42\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_board_info*)* @jc42_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jc42_detect(%struct.i2c_client* %0, %struct.i2c_board_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_board_info*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.jc42_chips*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %5, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %14, align 8
  store %struct.i2c_adapter* %15, %struct.i2c_adapter** %6, align 8
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %17 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %18 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %16, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %102

25:                                               ; preds = %2
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = load i32, i32* @JC42_REG_CAP, align 4
  %28 = call i32 @i2c_smbus_read_word_swapped(%struct.i2c_client* %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = load i32, i32* @JC42_REG_CONFIG, align 4
  %31 = call i32 @i2c_smbus_read_word_swapped(%struct.i2c_client* %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = load i32, i32* @JC42_REG_MANID, align 4
  %34 = call i32 @i2c_smbus_read_word_swapped(%struct.i2c_client* %32, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = load i32, i32* @JC42_REG_DEVICEID, align 4
  %37 = call i32 @i2c_smbus_read_word_swapped(%struct.i2c_client* %35, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %25
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %11, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46, %43, %40, %25
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %102

52:                                               ; preds = %46
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %53, 65280
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %8, align 4
  %58 = and i32 %57, 63488
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56, %52
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %102

63:                                               ; preds = %56
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %96, %63
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.jc42_chips*, %struct.jc42_chips** @jc42_chips, align 8
  %67 = call i32 @ARRAY_SIZE(%struct.jc42_chips* %66)
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %69, label %99

69:                                               ; preds = %64
  %70 = load %struct.jc42_chips*, %struct.jc42_chips** @jc42_chips, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.jc42_chips, %struct.jc42_chips* %70, i64 %72
  store %struct.jc42_chips* %73, %struct.jc42_chips** %12, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.jc42_chips*, %struct.jc42_chips** %12, align 8
  %76 = getelementptr inbounds %struct.jc42_chips, %struct.jc42_chips* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %74, %77
  br i1 %78, label %79, label %95

79:                                               ; preds = %69
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.jc42_chips*, %struct.jc42_chips** %12, align 8
  %82 = getelementptr inbounds %struct.jc42_chips, %struct.jc42_chips* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %80, %83
  %85 = load %struct.jc42_chips*, %struct.jc42_chips** %12, align 8
  %86 = getelementptr inbounds %struct.jc42_chips, %struct.jc42_chips* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %84, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %79
  %90 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %91 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @I2C_NAME_SIZE, align 4
  %94 = call i32 @strlcpy(i32 %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %93)
  store i32 0, i32* %3, align 4
  br label %102

95:                                               ; preds = %79, %69
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %64

99:                                               ; preds = %64
  %100 = load i32, i32* @ENODEV, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %99, %89, %60, %49, %22
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @i2c_smbus_read_word_swapped(%struct.i2c_client*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.jc42_chips*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
