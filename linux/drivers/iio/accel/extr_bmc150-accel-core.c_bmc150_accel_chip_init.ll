; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bmc150-accel-core.c_bmc150_accel_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bmc150-accel-core.c_bmc150_accel_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.bmc150_accel_data = type { i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.device = type { i32 }

@BMC150_ACCEL_REG_RESET = common dso_local global i32 0, align 4
@BMC150_ACCEL_RESET_VAL = common dso_local global i32 0, align 4
@BMC150_ACCEL_REG_CHIP_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Error: Reading chip id\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Chip Id %x\0A\00", align 1
@bmc150_accel_chip_info_tbl = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"Invalid chip %x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@BMC150_ACCEL_SLEEP_MODE_NORMAL = common dso_local global i32 0, align 4
@BMC150_ACCEL_DEF_BW = common dso_local global i32 0, align 4
@BMC150_ACCEL_REG_PMU_RANGE = common dso_local global i32 0, align 4
@BMC150_ACCEL_DEF_RANGE_4G = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Error writing reg_pmu_range\0A\00", align 1
@BMC150_ACCEL_DEF_SLOPE_THRESHOLD = common dso_local global i32 0, align 4
@BMC150_ACCEL_DEF_SLOPE_DURATION = common dso_local global i32 0, align 4
@BMC150_ACCEL_REG_INT_RST_LATCH = common dso_local global i32 0, align 4
@BMC150_ACCEL_INT_MODE_LATCH_INT = common dso_local global i32 0, align 4
@BMC150_ACCEL_INT_MODE_LATCH_RESET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Error writing reg_int_rst_latch\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmc150_accel_data*)* @bmc150_accel_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmc150_accel_chip_init(%struct.bmc150_accel_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bmc150_accel_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bmc150_accel_data* %0, %struct.bmc150_accel_data** %3, align 8
  %8 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %3, align 8
  %9 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.device* @regmap_get_device(i32 %10)
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %3, align 8
  %13 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @BMC150_ACCEL_REG_RESET, align 4
  %16 = load i32, i32* @BMC150_ACCEL_RESET_VAL, align 4
  %17 = call i32 @regmap_write(i32 %14, i32 %15, i32 %16)
  %18 = call i32 @usleep_range(i32 1800, i32 2500)
  %19 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %3, align 8
  %20 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @BMC150_ACCEL_REG_CHIP_ID, align 4
  %23 = call i32 @regmap_read(i32 %21, i32 %22, i32* %7)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %131

30:                                               ; preds = %1
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @dev_dbg(%struct.device* %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %56, %30
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bmc150_accel_chip_info_tbl, align 8
  %37 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %36)
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %59

39:                                               ; preds = %34
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bmc150_accel_chip_info_tbl, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %39
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bmc150_accel_chip_info_tbl, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %3, align 8
  %54 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %53, i32 0, i32 4
  store %struct.TYPE_3__* %52, %struct.TYPE_3__** %54, align 8
  br label %59

55:                                               ; preds = %39
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %34

59:                                               ; preds = %48, %34
  %60 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %3, align 8
  %61 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %60, i32 0, i32 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = icmp ne %struct.TYPE_3__* %62, null
  br i1 %63, label %70, label %64

64:                                               ; preds = %59
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %65, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @ENODEV, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %131

70:                                               ; preds = %59
  %71 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %3, align 8
  %72 = load i32, i32* @BMC150_ACCEL_SLEEP_MODE_NORMAL, align 4
  %73 = call i32 @bmc150_accel_set_mode(%struct.bmc150_accel_data* %71, i32 %72, i32 0)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %5, align 4
  store i32 %77, i32* %2, align 4
  br label %131

78:                                               ; preds = %70
  %79 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %3, align 8
  %80 = load i32, i32* @BMC150_ACCEL_DEF_BW, align 4
  %81 = call i32 @bmc150_accel_set_bw(%struct.bmc150_accel_data* %79, i32 %80, i32 0)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %2, align 4
  br label %131

86:                                               ; preds = %78
  %87 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %3, align 8
  %88 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @BMC150_ACCEL_REG_PMU_RANGE, align 4
  %91 = load i32, i32* @BMC150_ACCEL_DEF_RANGE_4G, align 4
  %92 = call i32 @regmap_write(i32 %89, i32 %90, i32 %91)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %86
  %96 = load %struct.device*, %struct.device** %4, align 8
  %97 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %96, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %98 = load i32, i32* %5, align 4
  store i32 %98, i32* %2, align 4
  br label %131

99:                                               ; preds = %86
  %100 = load i32, i32* @BMC150_ACCEL_DEF_RANGE_4G, align 4
  %101 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %3, align 8
  %102 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* @BMC150_ACCEL_DEF_SLOPE_THRESHOLD, align 4
  %104 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %3, align 8
  %105 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @BMC150_ACCEL_DEF_SLOPE_DURATION, align 4
  %107 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %3, align 8
  %108 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  %109 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %3, align 8
  %110 = call i32 @bmc150_accel_update_slope(%struct.bmc150_accel_data* %109)
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %5, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %99
  %114 = load i32, i32* %5, align 4
  store i32 %114, i32* %2, align 4
  br label %131

115:                                              ; preds = %99
  %116 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %3, align 8
  %117 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @BMC150_ACCEL_REG_INT_RST_LATCH, align 4
  %120 = load i32, i32* @BMC150_ACCEL_INT_MODE_LATCH_INT, align 4
  %121 = load i32, i32* @BMC150_ACCEL_INT_MODE_LATCH_RESET, align 4
  %122 = or i32 %120, %121
  %123 = call i32 @regmap_write(i32 %118, i32 %119, i32 %122)
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* %5, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %115
  %127 = load %struct.device*, %struct.device** %4, align 8
  %128 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %127, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %129 = load i32, i32* %5, align 4
  store i32 %129, i32* %2, align 4
  br label %131

130:                                              ; preds = %115
  store i32 0, i32* %2, align 4
  br label %131

131:                                              ; preds = %130, %126, %113, %95, %84, %76, %64, %26
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local %struct.device* @regmap_get_device(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @bmc150_accel_set_mode(%struct.bmc150_accel_data*, i32, i32) #1

declare dso_local i32 @bmc150_accel_set_bw(%struct.bmc150_accel_data*, i32, i32) #1

declare dso_local i32 @bmc150_accel_update_slope(%struct.bmc150_accel_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
