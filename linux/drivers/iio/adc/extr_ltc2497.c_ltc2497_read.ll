; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ltc2497.c_ltc2497_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ltc2497.c_ltc2497_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ltc2497_st = type { i64, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@LTC2497_ENABLE = common dso_local global i64 0, align 8
@LTC2497_CONVERSION_TIME_MS = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"i2c_master_recv failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ltc2497_st*, i64, i32*)* @ltc2497_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc2497_read(%struct.ltc2497_st* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ltc2497_st*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca i32, align 4
  store %struct.ltc2497_st* %0, %struct.ltc2497_st** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.ltc2497_st*, %struct.ltc2497_st** %5, align 8
  %11 = getelementptr inbounds %struct.ltc2497_st, %struct.ltc2497_st* %10, i32 0, i32 3
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %8, align 8
  %13 = load %struct.ltc2497_st*, %struct.ltc2497_st** %5, align 8
  %14 = call i32 @ltc2497_wait_conv(%struct.ltc2497_st* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %4, align 4
  br label %76

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load %struct.ltc2497_st*, %struct.ltc2497_st** %5, align 8
  %24 = getelementptr inbounds %struct.ltc2497_st, %struct.ltc2497_st* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %22, %19
  %29 = load %struct.ltc2497_st*, %struct.ltc2497_st** %5, align 8
  %30 = getelementptr inbounds %struct.ltc2497_st, %struct.ltc2497_st* %29, i32 0, i32 3
  %31 = load %struct.i2c_client*, %struct.i2c_client** %30, align 8
  %32 = load i64, i64* @LTC2497_ENABLE, align 8
  %33 = load i64, i64* %6, align 8
  %34 = or i64 %32, %33
  %35 = call i32 @i2c_smbus_write_byte(%struct.i2c_client* %31, i64 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %76

40:                                               ; preds = %28
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.ltc2497_st*, %struct.ltc2497_st** %5, align 8
  %43 = getelementptr inbounds %struct.ltc2497_st, %struct.ltc2497_st* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load i32, i32* @LTC2497_CONVERSION_TIME_MS, align 4
  %45 = call i64 @msleep_interruptible(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* @ERESTARTSYS, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %76

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %22
  %52 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %53 = load %struct.ltc2497_st*, %struct.ltc2497_st** %5, align 8
  %54 = getelementptr inbounds %struct.ltc2497_st, %struct.ltc2497_st* %53, i32 0, i32 1
  %55 = bitcast i32* %54 to i8*
  %56 = call i32 @i2c_master_recv(%struct.i2c_client* %52, i8* %55, i32 3)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %51
  %60 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %61 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %60, i32 0, i32 0
  %62 = call i32 @dev_err(i32* %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %4, align 4
  br label %76

64:                                               ; preds = %51
  %65 = call i32 (...) @ktime_get()
  %66 = load %struct.ltc2497_st*, %struct.ltc2497_st** %5, align 8
  %67 = getelementptr inbounds %struct.ltc2497_st, %struct.ltc2497_st* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load %struct.ltc2497_st*, %struct.ltc2497_st** %5, align 8
  %69 = getelementptr inbounds %struct.ltc2497_st, %struct.ltc2497_st* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @be32_to_cpu(i32 %70)
  %72 = ashr i32 %71, 14
  %73 = sub nsw i32 %72, 131072
  %74 = load i32*, i32** %7, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %64, %59, %47, %38, %17
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @ltc2497_wait_conv(%struct.ltc2497_st*) #1

declare dso_local i32 @i2c_smbus_write_byte(%struct.i2c_client*, i64) #1

declare dso_local i64 @msleep_interruptible(i32) #1

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
