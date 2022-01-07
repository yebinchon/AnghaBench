; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_chipone_icn8318.c_icn8318_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_chipone_icn8318.c_icn8318_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icn8318_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.icn8318_touch_data = type { i32, %struct.icn8318_touch*, i64 }
%struct.icn8318_touch = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Error reading touch data: %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@ICN8318_MAX_TOUCHES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Too much touches %d > %d\0A\00", align 1
@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @icn8318_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icn8318_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.icn8318_data*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.icn8318_touch_data, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.icn8318_touch*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.icn8318_data*
  store %struct.icn8318_data* %14, %struct.icn8318_data** %6, align 8
  %15 = load %struct.icn8318_data*, %struct.icn8318_data** %6, align 8
  %16 = getelementptr inbounds %struct.icn8318_data, %struct.icn8318_data* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %7, align 8
  %19 = load %struct.icn8318_data*, %struct.icn8318_data** %6, align 8
  %20 = getelementptr inbounds %struct.icn8318_data, %struct.icn8318_data* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = call i32 @icn8318_read_touch_data(%struct.TYPE_2__* %21, %struct.icn8318_touch_data* %8)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.device*, %struct.device** %7, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %29, i32* %3, align 4
  br label %109

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.icn8318_touch_data, %struct.icn8318_touch_data* %8, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %35, i32* %3, align 4
  br label %109

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.icn8318_touch_data, %struct.icn8318_touch_data* %8, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @ICN8318_MAX_TOUCHES, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.device*, %struct.device** %7, align 8
  %43 = getelementptr inbounds %struct.icn8318_touch_data, %struct.icn8318_touch_data* %8, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ICN8318_MAX_TOUCHES, align 4
  %46 = call i32 @dev_warn(%struct.device* %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load i32, i32* @ICN8318_MAX_TOUCHES, align 4
  %48 = getelementptr inbounds %struct.icn8318_touch_data, %struct.icn8318_touch_data* %8, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  br label %49

49:                                               ; preds = %41, %36
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %96, %49
  %51 = load i32, i32* %9, align 4
  %52 = getelementptr inbounds %struct.icn8318_touch_data, %struct.icn8318_touch_data* %8, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %99

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.icn8318_touch_data, %struct.icn8318_touch_data* %8, i32 0, i32 1
  %57 = load %struct.icn8318_touch*, %struct.icn8318_touch** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.icn8318_touch, %struct.icn8318_touch* %57, i64 %59
  store %struct.icn8318_touch* %60, %struct.icn8318_touch** %11, align 8
  %61 = load %struct.icn8318_touch*, %struct.icn8318_touch** %11, align 8
  %62 = getelementptr inbounds %struct.icn8318_touch, %struct.icn8318_touch* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @icn8318_touch_active(i32 %63)
  store i32 %64, i32* %12, align 4
  %65 = load %struct.icn8318_data*, %struct.icn8318_data** %6, align 8
  %66 = getelementptr inbounds %struct.icn8318_data, %struct.icn8318_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.icn8318_touch*, %struct.icn8318_touch** %11, align 8
  %69 = getelementptr inbounds %struct.icn8318_touch, %struct.icn8318_touch* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @input_mt_slot(i32 %67, i32 %70)
  %72 = load %struct.icn8318_data*, %struct.icn8318_data** %6, align 8
  %73 = getelementptr inbounds %struct.icn8318_data, %struct.icn8318_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @MT_TOOL_FINGER, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @input_mt_report_slot_state(i32 %74, i32 %75, i32 %76)
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %55
  br label %96

81:                                               ; preds = %55
  %82 = load %struct.icn8318_data*, %struct.icn8318_data** %6, align 8
  %83 = getelementptr inbounds %struct.icn8318_data, %struct.icn8318_data* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.icn8318_data*, %struct.icn8318_data** %6, align 8
  %86 = getelementptr inbounds %struct.icn8318_data, %struct.icn8318_data* %85, i32 0, i32 1
  %87 = load %struct.icn8318_touch*, %struct.icn8318_touch** %11, align 8
  %88 = getelementptr inbounds %struct.icn8318_touch, %struct.icn8318_touch* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @be16_to_cpu(i32 %89)
  %91 = load %struct.icn8318_touch*, %struct.icn8318_touch** %11, align 8
  %92 = getelementptr inbounds %struct.icn8318_touch, %struct.icn8318_touch* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @be16_to_cpu(i32 %93)
  %95 = call i32 @touchscreen_report_pos(i32 %84, i32* %86, i32 %90, i32 %94, i32 1)
  br label %96

96:                                               ; preds = %81, %80
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %50

99:                                               ; preds = %50
  %100 = load %struct.icn8318_data*, %struct.icn8318_data** %6, align 8
  %101 = getelementptr inbounds %struct.icn8318_data, %struct.icn8318_data* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @input_mt_sync_frame(i32 %102)
  %104 = load %struct.icn8318_data*, %struct.icn8318_data** %6, align 8
  %105 = getelementptr inbounds %struct.icn8318_data, %struct.icn8318_data* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @input_sync(i32 %106)
  %108 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %99, %34, %25
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @icn8318_read_touch_data(%struct.TYPE_2__*, %struct.icn8318_touch_data*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @icn8318_touch_active(i32) #1

declare dso_local i32 @input_mt_slot(i32, i32) #1

declare dso_local i32 @input_mt_report_slot_state(i32, i32, i32) #1

declare dso_local i32 @touchscreen_report_pos(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @input_mt_sync_frame(i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
