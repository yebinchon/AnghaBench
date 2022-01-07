; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_abp060mg.c_abp060mg_get_measurement.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_abp060mg.c_abp060mg_get_measurement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abp_state = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@ABP060MG_RESP_TIME_MS = common dso_local global i32 0, align 4
@ABP060MG_ERROR_MASK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ABP060MG_MIN_COUNTS = common dso_local global i32 0, align 4
@ABP060MG_MAX_COUNTS = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.abp_state*, i32*)* @abp060mg_get_measurement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abp060mg_get_measurement(%struct.abp_state* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.abp_state*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca [2 x i64], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.abp_state* %0, %struct.abp_state** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.abp_state*, %struct.abp_state** %4, align 8
  %11 = getelementptr inbounds %struct.abp_state, %struct.abp_state* %10, i32 0, i32 1
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %6, align 8
  %13 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  store i64 0, i64* %13, align 16
  %14 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %15 = bitcast [2 x i64]* %7 to i32*
  %16 = load %struct.abp_state*, %struct.abp_state** %4, align 8
  %17 = getelementptr inbounds %struct.abp_state, %struct.abp_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @i2c_master_send(%struct.i2c_client* %14, i32* %15, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %3, align 4
  br label %60

24:                                               ; preds = %2
  %25 = load i32, i32* @ABP060MG_RESP_TIME_MS, align 4
  %26 = call i32 @msleep_interruptible(i32 %25)
  %27 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %28 = bitcast [2 x i64]* %7 to i32*
  %29 = call i32 @i2c_master_recv(%struct.i2c_client* %27, i32* %28, i32 16)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %3, align 4
  br label %60

34:                                               ; preds = %24
  %35 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %36 = load i64, i64* %35, align 16
  %37 = call i32 @be16_to_cpu(i64 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @ABP060MG_ERROR_MASK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %60

45:                                               ; preds = %34
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @ABP060MG_MIN_COUNTS, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @ABP060MG_MAX_COUNTS, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49, %45
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %60

56:                                               ; preds = %49
  %57 = load i32, i32* %8, align 4
  %58 = load i32*, i32** %5, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %56, %53, %42, %32, %22
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i32*, i32) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i32*, i32) #1

declare dso_local i32 @be16_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
