; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_pulsedlight-lidar-lite-v2.c_lidar_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_pulsedlight-lidar-lite-v2.c_lidar_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lidar_data = type { %struct.i2c_client* }
%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_msg = type { i32, i32, i8*, i32 }

@I2C_M_STOP = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lidar_data*, i32, i32*, i32)* @lidar_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lidar_i2c_xfer(%struct.lidar_data* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.lidar_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca [2 x %struct.i2c_msg], align 16
  %11 = alloca i32, align 4
  store %struct.lidar_data* %0, %struct.lidar_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.lidar_data*, %struct.lidar_data** %5, align 8
  %13 = getelementptr inbounds %struct.lidar_data, %struct.lidar_data* %12, i32 0, i32 0
  %14 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  store %struct.i2c_client* %14, %struct.i2c_client** %9, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 0
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 16
  %20 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @I2C_M_STOP, align 4
  %24 = or i32 %22, %23
  %25 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 0
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 16
  %27 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 0
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  %29 = bitcast i32* %6 to i8*
  %30 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 0
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 1
  %36 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @I2C_M_RD, align 4
  %41 = or i32 %39, %40
  %42 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 1
  %43 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %8, align 4
  %45 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 1
  %46 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = bitcast i32* %47 to i8*
  %49 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 1
  %50 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 0
  %55 = call i32 @i2c_transfer(i32 %53, %struct.i2c_msg* %54, i32 2)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %59

58:                                               ; preds = %4
  br label %62

59:                                               ; preds = %4
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  br label %62

62:                                               ; preds = %59, %58
  %63 = phi i32 [ 0, %58 ], [ %61, %59 ]
  ret i32 %63
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
