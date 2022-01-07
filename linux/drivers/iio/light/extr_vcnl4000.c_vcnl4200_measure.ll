; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_vcnl4000.c_vcnl4200_measure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_vcnl4000.c_vcnl4200_measure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcnl4000_data = type { i32 }
%struct.vcnl4200_channel = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcnl4000_data*, %struct.vcnl4200_channel*, i32*)* @vcnl4200_measure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcnl4200_measure(%struct.vcnl4000_data* %0, %struct.vcnl4200_channel* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vcnl4000_data*, align 8
  %6 = alloca %struct.vcnl4200_channel*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.vcnl4000_data* %0, %struct.vcnl4000_data** %5, align 8
  store %struct.vcnl4200_channel* %1, %struct.vcnl4200_channel** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.vcnl4200_channel*, %struct.vcnl4200_channel** %6, align 8
  %12 = getelementptr inbounds %struct.vcnl4200_channel, %struct.vcnl4200_channel* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.vcnl4200_channel*, %struct.vcnl4200_channel** %6, align 8
  %15 = getelementptr inbounds %struct.vcnl4200_channel, %struct.vcnl4200_channel* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.vcnl4200_channel*, %struct.vcnl4200_channel** %6, align 8
  %18 = getelementptr inbounds %struct.vcnl4200_channel, %struct.vcnl4200_channel* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ktime_add(i32 %16, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 (...) @ktime_get()
  %23 = call i64 @ktime_us_delta(i32 %21, i32 %22)
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = add nsw i64 %28, 500
  %30 = call i32 @usleep_range(i64 %27, i64 %29)
  br label %31

31:                                               ; preds = %26, %3
  %32 = call i32 (...) @ktime_get()
  %33 = load %struct.vcnl4200_channel*, %struct.vcnl4200_channel** %6, align 8
  %34 = getelementptr inbounds %struct.vcnl4200_channel, %struct.vcnl4200_channel* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.vcnl4200_channel*, %struct.vcnl4200_channel** %6, align 8
  %36 = getelementptr inbounds %struct.vcnl4200_channel, %struct.vcnl4200_channel* %35, i32 0, i32 1
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load %struct.vcnl4000_data*, %struct.vcnl4000_data** %5, align 8
  %39 = getelementptr inbounds %struct.vcnl4000_data, %struct.vcnl4000_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.vcnl4200_channel*, %struct.vcnl4200_channel** %6, align 8
  %42 = getelementptr inbounds %struct.vcnl4200_channel, %struct.vcnl4200_channel* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @i2c_smbus_read_word_data(i32 %40, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %31
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %52

49:                                               ; preds = %31
  %50 = load i32, i32* %8, align 4
  %51 = load i32*, i32** %7, align 8
  store i32 %50, i32* %51, align 4
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %49, %47
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ktime_add(i32, i32) #1

declare dso_local i64 @ktime_us_delta(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @usleep_range(i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @i2c_smbus_read_word_data(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
