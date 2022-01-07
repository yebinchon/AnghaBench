; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_led-core.c_led_get_default_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_led-core.c_led_get_default_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.fwnode_handle* }
%struct.fwnode_handle = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"led-pattern\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @led_get_default_pattern(%struct.led_classdev* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.led_classdev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.fwnode_handle*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %10 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.fwnode_handle*, %struct.fwnode_handle** %12, align 8
  store %struct.fwnode_handle* %13, %struct.fwnode_handle** %6, align 8
  %14 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %15 = call i32 @fwnode_property_count_u32(%struct.fwnode_handle* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %39

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32* @kcalloc(i32 %20, i32 4, i32 %21)
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  store i32* null, i32** %3, align 8
  br label %39

26:                                               ; preds = %19
  %27 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @fwnode_property_read_u32_array(%struct.fwnode_handle* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @kfree(i32* %33)
  store i32* null, i32** %3, align 8
  br label %39

35:                                               ; preds = %26
  %36 = load i32, i32* %8, align 4
  %37 = load i32*, i32** %5, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %7, align 8
  store i32* %38, i32** %3, align 8
  br label %39

39:                                               ; preds = %35, %32, %25, %18
  %40 = load i32*, i32** %3, align 8
  ret i32* %40
}

declare dso_local i32 @fwnode_property_count_u32(%struct.fwnode_handle*, i8*) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @fwnode_property_read_u32_array(%struct.fwnode_handle*, i8*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
