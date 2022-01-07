; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lochnagar-hwmon.c_do_measurement.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lochnagar-hwmon.c_do_measurement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }

@LOCHNAGAR2_IMON_MEASURED_CHANNELS_SHIFT = common dso_local global i32 0, align 4
@LOCHNAGAR2_IMON_CTRL1 = common dso_local global i32 0, align 4
@LOCHNAGAR2_IMON_ENA_MASK = common dso_local global i32 0, align 4
@LOCHNAGAR2_IMON_CTRL2 = common dso_local global i32 0, align 4
@LOCHNAGAR2_IMON_CTRL3 = common dso_local global i32 0, align 4
@LOCHNAGAR2_IMON_CONFIGURE_MASK = common dso_local global i32 0, align 4
@LOCHNAGAR2_IMON_DONE_MASK = common dso_local global i32 0, align 4
@LOCHNAGAR2_IMON_MEASURE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*, i32, i32, i32)* @do_measurement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_measurement(%struct.regmap* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @LOCHNAGAR2_IMON_MEASURED_CHANNELS_SHIFT, align 4
  %14 = add nsw i32 %12, %13
  %15 = shl i32 1, %14
  store i32 %15, i32* %7, align 4
  %16 = load %struct.regmap*, %struct.regmap** %6, align 8
  %17 = load i32, i32* @LOCHNAGAR2_IMON_CTRL1, align 4
  %18 = load i32, i32* @LOCHNAGAR2_IMON_ENA_MASK, align 4
  %19 = load i32, i32* %7, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %8, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @regmap_write(%struct.regmap* %16, i32 %17, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %5, align 4
  br label %87

28:                                               ; preds = %4
  %29 = load %struct.regmap*, %struct.regmap** %6, align 8
  %30 = load i32, i32* @LOCHNAGAR2_IMON_CTRL2, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @regmap_write(%struct.regmap* %29, i32 %30, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %5, align 4
  br label %87

37:                                               ; preds = %28
  %38 = load %struct.regmap*, %struct.regmap** %6, align 8
  %39 = load i32, i32* @LOCHNAGAR2_IMON_CTRL3, align 4
  %40 = load i32, i32* @LOCHNAGAR2_IMON_CONFIGURE_MASK, align 4
  %41 = call i32 @regmap_write(%struct.regmap* %38, i32 %39, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %5, align 4
  br label %87

46:                                               ; preds = %37
  %47 = load %struct.regmap*, %struct.regmap** %6, align 8
  %48 = load i32, i32* @LOCHNAGAR2_IMON_CTRL3, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @LOCHNAGAR2_IMON_DONE_MASK, align 4
  %52 = and i32 %50, %51
  %53 = call i32 @regmap_read_poll_timeout(%struct.regmap* %47, i32 %48, i32 %49, i32 %52, i32 1000, i32 10000)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %5, align 4
  br label %87

58:                                               ; preds = %46
  %59 = load %struct.regmap*, %struct.regmap** %6, align 8
  %60 = load i32, i32* @LOCHNAGAR2_IMON_CTRL3, align 4
  %61 = load i32, i32* @LOCHNAGAR2_IMON_MEASURE_MASK, align 4
  %62 = call i32 @regmap_write(%struct.regmap* %59, i32 %60, i32 %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %5, align 4
  br label %87

67:                                               ; preds = %58
  %68 = load i32, i32* %9, align 4
  %69 = mul nsw i32 %68, 3
  %70 = sdiv i32 %69, 2
  %71 = call i32 @msleep(i32 %70)
  %72 = load %struct.regmap*, %struct.regmap** %6, align 8
  %73 = load i32, i32* @LOCHNAGAR2_IMON_CTRL3, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @LOCHNAGAR2_IMON_DONE_MASK, align 4
  %77 = and i32 %75, %76
  %78 = call i32 @regmap_read_poll_timeout(%struct.regmap* %72, i32 %73, i32 %74, i32 %77, i32 5000, i32 200000)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %67
  %82 = load i32, i32* %11, align 4
  store i32 %82, i32* %5, align 4
  br label %87

83:                                               ; preds = %67
  %84 = load %struct.regmap*, %struct.regmap** %6, align 8
  %85 = load i32, i32* @LOCHNAGAR2_IMON_CTRL3, align 4
  %86 = call i32 @regmap_write(%struct.regmap* %84, i32 %85, i32 0)
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %83, %81, %65, %56, %44, %35, %26
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @regmap_read_poll_timeout(%struct.regmap*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
