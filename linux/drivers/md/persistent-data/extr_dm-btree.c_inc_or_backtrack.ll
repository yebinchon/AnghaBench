; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree.c_inc_or_backtrack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree.c_inc_or_backtrack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_btree_cursor = type { i32, %struct.cursor_node* }
%struct.cursor_node = type { i64, i32 }
%struct.btree_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_btree_cursor*)* @inc_or_backtrack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inc_or_backtrack(%struct.dm_btree_cursor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_btree_cursor*, align 8
  %4 = alloca %struct.cursor_node*, align 8
  %5 = alloca %struct.btree_node*, align 8
  store %struct.dm_btree_cursor* %0, %struct.dm_btree_cursor** %3, align 8
  br label %6

6:                                                ; preds = %42, %1
  %7 = load %struct.dm_btree_cursor*, %struct.dm_btree_cursor** %3, align 8
  %8 = getelementptr inbounds %struct.dm_btree_cursor, %struct.dm_btree_cursor* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = load i32, i32* @ENODATA, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %46

14:                                               ; preds = %6
  %15 = load %struct.dm_btree_cursor*, %struct.dm_btree_cursor** %3, align 8
  %16 = getelementptr inbounds %struct.dm_btree_cursor, %struct.dm_btree_cursor* %15, i32 0, i32 1
  %17 = load %struct.cursor_node*, %struct.cursor_node** %16, align 8
  %18 = load %struct.dm_btree_cursor*, %struct.dm_btree_cursor** %3, align 8
  %19 = getelementptr inbounds %struct.dm_btree_cursor, %struct.dm_btree_cursor* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.cursor_node, %struct.cursor_node* %17, i64 %21
  %23 = getelementptr inbounds %struct.cursor_node, %struct.cursor_node* %22, i64 -1
  store %struct.cursor_node* %23, %struct.cursor_node** %4, align 8
  %24 = load %struct.cursor_node*, %struct.cursor_node** %4, align 8
  %25 = getelementptr inbounds %struct.cursor_node, %struct.cursor_node* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.btree_node* @dm_block_data(i32 %26)
  store %struct.btree_node* %27, %struct.btree_node** %5, align 8
  %28 = load %struct.cursor_node*, %struct.cursor_node** %4, align 8
  %29 = getelementptr inbounds %struct.cursor_node, %struct.cursor_node* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %29, align 8
  %32 = load %struct.cursor_node*, %struct.cursor_node** %4, align 8
  %33 = getelementptr inbounds %struct.cursor_node, %struct.cursor_node* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.btree_node*, %struct.btree_node** %5, align 8
  %36 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @le32_to_cpu(i32 %38)
  %40 = icmp slt i64 %34, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %14
  br label %45

42:                                               ; preds = %14
  %43 = load %struct.dm_btree_cursor*, %struct.dm_btree_cursor** %3, align 8
  %44 = call i32 @pop_node(%struct.dm_btree_cursor* %43)
  br label %6

45:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %11
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.btree_node* @dm_block_data(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @pop_node(%struct.dm_btree_cursor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
