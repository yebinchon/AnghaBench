; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7411.c_adt7411_read_in_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7411.c_adt7411_read_in_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.adt7411_data = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@ADT7411_REG_EXT_TEMP_AIN14_LSB = common dso_local global i32 0, align 4
@ADT7411_REG_EXT_TEMP_AIN1_MSB = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i64*)* @adt7411_read_in_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adt7411_read_in_chan(%struct.device* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca %struct.adt7411_data*, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call %struct.adt7411_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.adt7411_data* %17, %struct.adt7411_data** %9, align 8
  %18 = load %struct.adt7411_data*, %struct.adt7411_data** %9, align 8
  %19 = getelementptr inbounds %struct.adt7411_data, %struct.adt7411_data* %18, i32 0, i32 2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %19, align 8
  store %struct.i2c_client* %20, %struct.i2c_client** %10, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %15, align 4
  %23 = load %struct.adt7411_data*, %struct.adt7411_data** %9, align 8
  %24 = getelementptr inbounds %struct.adt7411_data, %struct.adt7411_data* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = call i32 @adt7411_update_vref(%struct.device* %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  br label %95

31:                                               ; preds = %4
  %32 = load i32, i32* %6, align 4
  switch i32 %32, label %91 [
    i32 130, label %33
    i32 128, label %60
    i32 129, label %60
    i32 131, label %86
  ]

33:                                               ; preds = %31
  %34 = load i32, i32* @ADT7411_REG_EXT_TEMP_AIN14_LSB, align 4
  %35 = load i32, i32* %15, align 4
  %36 = ashr i32 %35, 2
  %37 = add nsw i32 %34, %36
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %15, align 4
  %39 = and i32 %38, 3
  %40 = mul nsw i32 2, %39
  store i32 %40, i32* %14, align 4
  %41 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @ADT7411_REG_EXT_TEMP_AIN1_MSB, align 4
  %44 = load i32, i32* %15, align 4
  %45 = add nsw i32 %43, %44
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @adt7411_read_10_bit(%struct.i2c_client* %41, i32 %42, i32 %45, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %33
  br label %95

51:                                               ; preds = %33
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.adt7411_data*, %struct.adt7411_data** %9, align 8
  %54 = getelementptr inbounds %struct.adt7411_data, %struct.adt7411_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = mul nsw i32 %52, %55
  %57 = sdiv i32 %56, 1024
  %58 = sext i32 %57 to i64
  %59 = load i64*, i64** %8, align 8
  store i64 %58, i64* %59, align 8
  store i32 0, i32* %11, align 4
  br label %94

60:                                               ; preds = %31, %31
  %61 = load i32, i32* %6, align 4
  %62 = icmp eq i32 %61, 128
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @ADT7411_REG_IN_LOW(i32 %64)
  br label %69

66:                                               ; preds = %60
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @ADT7411_REG_IN_HIGH(i32 %67)
  br label %69

69:                                               ; preds = %66, %63
  %70 = phi i32 [ %65, %63 ], [ %68, %66 ]
  store i32 %70, i32* %12, align 4
  %71 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %71, i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %95

77:                                               ; preds = %69
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.adt7411_data*, %struct.adt7411_data** %9, align 8
  %80 = getelementptr inbounds %struct.adt7411_data, %struct.adt7411_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = mul nsw i32 %78, %81
  %83 = sdiv i32 %82, 256
  %84 = sext i32 %83 to i64
  %85 = load i64*, i64** %8, align 8
  store i64 %84, i64* %85, align 8
  store i32 0, i32* %11, align 4
  br label %94

86:                                               ; preds = %31
  %87 = load %struct.device*, %struct.device** %5, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load i64*, i64** %8, align 8
  %90 = call i32 @adt7411_read_in_alarm(%struct.device* %87, i32 %88, i64* %89)
  store i32 %90, i32* %11, align 4
  br label %94

91:                                               ; preds = %31
  %92 = load i32, i32* @EOPNOTSUPP, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %11, align 4
  br label %94

94:                                               ; preds = %91, %86, %77, %51
  br label %95

95:                                               ; preds = %94, %76, %50, %30
  %96 = load %struct.adt7411_data*, %struct.adt7411_data** %9, align 8
  %97 = getelementptr inbounds %struct.adt7411_data, %struct.adt7411_data* %96, i32 0, i32 1
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load i32, i32* %11, align 4
  ret i32 %99
}

declare dso_local %struct.adt7411_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adt7411_update_vref(%struct.device*) #1

declare dso_local i32 @adt7411_read_10_bit(%struct.i2c_client*, i32, i32, i32) #1

declare dso_local i32 @ADT7411_REG_IN_LOW(i32) #1

declare dso_local i32 @ADT7411_REG_IN_HIGH(i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @adt7411_read_in_alarm(%struct.device*, i32, i64*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
