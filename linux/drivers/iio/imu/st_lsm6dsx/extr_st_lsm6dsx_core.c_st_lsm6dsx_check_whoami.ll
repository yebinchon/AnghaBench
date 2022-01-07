; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_core.c_st_lsm6dsx_check_whoami.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_core.c_st_lsm6dsx_check_whoami.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i8* }
%struct.st_lsm6dsx_hw = type { %struct.TYPE_5__*, i32, i32 }

@st_lsm6dsx_sensor_settings = common dso_local global %struct.TYPE_5__* null, align 8
@ST_LSM6DSX_MAX_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unsupported hw id [%02x]\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ST_LSM6DSX_REG_WHOAMI_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to read whoami register\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"unsupported whoami [%02x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_lsm6dsx_hw*, i32, i8**)* @st_lsm6dsx_check_whoami to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_lsm6dsx_check_whoami(%struct.st_lsm6dsx_hw* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.st_lsm6dsx_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.st_lsm6dsx_hw* %0, %struct.st_lsm6dsx_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %47, %3
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @st_lsm6dsx_sensor_settings, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %50

17:                                               ; preds = %12
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %38, %17
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @ST_LSM6DSX_MAX_ID, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %18
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @st_lsm6dsx_sensor_settings, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %23, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %22
  br label %41

37:                                               ; preds = %22
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %10, align 4
  br label %18

41:                                               ; preds = %36, %18
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @ST_LSM6DSX_MAX_ID, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %50

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %12

50:                                               ; preds = %45, %12
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** @st_lsm6dsx_sensor_settings, align 8
  %53 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %52)
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %5, align 8
  %57 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 (i32, i8*, ...) @dev_err(i32 %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %113

63:                                               ; preds = %50
  %64 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %5, align 8
  %65 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @ST_LSM6DSX_REG_WHOAMI_ADDR, align 4
  %68 = call i32 @regmap_read(i32 %66, i32 %67, i32* %11)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %63
  %72 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %5, align 8
  %73 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i32, i8*, ...) @dev_err(i32 %74, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %4, align 4
  br label %113

77:                                               ; preds = %63
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** @st_lsm6dsx_sensor_settings, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %78, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %77
  %87 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %5, align 8
  %88 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = call i32 (i32, i8*, ...) @dev_err(i32 %89, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @ENODEV, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %113

94:                                               ; preds = %77
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** @st_lsm6dsx_sensor_settings, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = load i8**, i8*** %7, align 8
  store i8* %105, i8** %106, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** @st_lsm6dsx_sensor_settings, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i64 %109
  %111 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %5, align 8
  %112 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %111, i32 0, i32 0
  store %struct.TYPE_5__* %110, %struct.TYPE_5__** %112, align 8
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %94, %86, %71, %55
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
