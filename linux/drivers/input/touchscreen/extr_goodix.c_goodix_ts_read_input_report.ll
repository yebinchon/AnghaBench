; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_goodix.c_goodix_ts_read_input_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_goodix.c_goodix_ts_read_input_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.goodix_ts_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@GOODIX_BUFFER_STATUS_TIMEOUT = common dso_local global i32 0, align 4
@GOODIX_READ_COOR_ADDR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"I2C transfer error: %d\0A\00", align 1
@GOODIX_BUFFER_STATUS_READY = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.goodix_ts_data*, i32*)* @goodix_ts_read_input_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goodix_ts_read_input_report(%struct.goodix_ts_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.goodix_ts_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.goodix_ts_data* %0, %struct.goodix_ts_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i64, i64* @jiffies, align 8
  %10 = load i32, i32* @GOODIX_BUFFER_STATUS_TIMEOUT, align 4
  %11 = call i64 @msecs_to_jiffies(i32 %10)
  %12 = add i64 %9, %11
  store i64 %12, i64* %6, align 8
  br label %13

13:                                               ; preds = %92, %2
  %14 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %4, align 8
  %15 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i64, i64* @GOODIX_READ_COOR_ADDR, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %4, align 8
  %20 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  %23 = call i32 @goodix_i2c_read(%struct.TYPE_2__* %16, i64 %17, i32* %18, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %13
  %27 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %4, align 8
  %28 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %98

34:                                               ; preds = %13
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @GOODIX_BUFFER_STATUS_READY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %90

41:                                               ; preds = %34
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 15
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %4, align 8
  %48 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %46, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load i32, i32* @EPROTO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %98

54:                                               ; preds = %41
  %55 = load i32, i32* %7, align 4
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %88

57:                                               ; preds = %54
  %58 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %4, align 8
  %59 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 1, %60
  %62 = load i32*, i32** %5, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32* %64, i32** %5, align 8
  %65 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %4, align 8
  %66 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %65, i32 0, i32 2
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i64, i64* @GOODIX_READ_COOR_ADDR, align 8
  %69 = add nsw i64 %68, 1
  %70 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %4, align 8
  %71 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %69, %73
  %75 = load i32*, i32** %5, align 8
  %76 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %4, align 8
  %77 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sub nsw i32 %79, 1
  %81 = mul nsw i32 %78, %80
  %82 = call i32 @goodix_i2c_read(%struct.TYPE_2__* %67, i64 %74, i32* %75, i32 %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %57
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %3, align 4
  br label %98

87:                                               ; preds = %57
  br label %88

88:                                               ; preds = %87, %54
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %3, align 4
  br label %98

90:                                               ; preds = %34
  %91 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %92

92:                                               ; preds = %90
  %93 = load i64, i64* @jiffies, align 8
  %94 = load i64, i64* %6, align 8
  %95 = call i64 @time_before(i64 %93, i64 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %13, label %97

97:                                               ; preds = %92
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %88, %85, %51, %26
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @goodix_i2c_read(%struct.TYPE_2__*, i64, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
