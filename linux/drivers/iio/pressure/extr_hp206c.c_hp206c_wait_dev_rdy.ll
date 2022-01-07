; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_hp206c.c_hp206c_wait_dev_rdy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_hp206c.c_hp206c_wait_dev_rdy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.hp206c_data = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@HP206C_MAX_DEV_RDY_WAIT_COUNT = common dso_local global i32 0, align 4
@HP206C_REG_INT_SRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed READ_REG INT_SRC: %d\0A\00", align 1
@HP206C_FLAG_DEV_RDY = common dso_local global i32 0, align 4
@HP206C_DEV_RDY_WAIT_US = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @hp206c_wait_dev_rdy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp206c_wait_dev_rdy(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hp206c_data*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %9 = call %struct.hp206c_data* @iio_priv(%struct.iio_dev* %8)
  store %struct.hp206c_data* %9, %struct.hp206c_data** %6, align 8
  %10 = load %struct.hp206c_data*, %struct.hp206c_data** %6, align 8
  %11 = getelementptr inbounds %struct.hp206c_data, %struct.hp206c_data* %10, i32 0, i32 0
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %7, align 8
  br label %13

13:                                               ; preds = %36, %1
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @HP206C_MAX_DEV_RDY_WAIT_COUNT, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %13
  %19 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %20 = load i32, i32* @HP206C_REG_INT_SRC, align 4
  %21 = call i32 @hp206c_read_reg(%struct.i2c_client* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %26 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %45

30:                                               ; preds = %18
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @HP206C_FLAG_DEV_RDY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %45

36:                                               ; preds = %30
  %37 = load i32, i32* @HP206C_DEV_RDY_WAIT_US, align 4
  %38 = load i32, i32* @HP206C_DEV_RDY_WAIT_US, align 4
  %39 = mul nsw i32 %38, 3
  %40 = sdiv i32 %39, 2
  %41 = call i32 @usleep_range(i32 %37, i32 %40)
  br label %13

42:                                               ; preds = %13
  %43 = load i32, i32* @ETIMEDOUT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %42, %35, %24
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.hp206c_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @hp206c_read_reg(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
