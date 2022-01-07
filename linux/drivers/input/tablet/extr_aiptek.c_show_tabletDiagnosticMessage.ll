; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/tablet/extr_aiptek.c_show_tabletDiagnosticMessage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/tablet/extr_aiptek.c_show_tabletDiagnosticMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.aiptek = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"no errors\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Error: receiving relative reports\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Error: receiving absolute reports\0A\00", align 1
@AIPTEK_POINTER_ONLY_MOUSE_MODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Error: receiving stylus reports\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Error: receiving mouse reports\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_tabletDiagnosticMessage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_tabletDiagnosticMessage(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.aiptek*, align 8
  %9 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call %struct.aiptek* @dev_get_drvdata(%struct.device* %10)
  store %struct.aiptek* %11, %struct.aiptek** %8, align 8
  %12 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %13 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %28 [
    i32 131, label %15
    i32 129, label %16
    i32 130, label %17
    i32 128, label %18
  ]

15:                                               ; preds = %3
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %29

16:                                               ; preds = %3
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %29

17:                                               ; preds = %3
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %29

18:                                               ; preds = %3
  %19 = load %struct.aiptek*, %struct.aiptek** %8, align 8
  %20 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @AIPTEK_POINTER_ONLY_MOUSE_MODE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %27

26:                                               ; preds = %18
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %27

27:                                               ; preds = %26, %25
  br label %29

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %34

29:                                               ; preds = %27, %17, %16, %15
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 @snprintf(i8* %30, i32 %31, i8* %32)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %29, %28
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.aiptek* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
