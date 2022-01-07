; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_fxas21002c_core.c_fxas21002c_axis_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_fxas21002c_core.c_fxas21002c_axis_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fxas21002c_data = type { i32, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"failed to read axis: %d: %d\0A\00", align 1
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fxas21002c_data*, i32, i32*)* @fxas21002c_axis_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fxas21002c_axis_get(%struct.fxas21002c_data* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.fxas21002c_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fxas21002c_data* %0, %struct.fxas21002c_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %4, align 8
  %11 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.device* @regmap_get_device(i32 %12)
  store %struct.device* %13, %struct.device** %7, align 8
  %14 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %4, align 8
  %15 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %4, align 8
  %18 = call i32 @fxas21002c_pm_get(%struct.fxas21002c_data* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %48

22:                                               ; preds = %3
  %23 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %4, align 8
  %24 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @FXAS21002C_AXIS_TO_REG(i32 %26)
  %28 = call i32 @regmap_bulk_read(i32 %25, i32 %27, i32* %8, i32 4)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load %struct.device*, %struct.device** %7, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  br label %48

36:                                               ; preds = %22
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @be16_to_cpu(i32 %37)
  %39 = call i32 @sign_extend32(i32 %38, i32 15)
  %40 = load i32*, i32** %6, align 8
  store i32 %39, i32* %40, align 4
  %41 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %4, align 8
  %42 = call i32 @fxas21002c_pm_put(%struct.fxas21002c_data* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %48

46:                                               ; preds = %36
  %47 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %46, %45, %31, %21
  %49 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %4, align 8
  %50 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* %9, align 4
  ret i32 %52
}

declare dso_local %struct.device* @regmap_get_device(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fxas21002c_pm_get(%struct.fxas21002c_data*) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @FXAS21002C_AXIS_TO_REG(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @fxas21002c_pm_put(%struct.fxas21002c_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
