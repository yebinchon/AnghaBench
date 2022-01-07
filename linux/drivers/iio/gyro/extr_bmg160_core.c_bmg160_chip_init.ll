; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_bmg160_core.c_bmg160_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_bmg160_core.c_bmg160_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmg160_data = type { i32, i32, i32 }
%struct.device = type { i32 }

@BMG160_GYRO_REG_RESET = common dso_local global i32 0, align 4
@BMG160_GYRO_RESET_VAL = common dso_local global i32 0, align 4
@BMG160_REG_CHIP_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Error reading reg_chip_id\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Chip Id %x\0A\00", align 1
@BMG160_CHIP_ID_VAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"invalid chip %x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@BMG160_MODE_NORMAL = common dso_local global i32 0, align 4
@BMG160_DEF_BW = common dso_local global i32 0, align 4
@BMG160_REG_RANGE = common dso_local global i32 0, align 4
@BMG160_RANGE_500DPS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Error writing reg_range\0A\00", align 1
@BMG160_REG_SLOPE_THRES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Error reading reg_slope_thres\0A\00", align 1
@BMG160_REG_INT_EN_1 = common dso_local global i32 0, align 4
@BMG160_INT1_BIT_OD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"Error updating bits in reg_int_en_1\0A\00", align 1
@BMG160_REG_INT_RST_LATCH = common dso_local global i32 0, align 4
@BMG160_INT_MODE_LATCH_INT = common dso_local global i32 0, align 4
@BMG160_INT_MODE_LATCH_RESET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"Error writing reg_motion_intr\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmg160_data*)* @bmg160_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmg160_chip_init(%struct.bmg160_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bmg160_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bmg160_data* %0, %struct.bmg160_data** %3, align 8
  %7 = load %struct.bmg160_data*, %struct.bmg160_data** %3, align 8
  %8 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.device* @regmap_get_device(i32 %9)
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.bmg160_data*, %struct.bmg160_data** %3, align 8
  %12 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @BMG160_GYRO_REG_RESET, align 4
  %15 = load i32, i32* @BMG160_GYRO_RESET_VAL, align 4
  %16 = call i32 @regmap_write(i32 %13, i32 %14, i32 %15)
  %17 = call i32 @usleep_range(i32 30000, i32 30700)
  %18 = load %struct.bmg160_data*, %struct.bmg160_data** %3, align 8
  %19 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @BMG160_REG_CHIP_ID, align 4
  %22 = call i32 @regmap_read(i32 %20, i32 %21, i32* %6)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %119

29:                                               ; preds = %1
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @dev_dbg(%struct.device* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @BMG160_CHIP_ID_VAL, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %119

42:                                               ; preds = %29
  %43 = load %struct.bmg160_data*, %struct.bmg160_data** %3, align 8
  %44 = load i32, i32* @BMG160_MODE_NORMAL, align 4
  %45 = call i32 @bmg160_set_mode(%struct.bmg160_data* %43, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %119

50:                                               ; preds = %42
  %51 = call i32 @usleep_range(i32 500, i32 1000)
  %52 = load %struct.bmg160_data*, %struct.bmg160_data** %3, align 8
  %53 = load i32, i32* @BMG160_DEF_BW, align 4
  %54 = call i32 @bmg160_set_bw(%struct.bmg160_data* %52, i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %119

59:                                               ; preds = %50
  %60 = load %struct.bmg160_data*, %struct.bmg160_data** %3, align 8
  %61 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @BMG160_REG_RANGE, align 4
  %64 = load i32, i32* @BMG160_RANGE_500DPS, align 4
  %65 = call i32 @regmap_write(i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %59
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %69, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %2, align 4
  br label %119

72:                                               ; preds = %59
  %73 = load i32, i32* @BMG160_RANGE_500DPS, align 4
  %74 = load %struct.bmg160_data*, %struct.bmg160_data** %3, align 8
  %75 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.bmg160_data*, %struct.bmg160_data** %3, align 8
  %77 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @BMG160_REG_SLOPE_THRES, align 4
  %80 = call i32 @regmap_read(i32 %78, i32 %79, i32* %6)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %72
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %84, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %86 = load i32, i32* %5, align 4
  store i32 %86, i32* %2, align 4
  br label %119

87:                                               ; preds = %72
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.bmg160_data*, %struct.bmg160_data** %3, align 8
  %90 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.bmg160_data*, %struct.bmg160_data** %3, align 8
  %92 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @BMG160_REG_INT_EN_1, align 4
  %95 = load i32, i32* @BMG160_INT1_BIT_OD, align 4
  %96 = call i32 @regmap_update_bits(i32 %93, i32 %94, i32 %95, i32 0)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %87
  %100 = load %struct.device*, %struct.device** %4, align 8
  %101 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %100, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %102 = load i32, i32* %5, align 4
  store i32 %102, i32* %2, align 4
  br label %119

103:                                              ; preds = %87
  %104 = load %struct.bmg160_data*, %struct.bmg160_data** %3, align 8
  %105 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @BMG160_REG_INT_RST_LATCH, align 4
  %108 = load i32, i32* @BMG160_INT_MODE_LATCH_INT, align 4
  %109 = load i32, i32* @BMG160_INT_MODE_LATCH_RESET, align 4
  %110 = or i32 %108, %109
  %111 = call i32 @regmap_write(i32 %106, i32 %107, i32 %110)
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %5, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %103
  %115 = load %struct.device*, %struct.device** %4, align 8
  %116 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %115, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %117 = load i32, i32* %5, align 4
  store i32 %117, i32* %2, align 4
  br label %119

118:                                              ; preds = %103
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %118, %114, %99, %83, %68, %57, %48, %36, %25
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local %struct.device* @regmap_get_device(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @bmg160_set_mode(%struct.bmg160_data*, i32) #1

declare dso_local i32 @bmg160_set_bw(%struct.bmg160_data*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
