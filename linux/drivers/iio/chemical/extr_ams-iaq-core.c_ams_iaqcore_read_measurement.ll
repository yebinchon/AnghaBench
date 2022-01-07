; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_ams-iaq-core.c_ams_iaqcore_read_measurement.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_ams-iaq-core.c_ams_iaqcore_read_measurement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ams_iaqcore_data = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_msg = type { i32, i32, i8*, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@AMS_IAQCORE_DATA_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ams_iaqcore_data*)* @ams_iaqcore_read_measurement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ams_iaqcore_read_measurement(%struct.ams_iaqcore_data* %0) #0 {
  %2 = alloca %struct.ams_iaqcore_data*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_msg, align 8
  store %struct.ams_iaqcore_data* %0, %struct.ams_iaqcore_data** %2, align 8
  %6 = load %struct.ams_iaqcore_data*, %struct.ams_iaqcore_data** %2, align 8
  %7 = getelementptr inbounds %struct.ams_iaqcore_data, %struct.ams_iaqcore_data* %6, i32 0, i32 1
  %8 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  store %struct.i2c_client* %8, %struct.i2c_client** %3, align 8
  %9 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 0
  %10 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @I2C_M_RD, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %9, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 1
  %16 = load i32, i32* @AMS_IAQCORE_DATA_SIZE, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 2
  %18 = load %struct.ams_iaqcore_data*, %struct.ams_iaqcore_data** %2, align 8
  %19 = getelementptr inbounds %struct.ams_iaqcore_data, %struct.ams_iaqcore_data* %18, i32 0, i32 0
  %20 = bitcast i32* %19 to i8*
  store i8* %20, i8** %17, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 3
  %22 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %21, align 8
  %25 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @i2c_transfer(i32 %27, %struct.i2c_msg* %5, i32 1)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @AMS_IAQCORE_DATA_SIZE, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  br label %35

33:                                               ; preds = %1
  %34 = load i32, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %32
  %36 = phi i32 [ 0, %32 ], [ %34, %33 ]
  ret i32 %36
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
