; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_fxas21002c_core.c_fxas21002c_temp_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_fxas21002c_core.c_fxas21002c_temp_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fxas21002c_data = type { i32, i32*, i32 }
%struct.device = type { i32 }

@F_TEMP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"failed to read temp: %d\0A\00", align 1
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fxas21002c_data*, i32*)* @fxas21002c_temp_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fxas21002c_temp_get(%struct.fxas21002c_data* %0, i32* %1) #0 {
  %3 = alloca %struct.fxas21002c_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fxas21002c_data* %0, %struct.fxas21002c_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %3, align 8
  %9 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.device* @regmap_get_device(i32 %10)
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %3, align 8
  %13 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %3, align 8
  %16 = call i32 @fxas21002c_pm_get(%struct.fxas21002c_data* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %45

20:                                               ; preds = %2
  %21 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %3, align 8
  %22 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @F_TEMP, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @regmap_field_read(i32 %26, i32* %6)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @dev_err(%struct.device* %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %45

34:                                               ; preds = %20
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @sign_extend32(i32 %35, i32 7)
  %37 = load i32*, i32** %4, align 8
  store i32 %36, i32* %37, align 4
  %38 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %3, align 8
  %39 = call i32 @fxas21002c_pm_put(%struct.fxas21002c_data* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %45

43:                                               ; preds = %34
  %44 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %43, %42, %30, %19
  %46 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %3, align 8
  %47 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local %struct.device* @regmap_get_device(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fxas21002c_pm_get(%struct.fxas21002c_data*) #1

declare dso_local i32 @regmap_field_read(i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

declare dso_local i32 @fxas21002c_pm_put(%struct.fxas21002c_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
