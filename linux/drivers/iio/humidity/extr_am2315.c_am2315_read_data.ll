; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_am2315.c_am2315_read_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_am2315.c_am2315_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.am2315_data = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.am2315_sensor_data = type { i32, i32 }

@AM2315_FUNCTION_READ = common dso_local global i32 0, align 4
@AM2315_REG_HUM_MSB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to send read request\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to read sensor data\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to verify sensor data\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@AM2315_HUM_OFFSET = common dso_local global i64 0, align 8
@AM2315_TEMP_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.am2315_data*, %struct.am2315_sensor_data*)* @am2315_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am2315_read_data(%struct.am2315_data* %0, %struct.am2315_sensor_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.am2315_data*, align 8
  %5 = alloca %struct.am2315_sensor_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca [8 x i32], align 16
  %9 = alloca i32, align 4
  store %struct.am2315_data* %0, %struct.am2315_data** %4, align 8
  store %struct.am2315_sensor_data* %1, %struct.am2315_sensor_data** %5, align 8
  %10 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %11 = load i32, i32* @AM2315_FUNCTION_READ, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %10, i64 1
  %13 = load i32, i32* @AM2315_REG_HUM_MSB, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 4, i32* %14, align 4
  %15 = load %struct.am2315_data*, %struct.am2315_data** %4, align 8
  %16 = getelementptr inbounds %struct.am2315_data, %struct.am2315_data* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = call i32 @am2315_ping(%struct.TYPE_4__* %17)
  %19 = load %struct.am2315_data*, %struct.am2315_data** %4, align 8
  %20 = getelementptr inbounds %struct.am2315_data, %struct.am2315_data* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.am2315_data*, %struct.am2315_data** %4, align 8
  %23 = getelementptr inbounds %struct.am2315_data, %struct.am2315_data* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %26 = call i32 @i2c_master_send(%struct.TYPE_4__* %24, i32* %25, i32 12)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load %struct.am2315_data*, %struct.am2315_data** %4, align 8
  %31 = getelementptr inbounds %struct.am2315_data, %struct.am2315_data* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %99

35:                                               ; preds = %2
  %36 = call i32 @usleep_range(i32 2000, i32 3000)
  %37 = load %struct.am2315_data*, %struct.am2315_data** %4, align 8
  %38 = getelementptr inbounds %struct.am2315_data, %struct.am2315_data* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %41 = call i32 @i2c_master_recv(%struct.TYPE_4__* %39, i32* %40, i32 32)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %35
  %45 = load %struct.am2315_data*, %struct.am2315_data** %4, align 8
  %46 = getelementptr inbounds %struct.am2315_data, %struct.am2315_data* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %99

50:                                               ; preds = %35
  %51 = load %struct.am2315_data*, %struct.am2315_data** %4, align 8
  %52 = getelementptr inbounds %struct.am2315_data, %struct.am2315_data* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %55 = call i32 @am2315_crc(i32* %54, i32 30)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = and i32 %56, 255
  %58 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 6
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %57, %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %50
  %62 = load i32, i32* %9, align 4
  %63 = ashr i32 %62, 8
  %64 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 7
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %63, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %61, %50
  %68 = load %struct.am2315_data*, %struct.am2315_data** %4, align 8
  %69 = getelementptr inbounds %struct.am2315_data, %struct.am2315_data* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = call i32 @dev_err(i32* %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %104

75:                                               ; preds = %61
  %76 = load i64, i64* @AM2315_HUM_OFFSET, align 8
  %77 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 8
  %80 = load i64, i64* @AM2315_HUM_OFFSET, align 8
  %81 = add i64 %80, 1
  %82 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %79, %83
  %85 = load %struct.am2315_sensor_data*, %struct.am2315_sensor_data** %5, align 8
  %86 = getelementptr inbounds %struct.am2315_sensor_data, %struct.am2315_sensor_data* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load i64, i64* @AM2315_TEMP_OFFSET, align 8
  %88 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 %89, 8
  %91 = load i64, i64* @AM2315_TEMP_OFFSET, align 8
  %92 = add i64 %91, 1
  %93 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %90, %94
  %96 = load %struct.am2315_sensor_data*, %struct.am2315_sensor_data** %5, align 8
  %97 = getelementptr inbounds %struct.am2315_sensor_data, %struct.am2315_sensor_data* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %3, align 4
  br label %104

99:                                               ; preds = %44, %29
  %100 = load %struct.am2315_data*, %struct.am2315_data** %4, align 8
  %101 = getelementptr inbounds %struct.am2315_data, %struct.am2315_data* %100, i32 0, i32 0
  %102 = call i32 @mutex_unlock(i32* %101)
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %99, %75, %67
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @am2315_ping(%struct.TYPE_4__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_master_send(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @i2c_master_recv(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @am2315_crc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
