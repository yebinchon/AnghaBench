; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_led-triggers.c_led_trigger_register_simple.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_led-triggers.c_led_trigger_register_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_trigger = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"LED trigger %s failed to register (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"LED trigger %s failed to register (no memory)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @led_trigger_register_simple(i8* %0, %struct.led_trigger** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.led_trigger**, align 8
  %5 = alloca %struct.led_trigger*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.led_trigger** %1, %struct.led_trigger*** %4, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.led_trigger* @kzalloc(i32 8, i32 %7)
  store %struct.led_trigger* %8, %struct.led_trigger** %5, align 8
  %9 = load %struct.led_trigger*, %struct.led_trigger** %5, align 8
  %10 = icmp ne %struct.led_trigger* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 8
  %13 = load %struct.led_trigger*, %struct.led_trigger** %5, align 8
  %14 = getelementptr inbounds %struct.led_trigger, %struct.led_trigger* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = load %struct.led_trigger*, %struct.led_trigger** %5, align 8
  %16 = call i32 @led_trigger_register(%struct.led_trigger* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %11
  %20 = load %struct.led_trigger*, %struct.led_trigger** %5, align 8
  %21 = call i32 @kfree(%struct.led_trigger* %20)
  store %struct.led_trigger* null, %struct.led_trigger** %5, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 (i8*, i8*, ...) @pr_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %22, i32 %23)
  br label %25

25:                                               ; preds = %19, %11
  br label %29

26:                                               ; preds = %2
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 (i8*, i8*, ...) @pr_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %26, %25
  %30 = load %struct.led_trigger*, %struct.led_trigger** %5, align 8
  %31 = load %struct.led_trigger**, %struct.led_trigger*** %4, align 8
  store %struct.led_trigger* %30, %struct.led_trigger** %31, align 8
  ret void
}

declare dso_local %struct.led_trigger* @kzalloc(i32, i32) #1

declare dso_local i32 @led_trigger_register(%struct.led_trigger*) #1

declare dso_local i32 @kfree(%struct.led_trigger*) #1

declare dso_local i32 @pr_warn(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
