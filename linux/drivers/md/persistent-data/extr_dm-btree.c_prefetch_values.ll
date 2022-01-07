; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree.c_prefetch_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree.c_prefetch_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_btree_cursor = type { i32, %struct.TYPE_5__*, %struct.cursor_node* }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.cursor_node = type { i32 }
%struct.btree_node = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.dm_block_manager = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_btree_cursor*)* @prefetch_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prefetch_values(%struct.dm_btree_cursor* %0) #0 {
  %2 = alloca %struct.dm_btree_cursor*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cursor_node*, align 8
  %7 = alloca %struct.btree_node*, align 8
  %8 = alloca %struct.dm_block_manager*, align 8
  store %struct.dm_btree_cursor* %0, %struct.dm_btree_cursor** %2, align 8
  %9 = load %struct.dm_btree_cursor*, %struct.dm_btree_cursor** %2, align 8
  %10 = getelementptr inbounds %struct.dm_btree_cursor, %struct.dm_btree_cursor* %9, i32 0, i32 2
  %11 = load %struct.cursor_node*, %struct.cursor_node** %10, align 8
  %12 = load %struct.dm_btree_cursor*, %struct.dm_btree_cursor** %2, align 8
  %13 = getelementptr inbounds %struct.dm_btree_cursor, %struct.dm_btree_cursor* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.cursor_node, %struct.cursor_node* %11, i64 %15
  %17 = getelementptr inbounds %struct.cursor_node, %struct.cursor_node* %16, i64 -1
  store %struct.cursor_node* %17, %struct.cursor_node** %6, align 8
  %18 = load %struct.cursor_node*, %struct.cursor_node** %6, align 8
  %19 = getelementptr inbounds %struct.cursor_node, %struct.cursor_node* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.btree_node* @dm_block_data(i32 %20)
  store %struct.btree_node* %21, %struct.btree_node** %7, align 8
  %22 = load %struct.dm_btree_cursor*, %struct.dm_btree_cursor** %2, align 8
  %23 = getelementptr inbounds %struct.dm_btree_cursor, %struct.dm_btree_cursor* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.dm_block_manager* @dm_tm_get_bm(i32 %26)
  store %struct.dm_block_manager* %27, %struct.dm_block_manager** %8, align 8
  %28 = load %struct.dm_btree_cursor*, %struct.dm_btree_cursor** %2, align 8
  %29 = getelementptr inbounds %struct.dm_btree_cursor, %struct.dm_btree_cursor* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = icmp ne i64 %34, 4
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load %struct.btree_node*, %struct.btree_node** %7, align 8
  %39 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le32_to_cpu(i32 %41)
  store i32 %42, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %56, %1
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %43
  %48 = load %struct.btree_node*, %struct.btree_node** %7, align 8
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @value_ptr(%struct.btree_node* %48, i32 %49)
  %51 = call i32 @memcpy(i32* %5, i32 %50, i32 4)
  %52 = load %struct.dm_block_manager*, %struct.dm_block_manager** %8, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @le64_to_cpu(i32 %53)
  %55 = call i32 @dm_bm_prefetch(%struct.dm_block_manager* %52, i32 %54)
  br label %56

56:                                               ; preds = %47
  %57 = load i32, i32* %3, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %43

59:                                               ; preds = %43
  ret void
}

declare dso_local %struct.btree_node* @dm_block_data(i32) #1

declare dso_local %struct.dm_block_manager* @dm_tm_get_bm(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @value_ptr(%struct.btree_node*, i32) #1

declare dso_local i32 @dm_bm_prefetch(%struct.dm_block_manager*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
