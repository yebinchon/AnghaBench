; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxcjk-1013.c_kxcjk1013_chip_update_thresholds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxcjk-1013.c_kxcjk1013_chip_update_thresholds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kxcjk1013_data = type { i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@KXCJK1013_REG_WAKE_TIMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Error writing reg_wake_timer\0A\00", align 1
@KXTF9 = common dso_local global i64 0, align 8
@KXTF9_REG_WAKE_THRESH = common dso_local global i32 0, align 4
@KXCJK1013_REG_WAKE_THRES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Error writing reg_wake_thres\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kxcjk1013_data*)* @kxcjk1013_chip_update_thresholds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kxcjk1013_chip_update_thresholds(%struct.kxcjk1013_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kxcjk1013_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.kxcjk1013_data* %0, %struct.kxcjk1013_data** %3, align 8
  %6 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %3, align 8
  %7 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = load i32, i32* @KXCJK1013_REG_WAKE_TIMER, align 4
  %10 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %3, align 8
  %11 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_2__* %8, i32 %9, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %3, align 8
  %18 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %53

23:                                               ; preds = %1
  %24 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %3, align 8
  %25 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @KXTF9, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @KXTF9_REG_WAKE_THRESH, align 4
  br label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @KXCJK1013_REG_WAKE_THRES, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  store i32 %34, i32* %4, align 4
  %35 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %3, align 8
  %36 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %3, align 8
  %40 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_2__* %37, i32 %38, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %33
  %46 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %3, align 8
  %47 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %53

52:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %45, %16
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
