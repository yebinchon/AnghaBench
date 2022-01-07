; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-stats.c_dm_stats_set_aux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-stats.c_dm_stats_set_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_stats = type { i32 }
%struct.dm_stat = type { i8* }

@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_stats*, i32, i8*)* @dm_stats_set_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_stats_set_aux(%struct.dm_stats* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_stats*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dm_stat*, align 8
  %9 = alloca i8*, align 8
  store %struct.dm_stats* %0, %struct.dm_stats** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.dm_stats*, %struct.dm_stats** %5, align 8
  %11 = getelementptr inbounds %struct.dm_stats, %struct.dm_stats* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.dm_stats*, %struct.dm_stats** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.dm_stat* @__dm_stats_find(%struct.dm_stats* %13, i32 %14)
  store %struct.dm_stat* %15, %struct.dm_stat** %8, align 8
  %16 = load %struct.dm_stat*, %struct.dm_stat** %8, align 8
  %17 = icmp ne %struct.dm_stat* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = load %struct.dm_stats*, %struct.dm_stats** %5, align 8
  %20 = getelementptr inbounds %struct.dm_stats, %struct.dm_stats* %19, i32 0, i32 0
  %21 = call i32 @mutex_unlock(i32* %20)
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %47

24:                                               ; preds = %3
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kstrdup(i8* %25, i32 %26)
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.dm_stats*, %struct.dm_stats** %5, align 8
  %32 = getelementptr inbounds %struct.dm_stats, %struct.dm_stats* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %47

36:                                               ; preds = %24
  %37 = load %struct.dm_stat*, %struct.dm_stat** %8, align 8
  %38 = getelementptr inbounds %struct.dm_stat, %struct.dm_stat* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @kfree(i8* %39)
  %41 = load i8*, i8** %9, align 8
  %42 = load %struct.dm_stat*, %struct.dm_stat** %8, align 8
  %43 = getelementptr inbounds %struct.dm_stat, %struct.dm_stat* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load %struct.dm_stats*, %struct.dm_stats** %5, align 8
  %45 = getelementptr inbounds %struct.dm_stats, %struct.dm_stats* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %36, %30, %18
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.dm_stat* @__dm_stats_find(%struct.dm_stats*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
