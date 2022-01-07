; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.h_bch_bset_search.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.h_bch_bset_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_keys = type { i32 }
%struct.bset_tree = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.bkey* }
%struct.bkey = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bkey* (%struct.btree_keys*, %struct.bset_tree*, %struct.bkey*)* @bch_bset_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bkey* @bch_bset_search(%struct.btree_keys* %0, %struct.bset_tree* %1, %struct.bkey* %2) #0 {
  %4 = alloca %struct.btree_keys*, align 8
  %5 = alloca %struct.bset_tree*, align 8
  %6 = alloca %struct.bkey*, align 8
  store %struct.btree_keys* %0, %struct.btree_keys** %4, align 8
  store %struct.bset_tree* %1, %struct.bset_tree** %5, align 8
  store %struct.bkey* %2, %struct.bkey** %6, align 8
  %7 = load %struct.bkey*, %struct.bkey** %6, align 8
  %8 = icmp ne %struct.bkey* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = load %struct.btree_keys*, %struct.btree_keys** %4, align 8
  %11 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %12 = load %struct.bkey*, %struct.bkey** %6, align 8
  %13 = call %struct.bkey* @__bch_bset_search(%struct.btree_keys* %10, %struct.bset_tree* %11, %struct.bkey* %12)
  br label %20

14:                                               ; preds = %3
  %15 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %16 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.bkey*, %struct.bkey** %18, align 8
  br label %20

20:                                               ; preds = %14, %9
  %21 = phi %struct.bkey* [ %13, %9 ], [ %19, %14 ]
  ret %struct.bkey* %21
}

declare dso_local %struct.bkey* @__bch_bset_search(%struct.btree_keys*, %struct.bset_tree*, %struct.bkey*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
