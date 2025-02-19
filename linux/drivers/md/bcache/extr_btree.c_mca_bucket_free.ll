; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_mca_bucket_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_mca_bucket_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree = type { %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btree*)* @mca_bucket_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mca_bucket_free(%struct.btree* %0) #0 {
  %2 = alloca %struct.btree*, align 8
  store %struct.btree* %0, %struct.btree** %2, align 8
  %3 = load %struct.btree*, %struct.btree** %2, align 8
  %4 = call i32 @btree_node_dirty(%struct.btree* %3)
  %5 = call i32 @BUG_ON(i32 %4)
  %6 = load %struct.btree*, %struct.btree** %2, align 8
  %7 = getelementptr inbounds %struct.btree, %struct.btree* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  store i64 0, i64* %10, align 8
  %11 = load %struct.btree*, %struct.btree** %2, align 8
  %12 = getelementptr inbounds %struct.btree, %struct.btree* %11, i32 0, i32 2
  %13 = call i32 @hlist_del_init_rcu(i32* %12)
  %14 = load %struct.btree*, %struct.btree** %2, align 8
  %15 = getelementptr inbounds %struct.btree, %struct.btree* %14, i32 0, i32 1
  %16 = load %struct.btree*, %struct.btree** %2, align 8
  %17 = getelementptr inbounds %struct.btree, %struct.btree* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = call i32 @list_move(i32* %15, i32* %19)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @btree_node_dirty(%struct.btree*) #1

declare dso_local i32 @hlist_del_init_rcu(i32*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
