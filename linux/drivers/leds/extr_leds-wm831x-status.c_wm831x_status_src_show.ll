; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-wm831x-status.c_wm831x_status_src_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-wm831x-status.c_wm831x_status_src_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.led_classdev = type { i32 }
%struct.wm831x_status = type { i32, i32 }

@led_src_texts = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [6 x i8] c"[%s] \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*)* @wm831x_status_src_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wm831x_status_src_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.led_classdev*, align 8
  %8 = alloca %struct.wm831x_status*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.led_classdev* @dev_get_drvdata(%struct.device* %11)
  store %struct.led_classdev* %12, %struct.led_classdev** %7, align 8
  %13 = load %struct.led_classdev*, %struct.led_classdev** %7, align 8
  %14 = call %struct.wm831x_status* @to_wm831x_status(%struct.led_classdev* %13)
  store %struct.wm831x_status* %14, %struct.wm831x_status** %8, align 8
  store i64 0, i64* %10, align 8
  %15 = load %struct.wm831x_status*, %struct.wm831x_status** %8, align 8
  %16 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %54, %3
  %19 = load i32, i32* %9, align 4
  %20 = load i8**, i8*** @led_src_texts, align 8
  %21 = call i32 @ARRAY_SIZE(i8** %20)
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %57

23:                                               ; preds = %18
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.wm831x_status*, %struct.wm831x_status** %8, align 8
  %26 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load i8*, i8** %6, align 8
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = load i8**, i8*** @led_src_texts, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 (i8*, i8*, ...) @sprintf(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %37)
  %39 = load i64, i64* %10, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %10, align 8
  br label %53

41:                                               ; preds = %23
  %42 = load i8*, i8** %6, align 8
  %43 = load i64, i64* %10, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = load i8**, i8*** @led_src_texts, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 (i8*, i8*, ...) @sprintf(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  %51 = load i64, i64* %10, align 8
  %52 = add i64 %51, %50
  store i64 %52, i64* %10, align 8
  br label %53

53:                                               ; preds = %41, %29
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %18

57:                                               ; preds = %18
  %58 = load %struct.wm831x_status*, %struct.wm831x_status** %8, align 8
  %59 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %58, i32 0, i32 1
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i8*, i8** %6, align 8
  %62 = load i64, i64* %10, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = call i64 (i8*, i8*, ...) @sprintf(i8* %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i64, i64* %10, align 8
  %66 = add i64 %65, %64
  store i64 %66, i64* %10, align 8
  %67 = load i64, i64* %10, align 8
  ret i64 %67
}

declare dso_local %struct.led_classdev* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.wm831x_status* @to_wm831x_status(%struct.led_classdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i64 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
