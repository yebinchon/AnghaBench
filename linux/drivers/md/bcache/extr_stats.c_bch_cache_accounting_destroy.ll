; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_stats.c_bch_cache_accounting_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_stats.c_bch_cache_accounting_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_accounting = type { i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bch_cache_accounting_destroy(%struct.cache_accounting* %0) #0 {
  %2 = alloca %struct.cache_accounting*, align 8
  store %struct.cache_accounting* %0, %struct.cache_accounting** %2, align 8
  %3 = load %struct.cache_accounting*, %struct.cache_accounting** %2, align 8
  %4 = getelementptr inbounds %struct.cache_accounting, %struct.cache_accounting* %3, i32 0, i32 6
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = call i32 @kobject_put(i32* %5)
  %7 = load %struct.cache_accounting*, %struct.cache_accounting** %2, align 8
  %8 = getelementptr inbounds %struct.cache_accounting, %struct.cache_accounting* %7, i32 0, i32 5
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = call i32 @kobject_put(i32* %9)
  %11 = load %struct.cache_accounting*, %struct.cache_accounting** %2, align 8
  %12 = getelementptr inbounds %struct.cache_accounting, %struct.cache_accounting* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = call i32 @kobject_put(i32* %13)
  %15 = load %struct.cache_accounting*, %struct.cache_accounting** %2, align 8
  %16 = getelementptr inbounds %struct.cache_accounting, %struct.cache_accounting* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = call i32 @kobject_put(i32* %17)
  %19 = load %struct.cache_accounting*, %struct.cache_accounting** %2, align 8
  %20 = getelementptr inbounds %struct.cache_accounting, %struct.cache_accounting* %19, i32 0, i32 2
  %21 = call i32 @atomic_set(i32* %20, i32 1)
  %22 = load %struct.cache_accounting*, %struct.cache_accounting** %2, align 8
  %23 = getelementptr inbounds %struct.cache_accounting, %struct.cache_accounting* %22, i32 0, i32 1
  %24 = call i64 @del_timer_sync(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load %struct.cache_accounting*, %struct.cache_accounting** %2, align 8
  %28 = getelementptr inbounds %struct.cache_accounting, %struct.cache_accounting* %27, i32 0, i32 0
  %29 = call i32 @closure_return(i32* %28)
  br label %30

30:                                               ; preds = %26, %1
  ret void
}

declare dso_local i32 @kobject_put(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @del_timer_sync(i32*) #1

declare dso_local i32 @closure_return(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
