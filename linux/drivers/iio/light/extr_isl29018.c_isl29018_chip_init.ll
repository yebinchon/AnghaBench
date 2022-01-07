; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_isl29018.c_isl29018_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_isl29018.c_isl29018_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isl29018_chip = type { i64, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.device = type { i32 }

@isl29035 = common dso_local global i64 0, align 8
@ISL29035_REG_DEVICE_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Error reading ID register with error %d\0A\00", align 1
@ISL29035_DEVICE_ID_MASK = common dso_local global i32 0, align 4
@ISL29035_DEVICE_ID_SHIFT = common dso_local global i32 0, align 4
@ISL29035_DEVICE_ID = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ISL29035_BOUT_MASK = common dso_local global i32 0, align 4
@ISL29018_REG_TEST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to clear isl29018 TEST reg.(%d)\0A\00", align 1
@ISL29018_REG_ADD_COMMAND1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to clear isl29018 CMD1 reg.(%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Init of isl29018 fails\0A\00", align 1
@isl29018_int_utimes = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isl29018_chip*)* @isl29018_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl29018_chip_init(%struct.isl29018_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isl29018_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.isl29018_chip* %0, %struct.isl29018_chip** %3, align 8
  %7 = load %struct.isl29018_chip*, %struct.isl29018_chip** %3, align 8
  %8 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.device* @regmap_get_device(i32 %9)
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.isl29018_chip*, %struct.isl29018_chip** %3, align 8
  %12 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @isl29035, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %53

16:                                               ; preds = %1
  %17 = load %struct.isl29018_chip*, %struct.isl29018_chip** %3, align 8
  %18 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ISL29035_REG_DEVICE_ID, align 4
  %21 = call i32 @regmap_read(i32 %19, i32 %20, i32* %6)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %25, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %118

29:                                               ; preds = %16
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @ISL29035_DEVICE_ID_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @ISL29035_DEVICE_ID_SHIFT, align 4
  %34 = lshr i32 %32, %33
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @ISL29035_DEVICE_ID, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %118

41:                                               ; preds = %29
  %42 = load %struct.isl29018_chip*, %struct.isl29018_chip** %3, align 8
  %43 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ISL29035_REG_DEVICE_ID, align 4
  %46 = load i32, i32* @ISL29035_BOUT_MASK, align 4
  %47 = call i32 @regmap_update_bits(i32 %44, i32 %45, i32 %46, i32 0)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %118

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52, %1
  %54 = load %struct.isl29018_chip*, %struct.isl29018_chip** %3, align 8
  %55 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @ISL29018_REG_TEST, align 4
  %58 = call i32 @regmap_write(i32 %56, i32 %57, i32 0)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %53
  %62 = load %struct.device*, %struct.device** %5, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %62, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %118

66:                                               ; preds = %53
  %67 = load %struct.isl29018_chip*, %struct.isl29018_chip** %3, align 8
  %68 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @ISL29018_REG_ADD_COMMAND1, align 4
  %71 = call i32 @regmap_write(i32 %69, i32 %70, i32 0)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %66
  %75 = load %struct.device*, %struct.device** %5, align 8
  %76 = load i32, i32* %4, align 4
  %77 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %75, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %4, align 4
  store i32 %78, i32* %2, align 4
  br label %118

79:                                               ; preds = %66
  %80 = call i32 @usleep_range(i32 1000, i32 2000)
  %81 = load %struct.isl29018_chip*, %struct.isl29018_chip** %3, align 8
  %82 = load %struct.isl29018_chip*, %struct.isl29018_chip** %3, align 8
  %83 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.isl29018_chip*, %struct.isl29018_chip** %3, align 8
  %87 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @isl29018_set_scale(%struct.isl29018_chip* %81, i32 %85, i32 %89)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %79
  %94 = load %struct.device*, %struct.device** %5, align 8
  %95 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %94, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %96 = load i32, i32* %4, align 4
  store i32 %96, i32* %2, align 4
  br label %118

97:                                               ; preds = %79
  %98 = load %struct.isl29018_chip*, %struct.isl29018_chip** %3, align 8
  %99 = load i32**, i32*** @isl29018_int_utimes, align 8
  %100 = load %struct.isl29018_chip*, %struct.isl29018_chip** %3, align 8
  %101 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds i32*, i32** %99, i64 %102
  %104 = load i32*, i32** %103, align 8
  %105 = load %struct.isl29018_chip*, %struct.isl29018_chip** %3, align 8
  %106 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @isl29018_set_integration_time(%struct.isl29018_chip* %98, i32 %109)
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* %4, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %97
  %114 = load %struct.device*, %struct.device** %5, align 8
  %115 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %114, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %116

116:                                              ; preds = %113, %97
  %117 = load i32, i32* %4, align 4
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %116, %93, %74, %61, %50, %38, %24
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local %struct.device* @regmap_get_device(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @isl29018_set_scale(%struct.isl29018_chip*, i32, i32) #1

declare dso_local i32 @isl29018_set_integration_time(%struct.isl29018_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
