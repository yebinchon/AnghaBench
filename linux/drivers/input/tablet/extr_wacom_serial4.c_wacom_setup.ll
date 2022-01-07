; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/tablet/extr_wacom_serial4.c_wacom_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/tablet/extr_wacom_serial4.c_wacom_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom = type { i64, i64, i64, i64 }
%struct.serio = type { i32 }

@REQUEST_MODEL_AND_ROM_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"model and version\00", align 1
@REQUEST_CONFIGURATION_STRING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"configuration string\00", align 1
@REQUEST_MAX_COORDINATES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"coordinates string\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom*, %struct.serio*)* @wacom_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_setup(%struct.wacom* %0, %struct.serio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wacom*, align 8
  %5 = alloca %struct.serio*, align 8
  %6 = alloca i32, align 4
  store %struct.wacom* %0, %struct.wacom** %4, align 8
  store %struct.serio* %1, %struct.serio** %5, align 8
  %7 = load %struct.wacom*, %struct.wacom** %4, align 8
  %8 = load %struct.serio*, %struct.serio** %5, align 8
  %9 = load i32, i32* @REQUEST_MODEL_AND_ROM_VERSION, align 4
  %10 = call i32 @wacom_send_and_wait(%struct.wacom* %7, %struct.serio* %8, i32 %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %59

15:                                               ; preds = %2
  %16 = load %struct.wacom*, %struct.wacom** %4, align 8
  %17 = getelementptr inbounds %struct.wacom, %struct.wacom* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.wacom*, %struct.wacom** %4, align 8
  %22 = getelementptr inbounds %struct.wacom, %struct.wacom* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.wacom*, %struct.wacom** %4, align 8
  %27 = load %struct.serio*, %struct.serio** %5, align 8
  %28 = load i32, i32* @REQUEST_CONFIGURATION_STRING, align 4
  %29 = call i32 @wacom_send_and_wait(%struct.wacom* %26, %struct.serio* %27, i32 %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %59

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %20
  %36 = load %struct.wacom*, %struct.wacom** %4, align 8
  %37 = getelementptr inbounds %struct.wacom, %struct.wacom* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.wacom*, %struct.wacom** %4, align 8
  %42 = getelementptr inbounds %struct.wacom, %struct.wacom* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %40, %35
  %46 = load %struct.wacom*, %struct.wacom** %4, align 8
  %47 = load %struct.serio*, %struct.serio** %5, align 8
  %48 = load i32, i32* @REQUEST_MAX_COORDINATES, align 4
  %49 = call i32 @wacom_send_and_wait(%struct.wacom* %46, %struct.serio* %47, i32 %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %59

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %40
  %56 = load %struct.wacom*, %struct.wacom** %4, align 8
  %57 = load %struct.serio*, %struct.serio** %5, align 8
  %58 = call i32 @wacom_send_setup_string(%struct.wacom* %56, %struct.serio* %57)
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %55, %52, %32, %13
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @wacom_send_and_wait(%struct.wacom*, %struct.serio*, i32, i8*) #1

declare dso_local i32 @wacom_send_setup_string(%struct.wacom*, %struct.serio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
