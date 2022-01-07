; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_buffer.c_st_lsm6dsx_push_tagged_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_buffer.c_st_lsm6dsx_push_tagged_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_lsm6dsx_hw = type { i32, %struct.iio_dev** }
%struct.iio_dev = type { i32 }
%struct.st_lsm6dsx_sensor = type { i64 }

@ST_LSM6DSX_ID_GYRO = common dso_local global i64 0, align 8
@ST_LSM6DSX_ID_ACC = common dso_local global i64 0, align 8
@ST_LSM6DSX_ID_EXT0 = common dso_local global i64 0, align 8
@ST_LSM6DSX_ID_EXT1 = common dso_local global i64 0, align 8
@ST_LSM6DSX_ID_EXT2 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_lsm6dsx_hw*, i32, i32*, i64)* @st_lsm6dsx_push_tagged_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_lsm6dsx_push_tagged_data(%struct.st_lsm6dsx_hw* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.st_lsm6dsx_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.st_lsm6dsx_sensor*, align 8
  %11 = alloca %struct.iio_dev*, align 8
  store %struct.st_lsm6dsx_hw* %0, %struct.st_lsm6dsx_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %104 [
    i32 128, label %13
    i32 132, label %20
    i32 131, label %27
    i32 130, label %66
    i32 129, label %97
  ]

13:                                               ; preds = %4
  %14 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %6, align 8
  %15 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %14, i32 0, i32 1
  %16 = load %struct.iio_dev**, %struct.iio_dev*** %15, align 8
  %17 = load i64, i64* @ST_LSM6DSX_ID_GYRO, align 8
  %18 = getelementptr inbounds %struct.iio_dev*, %struct.iio_dev** %16, i64 %17
  %19 = load %struct.iio_dev*, %struct.iio_dev** %18, align 8
  store %struct.iio_dev* %19, %struct.iio_dev** %11, align 8
  br label %107

20:                                               ; preds = %4
  %21 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %6, align 8
  %22 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %21, i32 0, i32 1
  %23 = load %struct.iio_dev**, %struct.iio_dev*** %22, align 8
  %24 = load i64, i64* @ST_LSM6DSX_ID_ACC, align 8
  %25 = getelementptr inbounds %struct.iio_dev*, %struct.iio_dev** %23, i64 %24
  %26 = load %struct.iio_dev*, %struct.iio_dev** %25, align 8
  store %struct.iio_dev* %26, %struct.iio_dev** %11, align 8
  br label %107

27:                                               ; preds = %4
  %28 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %6, align 8
  %29 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i64, i64* @ST_LSM6DSX_ID_EXT0, align 8
  %32 = call i32 @BIT(i64 %31)
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %27
  %36 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %6, align 8
  %37 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %36, i32 0, i32 1
  %38 = load %struct.iio_dev**, %struct.iio_dev*** %37, align 8
  %39 = load i64, i64* @ST_LSM6DSX_ID_EXT0, align 8
  %40 = getelementptr inbounds %struct.iio_dev*, %struct.iio_dev** %38, i64 %39
  %41 = load %struct.iio_dev*, %struct.iio_dev** %40, align 8
  store %struct.iio_dev* %41, %struct.iio_dev** %11, align 8
  br label %65

42:                                               ; preds = %27
  %43 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %6, align 8
  %44 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i64, i64* @ST_LSM6DSX_ID_EXT1, align 8
  %47 = call i32 @BIT(i64 %46)
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %42
  %51 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %6, align 8
  %52 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %51, i32 0, i32 1
  %53 = load %struct.iio_dev**, %struct.iio_dev*** %52, align 8
  %54 = load i64, i64* @ST_LSM6DSX_ID_EXT1, align 8
  %55 = getelementptr inbounds %struct.iio_dev*, %struct.iio_dev** %53, i64 %54
  %56 = load %struct.iio_dev*, %struct.iio_dev** %55, align 8
  store %struct.iio_dev* %56, %struct.iio_dev** %11, align 8
  br label %64

57:                                               ; preds = %42
  %58 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %6, align 8
  %59 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %58, i32 0, i32 1
  %60 = load %struct.iio_dev**, %struct.iio_dev*** %59, align 8
  %61 = load i64, i64* @ST_LSM6DSX_ID_EXT2, align 8
  %62 = getelementptr inbounds %struct.iio_dev*, %struct.iio_dev** %60, i64 %61
  %63 = load %struct.iio_dev*, %struct.iio_dev** %62, align 8
  store %struct.iio_dev* %63, %struct.iio_dev** %11, align 8
  br label %64

64:                                               ; preds = %57, %50
  br label %65

65:                                               ; preds = %64, %35
  br label %107

66:                                               ; preds = %4
  %67 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %6, align 8
  %68 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i64, i64* @ST_LSM6DSX_ID_EXT0, align 8
  %71 = call i32 @BIT(i64 %70)
  %72 = and i32 %69, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %66
  %75 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %6, align 8
  %76 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i64, i64* @ST_LSM6DSX_ID_EXT1, align 8
  %79 = call i32 @BIT(i64 %78)
  %80 = and i32 %77, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %74
  %83 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %6, align 8
  %84 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %83, i32 0, i32 1
  %85 = load %struct.iio_dev**, %struct.iio_dev*** %84, align 8
  %86 = load i64, i64* @ST_LSM6DSX_ID_EXT1, align 8
  %87 = getelementptr inbounds %struct.iio_dev*, %struct.iio_dev** %85, i64 %86
  %88 = load %struct.iio_dev*, %struct.iio_dev** %87, align 8
  store %struct.iio_dev* %88, %struct.iio_dev** %11, align 8
  br label %96

89:                                               ; preds = %74, %66
  %90 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %6, align 8
  %91 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %90, i32 0, i32 1
  %92 = load %struct.iio_dev**, %struct.iio_dev*** %91, align 8
  %93 = load i64, i64* @ST_LSM6DSX_ID_EXT2, align 8
  %94 = getelementptr inbounds %struct.iio_dev*, %struct.iio_dev** %92, i64 %93
  %95 = load %struct.iio_dev*, %struct.iio_dev** %94, align 8
  store %struct.iio_dev* %95, %struct.iio_dev** %11, align 8
  br label %96

96:                                               ; preds = %89, %82
  br label %107

97:                                               ; preds = %4
  %98 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %6, align 8
  %99 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %98, i32 0, i32 1
  %100 = load %struct.iio_dev**, %struct.iio_dev*** %99, align 8
  %101 = load i64, i64* @ST_LSM6DSX_ID_EXT2, align 8
  %102 = getelementptr inbounds %struct.iio_dev*, %struct.iio_dev** %100, i64 %101
  %103 = load %struct.iio_dev*, %struct.iio_dev** %102, align 8
  store %struct.iio_dev* %103, %struct.iio_dev** %11, align 8
  br label %107

104:                                              ; preds = %4
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %5, align 4
  br label %118

107:                                              ; preds = %97, %96, %65, %20, %13
  %108 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %109 = call %struct.st_lsm6dsx_sensor* @iio_priv(%struct.iio_dev* %108)
  store %struct.st_lsm6dsx_sensor* %109, %struct.st_lsm6dsx_sensor** %10, align 8
  %110 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %111 = load i32*, i32** %8, align 8
  %112 = load i64, i64* %9, align 8
  %113 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %10, align 8
  %114 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %112, %115
  %117 = call i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev* %110, i32* %111, i64 %116)
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %107, %104
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @BIT(i64) #1

declare dso_local %struct.st_lsm6dsx_sensor* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
