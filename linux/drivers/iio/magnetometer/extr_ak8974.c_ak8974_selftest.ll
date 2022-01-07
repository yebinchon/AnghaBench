; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_ak8974.c_ak8974_selftest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_ak8974.c_ak8974_selftest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ak8974 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@AK8974_SELFTEST = common dso_local global i32 0, align 4
@AK8974_SELFTEST_IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"selftest not idle before test\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@AK8974_CTRL3 = common dso_local global i32 0, align 4
@AK8974_CTRL3_SELFTEST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"could not write CTRL3\0A\00", align 1
@AK8974_SELFTEST_DELAY = common dso_local global i32 0, align 4
@AK8974_SELFTEST_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"selftest result NOT OK (%02x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"selftest not idle after test (%02x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"passed self-test\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ak8974*)* @ak8974_selftest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak8974_selftest(%struct.ak8974* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ak8974*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ak8974* %0, %struct.ak8974** %3, align 8
  %7 = load %struct.ak8974*, %struct.ak8974** %3, align 8
  %8 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.ak8974*, %struct.ak8974** %3, align 8
  %12 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @AK8974_SELFTEST, align 4
  %15 = call i32 @regmap_read(i32 %13, i32 %14, i32* %5)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %88

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @AK8974_SELFTEST_IDLE, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %88

29:                                               ; preds = %20
  %30 = load %struct.ak8974*, %struct.ak8974** %3, align 8
  %31 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @AK8974_CTRL3, align 4
  %34 = load i32, i32* @AK8974_CTRL3_SELFTEST, align 4
  %35 = load i32, i32* @AK8974_CTRL3_SELFTEST, align 4
  %36 = call i32 @regmap_update_bits(i32 %32, i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %88

43:                                               ; preds = %29
  %44 = load i32, i32* @AK8974_SELFTEST_DELAY, align 4
  %45 = call i32 @msleep(i32 %44)
  %46 = load %struct.ak8974*, %struct.ak8974** %3, align 8
  %47 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @AK8974_SELFTEST, align 4
  %50 = call i32 @regmap_read(i32 %48, i32 %49, i32* %5)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %2, align 4
  br label %88

55:                                               ; preds = %43
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @AK8974_SELFTEST_OK, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %88

65:                                               ; preds = %55
  %66 = load %struct.ak8974*, %struct.ak8974** %3, align 8
  %67 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @AK8974_SELFTEST, align 4
  %70 = call i32 @regmap_read(i32 %68, i32 %69, i32* %5)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %88

75:                                               ; preds = %65
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @AK8974_SELFTEST_IDLE, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load %struct.device*, %struct.device** %4, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %80, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @EIO, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %88

85:                                               ; preds = %75
  %86 = load %struct.device*, %struct.device** %4, align 8
  %87 = call i32 @dev_dbg(%struct.device* %86, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %85, %79, %73, %59, %53, %39, %24, %18
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
