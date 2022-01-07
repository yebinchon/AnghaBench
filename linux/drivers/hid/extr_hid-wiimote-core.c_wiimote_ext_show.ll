; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiimote_ext_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiimote_ext_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.wiimote_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"none\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"nunchuk\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"classic\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"balanceboard\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"procontroller\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"drums\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"guitar\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"unknown\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @wiimote_ext_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wiimote_ext_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wiimote_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.wiimote_data* @dev_to_wii(%struct.device* %11)
  store %struct.wiimote_data* %12, %struct.wiimote_data** %8, align 8
  %13 = load %struct.wiimote_data*, %struct.wiimote_data** %8, align 8
  %14 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %10, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.wiimote_data*, %struct.wiimote_data** %8, align 8
  %19 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.wiimote_data*, %struct.wiimote_data** %8, align 8
  %23 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load i32, i32* %9, align 4
  switch i32 %27, label %50 [
    i32 131, label %28
    i32 130, label %31
    i32 134, label %34
    i32 135, label %37
    i32 129, label %40
    i32 133, label %43
    i32 132, label %46
    i32 128, label %49
  ]

28:                                               ; preds = %3
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @sprintf(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %30, i32* %4, align 4
  br label %53

31:                                               ; preds = %3
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @sprintf(i8* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %33, i32* %4, align 4
  br label %53

34:                                               ; preds = %3
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @sprintf(i8* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 %36, i32* %4, align 4
  br label %53

37:                                               ; preds = %3
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @sprintf(i8* %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32 %39, i32* %4, align 4
  br label %53

40:                                               ; preds = %3
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @sprintf(i8* %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  store i32 %42, i32* %4, align 4
  br label %53

43:                                               ; preds = %3
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @sprintf(i8* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i32 %45, i32* %4, align 4
  br label %53

46:                                               ; preds = %3
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @sprintf(i8* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  store i32 %48, i32* %4, align 4
  br label %53

49:                                               ; preds = %3
  br label %50

50:                                               ; preds = %3, %49
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @sprintf(i8* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %50, %46, %43, %40, %37, %34, %31, %28
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.wiimote_data* @dev_to_wii(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
