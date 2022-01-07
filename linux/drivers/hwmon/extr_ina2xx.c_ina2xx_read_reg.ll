; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina2xx.c_ina2xx_read_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina2xx.c_ina2xx_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ina2xx_data = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Starting register %d read\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"read %d, val = 0x%04x\0A\00", align 1
@INA2XX_CALIBRATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"chip not calibrated, reinitializing\0A\00", align 1
@INA2XX_MAX_DELAY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"unable to reinitialize the chip\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32*)* @ina2xx_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ina2xx_read_reg(%struct.device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ina2xx_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.ina2xx_data* @dev_get_drvdata(%struct.device* %12)
  store %struct.ina2xx_data* %13, %struct.ina2xx_data** %8, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 5, i32* %10, align 4
  br label %17

17:                                               ; preds = %67, %3
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %70

20:                                               ; preds = %17
  %21 = load %struct.ina2xx_data*, %struct.ina2xx_data** %8, align 8
  %22 = getelementptr inbounds %struct.ina2xx_data, %struct.ina2xx_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @regmap_read(i32 %23, i32 %24, i32* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %4, align 4
  br label %75

31:                                               ; preds = %20
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %35)
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %66

40:                                               ; preds = %31
  %41 = load %struct.ina2xx_data*, %struct.ina2xx_data** %8, align 8
  %42 = getelementptr inbounds %struct.ina2xx_data, %struct.ina2xx_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @INA2XX_CALIBRATION, align 4
  %45 = call i32 @regmap_read(i32 %43, i32 %44, i32* %11)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %4, align 4
  br label %75

50:                                               ; preds = %40
  %51 = load i32, i32* %11, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %50
  %54 = load %struct.device*, %struct.device** %5, align 8
  %55 = call i32 @dev_warn(%struct.device* %54, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %56 = load %struct.ina2xx_data*, %struct.ina2xx_data** %8, align 8
  %57 = call i32 @ina2xx_init(%struct.ina2xx_data* %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %4, align 4
  br label %75

62:                                               ; preds = %53
  %63 = load i32, i32* @INA2XX_MAX_DELAY, align 4
  %64 = call i32 @msleep(i32 %63)
  br label %67

65:                                               ; preds = %50
  br label %66

66:                                               ; preds = %65, %31
  store i32 0, i32* %4, align 4
  br label %75

67:                                               ; preds = %62
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %10, align 4
  br label %17

70:                                               ; preds = %17
  %71 = load %struct.device*, %struct.device** %5, align 8
  %72 = call i32 @dev_err(%struct.device* %71, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %73 = load i32, i32* @ENODEV, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %70, %66, %60, %48, %29
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.ina2xx_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @ina2xx_init(%struct.ina2xx_data*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
