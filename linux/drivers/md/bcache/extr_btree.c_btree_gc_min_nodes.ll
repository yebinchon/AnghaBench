; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_btree_gc_min_nodes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_btree_gc_min_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_set = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MAX_GC_TIMES = common dso_local global i64 0, align 8
@MIN_GC_NODES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.cache_set*)* @btree_gc_min_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @btree_gc_min_nodes(%struct.cache_set* %0) #0 {
  %2 = alloca %struct.cache_set*, align 8
  %3 = alloca i64, align 8
  store %struct.cache_set* %0, %struct.cache_set** %2, align 8
  %4 = load %struct.cache_set*, %struct.cache_set** %2, align 8
  %5 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @MAX_GC_TIMES, align 8
  %9 = udiv i64 %7, %8
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @MIN_GC_NODES, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i64, i64* @MIN_GC_NODES, align 8
  store i64 %14, i64* %3, align 8
  br label %15

15:                                               ; preds = %13, %1
  %16 = load i64, i64* %3, align 8
  ret i64 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
