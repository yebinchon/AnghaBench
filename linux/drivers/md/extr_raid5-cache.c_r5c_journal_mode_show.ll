; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5c_journal_mode_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5c_journal_mode_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.r5conf* }
%struct.r5conf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"[%s] %s\0A\00", align 1
@r5c_journal_mode_str = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"%s [%s]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, i8*)* @r5c_journal_mode_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r5c_journal_mode_show(%struct.mddev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.r5conf*, align 8
  %7 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.mddev*, %struct.mddev** %4, align 8
  %9 = call i32 @mddev_lock(%struct.mddev* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  br label %59

14:                                               ; preds = %2
  %15 = load %struct.mddev*, %struct.mddev** %4, align 8
  %16 = getelementptr inbounds %struct.mddev, %struct.mddev* %15, i32 0, i32 0
  %17 = load %struct.r5conf*, %struct.r5conf** %16, align 8
  store %struct.r5conf* %17, %struct.r5conf** %6, align 8
  %18 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %19 = icmp ne %struct.r5conf* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %22 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = icmp ne %struct.TYPE_2__* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20, %14
  %26 = load %struct.mddev*, %struct.mddev** %4, align 8
  %27 = call i32 @mddev_unlock(%struct.mddev* %26)
  store i32 0, i32* %3, align 4
  br label %59

28:                                               ; preds = %20
  %29 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %30 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %54 [
    i32 128, label %34
    i32 129, label %44
  ]

34:                                               ; preds = %28
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = load i8**, i8*** @r5c_journal_mode_str, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 128
  %39 = load i8*, i8** %38, align 8
  %40 = load i8**, i8*** @r5c_journal_mode_str, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 129
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @snprintf(i8* %35, i32 %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %39, i8* %42)
  store i32 %43, i32* %7, align 4
  br label %55

44:                                               ; preds = %28
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* @PAGE_SIZE, align 4
  %47 = load i8**, i8*** @r5c_journal_mode_str, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 128
  %49 = load i8*, i8** %48, align 8
  %50 = load i8**, i8*** @r5c_journal_mode_str, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 129
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @snprintf(i8* %45, i32 %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %49, i8* %52)
  store i32 %53, i32* %7, align 4
  br label %55

54:                                               ; preds = %28
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %54, %44, %34
  %56 = load %struct.mddev*, %struct.mddev** %4, align 8
  %57 = call i32 @mddev_unlock(%struct.mddev* %56)
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %55, %25, %12
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @mddev_lock(%struct.mddev*) #1

declare dso_local i32 @mddev_unlock(%struct.mddev*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
