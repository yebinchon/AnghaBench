; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_chipone_icn8505.c_icn8505_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_chipone_icn8505.c_icn8505_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icn8505_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.icn8505_touch_data = type { i32, i32, %struct.icn8505_touch* }
%struct.icn8505_touch = type { i32, i32, i32, i32 }

@ICN8505_REG_TOUCHDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Error reading touch data: %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@ICN8505_MAX_TOUCHES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Too many touches %d > %d\0A\00", align 1
@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@KEY_LEFTMETA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @icn8505_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icn8505_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.icn8505_data*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.icn8505_touch_data, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.icn8505_touch*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.icn8505_data*
  store %struct.icn8505_data* %14, %struct.icn8505_data** %6, align 8
  %15 = load %struct.icn8505_data*, %struct.icn8505_data** %6, align 8
  %16 = getelementptr inbounds %struct.icn8505_data, %struct.icn8505_data* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %7, align 8
  %19 = load %struct.icn8505_data*, %struct.icn8505_data** %6, align 8
  %20 = load i32, i32* @ICN8505_REG_TOUCHDATA, align 4
  %21 = call i32 @icn8505_read_data(%struct.icn8505_data* %19, i32 %20, %struct.icn8505_touch_data* %8, i32 16)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.device*, %struct.device** %7, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @dev_err(%struct.device* %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %28, i32* %3, align 4
  br label %111

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.icn8505_touch_data, %struct.icn8505_touch_data* %8, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ICN8505_MAX_TOUCHES, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.device*, %struct.device** %7, align 8
  %36 = getelementptr inbounds %struct.icn8505_touch_data, %struct.icn8505_touch_data* %8, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @ICN8505_MAX_TOUCHES, align 4
  %39 = call i32 @dev_warn(%struct.device* %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load i32, i32* @ICN8505_MAX_TOUCHES, align 4
  %41 = getelementptr inbounds %struct.icn8505_touch_data, %struct.icn8505_touch_data* %8, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  br label %42

42:                                               ; preds = %34, %29
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %89, %42
  %44 = load i32, i32* %9, align 4
  %45 = getelementptr inbounds %struct.icn8505_touch_data, %struct.icn8505_touch_data* %8, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %92

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.icn8505_touch_data, %struct.icn8505_touch_data* %8, i32 0, i32 2
  %50 = load %struct.icn8505_touch*, %struct.icn8505_touch** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.icn8505_touch, %struct.icn8505_touch* %50, i64 %52
  store %struct.icn8505_touch* %53, %struct.icn8505_touch** %11, align 8
  %54 = load %struct.icn8505_touch*, %struct.icn8505_touch** %11, align 8
  %55 = getelementptr inbounds %struct.icn8505_touch, %struct.icn8505_touch* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @icn8505_touch_active(i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load %struct.icn8505_data*, %struct.icn8505_data** %6, align 8
  %59 = getelementptr inbounds %struct.icn8505_data, %struct.icn8505_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.icn8505_touch*, %struct.icn8505_touch** %11, align 8
  %62 = getelementptr inbounds %struct.icn8505_touch, %struct.icn8505_touch* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @input_mt_slot(i32 %60, i32 %63)
  %65 = load %struct.icn8505_data*, %struct.icn8505_data** %6, align 8
  %66 = getelementptr inbounds %struct.icn8505_data, %struct.icn8505_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @MT_TOOL_FINGER, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @input_mt_report_slot_state(i32 %67, i32 %68, i32 %69)
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %48
  br label %89

74:                                               ; preds = %48
  %75 = load %struct.icn8505_data*, %struct.icn8505_data** %6, align 8
  %76 = getelementptr inbounds %struct.icn8505_data, %struct.icn8505_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.icn8505_data*, %struct.icn8505_data** %6, align 8
  %79 = getelementptr inbounds %struct.icn8505_data, %struct.icn8505_data* %78, i32 0, i32 1
  %80 = load %struct.icn8505_touch*, %struct.icn8505_touch** %11, align 8
  %81 = getelementptr inbounds %struct.icn8505_touch, %struct.icn8505_touch* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @get_unaligned_le16(i32 %82)
  %84 = load %struct.icn8505_touch*, %struct.icn8505_touch** %11, align 8
  %85 = getelementptr inbounds %struct.icn8505_touch, %struct.icn8505_touch* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @get_unaligned_le16(i32 %86)
  %88 = call i32 @touchscreen_report_pos(i32 %77, i32* %79, i32 %83, i32 %87, i32 1)
  br label %89

89:                                               ; preds = %74, %73
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %43

92:                                               ; preds = %43
  %93 = load %struct.icn8505_data*, %struct.icn8505_data** %6, align 8
  %94 = getelementptr inbounds %struct.icn8505_data, %struct.icn8505_data* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @input_mt_sync_frame(i32 %95)
  %97 = load %struct.icn8505_data*, %struct.icn8505_data** %6, align 8
  %98 = getelementptr inbounds %struct.icn8505_data, %struct.icn8505_data* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @KEY_LEFTMETA, align 4
  %101 = getelementptr inbounds %struct.icn8505_touch_data, %struct.icn8505_touch_data* %8, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 1
  %104 = zext i1 %103 to i32
  %105 = call i32 @input_report_key(i32 %99, i32 %100, i32 %104)
  %106 = load %struct.icn8505_data*, %struct.icn8505_data** %6, align 8
  %107 = getelementptr inbounds %struct.icn8505_data, %struct.icn8505_data* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @input_sync(i32 %108)
  %110 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %92, %24
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @icn8505_read_data(%struct.icn8505_data*, i32, %struct.icn8505_touch_data*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @icn8505_touch_active(i32) #1

declare dso_local i32 @input_mt_slot(i32, i32) #1

declare dso_local i32 @input_mt_report_slot_state(i32, i32, i32) #1

declare dso_local i32 @touchscreen_report_pos(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @get_unaligned_le16(i32) #1

declare dso_local i32 @input_mt_sync_frame(i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
