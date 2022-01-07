; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma7660.c_mma7660_read_accel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma7660.c_mma7660_read_accel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mma7660_data = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@MMA7660_I2C_READ_RETRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"register read failed\0A\00", align 1
@MMA7660_REG_OUT_BIT_ALERT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"all register read retries failed\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mma7660_data*, i32)* @mma7660_read_accel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mma7660_read_accel(%struct.mma7660_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mma7660_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_client*, align 8
  store %struct.mma7660_data* %0, %struct.mma7660_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @MMA7660_I2C_READ_RETRIES, align 4
  store i32 %9, i32* %7, align 4
  %10 = load %struct.mma7660_data*, %struct.mma7660_data** %4, align 8
  %11 = getelementptr inbounds %struct.mma7660_data, %struct.mma7660_data* %10, i32 0, i32 0
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %8, align 8
  br label %13

13:                                               ; preds = %34, %2
  %14 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %49

24:                                               ; preds = %13
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %7, align 4
  %28 = icmp sgt i32 %26, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @MMA7660_REG_OUT_BIT_ALERT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %29, %25
  %35 = phi i1 [ false, %25 ], [ %33, %29 ]
  br i1 %35, label %13, label %36

36:                                               ; preds = %34
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @MMA7660_REG_OUT_BIT_ALERT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @ETIMEDOUT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %49

47:                                               ; preds = %36
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %41, %19
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
