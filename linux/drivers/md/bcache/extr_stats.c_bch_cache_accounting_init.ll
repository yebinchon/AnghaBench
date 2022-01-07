; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_stats.c_bch_cache_accounting_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_stats.c_bch_cache_accounting_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_accounting = type { %struct.TYPE_11__, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.closure = type { i32 }

@bch_stats_ktype = common dso_local global i32 0, align 4
@scale_accounting = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@accounting_delay = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bch_cache_accounting_init(%struct.cache_accounting* %0, %struct.closure* %1) #0 {
  %3 = alloca %struct.cache_accounting*, align 8
  %4 = alloca %struct.closure*, align 8
  store %struct.cache_accounting* %0, %struct.cache_accounting** %3, align 8
  store %struct.closure* %1, %struct.closure** %4, align 8
  %5 = load %struct.cache_accounting*, %struct.cache_accounting** %3, align 8
  %6 = getelementptr inbounds %struct.cache_accounting, %struct.cache_accounting* %5, i32 0, i32 5
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %8 = call i32 @kobject_init(i32* %7, i32* @bch_stats_ktype)
  %9 = load %struct.cache_accounting*, %struct.cache_accounting** %3, align 8
  %10 = getelementptr inbounds %struct.cache_accounting, %struct.cache_accounting* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = call i32 @kobject_init(i32* %11, i32* @bch_stats_ktype)
  %13 = load %struct.cache_accounting*, %struct.cache_accounting** %3, align 8
  %14 = getelementptr inbounds %struct.cache_accounting, %struct.cache_accounting* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = call i32 @kobject_init(i32* %15, i32* @bch_stats_ktype)
  %17 = load %struct.cache_accounting*, %struct.cache_accounting** %3, align 8
  %18 = getelementptr inbounds %struct.cache_accounting, %struct.cache_accounting* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = call i32 @kobject_init(i32* %19, i32* @bch_stats_ktype)
  %21 = load %struct.cache_accounting*, %struct.cache_accounting** %3, align 8
  %22 = getelementptr inbounds %struct.cache_accounting, %struct.cache_accounting* %21, i32 0, i32 1
  %23 = load %struct.closure*, %struct.closure** %4, align 8
  %24 = call i32 @closure_init(i32* %22, %struct.closure* %23)
  %25 = load %struct.cache_accounting*, %struct.cache_accounting** %3, align 8
  %26 = getelementptr inbounds %struct.cache_accounting, %struct.cache_accounting* %25, i32 0, i32 0
  %27 = load i32, i32* @scale_accounting, align 4
  %28 = call i32 @timer_setup(%struct.TYPE_11__* %26, i32 %27, i32 0)
  %29 = load i64, i64* @jiffies, align 8
  %30 = load i64, i64* @accounting_delay, align 8
  %31 = add nsw i64 %29, %30
  %32 = load %struct.cache_accounting*, %struct.cache_accounting** %3, align 8
  %33 = getelementptr inbounds %struct.cache_accounting, %struct.cache_accounting* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  %35 = load %struct.cache_accounting*, %struct.cache_accounting** %3, align 8
  %36 = getelementptr inbounds %struct.cache_accounting, %struct.cache_accounting* %35, i32 0, i32 0
  %37 = call i32 @add_timer(%struct.TYPE_11__* %36)
  ret void
}

declare dso_local i32 @kobject_init(i32*, i32*) #1

declare dso_local i32 @closure_init(i32*, %struct.closure*) #1

declare dso_local i32 @timer_setup(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
