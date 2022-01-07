; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_buffer.c_st_lsm6dsx_flush_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_buffer.c_st_lsm6dsx_flush_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_lsm6dsx_hw = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { {}* }

@ST_LSM6DSX_FIFO_BYPASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st_lsm6dsx_flush_fifo(%struct.st_lsm6dsx_hw* %0) #0 {
  %2 = alloca %struct.st_lsm6dsx_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.st_lsm6dsx_hw* %0, %struct.st_lsm6dsx_hw** %2, align 8
  %4 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %2, align 8
  %5 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %4, i32 0, i32 0
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %2, align 8
  %8 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = bitcast {}** %11 to i32 (%struct.st_lsm6dsx_hw*)**
  %13 = load i32 (%struct.st_lsm6dsx_hw*)*, i32 (%struct.st_lsm6dsx_hw*)** %12, align 8
  %14 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %2, align 8
  %15 = call i32 %13(%struct.st_lsm6dsx_hw* %14)
  %16 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %2, align 8
  %17 = load i32, i32* @ST_LSM6DSX_FIFO_BYPASS, align 4
  %18 = call i32 @st_lsm6dsx_set_fifo_mode(%struct.st_lsm6dsx_hw* %16, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %2, align 8
  %20 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %19, i32 0, i32 0
  %21 = call i32 @mutex_unlock(i32* %20)
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @st_lsm6dsx_set_fifo_mode(%struct.st_lsm6dsx_hw*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
