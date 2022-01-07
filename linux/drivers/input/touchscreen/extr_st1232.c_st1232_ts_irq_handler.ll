; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_st1232.c_st1232_ts_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_st1232.c_st1232_ts_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st1232_ts_data = type { %struct.TYPE_7__, %struct.TYPE_6__*, i32, %struct.TYPE_5__*, %struct.input_dev*, %struct.st1232_ts_finger* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.input_dev = type { i32 }
%struct.st1232_ts_finger = type { i32, i32, i32, i32 }

@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@DEV_PM_QOS_RESUME_LATENCY = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @st1232_ts_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st1232_ts_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.st1232_ts_data*, align 8
  %6 = alloca %struct.st1232_ts_finger*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.st1232_ts_data*
  store %struct.st1232_ts_data* %12, %struct.st1232_ts_data** %5, align 8
  %13 = load %struct.st1232_ts_data*, %struct.st1232_ts_data** %5, align 8
  %14 = getelementptr inbounds %struct.st1232_ts_data, %struct.st1232_ts_data* %13, i32 0, i32 5
  %15 = load %struct.st1232_ts_finger*, %struct.st1232_ts_finger** %14, align 8
  store %struct.st1232_ts_finger* %15, %struct.st1232_ts_finger** %6, align 8
  %16 = load %struct.st1232_ts_data*, %struct.st1232_ts_data** %5, align 8
  %17 = getelementptr inbounds %struct.st1232_ts_data, %struct.st1232_ts_data* %16, i32 0, i32 4
  %18 = load %struct.input_dev*, %struct.input_dev** %17, align 8
  store %struct.input_dev* %18, %struct.input_dev** %7, align 8
  store i32 0, i32* %8, align 4
  %19 = load %struct.st1232_ts_data*, %struct.st1232_ts_data** %5, align 8
  %20 = call i32 @st1232_ts_read_data(%struct.st1232_ts_data* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %121

24:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %80, %24
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.st1232_ts_data*, %struct.st1232_ts_data** %5, align 8
  %28 = getelementptr inbounds %struct.st1232_ts_data, %struct.st1232_ts_data* %27, i32 0, i32 3
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %26, %31
  br i1 %32, label %33, label %83

33:                                               ; preds = %25
  %34 = load %struct.st1232_ts_finger*, %struct.st1232_ts_finger** %6, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.st1232_ts_finger, %struct.st1232_ts_finger* %34, i64 %36
  %38 = getelementptr inbounds %struct.st1232_ts_finger, %struct.st1232_ts_finger* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  br label %80

42:                                               ; preds = %33
  %43 = load %struct.st1232_ts_data*, %struct.st1232_ts_data** %5, align 8
  %44 = getelementptr inbounds %struct.st1232_ts_data, %struct.st1232_ts_data* %43, i32 0, i32 3
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %42
  %50 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %51 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %52 = load %struct.st1232_ts_finger*, %struct.st1232_ts_finger** %6, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.st1232_ts_finger, %struct.st1232_ts_finger* %52, i64 %54
  %56 = getelementptr inbounds %struct.st1232_ts_finger, %struct.st1232_ts_finger* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @input_report_abs(%struct.input_dev* %50, i32 %51, i32 %57)
  br label %59

59:                                               ; preds = %49, %42
  %60 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %61 = load %struct.st1232_ts_data*, %struct.st1232_ts_data** %5, align 8
  %62 = getelementptr inbounds %struct.st1232_ts_data, %struct.st1232_ts_data* %61, i32 0, i32 2
  %63 = load %struct.st1232_ts_finger*, %struct.st1232_ts_finger** %6, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.st1232_ts_finger, %struct.st1232_ts_finger* %63, i64 %65
  %67 = getelementptr inbounds %struct.st1232_ts_finger, %struct.st1232_ts_finger* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.st1232_ts_finger*, %struct.st1232_ts_finger** %6, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.st1232_ts_finger, %struct.st1232_ts_finger* %69, i64 %71
  %73 = getelementptr inbounds %struct.st1232_ts_finger, %struct.st1232_ts_finger* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @touchscreen_report_pos(%struct.input_dev* %60, i32* %62, i32 %68, i32 %74, i32 1)
  %76 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %77 = call i32 @input_mt_sync(%struct.input_dev* %76)
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %59, %41
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %25

83:                                               ; preds = %25
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %102, label %86

86:                                               ; preds = %83
  %87 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %88 = call i32 @input_mt_sync(%struct.input_dev* %87)
  %89 = load %struct.st1232_ts_data*, %struct.st1232_ts_data** %5, align 8
  %90 = getelementptr inbounds %struct.st1232_ts_data, %struct.st1232_ts_data* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %101

94:                                               ; preds = %86
  %95 = load %struct.st1232_ts_data*, %struct.st1232_ts_data** %5, align 8
  %96 = getelementptr inbounds %struct.st1232_ts_data, %struct.st1232_ts_data* %95, i32 0, i32 0
  %97 = call i32 @dev_pm_qos_remove_request(%struct.TYPE_7__* %96)
  %98 = load %struct.st1232_ts_data*, %struct.st1232_ts_data** %5, align 8
  %99 = getelementptr inbounds %struct.st1232_ts_data, %struct.st1232_ts_data* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  store i32* null, i32** %100, align 8
  br label %101

101:                                              ; preds = %94, %86
  br label %118

102:                                              ; preds = %83
  %103 = load %struct.st1232_ts_data*, %struct.st1232_ts_data** %5, align 8
  %104 = getelementptr inbounds %struct.st1232_ts_data, %struct.st1232_ts_data* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %117, label %108

108:                                              ; preds = %102
  %109 = load %struct.st1232_ts_data*, %struct.st1232_ts_data** %5, align 8
  %110 = getelementptr inbounds %struct.st1232_ts_data, %struct.st1232_ts_data* %109, i32 0, i32 1
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load %struct.st1232_ts_data*, %struct.st1232_ts_data** %5, align 8
  %114 = getelementptr inbounds %struct.st1232_ts_data, %struct.st1232_ts_data* %113, i32 0, i32 0
  %115 = load i32, i32* @DEV_PM_QOS_RESUME_LATENCY, align 4
  %116 = call i32 @dev_pm_qos_add_ancestor_request(i32* %112, %struct.TYPE_7__* %114, i32 %115, i32 100)
  br label %117

117:                                              ; preds = %108, %102
  br label %118

118:                                              ; preds = %117, %101
  %119 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %120 = call i32 @input_sync(%struct.input_dev* %119)
  br label %121

121:                                              ; preds = %118, %23
  %122 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %122
}

declare dso_local i32 @st1232_ts_read_data(%struct.st1232_ts_data*) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @touchscreen_report_pos(%struct.input_dev*, i32*, i32, i32, i32) #1

declare dso_local i32 @input_mt_sync(%struct.input_dev*) #1

declare dso_local i32 @dev_pm_qos_remove_request(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_pm_qos_add_ancestor_request(i32*, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
