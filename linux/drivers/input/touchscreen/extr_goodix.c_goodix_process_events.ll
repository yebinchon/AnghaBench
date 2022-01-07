; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_goodix.c_goodix_process_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_goodix.c_goodix_process_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.goodix_ts_data = type { i32, i32 }

@GOODIX_MAX_CONTACT_SIZE = common dso_local global i32 0, align 4
@GOODIX_MAX_CONTACTS = common dso_local global i32 0, align 4
@KEY_LEFTMETA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.goodix_ts_data*)* @goodix_process_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodix_process_events(%struct.goodix_ts_data* %0) #0 {
  %2 = alloca %struct.goodix_ts_data*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.goodix_ts_data* %0, %struct.goodix_ts_data** %2, align 8
  %8 = load i32, i32* @GOODIX_MAX_CONTACT_SIZE, align 4
  %9 = load i32, i32* @GOODIX_MAX_CONTACTS, align 4
  %10 = mul nsw i32 %8, %9
  %11 = add nsw i32 1, %10
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %3, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %4, align 8
  %15 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %2, align 8
  %16 = call i32 @goodix_ts_read_input_report(%struct.goodix_ts_data* %15, i32* %14)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 1, i32* %7, align 4
  br label %74

20:                                               ; preds = %1
  %21 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %2, align 8
  %22 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @KEY_LEFTMETA, align 4
  %25 = getelementptr inbounds i32, i32* %14, i64 0
  %26 = load i32, i32* %25, align 16
  %27 = call i32 @BIT(i32 4)
  %28 = and i32 %26, %27
  %29 = call i32 @input_report_key(i32 %23, i32 %24, i32 %28)
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %62, %20
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %65

34:                                               ; preds = %30
  %35 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %2, align 8
  %36 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 9
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %2, align 8
  %41 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %2, align 8
  %42 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = mul nsw i32 %43, %44
  %46 = add nsw i32 1, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %14, i64 %47
  %49 = call i32 @goodix_ts_report_touch_9b(%struct.goodix_ts_data* %40, i32* %48)
  br label %61

50:                                               ; preds = %34
  %51 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %2, align 8
  %52 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %2, align 8
  %53 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %6, align 4
  %56 = mul nsw i32 %54, %55
  %57 = add nsw i32 1, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %14, i64 %58
  %60 = call i32 @goodix_ts_report_touch_8b(%struct.goodix_ts_data* %51, i32* %59)
  br label %61

61:                                               ; preds = %50, %39
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %30

65:                                               ; preds = %30
  %66 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %2, align 8
  %67 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @input_mt_sync_frame(i32 %68)
  %70 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %2, align 8
  %71 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @input_sync(i32 %72)
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %65, %19
  %75 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %7, align 4
  switch i32 %76, label %78 [
    i32 0, label %77
    i32 1, label %77
  ]

77:                                               ; preds = %74, %74
  ret void

78:                                               ; preds = %74
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @goodix_ts_read_input_report(%struct.goodix_ts_data*, i32*) #2

declare dso_local i32 @input_report_key(i32, i32, i32) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @goodix_ts_report_touch_9b(%struct.goodix_ts_data*, i32*) #2

declare dso_local i32 @goodix_ts_report_touch_8b(%struct.goodix_ts_data*, i32*) #2

declare dso_local i32 @input_mt_sync_frame(i32) #2

declare dso_local i32 @input_sync(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
