; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_si7005.c_si7005_read_measurement.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_si7005.c_si7005_read_measurement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si7005_data = type { i32, i32, i32 }

@SI7005_CONFIG = common dso_local global i32 0, align 4
@SI7005_CONFIG_START = common dso_local global i32 0, align 4
@SI7005_CONFIG_TEMP = common dso_local global i32 0, align 4
@SI7005_STATUS = common dso_local global i32 0, align 4
@SI7005_STATUS_NRDY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SI7005_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si7005_data*, i32)* @si7005_read_measurement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si7005_read_measurement(%struct.si7005_data* %0, i32 %1) #0 {
  %3 = alloca %struct.si7005_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.si7005_data* %0, %struct.si7005_data** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 50, i32* %5, align 4
  %7 = load %struct.si7005_data*, %struct.si7005_data** %3, align 8
  %8 = getelementptr inbounds %struct.si7005_data, %struct.si7005_data* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.si7005_data*, %struct.si7005_data** %3, align 8
  %11 = getelementptr inbounds %struct.si7005_data, %struct.si7005_data* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SI7005_CONFIG, align 4
  %14 = load %struct.si7005_data*, %struct.si7005_data** %3, align 8
  %15 = getelementptr inbounds %struct.si7005_data, %struct.si7005_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SI7005_CONFIG_START, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @SI7005_CONFIG_TEMP, align 4
  br label %24

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i32 [ %22, %21 ], [ 0, %23 ]
  %26 = or i32 %18, %25
  %27 = call i32 @i2c_smbus_write_byte_data(i32 %12, i32 %13, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %65

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %52, %31
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %5, align 4
  %35 = icmp sgt i32 %33, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %32
  %37 = call i32 @msleep(i32 20)
  %38 = load %struct.si7005_data*, %struct.si7005_data** %3, align 8
  %39 = getelementptr inbounds %struct.si7005_data, %struct.si7005_data* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SI7005_STATUS, align 4
  %42 = call i32 @i2c_smbus_read_byte_data(i32 %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %65

46:                                               ; preds = %36
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @SI7005_STATUS_NRDY, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %53

52:                                               ; preds = %46
  br label %32

53:                                               ; preds = %51, %32
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %65

59:                                               ; preds = %53
  %60 = load %struct.si7005_data*, %struct.si7005_data** %3, align 8
  %61 = getelementptr inbounds %struct.si7005_data, %struct.si7005_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @SI7005_DATA, align 4
  %64 = call i32 @i2c_smbus_read_word_swapped(i32 %62, i32 %63)
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %59, %56, %45, %30
  %66 = load %struct.si7005_data*, %struct.si7005_data** %3, align 8
  %67 = getelementptr inbounds %struct.si7005_data, %struct.si7005_data* %66, i32 0, i32 1
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @i2c_smbus_read_word_swapped(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
