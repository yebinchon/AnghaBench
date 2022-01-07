; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_goodix.c_goodix_read_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_goodix.c_goodix_read_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.goodix_ts_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GOODIX_REG_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"read version failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"ID %d, version: %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.goodix_ts_data*)* @goodix_read_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goodix_read_version(%struct.goodix_ts_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.goodix_ts_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [6 x i32], align 16
  %6 = alloca [5 x i8], align 1
  store %struct.goodix_ts_data* %0, %struct.goodix_ts_data** %3, align 8
  %7 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %8 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load i32, i32* @GOODIX_REG_ID, align 4
  %11 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %12 = call i32 @goodix_i2c_read(%struct.TYPE_2__* %9, i32 %10, i32* %11, i32 24)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %17 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %52

23:                                               ; preds = %1
  %24 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %25 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %26 = call i32 @memcpy(i8* %24, i32* %25, i32 4)
  %27 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 4
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %29 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %30 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %29, i32 0, i32 0
  %31 = call i64 @kstrtou16(i8* %28, i32 10, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %35 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %34, i32 0, i32 0
  store i32 4097, i32* %35, align 8
  br label %36

36:                                               ; preds = %33, %23
  %37 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 4
  %38 = call i32 @get_unaligned_le16(i32* %37)
  %39 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %40 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %42 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %46 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %49 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dev_info(i32* %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %36, %15
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @goodix_i2c_read(%struct.TYPE_2__*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i64 @kstrtou16(i8*, i32, i32*) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
