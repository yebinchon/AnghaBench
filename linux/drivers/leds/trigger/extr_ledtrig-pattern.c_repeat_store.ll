; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-pattern.c_repeat_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-pattern.c_repeat_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.led_classdev = type { i32 (%struct.led_classdev*)*, %struct.pattern_trig_data* }
%struct.pattern_trig_data = type { i32, i32, i32, i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @repeat_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @repeat_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.led_classdev*, align 8
  %11 = alloca %struct.pattern_trig_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.led_classdev* @dev_get_drvdata(%struct.device* %14)
  store %struct.led_classdev* %15, %struct.led_classdev** %10, align 8
  %16 = load %struct.led_classdev*, %struct.led_classdev** %10, align 8
  %17 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %16, i32 0, i32 1
  %18 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %17, align 8
  store %struct.pattern_trig_data* %18, %struct.pattern_trig_data** %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @kstrtos32(i8* %19, i32 10, i32* %13)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %5, align 4
  br label %83

25:                                               ; preds = %4
  %26 = load i32, i32* %13, align 4
  %27 = icmp slt i32 %26, -1
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %13, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %83

34:                                               ; preds = %28
  %35 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %11, align 8
  %36 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %35, i32 0, i32 3
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %11, align 8
  %39 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %38, i32 0, i32 5
  %40 = call i32 @del_timer_sync(i32* %39)
  %41 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %11, align 8
  %42 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %34
  %46 = load %struct.led_classdev*, %struct.led_classdev** %10, align 8
  %47 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %46, i32 0, i32 0
  %48 = load i32 (%struct.led_classdev*)*, i32 (%struct.led_classdev*)** %47, align 8
  %49 = load %struct.led_classdev*, %struct.led_classdev** %10, align 8
  %50 = call i32 %48(%struct.led_classdev* %49)
  br label %51

51:                                               ; preds = %45, %34
  %52 = load i32, i32* %13, align 4
  %53 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %11, align 8
  %54 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %11, align 8
  %56 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 8
  %57 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %11, align 8
  %58 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  %62 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %11, align 8
  %63 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %62, i32 0, i32 2
  store i32 1, i32* %63, align 8
  br label %67

64:                                               ; preds = %51
  %65 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %11, align 8
  %66 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %65, i32 0, i32 2
  store i32 0, i32* %66, align 8
  br label %67

67:                                               ; preds = %64, %61
  %68 = load %struct.led_classdev*, %struct.led_classdev** %10, align 8
  %69 = call i32 @pattern_trig_start_pattern(%struct.led_classdev* %68)
  store i32 %69, i32* %12, align 4
  %70 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %11, align 8
  %71 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %70, i32 0, i32 3
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = load i32, i32* %12, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  br label %80

78:                                               ; preds = %67
  %79 = load i64, i64* %9, align 8
  br label %80

80:                                               ; preds = %78, %75
  %81 = phi i64 [ %77, %75 ], [ %79, %78 ]
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %80, %31, %23
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local %struct.led_classdev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtos32(i8*, i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @pattern_trig_start_pattern(%struct.led_classdev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
