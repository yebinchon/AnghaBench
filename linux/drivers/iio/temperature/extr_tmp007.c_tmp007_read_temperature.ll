; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_tmp007.c_tmp007_read_temperature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_tmp007.c_tmp007_read_temperature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmp007_data = type { i32 }

@TMP007_STATUS = common dso_local global i32 0, align 4
@TMP007_STATUS_CONV_READY = common dso_local global i32 0, align 4
@TMP007_STATUS_DATA_VALID = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tmp007_data*, i32)* @tmp007_read_temperature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmp007_read_temperature(%struct.tmp007_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tmp007_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tmp007_data* %0, %struct.tmp007_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 50, i32* %7, align 4
  br label %8

8:                                                ; preds = %33, %2
  %9 = load i32, i32* %7, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %7, align 4
  %11 = icmp sgt i32 %9, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %8
  %13 = load %struct.tmp007_data*, %struct.tmp007_data** %4, align 8
  %14 = getelementptr inbounds %struct.tmp007_data, %struct.tmp007_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @TMP007_STATUS, align 4
  %17 = call i32 @i2c_smbus_read_word_swapped(i32 %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %47

22:                                               ; preds = %12
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @TMP007_STATUS_CONV_READY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @TMP007_STATUS_DATA_VALID, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %35

33:                                               ; preds = %27, %22
  %34 = call i32 @msleep(i32 100)
  br label %8

35:                                               ; preds = %32, %8
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %47

41:                                               ; preds = %35
  %42 = load %struct.tmp007_data*, %struct.tmp007_data** %4, align 8
  %43 = getelementptr inbounds %struct.tmp007_data, %struct.tmp007_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @i2c_smbus_read_word_swapped(i32 %44, i32 %45)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %41, %38, %20
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @i2c_smbus_read_word_swapped(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
