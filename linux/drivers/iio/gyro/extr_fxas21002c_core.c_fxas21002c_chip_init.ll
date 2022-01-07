; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_fxas21002c_core.c_fxas21002c_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_fxas21002c_core.c_fxas21002c_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fxas21002c_data = type { i32, i32*, i32 }
%struct.device = type { i32 }

@F_WHO_AM_I = common dso_local global i64 0, align 8
@FXAS21002C_CHIP_ID_1 = common dso_local global i32 0, align 4
@FXAS21002C_CHIP_ID_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"chip id 0x%02x is not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FXAS21002C_MODE_STANDBY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to set ODR: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fxas21002c_data*)* @fxas21002c_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fxas21002c_chip_init(%struct.fxas21002c_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fxas21002c_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fxas21002c_data* %0, %struct.fxas21002c_data** %3, align 8
  %7 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %3, align 8
  %8 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.device* @regmap_get_device(i32 %9)
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %3, align 8
  %12 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @F_WHO_AM_I, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @regmap_field_read(i32 %16, i32* %5)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %58

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @FXAS21002C_CHIP_ID_1, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @FXAS21002C_CHIP_ID_2, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @dev_err(%struct.device* %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %58

36:                                               ; preds = %26, %22
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %3, align 8
  %39 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %3, align 8
  %41 = load i32, i32* @FXAS21002C_MODE_STANDBY, align 4
  %42 = call i32 @fxas21002c_mode_set(%struct.fxas21002c_data* %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %58

47:                                               ; preds = %36
  %48 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %3, align 8
  %49 = call i32 @fxas21002c_odr_set(%struct.fxas21002c_data* %48, i32 200)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @dev_err(%struct.device* %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %52, %47
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %45, %30, %20
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.device* @regmap_get_device(i32) #1

declare dso_local i32 @regmap_field_read(i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @fxas21002c_mode_set(%struct.fxas21002c_data*, i32) #1

declare dso_local i32 @fxas21002c_odr_set(%struct.fxas21002c_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
