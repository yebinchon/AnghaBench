; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7411.c_adt7411_read_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7411.c_adt7411_read_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.adt7411_data = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@ADT7411_REG_EXT_TEMP_AIN14_LSB = common dso_local global i32 0, align 4
@ADT7411_REG_INT_TEMP_VDD_LSB = common dso_local global i32 0, align 4
@ADT7411_REG_EXT_TEMP_AIN1_MSB = common dso_local global i32 0, align 4
@ADT7411_REG_INT_TEMP_MSB = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i64*)* @adt7411_read_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adt7411_read_temp(%struct.device* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.adt7411_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.adt7411_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.adt7411_data* %17, %struct.adt7411_data** %10, align 8
  %18 = load %struct.adt7411_data*, %struct.adt7411_data** %10, align 8
  %19 = getelementptr inbounds %struct.adt7411_data, %struct.adt7411_data* %18, i32 0, i32 0
  %20 = load %struct.i2c_client*, %struct.i2c_client** %19, align 8
  store %struct.i2c_client* %20, %struct.i2c_client** %11, align 8
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %101 [
    i32 132, label %22
    i32 129, label %62
    i32 131, label %62
    i32 128, label %95
    i32 130, label %95
    i32 133, label %95
  ]

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @ADT7411_REG_EXT_TEMP_AIN14_LSB, align 4
  br label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @ADT7411_REG_INT_TEMP_VDD_LSB, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @ADT7411_REG_EXT_TEMP_AIN1_MSB, align 4
  br label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @ADT7411_REG_INT_TEMP_MSB, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %15, align 4
  %39 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %15, align 4
  %42 = call i32 @adt7411_read_10_bit(%struct.i2c_client* %39, i32 %40, i32 %41, i32 0)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %5, align 4
  br label %104

47:                                               ; preds = %37
  %48 = load i32, i32* %12, align 4
  %49 = and i32 %48, 512
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* %12, align 4
  %53 = sub nsw i32 %52, 1024
  br label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %12, align 4
  br label %56

56:                                               ; preds = %54, %51
  %57 = phi i32 [ %53, %51 ], [ %55, %54 ]
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = mul nsw i32 %58, 250
  %60 = sext i32 %59 to i64
  %61 = load i64*, i64** %9, align 8
  store i64 %60, i64* %61, align 8
  store i32 0, i32* %5, align 4
  br label %104

62:                                               ; preds = %4, %4
  %63 = load i32, i32* %7, align 4
  %64 = icmp eq i32 %63, 129
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @ADT7411_REG_TEMP_LOW(i32 %66)
  br label %71

68:                                               ; preds = %62
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @ADT7411_REG_TEMP_HIGH(i32 %69)
  br label %71

71:                                               ; preds = %68, %65
  %72 = phi i32 [ %67, %65 ], [ %70, %68 ]
  store i32 %72, i32* %13, align 4
  %73 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %73, i32 %74)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %5, align 4
  br label %104

80:                                               ; preds = %71
  %81 = load i32, i32* %12, align 4
  %82 = and i32 %81, 128
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i32, i32* %12, align 4
  %86 = sub nsw i32 %85, 256
  br label %89

87:                                               ; preds = %80
  %88 = load i32, i32* %12, align 4
  br label %89

89:                                               ; preds = %87, %84
  %90 = phi i32 [ %86, %84 ], [ %88, %87 ]
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = mul nsw i32 %91, 1000
  %93 = sext i32 %92 to i64
  %94 = load i64*, i64** %9, align 8
  store i64 %93, i64* %94, align 8
  store i32 0, i32* %5, align 4
  br label %104

95:                                               ; preds = %4, %4, %4
  %96 = load %struct.device*, %struct.device** %6, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load i64*, i64** %9, align 8
  %100 = call i32 @adt7411_read_temp_alarm(%struct.device* %96, i32 %97, i32 %98, i64* %99)
  store i32 %100, i32* %5, align 4
  br label %104

101:                                              ; preds = %4
  %102 = load i32, i32* @EOPNOTSUPP, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %101, %95, %89, %78, %56, %45
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local %struct.adt7411_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @adt7411_read_10_bit(%struct.i2c_client*, i32, i32, i32) #1

declare dso_local i32 @ADT7411_REG_TEMP_LOW(i32) #1

declare dso_local i32 @ADT7411_REG_TEMP_HIGH(i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @adt7411_read_temp_alarm(%struct.device*, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
