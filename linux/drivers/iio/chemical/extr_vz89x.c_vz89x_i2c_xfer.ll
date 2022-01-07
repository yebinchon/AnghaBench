; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_vz89x.c_vz89x_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_vz89x.c_vz89x_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vz89x_data = type { i32, %struct.i2c_client*, %struct.vz89x_chip_data* }
%struct.i2c_client = type { i32, i32, i32 }
%struct.vz89x_chip_data = type { i32, i32 }
%struct.i2c_msg = type { i32, i8*, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vz89x_data*, i32)* @vz89x_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vz89x_i2c_xfer(%struct.vz89x_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vz89x_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vz89x_chip_data*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca [2 x %struct.i2c_msg], align 16
  %8 = alloca i32, align 4
  %9 = alloca [6 x i32], align 16
  store %struct.vz89x_data* %0, %struct.vz89x_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.vz89x_data*, %struct.vz89x_data** %3, align 8
  %11 = getelementptr inbounds %struct.vz89x_data, %struct.vz89x_data* %10, i32 0, i32 2
  %12 = load %struct.vz89x_chip_data*, %struct.vz89x_chip_data** %11, align 8
  store %struct.vz89x_chip_data* %12, %struct.vz89x_chip_data** %5, align 8
  %13 = load %struct.vz89x_data*, %struct.vz89x_data** %3, align 8
  %14 = getelementptr inbounds %struct.vz89x_data, %struct.vz89x_data* %13, i32 0, i32 1
  %15 = load %struct.i2c_client*, %struct.i2c_client** %14, align 8
  store %struct.i2c_client* %15, %struct.i2c_client** %6, align 8
  %16 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 243, i32* %22, align 4
  %23 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 16
  %33 = load %struct.vz89x_chip_data*, %struct.vz89x_chip_data** %5, align 8
  %34 = getelementptr inbounds %struct.vz89x_chip_data, %struct.vz89x_chip_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %37 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 16
  %38 = bitcast [6 x i32]* %9 to i8*
  %39 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 1
  %45 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @I2C_M_RD, align 4
  %50 = or i32 %48, %49
  %51 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 1
  %52 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.vz89x_chip_data*, %struct.vz89x_chip_data** %5, align 8
  %54 = getelementptr inbounds %struct.vz89x_chip_data, %struct.vz89x_chip_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 1
  %57 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.vz89x_data*, %struct.vz89x_data** %3, align 8
  %59 = getelementptr inbounds %struct.vz89x_data, %struct.vz89x_data* %58, i32 0, i32 0
  %60 = bitcast i32* %59 to i8*
  %61 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 1
  %62 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %64 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %67 = call i32 @i2c_transfer(i32 %65, %struct.i2c_msg* %66, i32 2)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %70, label %71

70:                                               ; preds = %2
  br label %73

71:                                               ; preds = %2
  %72 = load i32, i32* %8, align 4
  br label %73

73:                                               ; preds = %71, %70
  %74 = phi i32 [ 0, %70 ], [ %72, %71 ]
  ret i32 %74
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
