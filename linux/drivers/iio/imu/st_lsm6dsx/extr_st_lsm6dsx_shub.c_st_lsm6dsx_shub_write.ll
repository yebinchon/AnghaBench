; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_shub.c_st_lsm6dsx_shub_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_shub.c_st_lsm6dsx_shub_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_lsm6dsx_sensor = type { %struct.TYPE_6__, %struct.st_lsm6dsx_hw* }
%struct.TYPE_6__ = type { i32 }
%struct.st_lsm6dsx_hw = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.st_lsm6dsx_shub_settings }
%struct.st_lsm6dsx_shub_settings = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_lsm6dsx_sensor*, i32, i32*, i32)* @st_lsm6dsx_shub_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_lsm6dsx_shub_write(%struct.st_lsm6dsx_sensor* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.st_lsm6dsx_sensor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.st_lsm6dsx_shub_settings*, align 8
  %11 = alloca %struct.st_lsm6dsx_hw*, align 8
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.st_lsm6dsx_sensor* %0, %struct.st_lsm6dsx_sensor** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %6, align 8
  %18 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %17, i32 0, i32 1
  %19 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %18, align 8
  store %struct.st_lsm6dsx_hw* %19, %struct.st_lsm6dsx_hw** %11, align 8
  %20 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %11, align 8
  %21 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store %struct.st_lsm6dsx_shub_settings* %23, %struct.st_lsm6dsx_shub_settings** %10, align 8
  %24 = load %struct.st_lsm6dsx_shub_settings*, %struct.st_lsm6dsx_shub_settings** %10, align 8
  %25 = getelementptr inbounds %struct.st_lsm6dsx_shub_settings, %struct.st_lsm6dsx_shub_settings* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %51

29:                                               ; preds = %4
  %30 = load %struct.st_lsm6dsx_shub_settings*, %struct.st_lsm6dsx_shub_settings** %10, align 8
  %31 = getelementptr inbounds %struct.st_lsm6dsx_shub_settings, %struct.st_lsm6dsx_shub_settings* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ST_LSM6DSX_SHIFT_VAL(i32 1, i32 %33)
  store i32 %34, i32* %16, align 4
  %35 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %11, align 8
  %36 = load %struct.st_lsm6dsx_shub_settings*, %struct.st_lsm6dsx_shub_settings** %10, align 8
  %37 = getelementptr inbounds %struct.st_lsm6dsx_shub_settings, %struct.st_lsm6dsx_shub_settings* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.st_lsm6dsx_shub_settings*, %struct.st_lsm6dsx_shub_settings** %10, align 8
  %41 = getelementptr inbounds %struct.st_lsm6dsx_shub_settings, %struct.st_lsm6dsx_shub_settings* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %16, align 4
  %45 = call i32 @st_lsm6dsx_shub_write_reg_with_mask(%struct.st_lsm6dsx_hw* %35, i64 %39, i32 %43, i32 %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %29
  %49 = load i32, i32* %14, align 4
  store i32 %49, i32* %5, align 4
  br label %115

50:                                               ; preds = %29
  br label %51

51:                                               ; preds = %50, %4
  %52 = load %struct.st_lsm6dsx_shub_settings*, %struct.st_lsm6dsx_shub_settings** %10, align 8
  %53 = getelementptr inbounds %struct.st_lsm6dsx_shub_settings, %struct.st_lsm6dsx_shub_settings* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ST_LSM6DSX_SLV_ADDR(i32 0, i32 %54)
  store i32 %55, i32* %13, align 4
  %56 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %6, align 8
  %57 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = shl i32 %59, 1
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %60, i32* %61, align 4
  store i32 0, i32* %15, align 4
  br label %62

62:                                               ; preds = %105, %51
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %108

66:                                               ; preds = %62
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %15, align 4
  %69 = add nsw i32 %67, %68
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 %69, i32* %70, align 4
  %71 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %11, align 8
  %72 = load i32, i32* %13, align 4
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %74 = call i32 @st_lsm6dsx_shub_write_reg(%struct.st_lsm6dsx_hw* %71, i32 %72, i32* %73, i32 8)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %66
  %78 = load i32, i32* %14, align 4
  store i32 %78, i32* %5, align 4
  br label %115

79:                                               ; preds = %66
  %80 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %11, align 8
  %81 = load %struct.st_lsm6dsx_shub_settings*, %struct.st_lsm6dsx_shub_settings** %10, align 8
  %82 = getelementptr inbounds %struct.st_lsm6dsx_shub_settings, %struct.st_lsm6dsx_shub_settings* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* %15, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = call i32 @st_lsm6dsx_shub_write_reg(%struct.st_lsm6dsx_hw* %80, i32 %83, i32* %87, i32 1)
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %79
  %92 = load i32, i32* %14, align 4
  store i32 %92, i32* %5, align 4
  br label %115

93:                                               ; preds = %79
  %94 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %6, align 8
  %95 = call i32 @st_lsm6dsx_shub_master_enable(%struct.st_lsm6dsx_sensor* %94, i32 1)
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i32, i32* %14, align 4
  store i32 %99, i32* %5, align 4
  br label %115

100:                                              ; preds = %93
  %101 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %11, align 8
  %102 = call i32 @st_lsm6dsx_shub_wait_complete(%struct.st_lsm6dsx_hw* %101)
  %103 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %6, align 8
  %104 = call i32 @st_lsm6dsx_shub_master_enable(%struct.st_lsm6dsx_sensor* %103, i32 0)
  br label %105

105:                                              ; preds = %100
  %106 = load i32, i32* %15, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %15, align 4
  br label %62

108:                                              ; preds = %62
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %110 = call i32 @memset(i32* %109, i32 0, i32 8)
  %111 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %11, align 8
  %112 = load i32, i32* %13, align 4
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %114 = call i32 @st_lsm6dsx_shub_write_reg(%struct.st_lsm6dsx_hw* %111, i32 %112, i32* %113, i32 8)
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %108, %98, %91, %77, %48
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @ST_LSM6DSX_SHIFT_VAL(i32, i32) #1

declare dso_local i32 @st_lsm6dsx_shub_write_reg_with_mask(%struct.st_lsm6dsx_hw*, i64, i32, i32) #1

declare dso_local i32 @ST_LSM6DSX_SLV_ADDR(i32, i32) #1

declare dso_local i32 @st_lsm6dsx_shub_write_reg(%struct.st_lsm6dsx_hw*, i32, i32*, i32) #1

declare dso_local i32 @st_lsm6dsx_shub_master_enable(%struct.st_lsm6dsx_sensor*, i32) #1

declare dso_local i32 @st_lsm6dsx_shub_wait_complete(%struct.st_lsm6dsx_hw*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
