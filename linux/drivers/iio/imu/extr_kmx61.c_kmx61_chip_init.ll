; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_kmx61.c_kmx61_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_kmx61.c_kmx61_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmx61_data = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@KMX61_REG_WHO_AM_I = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Error reading who_am_i\0A\00", align 1
@KMX61_CHIP_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Wrong chip id, got %x expected %x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@KMX61_RANGE_4G = common dso_local global i32 0, align 4
@KMX61_REG_ODCNTL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Error reading reg_odcntl\0A\00", align 1
@KMX61_ACC = common dso_local global i32 0, align 4
@KMX61_MAG = common dso_local global i32 0, align 4
@KMX61_DEFAULT_WAKE_THRESH = common dso_local global i32 0, align 4
@KMX61_DEFAULT_WAKE_DURATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kmx61_data*)* @kmx61_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kmx61_chip_init(%struct.kmx61_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kmx61_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kmx61_data* %0, %struct.kmx61_data** %3, align 8
  %7 = load %struct.kmx61_data*, %struct.kmx61_data** %3, align 8
  %8 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load i32, i32* @KMX61_REG_WHO_AM_I, align 4
  %11 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_2__* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.kmx61_data*, %struct.kmx61_data** %3, align 8
  %16 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 (i32*, i8*, ...) @dev_err(i32* %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %95

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @KMX61_CHIP_ID, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load %struct.kmx61_data*, %struct.kmx61_data** %3, align 8
  %27 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %26, i32 0, i32 3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @KMX61_CHIP_ID, align 4
  %32 = call i32 (i32*, i8*, ...) @dev_err(i32* %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %95

35:                                               ; preds = %21
  %36 = load %struct.kmx61_data*, %struct.kmx61_data** %3, align 8
  %37 = load i32, i32* @KMX61_RANGE_4G, align 4
  %38 = call i32 @kmx61_set_range(%struct.kmx61_data* %36, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %95

43:                                               ; preds = %35
  %44 = load %struct.kmx61_data*, %struct.kmx61_data** %3, align 8
  %45 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %44, i32 0, i32 3
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* @KMX61_REG_ODCNTL, align 4
  %48 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_2__* %46, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %43
  %52 = load %struct.kmx61_data*, %struct.kmx61_data** %3, align 8
  %53 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %52, i32 0, i32 3
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = call i32 (i32*, i8*, ...) @dev_err(i32* %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %95

58:                                               ; preds = %43
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.kmx61_data*, %struct.kmx61_data** %3, align 8
  %61 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.kmx61_data*, %struct.kmx61_data** %3, align 8
  %63 = load i32, i32* @KMX61_ACC, align 4
  %64 = call i32 @kmx61_get_odr(%struct.kmx61_data* %62, i32* %5, i32* %6, i32 %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %58
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %2, align 4
  br label %95

69:                                               ; preds = %58
  %70 = load %struct.kmx61_data*, %struct.kmx61_data** %3, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @kmx61_set_wake_up_odr(%struct.kmx61_data* %70, i32 %71, i32 %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %2, align 4
  br label %95

78:                                               ; preds = %69
  %79 = load %struct.kmx61_data*, %struct.kmx61_data** %3, align 8
  %80 = load i32, i32* @KMX61_ACC, align 4
  %81 = load i32, i32* @KMX61_MAG, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @kmx61_set_mode(%struct.kmx61_data* %79, i32 0, i32 %82, i32 1)
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %78
  %87 = load i32, i32* %4, align 4
  store i32 %87, i32* %2, align 4
  br label %95

88:                                               ; preds = %78
  %89 = load i32, i32* @KMX61_DEFAULT_WAKE_THRESH, align 4
  %90 = load %struct.kmx61_data*, %struct.kmx61_data** %3, align 8
  %91 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* @KMX61_DEFAULT_WAKE_DURATION, align 4
  %93 = load %struct.kmx61_data*, %struct.kmx61_data** %3, align 8
  %94 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %88, %86, %76, %67, %51, %41, %25, %14
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @kmx61_set_range(%struct.kmx61_data*, i32) #1

declare dso_local i32 @kmx61_get_odr(%struct.kmx61_data*, i32*, i32*, i32) #1

declare dso_local i32 @kmx61_set_wake_up_odr(%struct.kmx61_data*, i32, i32) #1

declare dso_local i32 @kmx61_set_mode(%struct.kmx61_data*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
