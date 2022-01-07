; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_tcs3414.c_tcs3414_req_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_tcs3414.c_tcs3414_req_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcs3414_data = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@TCS3414_CONTROL = common dso_local global i32 0, align 4
@TCS3414_CONTROL_ADC_EN = common dso_local global i32 0, align 4
@TCS3414_CONTROL_ADC_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"data not ready\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcs3414_data*)* @tcs3414_req_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcs3414_req_data(%struct.tcs3414_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tcs3414_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tcs3414_data* %0, %struct.tcs3414_data** %3, align 8
  store i32 25, i32* %4, align 4
  %6 = load %struct.tcs3414_data*, %struct.tcs3414_data** %3, align 8
  %7 = getelementptr inbounds %struct.tcs3414_data, %struct.tcs3414_data* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = load i32, i32* @TCS3414_CONTROL, align 4
  %10 = load %struct.tcs3414_data*, %struct.tcs3414_data** %3, align 8
  %11 = getelementptr inbounds %struct.tcs3414_data, %struct.tcs3414_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @TCS3414_CONTROL_ADC_EN, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_3__* %8, i32 %9, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %68

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %41, %20
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %4, align 4
  %24 = icmp ne i32 %22, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %21
  %26 = load %struct.tcs3414_data*, %struct.tcs3414_data** %3, align 8
  %27 = getelementptr inbounds %struct.tcs3414_data, %struct.tcs3414_data* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load i32, i32* @TCS3414_CONTROL, align 4
  %30 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_3__* %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %68

35:                                               ; preds = %25
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @TCS3414_CONTROL_ADC_VALID, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %43

41:                                               ; preds = %35
  %42 = call i32 @msleep(i32 20)
  br label %21

43:                                               ; preds = %40, %21
  %44 = load %struct.tcs3414_data*, %struct.tcs3414_data** %3, align 8
  %45 = getelementptr inbounds %struct.tcs3414_data, %struct.tcs3414_data* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* @TCS3414_CONTROL, align 4
  %48 = load %struct.tcs3414_data*, %struct.tcs3414_data** %3, align 8
  %49 = getelementptr inbounds %struct.tcs3414_data, %struct.tcs3414_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_3__* %46, i32 %47, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %68

56:                                               ; preds = %43
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load %struct.tcs3414_data*, %struct.tcs3414_data** %3, align 8
  %61 = getelementptr inbounds %struct.tcs3414_data, %struct.tcs3414_data* %60, i32 0, i32 1
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %68

67:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %59, %54, %33, %18
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
