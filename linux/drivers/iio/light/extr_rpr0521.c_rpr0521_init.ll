; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_rpr0521.c_rpr0521_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_rpr0521.c_rpr0521_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpr0521_data = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RPR0521_REG_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to read REG_ID register\0A\00", align 1
@RPR0521_MANUFACT_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Wrong id, got %x, expected %x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@RPR0521_REG_MODE_CTRL = common dso_local global i32 0, align 4
@RPR0521_MODE_MEAS_TIME_MASK = common dso_local global i32 0, align 4
@RPR0521_DEFAULT_MEAS_TIME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"regmap_update_bits returned %d\0A\00", align 1
@RPR0521_MODE_ALS_ENABLE = common dso_local global i32 0, align 4
@RPR0521_MODE_PXS_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpr0521_data*)* @rpr0521_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpr0521_init(%struct.rpr0521_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rpr0521_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rpr0521_data* %0, %struct.rpr0521_data** %3, align 8
  %6 = load %struct.rpr0521_data*, %struct.rpr0521_data** %3, align 8
  %7 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @RPR0521_REG_ID, align 4
  %10 = call i32 @regmap_read(i32 %8, i32 %9, i32* %5)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.rpr0521_data*, %struct.rpr0521_data** %3, align 8
  %15 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 (i32*, i8*, ...) @dev_err(i32* %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %67

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @RPR0521_MANUFACT_ID, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load %struct.rpr0521_data*, %struct.rpr0521_data** %3, align 8
  %26 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @RPR0521_MANUFACT_ID, align 4
  %31 = call i32 (i32*, i8*, ...) @dev_err(i32* %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %67

34:                                               ; preds = %20
  %35 = load %struct.rpr0521_data*, %struct.rpr0521_data** %3, align 8
  %36 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @RPR0521_REG_MODE_CTRL, align 4
  %39 = load i32, i32* @RPR0521_MODE_MEAS_TIME_MASK, align 4
  %40 = load i32, i32* @RPR0521_DEFAULT_MEAS_TIME, align 4
  %41 = call i32 @regmap_update_bits(i32 %37, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %67

48:                                               ; preds = %34
  %49 = load %struct.rpr0521_data*, %struct.rpr0521_data** %3, align 8
  %50 = load i32, i32* @RPR0521_MODE_ALS_ENABLE, align 4
  %51 = call i32 @rpr0521_als_enable(%struct.rpr0521_data* %49, i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %67

56:                                               ; preds = %48
  %57 = load %struct.rpr0521_data*, %struct.rpr0521_data** %3, align 8
  %58 = load i32, i32* @RPR0521_MODE_PXS_ENABLE, align 4
  %59 = call i32 @rpr0521_pxs_enable(%struct.rpr0521_data* %57, i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %67

64:                                               ; preds = %56
  %65 = load %struct.rpr0521_data*, %struct.rpr0521_data** %3, align 8
  %66 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %64, %62, %54, %44, %24, %13
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @rpr0521_als_enable(%struct.rpr0521_data*, i32) #1

declare dso_local i32 @rpr0521_pxs_enable(%struct.rpr0521_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
