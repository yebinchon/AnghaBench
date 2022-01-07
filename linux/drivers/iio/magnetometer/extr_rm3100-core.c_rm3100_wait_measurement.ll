; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_rm3100-core.c_rm3100_wait_measurement.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_rm3100-core.c_rm3100_wait_measurement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rm3100_data = type { i32, i32, i64, %struct.regmap* }
%struct.regmap = type { i32 }

@RM3100_REG_STATUS = common dso_local global i32 0, align 4
@RM3100_STATUS_DRDY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rm3100_data*)* @rm3100_wait_measurement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rm3100_wait_measurement(%struct.rm3100_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rm3100_data*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rm3100_data* %0, %struct.rm3100_data** %3, align 8
  %8 = load %struct.rm3100_data*, %struct.rm3100_data** %3, align 8
  %9 = getelementptr inbounds %struct.rm3100_data, %struct.rm3100_data* %8, i32 0, i32 3
  %10 = load %struct.regmap*, %struct.regmap** %9, align 8
  store %struct.regmap* %10, %struct.regmap** %4, align 8
  store i32 20, i32* %6, align 4
  %11 = load %struct.rm3100_data*, %struct.rm3100_data** %3, align 8
  %12 = getelementptr inbounds %struct.rm3100_data, %struct.rm3100_data* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.rm3100_data*, %struct.rm3100_data** %3, align 8
  %17 = getelementptr inbounds %struct.rm3100_data, %struct.rm3100_data* %16, i32 0, i32 1
  %18 = call i32 @reinit_completion(i32* %17)
  br label %19

19:                                               ; preds = %15, %1
  %20 = load %struct.regmap*, %struct.regmap** %4, align 8
  %21 = load i32, i32* @RM3100_REG_STATUS, align 4
  %22 = call i32 @regmap_read(%struct.regmap* %20, i32 %21, i32* %5)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %2, align 4
  br label %82

27:                                               ; preds = %19
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @RM3100_STATUS_DRDY, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @RM3100_STATUS_DRDY, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %81

33:                                               ; preds = %27
  %34 = load %struct.rm3100_data*, %struct.rm3100_data** %3, align 8
  %35 = getelementptr inbounds %struct.rm3100_data, %struct.rm3100_data* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %33
  %39 = load %struct.rm3100_data*, %struct.rm3100_data** %3, align 8
  %40 = getelementptr inbounds %struct.rm3100_data, %struct.rm3100_data* %39, i32 0, i32 1
  %41 = load %struct.rm3100_data*, %struct.rm3100_data** %3, align 8
  %42 = getelementptr inbounds %struct.rm3100_data, %struct.rm3100_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @msecs_to_jiffies(i32 %43)
  %45 = call i32 @wait_for_completion_timeout(i32* %40, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %38
  %49 = load i32, i32* @ETIMEDOUT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %82

51:                                               ; preds = %38
  br label %80

52:                                               ; preds = %33
  br label %53

53:                                               ; preds = %69, %52
  %54 = call i32 @usleep_range(i32 1000, i32 5000)
  %55 = load %struct.regmap*, %struct.regmap** %4, align 8
  %56 = load i32, i32* @RM3100_REG_STATUS, align 4
  %57 = call i32 @regmap_read(%struct.regmap* %55, i32 %56, i32* %5)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %82

62:                                               ; preds = %53
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @RM3100_STATUS_DRDY, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %73

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %53, label %73

73:                                               ; preds = %69, %67
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* @ETIMEDOUT, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %82

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79, %51
  br label %81

81:                                               ; preds = %80, %27
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %76, %60, %48, %25
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
