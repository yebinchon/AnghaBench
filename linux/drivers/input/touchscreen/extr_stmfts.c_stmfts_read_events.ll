; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_stmfts.c_stmfts_read_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_stmfts.c_stmfts_read_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmfts_data = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@STMFTS_READ_ALL_EVENT = common dso_local global i32 0, align 4
@STMFTS_DATA_MAX_SIZE = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmfts_data*)* @stmfts_read_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmfts_read_events(%struct.stmfts_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stmfts_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x %struct.i2c_msg], align 16
  %6 = alloca i32, align 4
  store %struct.stmfts_data* %0, %struct.stmfts_data** %3, align 8
  %7 = load i32, i32* @STMFTS_READ_ALL_EVENT, align 4
  store i32 %7, i32* %4, align 4
  %8 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %5, i64 0, i64 0
  %9 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 1
  store i32* %4, i32** %10, align 8
  %11 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 2
  store i32 0, i32* %11, align 8
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 3
  %13 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %14 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %12, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i64 1
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 0
  %20 = load i32, i32* @STMFTS_DATA_MAX_SIZE, align 4
  store i32 %20, i32* %19, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 1
  %22 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %23 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %21, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 2
  %26 = load i32, i32* @I2C_M_RD, align 4
  store i32 %26, i32* %25, align 8
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 3
  %28 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %29 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %27, align 4
  %33 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %34 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %5, i64 0, i64 0
  %39 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %5, i64 0, i64 0
  %40 = call i32 @ARRAY_SIZE(%struct.i2c_msg* %39)
  %41 = call i32 @i2c_transfer(i32 %37, %struct.i2c_msg* %38, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %1
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %57

46:                                               ; preds = %1
  %47 = load i32, i32* %6, align 4
  %48 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %5, i64 0, i64 0
  %49 = call i32 @ARRAY_SIZE(%struct.i2c_msg* %48)
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  br label %55

55:                                               ; preds = %52, %51
  %56 = phi i32 [ 0, %51 ], [ %54, %52 ]
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %44
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.i2c_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
