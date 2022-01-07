; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c___bch_btree_map_nodes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c___bch_btree_map_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_op = type { i32 }
%struct.cache_set = type { i32 }
%struct.bkey = type { i32 }

@map_nodes_recurse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__bch_btree_map_nodes(%struct.btree_op* %0, %struct.cache_set* %1, %struct.bkey* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.btree_op*, align 8
  %7 = alloca %struct.cache_set*, align 8
  %8 = alloca %struct.bkey*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.btree_op* %0, %struct.btree_op** %6, align 8
  store %struct.cache_set* %1, %struct.cache_set** %7, align 8
  store %struct.bkey* %2, %struct.bkey** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* @map_nodes_recurse, align 4
  %12 = load %struct.cache_set*, %struct.cache_set** %7, align 8
  %13 = load %struct.btree_op*, %struct.btree_op** %6, align 8
  %14 = load %struct.bkey*, %struct.bkey** %8, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @btree_root(i32 %11, %struct.cache_set* %12, %struct.btree_op* %13, %struct.bkey* %14, i32* %15, i32 %16)
  ret i32 %17
}

declare dso_local i32 @btree_root(i32, %struct.cache_set*, %struct.btree_op*, %struct.bkey*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
