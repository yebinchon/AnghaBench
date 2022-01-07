; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_vl6180.c_vl6180_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_vl6180.c_vl6180_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vl6180_data = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@VL6180_MODEL_ID = common dso_local global i32 0, align 4
@VL6180_MODEL_ID_VAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"invalid model ID %02x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@VL6180_OUT_OF_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"device is not fresh out of reset\0A\00", align 1
@VL6180_INTR_CONFIG = common dso_local global i32 0, align 4
@VL6180_ALS_READY = common dso_local global i32 0, align 4
@VL6180_RANGE_READY = common dso_local global i32 0, align 4
@VL6180_ALS_IT = common dso_local global i32 0, align 4
@VL6180_ALS_IT_100 = common dso_local global i32 0, align 4
@VL6180_ALS_GAIN = common dso_local global i32 0, align 4
@VL6180_ALS_GAIN_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vl6180_data*)* @vl6180_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vl6180_init(%struct.vl6180_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vl6180_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  store %struct.vl6180_data* %0, %struct.vl6180_data** %3, align 8
  %6 = load %struct.vl6180_data*, %struct.vl6180_data** %3, align 8
  %7 = getelementptr inbounds %struct.vl6180_data, %struct.vl6180_data* %6, i32 0, i32 2
  %8 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  store %struct.i2c_client* %8, %struct.i2c_client** %4, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = load i32, i32* @VL6180_MODEL_ID, align 4
  %11 = call i32 @vl6180_read_byte(%struct.i2c_client* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %93

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @VL6180_MODEL_ID_VAL, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %93

27:                                               ; preds = %16
  %28 = load %struct.vl6180_data*, %struct.vl6180_data** %3, align 8
  %29 = call i32 @vl6180_hold(%struct.vl6180_data* %28, i32 1)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %93

34:                                               ; preds = %27
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = load i32, i32* @VL6180_OUT_OF_RESET, align 4
  %37 = call i32 @vl6180_read_byte(%struct.i2c_client* %35, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %93

42:                                               ; preds = %34
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 1
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 0
  %48 = call i32 @dev_info(i32* %47, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %45, %42
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = load i32, i32* @VL6180_INTR_CONFIG, align 4
  %52 = load i32, i32* @VL6180_ALS_READY, align 4
  %53 = load i32, i32* @VL6180_RANGE_READY, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @vl6180_write_byte(%struct.i2c_client* %50, i32 %51, i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %93

60:                                               ; preds = %49
  %61 = load %struct.vl6180_data*, %struct.vl6180_data** %3, align 8
  %62 = getelementptr inbounds %struct.vl6180_data, %struct.vl6180_data* %61, i32 0, i32 0
  store i32 100, i32* %62, align 8
  %63 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %64 = load i32, i32* @VL6180_ALS_IT, align 4
  %65 = load i32, i32* @VL6180_ALS_IT_100, align 4
  %66 = call i32 @vl6180_write_word(%struct.i2c_client* %63, i32 %64, i32 %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load i32, i32* %5, align 4
  store i32 %70, i32* %2, align 4
  br label %93

71:                                               ; preds = %60
  %72 = load %struct.vl6180_data*, %struct.vl6180_data** %3, align 8
  %73 = getelementptr inbounds %struct.vl6180_data, %struct.vl6180_data* %72, i32 0, i32 1
  store i32 1000, i32* %73, align 4
  %74 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %75 = load i32, i32* @VL6180_ALS_GAIN, align 4
  %76 = load i32, i32* @VL6180_ALS_GAIN_1, align 4
  %77 = call i32 @vl6180_write_byte(%struct.i2c_client* %74, i32 %75, i32 %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %2, align 4
  br label %93

82:                                               ; preds = %71
  %83 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %84 = load i32, i32* @VL6180_OUT_OF_RESET, align 4
  %85 = call i32 @vl6180_write_byte(%struct.i2c_client* %83, i32 %84, i32 0)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* %5, align 4
  store i32 %89, i32* %2, align 4
  br label %93

90:                                               ; preds = %82
  %91 = load %struct.vl6180_data*, %struct.vl6180_data** %3, align 8
  %92 = call i32 @vl6180_hold(%struct.vl6180_data* %91, i32 0)
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %90, %88, %80, %69, %58, %40, %32, %20, %14
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @vl6180_read_byte(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @vl6180_hold(%struct.vl6180_data*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @vl6180_write_byte(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @vl6180_write_word(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
