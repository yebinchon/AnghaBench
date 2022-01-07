; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1133.c_si1133_cmd_reset_sw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1133.c_si1133_cmd_reset_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si1133_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@SI1133_REG_COMMAND = common dso_local global i32 0, align 4
@SI1133_CMD_RESET_SW = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@SI1133_CMD_TIMEOUT_MS = common dso_local global i32 0, align 4
@SI1133_REG_RESPONSE0 = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@SI1133_CMD_MINSLEEP_US_LOW = common dso_local global i32 0, align 4
@SI1133_CMD_MINSLEEP_US_HIGH = common dso_local global i32 0, align 4
@SI1133_MAX_CMD_CTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Timeout on reset ctr resp: %d\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si1133_data*)* @si1133_cmd_reset_sw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si1133_cmd_reset_sw(%struct.si1133_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.si1133_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.si1133_data* %0, %struct.si1133_data** %3, align 8
  %8 = load %struct.si1133_data*, %struct.si1133_data** %3, align 8
  %9 = getelementptr inbounds %struct.si1133_data, %struct.si1133_data* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.si1133_data*, %struct.si1133_data** %3, align 8
  %13 = getelementptr inbounds %struct.si1133_data, %struct.si1133_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SI1133_REG_COMMAND, align 4
  %16 = load i32, i32* @SI1133_CMD_RESET_SW, align 4
  %17 = call i32 @regmap_write(i32 %14, i32 %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %2, align 4
  br label %69

22:                                               ; preds = %1
  %23 = load i64, i64* @jiffies, align 8
  %24 = load i32, i32* @SI1133_CMD_TIMEOUT_MS, align 4
  %25 = call i64 @msecs_to_jiffies(i32 %24)
  %26 = add i64 %23, %25
  store i64 %26, i64* %6, align 8
  br label %27

27:                                               ; preds = %22, %37, %59
  %28 = load %struct.si1133_data*, %struct.si1133_data** %3, align 8
  %29 = getelementptr inbounds %struct.si1133_data, %struct.si1133_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SI1133_REG_RESPONSE0, align 4
  %32 = call i32 @regmap_read(i32 %30, i32 %31, i32* %5)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @ENXIO, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = load i32, i32* @SI1133_CMD_MINSLEEP_US_LOW, align 4
  %39 = load i32, i32* @SI1133_CMD_MINSLEEP_US_HIGH, align 4
  %40 = call i32 @usleep_range(i32 %38, i32 %39)
  br label %27

41:                                               ; preds = %27
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @SI1133_MAX_CMD_CTR, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @SI1133_MAX_CMD_CTR, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %60

48:                                               ; preds = %41
  %49 = load i64, i64* @jiffies, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call i64 @time_after(i64 %49, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @dev_warn(%struct.device* %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @ETIMEDOUT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %69

59:                                               ; preds = %48
  br label %27

60:                                               ; preds = %47
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* @SI1133_MAX_CMD_CTR, align 4
  %65 = load %struct.si1133_data*, %struct.si1133_data** %3, align 8
  %66 = getelementptr inbounds %struct.si1133_data, %struct.si1133_data* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %63, %60
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %53, %20
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
