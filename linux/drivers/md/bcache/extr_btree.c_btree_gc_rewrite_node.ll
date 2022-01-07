; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_btree_gc_rewrite_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_btree_gc_rewrite_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_op = type { i32 }
%struct.btree = type { i32 }
%struct.keylist = type { i32 }

@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btree*, %struct.btree_op*, %struct.btree*)* @btree_gc_rewrite_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btree_gc_rewrite_node(%struct.btree* %0, %struct.btree_op* %1, %struct.btree* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btree*, align 8
  %6 = alloca %struct.btree_op*, align 8
  %7 = alloca %struct.btree*, align 8
  %8 = alloca %struct.keylist, align 4
  %9 = alloca %struct.btree*, align 8
  store %struct.btree* %0, %struct.btree** %5, align 8
  store %struct.btree_op* %1, %struct.btree_op** %6, align 8
  store %struct.btree* %2, %struct.btree** %7, align 8
  %10 = load %struct.btree*, %struct.btree** %5, align 8
  %11 = call i64 @btree_check_reserve(%struct.btree* %10, i32* null)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %51

14:                                               ; preds = %3
  %15 = load %struct.btree*, %struct.btree** %7, align 8
  %16 = call %struct.btree* @btree_node_alloc_replacement(%struct.btree* %15, i32* null)
  store %struct.btree* %16, %struct.btree** %9, align 8
  %17 = load %struct.btree*, %struct.btree** %5, align 8
  %18 = call i64 @btree_check_reserve(%struct.btree* %17, i32* null)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load %struct.btree*, %struct.btree** %9, align 8
  %22 = call i32 @btree_node_free(%struct.btree* %21)
  %23 = load %struct.btree*, %struct.btree** %9, align 8
  %24 = call i32 @rw_unlock(i32 1, %struct.btree* %23)
  store i32 0, i32* %4, align 4
  br label %51

25:                                               ; preds = %14
  %26 = load %struct.btree*, %struct.btree** %9, align 8
  %27 = call i32 @bch_btree_node_write_sync(%struct.btree* %26)
  %28 = call i32 @bch_keylist_init(%struct.keylist* %8)
  %29 = load %struct.btree*, %struct.btree** %9, align 8
  %30 = getelementptr inbounds %struct.btree, %struct.btree* %29, i32 0, i32 0
  %31 = call i32 @bch_keylist_add(%struct.keylist* %8, i32* %30)
  %32 = load %struct.btree*, %struct.btree** %7, align 8
  %33 = getelementptr inbounds %struct.keylist, %struct.keylist* %8, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @make_btree_freeing_key(%struct.btree* %32, i32 %34)
  %36 = call i32 @bch_keylist_push(%struct.keylist* %8)
  %37 = load %struct.btree*, %struct.btree** %5, align 8
  %38 = load %struct.btree_op*, %struct.btree_op** %6, align 8
  %39 = call i32 @bch_btree_insert_node(%struct.btree* %37, %struct.btree_op* %38, %struct.keylist* %8, i32* null, i32* null)
  %40 = call i32 @bch_keylist_empty(%struct.keylist* %8)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUG_ON(i32 %43)
  %45 = load %struct.btree*, %struct.btree** %7, align 8
  %46 = call i32 @btree_node_free(%struct.btree* %45)
  %47 = load %struct.btree*, %struct.btree** %9, align 8
  %48 = call i32 @rw_unlock(i32 1, %struct.btree* %47)
  %49 = load i32, i32* @EINTR, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %25, %20, %13
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i64 @btree_check_reserve(%struct.btree*, i32*) #1

declare dso_local %struct.btree* @btree_node_alloc_replacement(%struct.btree*, i32*) #1

declare dso_local i32 @btree_node_free(%struct.btree*) #1

declare dso_local i32 @rw_unlock(i32, %struct.btree*) #1

declare dso_local i32 @bch_btree_node_write_sync(%struct.btree*) #1

declare dso_local i32 @bch_keylist_init(%struct.keylist*) #1

declare dso_local i32 @bch_keylist_add(%struct.keylist*, i32*) #1

declare dso_local i32 @make_btree_freeing_key(%struct.btree*, i32) #1

declare dso_local i32 @bch_keylist_push(%struct.keylist*) #1

declare dso_local i32 @bch_btree_insert_node(%struct.btree*, %struct.btree_op*, %struct.keylist*, i32*, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @bch_keylist_empty(%struct.keylist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
