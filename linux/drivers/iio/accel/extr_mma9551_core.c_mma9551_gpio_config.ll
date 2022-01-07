; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9551_core.c_mma9551_gpio_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9551_core.c_mma9551_gpio_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@mma9551_gpio_max = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"bad GPIO pin\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MMA9551_APPID_GPIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"error setting GPIO app_id\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"error setting GPIO bit number\0A\00", align 1
@MMA9551_GPIO_POL_LSB = common dso_local global i32 0, align 4
@MMA9551_GPIO_POL_MSB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"error setting GPIO polarity\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mma9551_gpio_config(%struct.i2c_client* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @mma9551_gpio_max, align 4
  %18 = icmp ugt i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %5
  %20 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %86

25:                                               ; preds = %5
  %26 = load i32, i32* %8, align 4
  %27 = mul i32 %26, 2
  store i32 %27, i32* %12, align 4
  %28 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %29 = load i32, i32* @MMA9551_APPID_GPIO, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @mma9551_write_config_byte(%struct.i2c_client* %28, i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %25
  %36 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* %15, align 4
  store i32 %39, i32* %6, align 4
  br label %86

40:                                               ; preds = %25
  %41 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %42 = load i32, i32* @MMA9551_APPID_GPIO, align 4
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, 1
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @mma9551_write_config_byte(%struct.i2c_client* %41, i32 %42, i32 %44, i32 %45)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %40
  %50 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 0
  %52 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* %15, align 4
  store i32 %53, i32* %6, align 4
  br label %86

54:                                               ; preds = %40
  %55 = load i32, i32* %8, align 4
  switch i32 %55, label %64 [
    i32 131, label %56
    i32 130, label %58
    i32 129, label %60
    i32 128, label %62
  ]

56:                                               ; preds = %54
  %57 = load i32, i32* @MMA9551_GPIO_POL_LSB, align 4
  store i32 %57, i32* %12, align 4
  store i32 64, i32* %13, align 4
  br label %64

58:                                               ; preds = %54
  %59 = load i32, i32* @MMA9551_GPIO_POL_LSB, align 4
  store i32 %59, i32* %12, align 4
  store i32 128, i32* %13, align 4
  br label %64

60:                                               ; preds = %54
  %61 = load i32, i32* @MMA9551_GPIO_POL_MSB, align 4
  store i32 %61, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %64

62:                                               ; preds = %54
  %63 = load i32, i32* @MMA9551_GPIO_POL_MSB, align 4
  store i32 %63, i32* %12, align 4
  store i32 2, i32* %13, align 4
  br label %64

64:                                               ; preds = %54, %62, %60, %58, %56
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* %13, align 4
  br label %70

69:                                               ; preds = %64
  br label %70

70:                                               ; preds = %69, %67
  %71 = phi i32 [ %68, %67 ], [ 0, %69 ]
  store i32 %71, i32* %14, align 4
  %72 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %73 = load i32, i32* @MMA9551_APPID_GPIO, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %14, align 4
  %77 = call i32 @mma9551_update_config_bits(%struct.i2c_client* %72, i32 %73, i32 %74, i32 %75, i32 %76)
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %15, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %70
  %81 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %82 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %81, i32 0, i32 0
  %83 = call i32 @dev_err(i32* %82, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %84

84:                                               ; preds = %80, %70
  %85 = load i32, i32* %15, align 4
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %84, %49, %35, %19
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mma9551_write_config_byte(%struct.i2c_client*, i32, i32, i32) #1

declare dso_local i32 @mma9551_update_config_bits(%struct.i2c_client*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
