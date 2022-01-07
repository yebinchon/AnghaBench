; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_atlas-ph-sensor.c_atlas_check_ec_calibration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_atlas-ph-sensor.c_atlas_check_ec_calibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atlas_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@ATLAS_REG_EC_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"probe set to K = %d.%.2d\00", align 1
@ATLAS_REG_EC_CALIB_STATUS = common dso_local global i32 0, align 4
@ATLAS_REG_EC_CALIB_STATUS_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"device has not been calibrated\0A\00", align 1
@ATLAS_REG_EC_CALIB_STATUS_DRY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"device missing dry point calibration\0A\00", align 1
@ATLAS_REG_EC_CALIB_STATUS_SINGLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"device using single point calibration\0A\00", align 1
@ATLAS_REG_EC_CALIB_STATUS_LOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"device missing low point calibration\0A\00", align 1
@ATLAS_REG_EC_CALIB_STATUS_HIGH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"device missing high point calibration\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atlas_data*)* @atlas_check_ec_calibration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atlas_check_ec_calibration(%struct.atlas_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atlas_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.atlas_data* %0, %struct.atlas_data** %3, align 8
  %8 = load %struct.atlas_data*, %struct.atlas_data** %3, align 8
  %9 = getelementptr inbounds %struct.atlas_data, %struct.atlas_data* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.atlas_data*, %struct.atlas_data** %3, align 8
  %13 = getelementptr inbounds %struct.atlas_data, %struct.atlas_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @ATLAS_REG_EC_PROBE, align 4
  %16 = call i32 @regmap_bulk_read(i32 %14, i32 %15, i32* %7, i32 2)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %81

21:                                               ; preds = %1
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @be16_to_cpu(i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = udiv i32 %25, 100
  %27 = load i32, i32* %6, align 4
  %28 = urem i32 %27, 100
  %29 = call i32 @dev_info(%struct.device* %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %28)
  %30 = load %struct.atlas_data*, %struct.atlas_data** %3, align 8
  %31 = getelementptr inbounds %struct.atlas_data, %struct.atlas_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @ATLAS_REG_EC_CALIB_STATUS, align 4
  %34 = call i32 @regmap_read(i32 %32, i32 %33, i32* %6)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %21
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %81

39:                                               ; preds = %21
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @ATLAS_REG_EC_CALIB_STATUS_MASK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = call i32 @dev_warn(%struct.device* %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %81

47:                                               ; preds = %39
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @ATLAS_REG_EC_CALIB_STATUS_DRY, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = call i32 @dev_warn(%struct.device* %53, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %47
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @ATLAS_REG_EC_CALIB_STATUS_SINGLE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = call i32 @dev_warn(%struct.device* %61, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %80

63:                                               ; preds = %55
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @ATLAS_REG_EC_CALIB_STATUS_LOW, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = call i32 @dev_warn(%struct.device* %69, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %63
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @ATLAS_REG_EC_CALIB_STATUS_HIGH, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = call i32 @dev_warn(%struct.device* %77, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %71
  br label %80

80:                                               ; preds = %79, %60
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %44, %37, %19
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
