; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree.c_leaf_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree.c_leaf_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_btree_cursor = type { i32, %struct.cursor_node* }
%struct.cursor_node = type { i32 }
%struct.btree_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@LEAF_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_btree_cursor*)* @leaf_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @leaf_node(%struct.dm_btree_cursor* %0) #0 {
  %2 = alloca %struct.dm_btree_cursor*, align 8
  %3 = alloca %struct.cursor_node*, align 8
  %4 = alloca %struct.btree_node*, align 8
  store %struct.dm_btree_cursor* %0, %struct.dm_btree_cursor** %2, align 8
  %5 = load %struct.dm_btree_cursor*, %struct.dm_btree_cursor** %2, align 8
  %6 = getelementptr inbounds %struct.dm_btree_cursor, %struct.dm_btree_cursor* %5, i32 0, i32 1
  %7 = load %struct.cursor_node*, %struct.cursor_node** %6, align 8
  %8 = load %struct.dm_btree_cursor*, %struct.dm_btree_cursor** %2, align 8
  %9 = getelementptr inbounds %struct.dm_btree_cursor, %struct.dm_btree_cursor* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.cursor_node, %struct.cursor_node* %7, i64 %11
  %13 = getelementptr inbounds %struct.cursor_node, %struct.cursor_node* %12, i64 -1
  store %struct.cursor_node* %13, %struct.cursor_node** %3, align 8
  %14 = load %struct.cursor_node*, %struct.cursor_node** %3, align 8
  %15 = getelementptr inbounds %struct.cursor_node, %struct.cursor_node* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.btree_node* @dm_block_data(i32 %16)
  store %struct.btree_node* %17, %struct.btree_node** %4, align 8
  %18 = load %struct.btree_node*, %struct.btree_node** %4, align 8
  %19 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le32_to_cpu(i32 %21)
  %23 = load i32, i32* @LEAF_NODE, align 4
  %24 = and i32 %22, %23
  ret i32 %24
}

declare dso_local %struct.btree_node* @dm_block_data(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
