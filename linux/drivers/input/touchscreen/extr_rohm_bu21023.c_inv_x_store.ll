; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_rohm_bu21023.c_inv_x_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_rohm_bu21023.c_inv_x_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.rohm_ts_data = type { %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@INV_X = common dso_local global i32 0, align 4
@COMMON_SETUP2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @inv_x_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inv_x_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.rohm_ts_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.i2c_client* @to_i2c_client(%struct.device* %14)
  store %struct.i2c_client* %15, %struct.i2c_client** %10, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %17 = call %struct.rohm_ts_data* @i2c_get_clientdata(%struct.i2c_client* %16)
  store %struct.rohm_ts_data* %17, %struct.rohm_ts_data** %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @kstrtouint(i8* %18, i32 0, i32* %12)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %5, align 4
  br label %80

24:                                               ; preds = %4
  %25 = load %struct.rohm_ts_data*, %struct.rohm_ts_data** %11, align 8
  %26 = getelementptr inbounds %struct.rohm_ts_data, %struct.rohm_ts_data* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock_interruptible(i32* %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %13, align 4
  store i32 %33, i32* %5, align 4
  br label %80

34:                                               ; preds = %24
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i32, i32* @INV_X, align 4
  %39 = load %struct.rohm_ts_data*, %struct.rohm_ts_data** %11, align 8
  %40 = getelementptr inbounds %struct.rohm_ts_data, %struct.rohm_ts_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  br label %50

43:                                               ; preds = %34
  %44 = load i32, i32* @INV_X, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.rohm_ts_data*, %struct.rohm_ts_data** %11, align 8
  %47 = getelementptr inbounds %struct.rohm_ts_data, %struct.rohm_ts_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %43, %37
  %51 = load %struct.rohm_ts_data*, %struct.rohm_ts_data** %11, align 8
  %52 = getelementptr inbounds %struct.rohm_ts_data, %struct.rohm_ts_data* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load %struct.rohm_ts_data*, %struct.rohm_ts_data** %11, align 8
  %57 = getelementptr inbounds %struct.rohm_ts_data, %struct.rohm_ts_data* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @COMMON_SETUP2, align 4
  %60 = load %struct.rohm_ts_data*, %struct.rohm_ts_data** %11, align 8
  %61 = getelementptr inbounds %struct.rohm_ts_data, %struct.rohm_ts_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @i2c_smbus_write_byte_data(i32 %58, i32 %59, i32 %62)
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %55, %50
  %65 = load %struct.rohm_ts_data*, %struct.rohm_ts_data** %11, align 8
  %66 = getelementptr inbounds %struct.rohm_ts_data, %struct.rohm_ts_data* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  br label %77

75:                                               ; preds = %64
  %76 = load i64, i64* %9, align 8
  br label %77

77:                                               ; preds = %75, %72
  %78 = phi i64 [ %74, %72 ], [ %76, %75 ]
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %77, %32, %22
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.rohm_ts_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
