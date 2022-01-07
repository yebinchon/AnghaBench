; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_led-class.c_led_classdev_next_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_led-class.c_led_classdev_next_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@leds_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s_%u\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @led_classdev_next_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @led_classdev_next_name(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @strlcpy(i8* %11, i8* %12, i64 %13)
  br label %15

15:                                               ; preds = %27, %3
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* %7, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i32, i32* @leds_class, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = call %struct.device* @class_find_device_by_name(i32 %21, i8* %22)
  store %struct.device* %23, %struct.device** %10, align 8
  %24 = icmp ne %struct.device* %23, null
  br label %25

25:                                               ; preds = %20, %15
  %26 = phi i1 [ false, %15 ], [ %24, %20 ]
  br i1 %26, label %27, label %36

27:                                               ; preds = %25
  %28 = load %struct.device*, %struct.device** %10, align 8
  %29 = call i32 @put_device(%struct.device* %28)
  %30 = load i8*, i8** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %8, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %8, align 4
  %35 = call i32 @snprintf(i8* %30, i64 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %32, i32 %34)
  store i32 %35, i32* %9, align 4
  br label %15

36:                                               ; preds = %25
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %7, align 8
  %40 = icmp uge i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %46

44:                                               ; preds = %36
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %44, %41
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local %struct.device* @class_find_device_by_name(i32, i8*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
