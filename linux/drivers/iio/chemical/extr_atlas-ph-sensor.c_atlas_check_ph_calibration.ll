; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_atlas-ph-sensor.c_atlas_check_ph_calibration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_atlas-ph-sensor.c_atlas_check_ph_calibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atlas_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@ATLAS_REG_PH_CALIB_STATUS = common dso_local global i32 0, align 4
@ATLAS_REG_PH_CALIB_STATUS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"device has not been calibrated\0A\00", align 1
@ATLAS_REG_PH_CALIB_STATUS_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"device missing low point calibration\0A\00", align 1
@ATLAS_REG_PH_CALIB_STATUS_MID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"device missing mid point calibration\0A\00", align 1
@ATLAS_REG_PH_CALIB_STATUS_HIGH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"device missing high point calibration\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atlas_data*)* @atlas_check_ph_calibration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atlas_check_ph_calibration(%struct.atlas_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atlas_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.atlas_data* %0, %struct.atlas_data** %3, align 8
  %7 = load %struct.atlas_data*, %struct.atlas_data** %3, align 8
  %8 = getelementptr inbounds %struct.atlas_data, %struct.atlas_data* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.atlas_data*, %struct.atlas_data** %3, align 8
  %12 = getelementptr inbounds %struct.atlas_data, %struct.atlas_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @ATLAS_REG_PH_CALIB_STATUS, align 4
  %15 = call i32 @regmap_read(i32 %13, i32 %14, i32* %6)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %53

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @ATLAS_REG_PH_CALIB_STATUS_MASK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = call i32 @dev_warn(%struct.device* %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %53

28:                                               ; preds = %20
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @ATLAS_REG_PH_CALIB_STATUS_LOW, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = call i32 @dev_warn(%struct.device* %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %28
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @ATLAS_REG_PH_CALIB_STATUS_MID, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = call i32 @dev_warn(%struct.device* %42, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @ATLAS_REG_PH_CALIB_STATUS_HIGH, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = call i32 @dev_warn(%struct.device* %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %44
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %25, %18
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
