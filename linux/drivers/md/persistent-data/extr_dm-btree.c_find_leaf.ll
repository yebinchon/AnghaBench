; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree.c_find_leaf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree.c_find_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_btree_cursor = type { i32, %struct.cursor_node* }
%struct.cursor_node = type { i32, i32 }
%struct.btree_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@LEAF_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"push_node failed\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_btree_cursor*)* @find_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_leaf(%struct.dm_btree_cursor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_btree_cursor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cursor_node*, align 8
  %6 = alloca %struct.btree_node*, align 8
  %7 = alloca i32, align 4
  store %struct.dm_btree_cursor* %0, %struct.dm_btree_cursor** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %46, %1
  %9 = load %struct.dm_btree_cursor*, %struct.dm_btree_cursor** %3, align 8
  %10 = getelementptr inbounds %struct.dm_btree_cursor, %struct.dm_btree_cursor* %9, i32 0, i32 1
  %11 = load %struct.cursor_node*, %struct.cursor_node** %10, align 8
  %12 = load %struct.dm_btree_cursor*, %struct.dm_btree_cursor** %3, align 8
  %13 = getelementptr inbounds %struct.dm_btree_cursor, %struct.dm_btree_cursor* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.cursor_node, %struct.cursor_node* %11, i64 %15
  %17 = getelementptr inbounds %struct.cursor_node, %struct.cursor_node* %16, i64 -1
  store %struct.cursor_node* %17, %struct.cursor_node** %5, align 8
  %18 = load %struct.cursor_node*, %struct.cursor_node** %5, align 8
  %19 = getelementptr inbounds %struct.cursor_node, %struct.cursor_node* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.btree_node* @dm_block_data(i32 %20)
  store %struct.btree_node* %21, %struct.btree_node** %6, align 8
  %22 = load %struct.btree_node*, %struct.btree_node** %6, align 8
  %23 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le32_to_cpu(i32 %25)
  %27 = load i32, i32* @LEAF_NODE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %8
  br label %47

31:                                               ; preds = %8
  %32 = load %struct.btree_node*, %struct.btree_node** %6, align 8
  %33 = load %struct.cursor_node*, %struct.cursor_node** %5, align 8
  %34 = getelementptr inbounds %struct.cursor_node, %struct.cursor_node* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @value_ptr(%struct.btree_node* %32, i32 %35)
  %37 = call i32 @memcpy(i32* %7, i32 %36, i32 4)
  %38 = load %struct.dm_btree_cursor*, %struct.dm_btree_cursor** %3, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @le64_to_cpu(i32 %39)
  %41 = call i32 @push_node(%struct.dm_btree_cursor* %38, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %31
  %45 = call i32 @DMERR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %47

46:                                               ; preds = %31
  br label %8

47:                                               ; preds = %44, %30
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %47
  %51 = load %struct.btree_node*, %struct.btree_node** %6, align 8
  %52 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le32_to_cpu(i32 %54)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i32, i32* @ENODATA, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %62

60:                                               ; preds = %50, %47
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %60, %57
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.btree_node* @dm_block_data(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @value_ptr(%struct.btree_node*, i32) #1

declare dso_local i32 @push_node(%struct.dm_btree_cursor*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @DMERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
