; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq.c_available_frequencies_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq.c_available_frequencies_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.devfreq = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }

@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%lu \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*)* @available_frequencies_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @available_frequencies_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.devfreq*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.devfreq* @to_devfreq(%struct.device* %10)
  store %struct.devfreq* %11, %struct.devfreq** %7, align 8
  store i64 0, i64* %8, align 8
  %12 = load %struct.devfreq*, %struct.devfreq** %7, align 8
  %13 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %43, %3
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.devfreq*, %struct.devfreq** %7, align 8
  %18 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %16, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %15
  %24 = load i8*, i8** %6, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = load i64, i64* @PAGE_SIZE, align 8
  %28 = load i64, i64* %8, align 8
  %29 = sub i64 %27, %28
  %30 = sub i64 %29, 2
  %31 = load %struct.devfreq*, %struct.devfreq** %7, align 8
  %32 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @scnprintf(i8* %26, i64 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i64, i64* %8, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* %8, align 8
  br label %43

43:                                               ; preds = %23
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %15

46:                                               ; preds = %15
  %47 = load %struct.devfreq*, %struct.devfreq** %7, align 8
  %48 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load i64, i64* %8, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i64, i64* %8, align 8
  %54 = add i64 %53, -1
  store i64 %54, i64* %8, align 8
  br label %55

55:                                               ; preds = %52, %46
  %56 = load i8*, i8** %6, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = call i64 @sprintf(i8* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i64, i64* %8, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* %8, align 8
  %62 = load i64, i64* %8, align 8
  ret i64 %62
}

declare dso_local %struct.devfreq* @to_devfreq(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @scnprintf(i8*, i64, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
