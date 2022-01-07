; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-backlight.c_bl_trig_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-backlight.c_bl_trig_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32, i32 }
%struct.bl_trig_notifier = type { %struct.TYPE_2__, i32, i32, %struct.led_classdev* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UNBLANK = common dso_local global i32 0, align 4
@fb_notifier_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"unable to register backlight trigger\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*)* @bl_trig_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bl_trig_activate(%struct.led_classdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bl_trig_notifier*, align 8
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.bl_trig_notifier* @kzalloc(i32 24, i32 %6)
  store %struct.bl_trig_notifier* %7, %struct.bl_trig_notifier** %5, align 8
  %8 = load %struct.bl_trig_notifier*, %struct.bl_trig_notifier** %5, align 8
  %9 = icmp ne %struct.bl_trig_notifier* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %43

13:                                               ; preds = %1
  %14 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %15 = load %struct.bl_trig_notifier*, %struct.bl_trig_notifier** %5, align 8
  %16 = call i32 @led_set_trigger_data(%struct.led_classdev* %14, %struct.bl_trig_notifier* %15)
  %17 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %18 = load %struct.bl_trig_notifier*, %struct.bl_trig_notifier** %5, align 8
  %19 = getelementptr inbounds %struct.bl_trig_notifier, %struct.bl_trig_notifier* %18, i32 0, i32 3
  store %struct.led_classdev* %17, %struct.led_classdev** %19, align 8
  %20 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %21 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.bl_trig_notifier*, %struct.bl_trig_notifier** %5, align 8
  %24 = getelementptr inbounds %struct.bl_trig_notifier, %struct.bl_trig_notifier* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @UNBLANK, align 4
  %26 = load %struct.bl_trig_notifier*, %struct.bl_trig_notifier** %5, align 8
  %27 = getelementptr inbounds %struct.bl_trig_notifier, %struct.bl_trig_notifier* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @fb_notifier_callback, align 4
  %29 = load %struct.bl_trig_notifier*, %struct.bl_trig_notifier** %5, align 8
  %30 = getelementptr inbounds %struct.bl_trig_notifier, %struct.bl_trig_notifier* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load %struct.bl_trig_notifier*, %struct.bl_trig_notifier** %5, align 8
  %33 = getelementptr inbounds %struct.bl_trig_notifier, %struct.bl_trig_notifier* %32, i32 0, i32 0
  %34 = call i32 @fb_register_client(%struct.TYPE_2__* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %13
  %38 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %39 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %37, %13
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %10
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.bl_trig_notifier* @kzalloc(i32, i32) #1

declare dso_local i32 @led_set_trigger_data(%struct.led_classdev*, %struct.bl_trig_notifier*) #1

declare dso_local i32 @fb_register_client(%struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
