; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c_bch_btree_keys_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c_bch_btree_keys_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_keys = type { i32, %struct.bset_tree* }
%struct.bset_tree = type { i32*, i32*, i32* }

@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bch_btree_keys_free(%struct.btree_keys* %0) #0 {
  %2 = alloca %struct.btree_keys*, align 8
  %3 = alloca %struct.bset_tree*, align 8
  store %struct.btree_keys* %0, %struct.btree_keys** %2, align 8
  %4 = load %struct.btree_keys*, %struct.btree_keys** %2, align 8
  %5 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %4, i32 0, i32 1
  %6 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  store %struct.bset_tree* %6, %struct.bset_tree** %3, align 8
  %7 = load %struct.btree_keys*, %struct.btree_keys** %2, align 8
  %8 = call i64 @bset_prev_bytes(%struct.btree_keys* %7)
  %9 = load i64, i64* @PAGE_SIZE, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.bset_tree*, %struct.bset_tree** %3, align 8
  %13 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @kfree(i32* %14)
  br label %25

16:                                               ; preds = %1
  %17 = load %struct.bset_tree*, %struct.bset_tree** %3, align 8
  %18 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = ptrtoint i32* %19 to i64
  %21 = load %struct.btree_keys*, %struct.btree_keys** %2, align 8
  %22 = call i64 @bset_prev_bytes(%struct.btree_keys* %21)
  %23 = call i32 @get_order(i64 %22)
  %24 = call i32 @free_pages(i64 %20, i32 %23)
  br label %25

25:                                               ; preds = %16, %11
  %26 = load %struct.btree_keys*, %struct.btree_keys** %2, align 8
  %27 = call i64 @bset_tree_bytes(%struct.btree_keys* %26)
  %28 = load i64, i64* @PAGE_SIZE, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.bset_tree*, %struct.bset_tree** %3, align 8
  %32 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @kfree(i32* %33)
  br label %44

35:                                               ; preds = %25
  %36 = load %struct.bset_tree*, %struct.bset_tree** %3, align 8
  %37 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = ptrtoint i32* %38 to i64
  %40 = load %struct.btree_keys*, %struct.btree_keys** %2, align 8
  %41 = call i64 @bset_tree_bytes(%struct.btree_keys* %40)
  %42 = call i32 @get_order(i64 %41)
  %43 = call i32 @free_pages(i64 %39, i32 %42)
  br label %44

44:                                               ; preds = %35, %30
  %45 = load %struct.bset_tree*, %struct.bset_tree** %3, align 8
  %46 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = ptrtoint i32* %47 to i64
  %49 = load %struct.btree_keys*, %struct.btree_keys** %2, align 8
  %50 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @free_pages(i64 %48, i32 %51)
  %53 = load %struct.bset_tree*, %struct.bset_tree** %3, align 8
  %54 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %53, i32 0, i32 2
  store i32* null, i32** %54, align 8
  %55 = load %struct.bset_tree*, %struct.bset_tree** %3, align 8
  %56 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %55, i32 0, i32 1
  store i32* null, i32** %56, align 8
  %57 = load %struct.bset_tree*, %struct.bset_tree** %3, align 8
  %58 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %57, i32 0, i32 0
  store i32* null, i32** %58, align 8
  ret void
}

declare dso_local i64 @bset_prev_bytes(%struct.btree_keys*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local i64 @bset_tree_bytes(%struct.btree_keys*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
