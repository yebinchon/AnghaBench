; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_stats.c_bch_cache_accounting_add_kobjs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_stats.c_bch_cache_accounting_add_kobjs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_accounting = type { %struct.TYPE_5__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.kobject = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"stats_total\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"stats_five_minute\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"stats_hour\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"stats_day\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bch_cache_accounting_add_kobjs(%struct.cache_accounting* %0, %struct.kobject* %1) #0 {
  %3 = alloca %struct.cache_accounting*, align 8
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca i32, align 4
  store %struct.cache_accounting* %0, %struct.cache_accounting** %3, align 8
  store %struct.kobject* %1, %struct.kobject** %4, align 8
  %6 = load %struct.cache_accounting*, %struct.cache_accounting** %3, align 8
  %7 = getelementptr inbounds %struct.cache_accounting, %struct.cache_accounting* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.kobject*, %struct.kobject** %4, align 8
  %10 = call i32 @kobject_add(i32* %8, %struct.kobject* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %20

14:                                               ; preds = %2
  %15 = load %struct.cache_accounting*, %struct.cache_accounting** %3, align 8
  %16 = getelementptr inbounds %struct.cache_accounting, %struct.cache_accounting* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.kobject*, %struct.kobject** %4, align 8
  %19 = call i32 @kobject_add(i32* %17, %struct.kobject* %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %14, %13
  %21 = phi i32 [ %11, %13 ], [ %19, %14 ]
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %31

25:                                               ; preds = %20
  %26 = load %struct.cache_accounting*, %struct.cache_accounting** %3, align 8
  %27 = getelementptr inbounds %struct.cache_accounting, %struct.cache_accounting* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.kobject*, %struct.kobject** %4, align 8
  %30 = call i32 @kobject_add(i32* %28, %struct.kobject* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %25, %24
  %32 = phi i32 [ %22, %24 ], [ %30, %25 ]
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %42

36:                                               ; preds = %31
  %37 = load %struct.cache_accounting*, %struct.cache_accounting** %3, align 8
  %38 = getelementptr inbounds %struct.cache_accounting, %struct.cache_accounting* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.kobject*, %struct.kobject** %4, align 8
  %41 = call i32 @kobject_add(i32* %39, %struct.kobject* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %42

42:                                               ; preds = %36, %35
  %43 = phi i32 [ %33, %35 ], [ %41, %36 ]
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @kobject_add(i32*, %struct.kobject*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
