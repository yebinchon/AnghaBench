; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_shub.c_st_lsm6dsx_shub_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_shub.c_st_lsm6dsx_shub_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_lsm6dsx_sensor = type { %struct.TYPE_4__, %struct.st_lsm6dsx_hw* }
%struct.TYPE_4__ = type { i32 }
%struct.st_lsm6dsx_hw = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.st_lsm6dsx_shub_settings }
%struct.st_lsm6dsx_shub_settings = type { i32, i32 }

@ST_LS6DSX_READ_OP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_lsm6dsx_sensor*, i32, i32*, i32)* @st_lsm6dsx_shub_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_lsm6dsx_shub_read(%struct.st_lsm6dsx_sensor* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.st_lsm6dsx_sensor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.st_lsm6dsx_shub_settings*, align 8
  %11 = alloca %struct.st_lsm6dsx_hw*, align 8
  %12 = alloca [3 x i32], align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.st_lsm6dsx_sensor* %0, %struct.st_lsm6dsx_sensor** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %6, align 8
  %16 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %15, i32 0, i32 1
  %17 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %16, align 8
  store %struct.st_lsm6dsx_hw* %17, %struct.st_lsm6dsx_hw** %11, align 8
  %18 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %11, align 8
  %19 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store %struct.st_lsm6dsx_shub_settings* %21, %struct.st_lsm6dsx_shub_settings** %10, align 8
  %22 = load %struct.st_lsm6dsx_shub_settings*, %struct.st_lsm6dsx_shub_settings** %10, align 8
  %23 = getelementptr inbounds %struct.st_lsm6dsx_shub_settings, %struct.st_lsm6dsx_shub_settings* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ST_LSM6DSX_SLV_ADDR(i32 0, i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %6, align 8
  %27 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = shl i32 %29, 1
  %31 = or i32 %30, 1
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %7, align 4
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 1
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @ST_LS6DSX_READ_OP_MASK, align 4
  %37 = and i32 %35, %36
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 2
  store i32 %37, i32* %38, align 4
  %39 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %11, align 8
  %40 = load i32, i32* %13, align 4
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %42 = call i32 @st_lsm6dsx_shub_write_reg(%struct.st_lsm6dsx_hw* %39, i32 %40, i32* %41, i32 12)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %4
  %46 = load i32, i32* %14, align 4
  store i32 %46, i32* %5, align 4
  br label %74

47:                                               ; preds = %4
  %48 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %6, align 8
  %49 = call i32 @st_lsm6dsx_shub_master_enable(%struct.st_lsm6dsx_sensor* %48, i32 1)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %14, align 4
  store i32 %53, i32* %5, align 4
  br label %74

54:                                               ; preds = %47
  %55 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %11, align 8
  %56 = call i32 @st_lsm6dsx_shub_wait_complete(%struct.st_lsm6dsx_hw* %55)
  %57 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %11, align 8
  %58 = load %struct.st_lsm6dsx_shub_settings*, %struct.st_lsm6dsx_shub_settings** %10, align 8
  %59 = getelementptr inbounds %struct.st_lsm6dsx_shub_settings, %struct.st_lsm6dsx_shub_settings* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @ST_LS6DSX_READ_OP_MASK, align 4
  %64 = and i32 %62, %63
  %65 = call i32 @st_lsm6dsx_shub_read_reg(%struct.st_lsm6dsx_hw* %57, i32 %60, i32* %61, i32 %64)
  store i32 %65, i32* %14, align 4
  %66 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %6, align 8
  %67 = call i32 @st_lsm6dsx_shub_master_enable(%struct.st_lsm6dsx_sensor* %66, i32 0)
  %68 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %69 = call i32 @memset(i32* %68, i32 0, i32 12)
  %70 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %11, align 8
  %71 = load i32, i32* %13, align 4
  %72 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %73 = call i32 @st_lsm6dsx_shub_write_reg(%struct.st_lsm6dsx_hw* %70, i32 %71, i32* %72, i32 12)
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %54, %52, %45
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @ST_LSM6DSX_SLV_ADDR(i32, i32) #1

declare dso_local i32 @st_lsm6dsx_shub_write_reg(%struct.st_lsm6dsx_hw*, i32, i32*, i32) #1

declare dso_local i32 @st_lsm6dsx_shub_master_enable(%struct.st_lsm6dsx_sensor*, i32) #1

declare dso_local i32 @st_lsm6dsx_shub_wait_complete(%struct.st_lsm6dsx_hw*) #1

declare dso_local i32 @st_lsm6dsx_shub_read_reg(%struct.st_lsm6dsx_hw*, i32, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
