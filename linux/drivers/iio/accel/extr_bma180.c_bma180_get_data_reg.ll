; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bma180.c_bma180_get_data_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bma180.c_bma180_get_data_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bma180_data = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@BMA180_TEMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to read temp register\0A\00", align 1
@BMA180_ACC_X_LSB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to read accel_%c register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bma180_data*, i32)* @bma180_get_data_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bma180_get_data_reg(%struct.bma180_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bma180_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bma180_data* %0, %struct.bma180_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.bma180_data*, %struct.bma180_data** %4, align 8
  %8 = getelementptr inbounds %struct.bma180_data, %struct.bma180_data* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %53

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %31 [
    i32 128, label %16
  ]

16:                                               ; preds = %14
  %17 = load %struct.bma180_data*, %struct.bma180_data** %4, align 8
  %18 = getelementptr inbounds %struct.bma180_data, %struct.bma180_data* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = load i32, i32* @BMA180_TEMP, align 4
  %21 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_3__* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %16
  %25 = load %struct.bma180_data*, %struct.bma180_data** %4, align 8
  %26 = getelementptr inbounds %struct.bma180_data, %struct.bma180_data* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = call i32 (i32*, i8*, ...) @dev_err(i32* %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %24, %16
  br label %51

31:                                               ; preds = %14
  %32 = load %struct.bma180_data*, %struct.bma180_data** %4, align 8
  %33 = getelementptr inbounds %struct.bma180_data, %struct.bma180_data* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* @BMA180_ACC_X_LSB, align 4
  %36 = load i32, i32* %5, align 4
  %37 = mul i32 %36, 2
  %38 = add i32 %35, %37
  %39 = call i32 @i2c_smbus_read_word_data(%struct.TYPE_3__* %34, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %31
  %43 = load %struct.bma180_data*, %struct.bma180_data** %4, align 8
  %44 = getelementptr inbounds %struct.bma180_data, %struct.bma180_data* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %5, align 4
  %48 = add i32 120, %47
  %49 = call i32 (i32*, i8*, ...) @dev_err(i32* %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %42, %31
  br label %51

51:                                               ; preds = %50, %30
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %11
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @i2c_smbus_read_word_data(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
