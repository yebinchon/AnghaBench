; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ftsteutates.c_fts_watchdog_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ftsteutates.c_fts_watchdog_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fts_data = type { %struct.TYPE_4__, %struct.TYPE_5__*, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32*, i32*, i32*, i32 }
%struct.TYPE_5__ = type { i32 }

@FTS_WATCHDOG_TIME_PRESET = common dso_local global i32 0, align 4
@seconds = common dso_local global i64 0, align 8
@FTS_WATCHDOG_CONTROL = common dso_local global i32 0, align 4
@minutes = common dso_local global i64 0, align 8
@WDOG_HW_RUNNING = common dso_local global i32 0, align 4
@fts_wd_info = common dso_local global i32 0, align 4
@fts_wd_ops = common dso_local global i32 0, align 4
@MSEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fts_data*)* @fts_watchdog_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts_watchdog_init(%struct.fts_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fts_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fts_data* %0, %struct.fts_data** %3, align 8
  %6 = load %struct.fts_data*, %struct.fts_data** %3, align 8
  %7 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %6, i32 0, i32 0
  %8 = load %struct.fts_data*, %struct.fts_data** %3, align 8
  %9 = call i32 @watchdog_set_drvdata(%struct.TYPE_4__* %7, %struct.fts_data* %8)
  %10 = load %struct.fts_data*, %struct.fts_data** %3, align 8
  %11 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = load i32, i32* @FTS_WATCHDOG_TIME_PRESET, align 4
  %14 = call i32 @fts_read_byte(%struct.TYPE_5__* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %96

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load %struct.fts_data*, %struct.fts_data** %3, align 8
  %24 = load i64, i64* @seconds, align 8
  %25 = call i32 @fts_wd_set_resolution(%struct.fts_data* %23, i64 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %96

30:                                               ; preds = %22
  %31 = load %struct.fts_data*, %struct.fts_data** %3, align 8
  %32 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 60, i32* %33, align 8
  br label %71

34:                                               ; preds = %19
  %35 = load %struct.fts_data*, %struct.fts_data** %3, align 8
  %36 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = load i32, i32* @FTS_WATCHDOG_CONTROL, align 4
  %39 = call i32 @fts_read_byte(%struct.TYPE_5__* %37, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %96

44:                                               ; preds = %34
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @BIT(i32 1)
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i64, i64* @seconds, align 8
  br label %53

51:                                               ; preds = %44
  %52 = load i64, i64* @minutes, align 8
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i64 [ %50, %49 ], [ %52, %51 ]
  %55 = load %struct.fts_data*, %struct.fts_data** %3, align 8
  %56 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %55, i32 0, i32 2
  store i64 %54, i64* %56, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.fts_data*, %struct.fts_data** %3, align 8
  %59 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = mul nsw i32 %57, %61
  %63 = load %struct.fts_data*, %struct.fts_data** %3, align 8
  %64 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 8
  %66 = load i32, i32* @WDOG_HW_RUNNING, align 4
  %67 = load %struct.fts_data*, %struct.fts_data** %3, align 8
  %68 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 6
  %70 = call i32 @set_bit(i32 %66, i32* %69)
  br label %71

71:                                               ; preds = %53, %30
  %72 = load %struct.fts_data*, %struct.fts_data** %3, align 8
  %73 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 5
  store i32* @fts_wd_info, i32** %74, align 8
  %75 = load %struct.fts_data*, %struct.fts_data** %3, align 8
  %76 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 4
  store i32* @fts_wd_ops, i32** %77, align 8
  %78 = load %struct.fts_data*, %struct.fts_data** %3, align 8
  %79 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %78, i32 0, i32 1
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load %struct.fts_data*, %struct.fts_data** %3, align 8
  %83 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 3
  store i32* %81, i32** %84, align 8
  %85 = load %struct.fts_data*, %struct.fts_data** %3, align 8
  %86 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  store i32 1, i32* %87, align 4
  %88 = load i32, i32* @MSEC_PER_SEC, align 4
  %89 = mul nsw i32 15300, %88
  %90 = load %struct.fts_data*, %struct.fts_data** %3, align 8
  %91 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  store i32 %89, i32* %92, align 8
  %93 = load %struct.fts_data*, %struct.fts_data** %3, align 8
  %94 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %93, i32 0, i32 0
  %95 = call i32 @watchdog_register_device(%struct.TYPE_4__* %94)
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %71, %42, %28, %17
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @watchdog_set_drvdata(%struct.TYPE_4__*, %struct.fts_data*) #1

declare dso_local i32 @fts_read_byte(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @fts_wd_set_resolution(%struct.fts_data*, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @watchdog_register_device(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
