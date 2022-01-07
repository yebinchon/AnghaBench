; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_btree_node_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_btree_node_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree = type { %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.btree* }

@.str = private unnamed_addr constant [34 x i8] c"bnode %p journal_flush set, retry\00", align 1
@BTREE_NODE_dirty = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btree*)* @btree_node_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btree_node_free(%struct.btree* %0) #0 {
  %2 = alloca %struct.btree*, align 8
  store %struct.btree* %0, %struct.btree** %2, align 8
  %3 = load %struct.btree*, %struct.btree** %2, align 8
  %4 = call i32 @trace_bcache_btree_node_free(%struct.btree* %3)
  %5 = load %struct.btree*, %struct.btree** %2, align 8
  %6 = load %struct.btree*, %struct.btree** %2, align 8
  %7 = getelementptr inbounds %struct.btree, %struct.btree* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.btree*, %struct.btree** %9, align 8
  %11 = icmp eq %struct.btree* %5, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  br label %14

14:                                               ; preds = %21, %1
  %15 = load %struct.btree*, %struct.btree** %2, align 8
  %16 = getelementptr inbounds %struct.btree, %struct.btree* %15, i32 0, i32 3
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.btree*, %struct.btree** %2, align 8
  %19 = call i64 @btree_node_journal_flush(%struct.btree* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %14
  %22 = load %struct.btree*, %struct.btree** %2, align 8
  %23 = getelementptr inbounds %struct.btree, %struct.btree* %22, i32 0, i32 3
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load %struct.btree*, %struct.btree** %2, align 8
  %26 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.btree* %25)
  %27 = call i32 @udelay(i32 1)
  br label %14

28:                                               ; preds = %14
  %29 = load %struct.btree*, %struct.btree** %2, align 8
  %30 = call i64 @btree_node_dirty(%struct.btree* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load %struct.btree*, %struct.btree** %2, align 8
  %34 = load %struct.btree*, %struct.btree** %2, align 8
  %35 = call i32 @btree_current_write(%struct.btree* %34)
  %36 = call i32 @btree_complete_write(%struct.btree* %33, i32 %35)
  %37 = load i32, i32* @BTREE_NODE_dirty, align 4
  %38 = load %struct.btree*, %struct.btree** %2, align 8
  %39 = getelementptr inbounds %struct.btree, %struct.btree* %38, i32 0, i32 4
  %40 = call i32 @clear_bit(i32 %37, i32* %39)
  br label %41

41:                                               ; preds = %32, %28
  %42 = load %struct.btree*, %struct.btree** %2, align 8
  %43 = getelementptr inbounds %struct.btree, %struct.btree* %42, i32 0, i32 3
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load %struct.btree*, %struct.btree** %2, align 8
  %46 = getelementptr inbounds %struct.btree, %struct.btree* %45, i32 0, i32 2
  %47 = call i32 @cancel_delayed_work(i32* %46)
  %48 = load %struct.btree*, %struct.btree** %2, align 8
  %49 = getelementptr inbounds %struct.btree, %struct.btree* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load %struct.btree*, %struct.btree** %2, align 8
  %54 = getelementptr inbounds %struct.btree, %struct.btree* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load %struct.btree*, %struct.btree** %2, align 8
  %57 = getelementptr inbounds %struct.btree, %struct.btree* %56, i32 0, i32 1
  %58 = call i32 @bch_bucket_free(%struct.TYPE_2__* %55, i32* %57)
  %59 = load %struct.btree*, %struct.btree** %2, align 8
  %60 = call i32 @mca_bucket_free(%struct.btree* %59)
  %61 = load %struct.btree*, %struct.btree** %2, align 8
  %62 = getelementptr inbounds %struct.btree, %struct.btree* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  ret void
}

declare dso_local i32 @trace_bcache_btree_node_free(%struct.btree*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @btree_node_journal_flush(%struct.btree*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pr_debug(i8*, %struct.btree*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @btree_node_dirty(%struct.btree*) #1

declare dso_local i32 @btree_complete_write(%struct.btree*, i32) #1

declare dso_local i32 @btree_current_write(%struct.btree*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @bch_bucket_free(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @mca_bucket_free(%struct.btree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
