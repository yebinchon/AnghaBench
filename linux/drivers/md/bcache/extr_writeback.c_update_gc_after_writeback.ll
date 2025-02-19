; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_writeback.c_update_gc_after_writeback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_writeback.c_update_gc_after_writeback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_set = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@BCH_ENABLE_AUTO_GC = common dso_local global i32 0, align 4
@BCH_AUTO_GC_DIRTY_THRESHOLD = common dso_local global i64 0, align 8
@BCH_DO_AUTO_GC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache_set*)* @update_gc_after_writeback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_gc_after_writeback(%struct.cache_set* %0) #0 {
  %2 = alloca %struct.cache_set*, align 8
  store %struct.cache_set* %0, %struct.cache_set** %2, align 8
  %3 = load %struct.cache_set*, %struct.cache_set** %2, align 8
  %4 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @BCH_ENABLE_AUTO_GC, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = load %struct.cache_set*, %struct.cache_set** %2, align 8
  %10 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @BCH_AUTO_GC_DIRTY_THRESHOLD, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %8, %1
  br label %22

16:                                               ; preds = %8
  %17 = load i32, i32* @BCH_DO_AUTO_GC, align 4
  %18 = load %struct.cache_set*, %struct.cache_set** %2, align 8
  %19 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  br label %22

22:                                               ; preds = %16, %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
