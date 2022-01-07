; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_stk3310.c_stk3310_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_stk3310.c_stk3310_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.stk3310_data = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@STK3310_REG_ID = common dso_local global i32 0, align 4
@STK3310_CHIP_ID_VAL = common dso_local global i32 0, align 4
@STK3311_CHIP_ID_VAL = common dso_local global i32 0, align 4
@STK3335_CHIP_ID_VAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"invalid chip id: 0x%x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@STK3310_STATE_EN_ALS = common dso_local global i32 0, align 4
@STK3310_STATE_EN_PS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to enable sensor\00", align 1
@STK3310_PSINT_EN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to enable interrupts!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @stk3310_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk3310_init(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.stk3310_data*, align 8
  %8 = alloca %struct.i2c_client*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %10 = call %struct.stk3310_data* @iio_priv(%struct.iio_dev* %9)
  store %struct.stk3310_data* %10, %struct.stk3310_data** %7, align 8
  %11 = load %struct.stk3310_data*, %struct.stk3310_data** %7, align 8
  %12 = getelementptr inbounds %struct.stk3310_data, %struct.stk3310_data* %11, i32 0, i32 2
  %13 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  store %struct.i2c_client* %13, %struct.i2c_client** %8, align 8
  %14 = load %struct.stk3310_data*, %struct.stk3310_data** %7, align 8
  %15 = getelementptr inbounds %struct.stk3310_data, %struct.stk3310_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @STK3310_REG_ID, align 4
  %18 = call i32 @regmap_read(i32 %16, i32 %17, i32* %5)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %70

23:                                               ; preds = %1
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @STK3310_CHIP_ID_VAL, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @STK3311_CHIP_ID_VAL, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @STK3335_CHIP_ID_VAL, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = load i32, i32* %5, align 4
  %39 = call i32 (i32*, i8*, ...) @dev_err(i32* %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %70

42:                                               ; preds = %31, %27, %23
  %43 = load i32, i32* @STK3310_STATE_EN_ALS, align 4
  %44 = load i32, i32* @STK3310_STATE_EN_PS, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %6, align 4
  %46 = load %struct.stk3310_data*, %struct.stk3310_data** %7, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @stk3310_set_state(%struct.stk3310_data* %46, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %42
  %52 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 0
  %54 = call i32 (i32*, i8*, ...) @dev_err(i32* %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %70

56:                                               ; preds = %42
  %57 = load %struct.stk3310_data*, %struct.stk3310_data** %7, align 8
  %58 = getelementptr inbounds %struct.stk3310_data, %struct.stk3310_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @STK3310_PSINT_EN, align 4
  %61 = call i32 @regmap_field_write(i32 %59, i32 %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %66 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %65, i32 0, i32 0
  %67 = call i32 (i32*, i8*, ...) @dev_err(i32* %66, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %68

68:                                               ; preds = %64, %56
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %51, %35, %21
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.stk3310_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @stk3310_set_state(%struct.stk3310_data*, i32) #1

declare dso_local i32 @regmap_field_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
