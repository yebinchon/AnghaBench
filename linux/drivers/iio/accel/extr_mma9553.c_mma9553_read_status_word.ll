; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9553.c_mma9553_read_status_word.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9553.c_mma9553_read_status_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mma9553_data = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"No channels enabled\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MMA9551_APPID_PEDOMETER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mma9553_data*, i32, i32*)* @mma9553_read_status_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mma9553_read_status_word(%struct.mma9553_data* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mma9553_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mma9553_data* %0, %struct.mma9553_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.mma9553_data*, %struct.mma9553_data** %5, align 8
  %11 = call i64 @mma9553_is_any_event_enabled(%struct.mma9553_data* %10, i32 0, i32 0)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load %struct.mma9553_data*, %struct.mma9553_data** %5, align 8
  %15 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %13, %3
  %19 = phi i1 [ true, %3 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %18
  %24 = load %struct.mma9553_data*, %struct.mma9553_data** %5, align 8
  %25 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %46

31:                                               ; preds = %18
  %32 = load %struct.mma9553_data*, %struct.mma9553_data** %5, align 8
  %33 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.mma9553_data*, %struct.mma9553_data** %5, align 8
  %36 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* @MMA9551_APPID_PEDOMETER, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @mma9551_read_status_word(%struct.TYPE_2__* %37, i32 %38, i32 %39, i32* %40)
  store i32 %41, i32* %9, align 4
  %42 = load %struct.mma9553_data*, %struct.mma9553_data** %5, align 8
  %43 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %31, %23
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i64 @mma9553_is_any_event_enabled(%struct.mma9553_data*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mma9551_read_status_word(%struct.TYPE_2__*, i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
