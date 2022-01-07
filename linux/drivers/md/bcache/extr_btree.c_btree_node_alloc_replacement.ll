; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_btree_node_alloc_replacement.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_btree_node_alloc_replacement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.btree_op = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.btree* (%struct.btree*, %struct.btree_op*)* @btree_node_alloc_replacement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.btree* @btree_node_alloc_replacement(%struct.btree* %0, %struct.btree_op* %1) #0 {
  %3 = alloca %struct.btree*, align 8
  %4 = alloca %struct.btree_op*, align 8
  %5 = alloca %struct.btree*, align 8
  store %struct.btree* %0, %struct.btree** %3, align 8
  store %struct.btree_op* %1, %struct.btree_op** %4, align 8
  %6 = load %struct.btree*, %struct.btree** %3, align 8
  %7 = getelementptr inbounds %struct.btree, %struct.btree* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = load %struct.btree_op*, %struct.btree_op** %4, align 8
  %10 = load %struct.btree*, %struct.btree** %3, align 8
  %11 = getelementptr inbounds %struct.btree, %struct.btree* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.btree*, %struct.btree** %3, align 8
  %14 = getelementptr inbounds %struct.btree, %struct.btree* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.btree* @bch_btree_node_alloc(%struct.TYPE_2__* %8, %struct.btree_op* %9, i32 %12, i32 %15)
  store %struct.btree* %16, %struct.btree** %5, align 8
  %17 = load %struct.btree*, %struct.btree** %5, align 8
  %18 = call i32 @IS_ERR_OR_NULL(%struct.btree* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %41, label %20

20:                                               ; preds = %2
  %21 = load %struct.btree*, %struct.btree** %5, align 8
  %22 = getelementptr inbounds %struct.btree, %struct.btree* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.btree*, %struct.btree** %3, align 8
  %25 = getelementptr inbounds %struct.btree, %struct.btree* %24, i32 0, i32 3
  %26 = load %struct.btree*, %struct.btree** %5, align 8
  %27 = getelementptr inbounds %struct.btree, %struct.btree* %26, i32 0, i32 3
  %28 = load %struct.btree*, %struct.btree** %3, align 8
  %29 = getelementptr inbounds %struct.btree, %struct.btree* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @bch_btree_sort_into(i32* %25, i32* %27, i32* %31)
  %33 = load %struct.btree*, %struct.btree** %5, align 8
  %34 = getelementptr inbounds %struct.btree, %struct.btree* %33, i32 0, i32 1
  %35 = load %struct.btree*, %struct.btree** %3, align 8
  %36 = getelementptr inbounds %struct.btree, %struct.btree* %35, i32 0, i32 1
  %37 = call i32 @bkey_copy_key(i32* %34, i32* %36)
  %38 = load %struct.btree*, %struct.btree** %5, align 8
  %39 = getelementptr inbounds %struct.btree, %struct.btree* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  br label %41

41:                                               ; preds = %20, %2
  %42 = load %struct.btree*, %struct.btree** %5, align 8
  ret %struct.btree* %42
}

declare dso_local %struct.btree* @bch_btree_node_alloc(%struct.TYPE_2__*, %struct.btree_op*, i32, i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.btree*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bch_btree_sort_into(i32*, i32*, i32*) #1

declare dso_local i32 @bkey_copy_key(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
