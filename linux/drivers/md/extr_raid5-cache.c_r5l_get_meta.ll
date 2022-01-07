; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_get_meta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_get_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5l_log = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r5l_log*, i32)* @r5l_get_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r5l_get_meta(%struct.r5l_log* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.r5l_log*, align 8
  %5 = alloca i32, align 4
  store %struct.r5l_log* %0, %struct.r5l_log** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %7 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %12 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = add nsw i64 %15, %17
  %19 = load i64, i64* @PAGE_SIZE, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %10
  %22 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %23 = call i32 @r5l_submit_current_io(%struct.r5l_log* %22)
  br label %24

24:                                               ; preds = %21, %10, %2
  %25 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %26 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = icmp ne %struct.TYPE_2__* %27, null
  br i1 %28, label %42, label %29

29:                                               ; preds = %24
  %30 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %31 = call %struct.TYPE_2__* @r5l_new_meta(%struct.r5l_log* %30)
  %32 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %33 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %32, i32 0, i32 0
  store %struct.TYPE_2__* %31, %struct.TYPE_2__** %33, align 8
  %34 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %35 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = icmp ne %struct.TYPE_2__* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %29
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %43

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41, %24
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %38
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @r5l_submit_current_io(%struct.r5l_log*) #1

declare dso_local %struct.TYPE_2__* @r5l_new_meta(%struct.r5l_log*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
