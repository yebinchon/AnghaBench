; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-pattern.c_pattern_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-pattern.c_pattern_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Expected pattern of tuples\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Pattern initialization failed with error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.led_classdev*)* @pattern_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pattern_init(%struct.led_classdev* %0) #0 {
  %2 = alloca %struct.led_classdev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %7 = call i32* @led_get_default_pattern(%struct.led_classdev* %6, i32* %3)
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %37

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = urem i32 %12, 2
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %17 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i32, i8*, ...) @dev_warn(i32 %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %34

20:                                               ; preds = %11
  %21 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @pattern_trig_store_patterns(%struct.led_classdev* %21, i32* null, i32* %22, i32 %23, i32 0)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %29 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 (i32, i8*, ...) @dev_warn(i32 %30, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %27, %20
  br label %34

34:                                               ; preds = %33, %15
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @kfree(i32* %35)
  br label %37

37:                                               ; preds = %34, %10
  ret void
}

declare dso_local i32* @led_get_default_pattern(%struct.led_classdev*, i32*) #1

declare dso_local i32 @dev_warn(i32, i8*, ...) #1

declare dso_local i32 @pattern_trig_store_patterns(%struct.led_classdev*, i32*, i32*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
