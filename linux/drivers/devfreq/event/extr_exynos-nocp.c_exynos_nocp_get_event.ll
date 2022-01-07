; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/event/extr_exynos-nocp.c_exynos_nocp_get_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/event/extr_exynos-nocp.c_exynos_nocp_get_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfreq_event_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.devfreq_event_data = type { i32, i32 }
%struct.exynos_nocp = type { i32, i32 }

@NOCP_COUNTERS_0_VAL = common dso_local global i32 0, align 4
@NOCP_COUNTERS_1_VAL = common dso_local global i32 0, align 4
@NOCP_COUNTERS_2_VAL = common dso_local global i32 0, align 4
@NOCP_COUNTERS_3_VAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s (event: %ld/%ld)\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Failed to read the counter of NoC probe device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devfreq_event_dev*, %struct.devfreq_event_data*)* @exynos_nocp_get_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_nocp_get_event(%struct.devfreq_event_dev* %0, %struct.devfreq_event_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.devfreq_event_dev*, align 8
  %5 = alloca %struct.devfreq_event_data*, align 8
  %6 = alloca %struct.exynos_nocp*, align 8
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.devfreq_event_dev* %0, %struct.devfreq_event_dev** %4, align 8
  store %struct.devfreq_event_data* %1, %struct.devfreq_event_data** %5, align 8
  %9 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %4, align 8
  %10 = call %struct.exynos_nocp* @devfreq_event_get_drvdata(%struct.devfreq_event_dev* %9)
  store %struct.exynos_nocp* %10, %struct.exynos_nocp** %6, align 8
  %11 = load %struct.exynos_nocp*, %struct.exynos_nocp** %6, align 8
  %12 = getelementptr inbounds %struct.exynos_nocp, %struct.exynos_nocp* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @NOCP_COUNTERS_0_VAL, align 4
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %16 = call i32 @regmap_read(i32 %13, i32 %14, i32* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %81

20:                                               ; preds = %2
  %21 = load %struct.exynos_nocp*, %struct.exynos_nocp** %6, align 8
  %22 = getelementptr inbounds %struct.exynos_nocp, %struct.exynos_nocp* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @NOCP_COUNTERS_1_VAL, align 4
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %26 = call i32 @regmap_read(i32 %23, i32 %24, i32* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %81

30:                                               ; preds = %20
  %31 = load %struct.exynos_nocp*, %struct.exynos_nocp** %6, align 8
  %32 = getelementptr inbounds %struct.exynos_nocp, %struct.exynos_nocp* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @NOCP_COUNTERS_2_VAL, align 4
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %36 = call i32 @regmap_read(i32 %33, i32 %34, i32* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %81

40:                                               ; preds = %30
  %41 = load %struct.exynos_nocp*, %struct.exynos_nocp** %6, align 8
  %42 = getelementptr inbounds %struct.exynos_nocp, %struct.exynos_nocp* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @NOCP_COUNTERS_3_VAL, align 4
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %46 = call i32 @regmap_read(i32 %43, i32 %44, i32* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %81

50:                                               ; preds = %40
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 16
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %55 = load i32, i32* %54, align 16
  %56 = or i32 %53, %55
  %57 = load %struct.devfreq_event_data*, %struct.devfreq_event_data** %5, align 8
  %58 = getelementptr inbounds %struct.devfreq_event_data, %struct.devfreq_event_data* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 16
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %61, %63
  %65 = load %struct.devfreq_event_data*, %struct.devfreq_event_data** %5, align 8
  %66 = getelementptr inbounds %struct.devfreq_event_data, %struct.devfreq_event_data* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %4, align 8
  %68 = getelementptr inbounds %struct.devfreq_event_dev, %struct.devfreq_event_dev* %67, i32 0, i32 1
  %69 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %4, align 8
  %70 = getelementptr inbounds %struct.devfreq_event_dev, %struct.devfreq_event_dev* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.devfreq_event_data*, %struct.devfreq_event_data** %5, align 8
  %75 = getelementptr inbounds %struct.devfreq_event_data, %struct.devfreq_event_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.devfreq_event_data*, %struct.devfreq_event_data** %5, align 8
  %78 = getelementptr inbounds %struct.devfreq_event_data, %struct.devfreq_event_data* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @dev_dbg(i32* %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %76, i32 %79)
  store i32 0, i32* %3, align 4
  br label %87

81:                                               ; preds = %49, %39, %29, %19
  %82 = load %struct.exynos_nocp*, %struct.exynos_nocp** %6, align 8
  %83 = getelementptr inbounds %struct.exynos_nocp, %struct.exynos_nocp* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @dev_err(i32 %84, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %81, %50
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.exynos_nocp* @devfreq_event_get_drvdata(%struct.devfreq_event_dev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
