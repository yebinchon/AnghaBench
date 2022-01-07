; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_buffer.c_st_lsm6dsx_update_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_buffer.c_st_lsm6dsx_update_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_lsm6dsx_sensor = type { i64, i32, %struct.st_lsm6dsx_hw* }
%struct.st_lsm6dsx_hw = type { i64, i32, i64 }

@ST_LSM6DSX_FIFO_BYPASS = common dso_local global i64 0, align 8
@ST_LSM6DSX_ID_EXT0 = common dso_local global i64 0, align 8
@ST_LSM6DSX_ID_EXT1 = common dso_local global i64 0, align 8
@ST_LSM6DSX_ID_EXT2 = common dso_local global i64 0, align 8
@ST_LSM6DSX_FIFO_CONT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st_lsm6dsx_update_fifo(%struct.st_lsm6dsx_sensor* %0, i32 %1) #0 {
  %3 = alloca %struct.st_lsm6dsx_sensor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.st_lsm6dsx_hw*, align 8
  %6 = alloca i32, align 4
  store %struct.st_lsm6dsx_sensor* %0, %struct.st_lsm6dsx_sensor** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %3, align 8
  %8 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %7, i32 0, i32 2
  %9 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %8, align 8
  store %struct.st_lsm6dsx_hw* %9, %struct.st_lsm6dsx_hw** %5, align 8
  %10 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %5, align 8
  %11 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %5, align 8
  %14 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ST_LSM6DSX_FIFO_BYPASS, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %5, align 8
  %20 = call i32 @st_lsm6dsx_flush_fifo(%struct.st_lsm6dsx_hw* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %97

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24, %2
  %26 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %3, align 8
  %27 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ST_LSM6DSX_ID_EXT0, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %43, label %31

31:                                               ; preds = %25
  %32 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %3, align 8
  %33 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ST_LSM6DSX_ID_EXT1, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %3, align 8
  %39 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ST_LSM6DSX_ID_EXT2, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %37, %31, %25
  %44 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @st_lsm6dsx_shub_set_enable(%struct.st_lsm6dsx_sensor* %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %97

50:                                               ; preds = %43
  br label %66

51:                                               ; preds = %37
  %52 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @st_lsm6dsx_sensor_set_enable(%struct.st_lsm6dsx_sensor* %52, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %97

58:                                               ; preds = %51
  %59 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @st_lsm6dsx_set_fifo_odr(%struct.st_lsm6dsx_sensor* %59, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %97

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65, %50
  %67 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %5, align 8
  %68 = call i32 @st_lsm6dsx_update_decimators(%struct.st_lsm6dsx_hw* %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %97

72:                                               ; preds = %66
  %73 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %3, align 8
  %74 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %3, align 8
  %75 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @st_lsm6dsx_update_watermark(%struct.st_lsm6dsx_sensor* %73, i32 %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  br label %97

81:                                               ; preds = %72
  %82 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %5, align 8
  %83 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %81
  %87 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %5, align 8
  %88 = call i32 @st_lsm6dsx_reset_hw_ts(%struct.st_lsm6dsx_hw* %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %97

92:                                               ; preds = %86
  %93 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %5, align 8
  %94 = load i32, i32* @ST_LSM6DSX_FIFO_CONT, align 4
  %95 = call i32 @st_lsm6dsx_set_fifo_mode(%struct.st_lsm6dsx_hw* %93, i32 %94)
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %92, %81
  br label %97

97:                                               ; preds = %96, %91, %80, %71, %64, %57, %49, %23
  %98 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %5, align 8
  %99 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %98, i32 0, i32 1
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @st_lsm6dsx_flush_fifo(%struct.st_lsm6dsx_hw*) #1

declare dso_local i32 @st_lsm6dsx_shub_set_enable(%struct.st_lsm6dsx_sensor*, i32) #1

declare dso_local i32 @st_lsm6dsx_sensor_set_enable(%struct.st_lsm6dsx_sensor*, i32) #1

declare dso_local i32 @st_lsm6dsx_set_fifo_odr(%struct.st_lsm6dsx_sensor*, i32) #1

declare dso_local i32 @st_lsm6dsx_update_decimators(%struct.st_lsm6dsx_hw*) #1

declare dso_local i32 @st_lsm6dsx_update_watermark(%struct.st_lsm6dsx_sensor*, i32) #1

declare dso_local i32 @st_lsm6dsx_reset_hw_ts(%struct.st_lsm6dsx_hw*) #1

declare dso_local i32 @st_lsm6dsx_set_fifo_mode(%struct.st_lsm6dsx_hw*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
