; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c_bch_btree_sort_into.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c_bch_btree_sort_into.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_keys = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.bset_sort_state = type { i32 }
%struct.btree_iter = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bch_btree_sort_into(%struct.btree_keys* %0, %struct.btree_keys* %1, %struct.bset_sort_state* %2) #0 {
  %4 = alloca %struct.btree_keys*, align 8
  %5 = alloca %struct.btree_keys*, align 8
  %6 = alloca %struct.bset_sort_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.btree_iter, align 4
  store %struct.btree_keys* %0, %struct.btree_keys** %4, align 8
  store %struct.btree_keys* %1, %struct.btree_keys** %5, align 8
  store %struct.bset_sort_state* %2, %struct.bset_sort_state** %6, align 8
  %9 = call i32 (...) @local_clock()
  store i32 %9, i32* %7, align 4
  %10 = load %struct.btree_keys*, %struct.btree_keys** %4, align 8
  %11 = call i32 @bch_btree_iter_init(%struct.btree_keys* %10, %struct.btree_iter* %8, i32* null)
  %12 = load %struct.btree_keys*, %struct.btree_keys** %4, align 8
  %13 = load %struct.btree_keys*, %struct.btree_keys** %5, align 8
  %14 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @btree_mergesort(%struct.btree_keys* %12, i32 %17, %struct.btree_iter* %8, i32 0, i32 1)
  %19 = load %struct.bset_sort_state*, %struct.bset_sort_state** %6, align 8
  %20 = getelementptr inbounds %struct.bset_sort_state, %struct.bset_sort_state* %19, i32 0, i32 0
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @bch_time_stats_update(i32* %20, i32 %21)
  %23 = load %struct.btree_keys*, %struct.btree_keys** %5, align 8
  %24 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  ret void
}

declare dso_local i32 @local_clock(...) #1

declare dso_local i32 @bch_btree_iter_init(%struct.btree_keys*, %struct.btree_iter*, i32*) #1

declare dso_local i32 @btree_mergesort(%struct.btree_keys*, i32, %struct.btree_iter*, i32, i32) #1

declare dso_local i32 @bch_time_stats_update(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
