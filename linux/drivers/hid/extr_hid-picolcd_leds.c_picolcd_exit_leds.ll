; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_leds.c_picolcd_exit_leds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_leds.c_picolcd_exit_leds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.picolcd_data = type { %struct.led_classdev** }
%struct.led_classdev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @picolcd_exit_leds(%struct.picolcd_data* %0) #0 {
  %2 = alloca %struct.picolcd_data*, align 8
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca i32, align 4
  store %struct.picolcd_data* %0, %struct.picolcd_data** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %30, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 8
  br i1 %7, label %8, label %33

8:                                                ; preds = %5
  %9 = load %struct.picolcd_data*, %struct.picolcd_data** %2, align 8
  %10 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %9, i32 0, i32 0
  %11 = load %struct.led_classdev**, %struct.led_classdev*** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.led_classdev*, %struct.led_classdev** %11, i64 %13
  %15 = load %struct.led_classdev*, %struct.led_classdev** %14, align 8
  store %struct.led_classdev* %15, %struct.led_classdev** %3, align 8
  %16 = load %struct.picolcd_data*, %struct.picolcd_data** %2, align 8
  %17 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %16, i32 0, i32 0
  %18 = load %struct.led_classdev**, %struct.led_classdev*** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.led_classdev*, %struct.led_classdev** %18, i64 %20
  store %struct.led_classdev* null, %struct.led_classdev** %21, align 8
  %22 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %23 = icmp ne %struct.led_classdev* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %8
  br label %30

25:                                               ; preds = %8
  %26 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %27 = call i32 @led_classdev_unregister(%struct.led_classdev* %26)
  %28 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %29 = call i32 @kfree(%struct.led_classdev* %28)
  br label %30

30:                                               ; preds = %25, %24
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %5

33:                                               ; preds = %5
  ret void
}

declare dso_local i32 @led_classdev_unregister(%struct.led_classdev*) #1

declare dso_local i32 @kfree(%struct.led_classdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
