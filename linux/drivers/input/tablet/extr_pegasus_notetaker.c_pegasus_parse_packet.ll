; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/tablet/extr_pegasus_notetaker.c_pegasus_parse_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/tablet/extr_pegasus_notetaker.c_pegasus_parse_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pegasus = type { i8*, %struct.TYPE_2__*, i32, %struct.input_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.input_dev = type { i32 }

@BUTTON_PRESSED = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [17 x i8] c"Pen battery low\0A\00", align 1
@BTN_TOUCH = common dso_local global i32 0, align 4
@PEN_TIP = common dso_local global i8 0, align 1
@BTN_RIGHT = common dso_local global i32 0, align 4
@PEN_BUTTON_PRESSED = common dso_local global i8 0, align 1
@BTN_TOOL_PEN = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"unknown answer from device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pegasus*)* @pegasus_parse_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pegasus_parse_packet(%struct.pegasus* %0) #0 {
  %2 = alloca %struct.pegasus*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pegasus* %0, %struct.pegasus** %2, align 8
  %7 = load %struct.pegasus*, %struct.pegasus** %2, align 8
  %8 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %3, align 8
  %10 = load %struct.pegasus*, %struct.pegasus** %2, align 8
  %11 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %10, i32 0, i32 3
  %12 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  store %struct.input_dev* %12, %struct.input_dev** %4, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  switch i32 %16, label %83 [
    i32 128, label %17
    i32 130, label %30
    i32 129, label %34
    i32 131, label %34
  ]

17:                                               ; preds = %1
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* @BUTTON_PRESSED, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load %struct.pegasus*, %struct.pegasus** %2, align 8
  %27 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %26, i32 0, i32 2
  %28 = call i32 @schedule_work(i32* %27)
  br label %29

29:                                               ; preds = %25, %17
  br label %89

30:                                               ; preds = %1
  %31 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %32 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %31, i32 0, i32 0
  %33 = call i32 @dev_warn_once(i32* %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %1, %1, %30
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  %37 = bitcast i8* %36 to i32*
  %38 = call i32 @le16_to_cpup(i32* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i8*, i8** %3, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 4
  %41 = bitcast i8* %40 to i32*
  %42 = call i32 @le16_to_cpup(i32* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %34
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %89

49:                                               ; preds = %45, %34
  %50 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %51 = load i32, i32* @BTN_TOUCH, align 4
  %52 = load i8*, i8** %3, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = load i8, i8* @PEN_TIP, align 1
  %57 = zext i8 %56 to i32
  %58 = and i32 %55, %57
  %59 = call i32 @input_report_key(%struct.input_dev* %50, i32 %51, i32 %58)
  %60 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %61 = load i32, i32* @BTN_RIGHT, align 4
  %62 = load i8*, i8** %3, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = load i8, i8* @PEN_BUTTON_PRESSED, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 %65, %67
  %69 = call i32 @input_report_key(%struct.input_dev* %60, i32 %61, i32 %68)
  %70 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %71 = load i32, i32* @BTN_TOOL_PEN, align 4
  %72 = call i32 @input_report_key(%struct.input_dev* %70, i32 %71, i32 1)
  %73 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %74 = load i32, i32* @ABS_X, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @input_report_abs(%struct.input_dev* %73, i32 %74, i32 %75)
  %77 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %78 = load i32, i32* @ABS_Y, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @input_report_abs(%struct.input_dev* %77, i32 %78, i32 %79)
  %81 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %82 = call i32 @input_sync(%struct.input_dev* %81)
  br label %89

83:                                               ; preds = %1
  %84 = load %struct.pegasus*, %struct.pegasus** %2, align 8
  %85 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = call i32 @dev_warn_once(i32* %87, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %89

89:                                               ; preds = %83, %49, %48, %29
  ret void
}

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @dev_warn_once(i32*, i8*) #1

declare dso_local i32 @le16_to_cpup(i32*) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
