; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_ltc2978.c_ltc_wait_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_ltc2978.c_ltc_wait_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pmbus_driver_info = type { i32 }
%struct.ltc2978_data = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@LTC_POLL_TIMEOUT = common dso_local global i32 0, align 4
@LTC_NOT_BUSY = common dso_local global i32 0, align 4
@ltc3883 = common dso_local global i64 0, align 8
@LTC_NOT_PENDING = common dso_local global i32 0, align 4
@LTC2978_MFR_COMMON = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @ltc_wait_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc_wait_ready(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pmbus_driver_info*, align 8
  %6 = alloca %struct.ltc2978_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %9 = load i64, i64* @jiffies, align 8
  %10 = load i32, i32* @LTC_POLL_TIMEOUT, align 4
  %11 = call i64 @msecs_to_jiffies(i32 %10)
  %12 = add i64 %9, %11
  store i64 %12, i64* %4, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %14 = call %struct.pmbus_driver_info* @pmbus_get_driver_info(%struct.i2c_client* %13)
  store %struct.pmbus_driver_info* %14, %struct.pmbus_driver_info** %5, align 8
  %15 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %5, align 8
  %16 = call %struct.ltc2978_data* @to_ltc2978_data(%struct.pmbus_driver_info* %15)
  store %struct.ltc2978_data* %16, %struct.ltc2978_data** %6, align 8
  %17 = load %struct.ltc2978_data*, %struct.ltc2978_data** %6, align 8
  %18 = call i32 @needs_polling(%struct.ltc2978_data* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %70

21:                                               ; preds = %1
  %22 = load i32, i32* @LTC_NOT_BUSY, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.ltc2978_data*, %struct.ltc2978_data** %6, align 8
  %24 = getelementptr inbounds %struct.ltc2978_data, %struct.ltc2978_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ltc3883, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32, i32* @LTC_NOT_PENDING, align 4
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %28, %21
  br label %33

33:                                               ; preds = %62, %32
  %34 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %35 = load i32, i32* @LTC2978_MFR_COMMON, align 4
  %36 = call i32 @pmbus_read_byte_data(%struct.i2c_client* %34, i32 0, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @EBADMSG, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @ENXIO, align 4
  %44 = sub nsw i32 0, %43
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %41, %33
  %47 = call i32 @usleep_range(i32 50, i32 100)
  br label %62

48:                                               ; preds = %41
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %2, align 4
  br label %70

53:                                               ; preds = %48
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* %8, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %70

60:                                               ; preds = %53
  %61 = call i32 @usleep_range(i32 50, i32 100)
  br label %62

62:                                               ; preds = %60, %46
  %63 = load i64, i64* @jiffies, align 8
  %64 = load i64, i64* %4, align 8
  %65 = call i64 @time_before(i64 %63, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %33, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @ETIMEDOUT, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %67, %59, %51, %20
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local %struct.pmbus_driver_info* @pmbus_get_driver_info(%struct.i2c_client*) #1

declare dso_local %struct.ltc2978_data* @to_ltc2978_data(%struct.pmbus_driver_info*) #1

declare dso_local i32 @needs_polling(%struct.ltc2978_data*) #1

declare dso_local i32 @pmbus_read_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
