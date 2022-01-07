; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_ak8975.c_ak8975_start_read_axis.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_ak8975.c_ak8975_start_read_axis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ak8975_data = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32*, i32* }
%struct.i2c_client = type { i32 }

@MODE_ONCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Error in setting operating mode\0A\00", align 1
@ST1_DRDY = common dso_local global i64 0, align 8
@ST2 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Error in reading ST2\0A\00", align 1
@ST2_DERR = common dso_local global i64 0, align 8
@ST2_HOFL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"ST2 status error 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ak8975_data*, %struct.i2c_client*)* @ak8975_start_read_axis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak8975_start_read_axis(%struct.ak8975_data* %0, %struct.i2c_client* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ak8975_data*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  store %struct.ak8975_data* %0, %struct.ak8975_data** %4, align 8
  store %struct.i2c_client* %1, %struct.i2c_client** %5, align 8
  %7 = load %struct.ak8975_data*, %struct.ak8975_data** %4, align 8
  %8 = load i32, i32* @MODE_ONCE, align 4
  %9 = call i32 @ak8975_set_mode(%struct.ak8975_data* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = call i32 (i32*, i8*, ...) @dev_err(i32* %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %103

17:                                               ; preds = %2
  %18 = load %struct.ak8975_data*, %struct.ak8975_data** %4, align 8
  %19 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.ak8975_data*, %struct.ak8975_data** %4, align 8
  %24 = call i32 @wait_conversion_complete_interrupt(%struct.ak8975_data* %23)
  store i32 %24, i32* %6, align 4
  br label %38

25:                                               ; preds = %17
  %26 = load %struct.ak8975_data*, %struct.ak8975_data** %4, align 8
  %27 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @gpio_is_valid(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.ak8975_data*, %struct.ak8975_data** %4, align 8
  %33 = call i32 @wait_conversion_complete_gpio(%struct.ak8975_data* %32)
  store i32 %33, i32* %6, align 4
  br label %37

34:                                               ; preds = %25
  %35 = load %struct.ak8975_data*, %struct.ak8975_data** %4, align 8
  %36 = call i32 @wait_conversion_complete_polled(%struct.ak8975_data* %35)
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %34, %31
  br label %38

38:                                               ; preds = %37, %22
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %103

43:                                               ; preds = %38
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.ak8975_data*, %struct.ak8975_data** %4, align 8
  %46 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @ST1_DRDY, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %44, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %102

55:                                               ; preds = %43
  %56 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %57 = load %struct.ak8975_data*, %struct.ak8975_data** %4, align 8
  %58 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @ST2, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %56, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %55
  %69 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %70 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %69, i32 0, i32 0
  %71 = call i32 (i32*, i8*, ...) @dev_err(i32* %70, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %3, align 4
  br label %103

73:                                               ; preds = %55
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.ak8975_data*, %struct.ak8975_data** %4, align 8
  %76 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* @ST2_DERR, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ak8975_data*, %struct.ak8975_data** %4, align 8
  %84 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* @ST2_HOFL, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %82, %90
  %92 = and i32 %74, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %73
  %95 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %96 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %95, i32 0, i32 0
  %97 = load i32, i32* %6, align 4
  %98 = call i32 (i32*, i8*, ...) @dev_err(i32* %96, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %103

101:                                              ; preds = %73
  br label %102

102:                                              ; preds = %101, %43
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %94, %68, %41, %12
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @ak8975_set_mode(%struct.ak8975_data*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @wait_conversion_complete_interrupt(%struct.ak8975_data*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @wait_conversion_complete_gpio(%struct.ak8975_data*) #1

declare dso_local i32 @wait_conversion_complete_polled(%struct.ak8975_data*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
