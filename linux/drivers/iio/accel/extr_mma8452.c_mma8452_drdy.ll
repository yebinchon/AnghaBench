; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma8452.c_mma8452_drdy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma8452.c_mma8452_drdy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mma8452_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MMA8452_STATUS = common dso_local global i32 0, align 4
@MMA8452_STATUS_DRDY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"data not ready\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mma8452_data*)* @mma8452_drdy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mma8452_drdy(%struct.mma8452_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mma8452_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mma8452_data* %0, %struct.mma8452_data** %3, align 8
  store i32 150, i32* %4, align 4
  br label %6

6:                                                ; preds = %44, %1
  %7 = load i32, i32* %4, align 4
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* %4, align 4
  %9 = icmp sgt i32 %7, 0
  br i1 %9, label %10, label %45

10:                                               ; preds = %6
  %11 = load %struct.mma8452_data*, %struct.mma8452_data** %3, align 8
  %12 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* @MMA8452_STATUS, align 4
  %15 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_2__* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %53

20:                                               ; preds = %10
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @MMA8452_STATUS_DRDY, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @MMA8452_STATUS_DRDY, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %53

27:                                               ; preds = %20
  %28 = load %struct.mma8452_data*, %struct.mma8452_data** %3, align 8
  %29 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sle i32 %30, 20
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load %struct.mma8452_data*, %struct.mma8452_data** %3, align 8
  %34 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = mul nsw i32 %35, 250
  %37 = load %struct.mma8452_data*, %struct.mma8452_data** %3, align 8
  %38 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = mul nsw i32 %39, 500
  %41 = call i32 @usleep_range(i32 %36, i32 %40)
  br label %44

42:                                               ; preds = %27
  %43 = call i32 @msleep(i32 20)
  br label %44

44:                                               ; preds = %42, %32
  br label %6

45:                                               ; preds = %6
  %46 = load %struct.mma8452_data*, %struct.mma8452_data** %3, align 8
  %47 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %45, %26, %18
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
