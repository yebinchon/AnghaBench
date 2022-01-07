; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c_bch_bset_build_unwritten_tree.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c_bch_bset_build_unwritten_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_keys = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.bset_tree = type { i64, i32, %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btree_keys*)* @bch_bset_build_unwritten_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bch_bset_build_unwritten_tree(%struct.btree_keys* %0) #0 {
  %2 = alloca %struct.btree_keys*, align 8
  %3 = alloca %struct.bset_tree*, align 8
  store %struct.btree_keys* %0, %struct.btree_keys** %2, align 8
  %4 = load %struct.btree_keys*, %struct.btree_keys** %2, align 8
  %5 = call %struct.bset_tree* @bset_tree_last(%struct.btree_keys* %4)
  store %struct.bset_tree* %5, %struct.bset_tree** %3, align 8
  %6 = load %struct.btree_keys*, %struct.btree_keys** %2, align 8
  %7 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.btree_keys*, %struct.btree_keys** %2, align 8
  %11 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load %struct.btree_keys*, %struct.btree_keys** %2, align 8
  %13 = load %struct.bset_tree*, %struct.bset_tree** %3, align 8
  %14 = call i32 @bset_alloc_tree(%struct.btree_keys* %12, %struct.bset_tree* %13)
  %15 = load %struct.bset_tree*, %struct.bset_tree** %3, align 8
  %16 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.btree_keys*, %struct.btree_keys** %2, align 8
  %19 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.btree_keys*, %struct.btree_keys** %2, align 8
  %24 = call i64 @btree_keys_cachelines(%struct.btree_keys* %23)
  %25 = add nsw i64 %22, %24
  %26 = icmp ne i64 %17, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %1
  %28 = load %struct.bset_tree*, %struct.bset_tree** %3, align 8
  %29 = load %struct.bset_tree*, %struct.bset_tree** %3, align 8
  %30 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %29, i32 0, i32 2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @bkey_to_cacheline_offset(%struct.bset_tree* %28, i32 0, i32 %33)
  %35 = load %struct.bset_tree*, %struct.bset_tree** %3, align 8
  %36 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %34, i32* %38, align 4
  %39 = load %struct.bset_tree*, %struct.bset_tree** %3, align 8
  %40 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %39, i32 0, i32 1
  store i32 1, i32* %40, align 8
  br label %41

41:                                               ; preds = %27, %1
  ret void
}

declare dso_local %struct.bset_tree* @bset_tree_last(%struct.btree_keys*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @bset_alloc_tree(%struct.btree_keys*, %struct.bset_tree*) #1

declare dso_local i64 @btree_keys_cachelines(%struct.btree_keys*) #1

declare dso_local i32 @bkey_to_cacheline_offset(%struct.bset_tree*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
