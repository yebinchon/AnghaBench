; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1133.c_si1133_validate_ids.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1133.c_si1133_validate_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.si1133_data = type { i32 }

@SI1133_REG_PART_ID = common dso_local global i32 0, align 4
@SI1133_REG_REV_ID = common dso_local global i32 0, align 4
@SI1133_REG_MFR_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Device ID part %#02hhx rev %#02hhx mfr %#02hhx\0A\00", align 1
@SI1133_PART_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Part ID mismatch got %#02hhx, expected %#02x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @si1133_validate_ids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si1133_validate_ids(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.si1133_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %10 = call %struct.si1133_data* @iio_priv(%struct.iio_dev* %9)
  store %struct.si1133_data* %10, %struct.si1133_data** %4, align 8
  %11 = load %struct.si1133_data*, %struct.si1133_data** %4, align 8
  %12 = getelementptr inbounds %struct.si1133_data, %struct.si1133_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SI1133_REG_PART_ID, align 4
  %15 = call i32 @regmap_read(i32 %13, i32 %14, i32* %5)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %2, align 4
  br label %59

20:                                               ; preds = %1
  %21 = load %struct.si1133_data*, %struct.si1133_data** %4, align 8
  %22 = getelementptr inbounds %struct.si1133_data, %struct.si1133_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SI1133_REG_REV_ID, align 4
  %25 = call i32 @regmap_read(i32 %23, i32 %24, i32* %6)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %2, align 4
  br label %59

30:                                               ; preds = %20
  %31 = load %struct.si1133_data*, %struct.si1133_data** %4, align 8
  %32 = getelementptr inbounds %struct.si1133_data, %struct.si1133_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SI1133_REG_MFR_ID, align 4
  %35 = call i32 @regmap_read(i32 %33, i32 %34, i32* %7)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %2, align 4
  br label %59

40:                                               ; preds = %30
  %41 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %42 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @dev_info(i32* %42, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @SI1133_PART_ID, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %40
  %51 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %52 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @SI1133_PART_ID, align 4
  %55 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %59

58:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %50, %38, %28, %18
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.si1133_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
