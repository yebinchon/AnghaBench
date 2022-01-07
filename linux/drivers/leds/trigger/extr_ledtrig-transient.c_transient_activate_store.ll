; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-transient.c_transient_activate_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-transient.c_transient_activate_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.led_classdev = type { i32 }
%struct.transient_trig_data = type { i32, i64, i64, i64, i32 }

@EINVAL = common dso_local global i64 0, align 8
@LED_FULL = common dso_local global i64 0, align 8
@LED_OFF = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @transient_activate_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @transient_activate_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.led_classdev*, align 8
  %11 = alloca %struct.transient_trig_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.led_classdev* @led_trigger_get_led(%struct.device* %14)
  store %struct.led_classdev* %15, %struct.led_classdev** %10, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.transient_trig_data* @led_trigger_get_drvdata(%struct.device* %16)
  store %struct.transient_trig_data* %17, %struct.transient_trig_data** %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 @kstrtoul(i8* %18, i32 10, i64* %12)
  store i64 %19, i64* %13, align 8
  %20 = load i64, i64* %13, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i64, i64* %13, align 8
  store i64 %23, i64* %5, align 8
  br label %102

24:                                               ; preds = %4
  %25 = load i64, i64* %12, align 8
  %26 = icmp ne i64 %25, 1
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i64, i64* %12, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i64, i64* @EINVAL, align 8
  %32 = sub i64 0, %31
  store i64 %32, i64* %5, align 8
  br label %102

33:                                               ; preds = %27, %24
  %34 = load i64, i64* %12, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %33
  %37 = load %struct.transient_trig_data*, %struct.transient_trig_data** %11, align 8
  %38 = getelementptr inbounds %struct.transient_trig_data, %struct.transient_trig_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = load %struct.transient_trig_data*, %struct.transient_trig_data** %11, align 8
  %43 = getelementptr inbounds %struct.transient_trig_data, %struct.transient_trig_data* %42, i32 0, i32 4
  %44 = call i32 @del_timer(i32* %43)
  %45 = load i64, i64* %12, align 8
  %46 = trunc i64 %45 to i32
  %47 = load %struct.transient_trig_data*, %struct.transient_trig_data** %11, align 8
  %48 = getelementptr inbounds %struct.transient_trig_data, %struct.transient_trig_data* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.led_classdev*, %struct.led_classdev** %10, align 8
  %50 = load %struct.transient_trig_data*, %struct.transient_trig_data** %11, align 8
  %51 = getelementptr inbounds %struct.transient_trig_data, %struct.transient_trig_data* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @led_set_brightness_nosleep(%struct.led_classdev* %49, i64 %52)
  %54 = load i64, i64* %9, align 8
  store i64 %54, i64* %5, align 8
  br label %102

55:                                               ; preds = %36, %33
  %56 = load i64, i64* %12, align 8
  %57 = icmp eq i64 %56, 1
  br i1 %57, label %58, label %100

58:                                               ; preds = %55
  %59 = load %struct.transient_trig_data*, %struct.transient_trig_data** %11, align 8
  %60 = getelementptr inbounds %struct.transient_trig_data, %struct.transient_trig_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %100

63:                                               ; preds = %58
  %64 = load %struct.transient_trig_data*, %struct.transient_trig_data** %11, align 8
  %65 = getelementptr inbounds %struct.transient_trig_data, %struct.transient_trig_data* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %100

68:                                               ; preds = %63
  %69 = load i64, i64* %12, align 8
  %70 = trunc i64 %69 to i32
  %71 = load %struct.transient_trig_data*, %struct.transient_trig_data** %11, align 8
  %72 = getelementptr inbounds %struct.transient_trig_data, %struct.transient_trig_data* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.led_classdev*, %struct.led_classdev** %10, align 8
  %74 = load %struct.transient_trig_data*, %struct.transient_trig_data** %11, align 8
  %75 = getelementptr inbounds %struct.transient_trig_data, %struct.transient_trig_data* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @led_set_brightness_nosleep(%struct.led_classdev* %73, i64 %76)
  %78 = load %struct.transient_trig_data*, %struct.transient_trig_data** %11, align 8
  %79 = getelementptr inbounds %struct.transient_trig_data, %struct.transient_trig_data* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @LED_FULL, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %68
  %84 = load i64, i64* @LED_OFF, align 8
  br label %87

85:                                               ; preds = %68
  %86 = load i64, i64* @LED_FULL, align 8
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i64 [ %84, %83 ], [ %86, %85 ]
  %89 = load %struct.transient_trig_data*, %struct.transient_trig_data** %11, align 8
  %90 = getelementptr inbounds %struct.transient_trig_data, %struct.transient_trig_data* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  %91 = load %struct.transient_trig_data*, %struct.transient_trig_data** %11, align 8
  %92 = getelementptr inbounds %struct.transient_trig_data, %struct.transient_trig_data* %91, i32 0, i32 4
  %93 = load i64, i64* @jiffies, align 8
  %94 = load %struct.transient_trig_data*, %struct.transient_trig_data** %11, align 8
  %95 = getelementptr inbounds %struct.transient_trig_data, %struct.transient_trig_data* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = call i64 @msecs_to_jiffies(i64 %96)
  %98 = add nsw i64 %93, %97
  %99 = call i32 @mod_timer(i32* %92, i64 %98)
  br label %100

100:                                              ; preds = %87, %63, %58, %55
  %101 = load i64, i64* %9, align 8
  store i64 %101, i64* %5, align 8
  br label %102

102:                                              ; preds = %100, %41, %30, %22
  %103 = load i64, i64* %5, align 8
  ret i64 %103
}

declare dso_local %struct.led_classdev* @led_trigger_get_led(%struct.device*) #1

declare dso_local %struct.transient_trig_data* @led_trigger_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @led_set_brightness_nosleep(%struct.led_classdev*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
