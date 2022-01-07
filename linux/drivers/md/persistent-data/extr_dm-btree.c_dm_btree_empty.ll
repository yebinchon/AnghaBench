; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree.c_dm_btree_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree.c_dm_btree_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_btree_info = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dm_block = type { i32 }
%struct.btree_node = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8* }

@LEAF_NODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_btree_empty(%struct.dm_btree_info* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_btree_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_block*, align 8
  %8 = alloca %struct.btree_node*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.dm_btree_info* %0, %struct.dm_btree_info** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.dm_btree_info*, %struct.dm_btree_info** %4, align 8
  %12 = call i32 @new_block(%struct.dm_btree_info* %11, %struct.dm_block** %7)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %62

17:                                               ; preds = %2
  %18 = load %struct.dm_btree_info*, %struct.dm_btree_info** %4, align 8
  %19 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dm_tm_get_bm(i32 %20)
  %22 = call i64 @dm_bm_block_size(i32 %21)
  store i64 %22, i64* %9, align 8
  %23 = load %struct.dm_btree_info*, %struct.dm_btree_info** %4, align 8
  %24 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @calc_max_entries(i32 %26, i64 %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.dm_block*, %struct.dm_block** %7, align 8
  %30 = call %struct.btree_node* @dm_block_data(%struct.dm_block* %29)
  store %struct.btree_node* %30, %struct.btree_node** %8, align 8
  %31 = load %struct.btree_node*, %struct.btree_node** %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @memset(%struct.btree_node* %31, i32 0, i64 %32)
  %34 = load i32, i32* @LEAF_NODE, align 4
  %35 = call i8* @cpu_to_le32(i32 %34)
  %36 = load %struct.btree_node*, %struct.btree_node** %8, align 8
  %37 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  store i8* %35, i8** %38, align 8
  %39 = call i8* @cpu_to_le32(i32 0)
  %40 = load %struct.btree_node*, %struct.btree_node** %8, align 8
  %41 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  store i8* %39, i8** %42, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i8* @cpu_to_le32(i32 %43)
  %45 = load %struct.btree_node*, %struct.btree_node** %8, align 8
  %46 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i8* %44, i8** %47, align 8
  %48 = load %struct.dm_btree_info*, %struct.dm_btree_info** %4, align 8
  %49 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @cpu_to_le32(i32 %51)
  %53 = load %struct.btree_node*, %struct.btree_node** %8, align 8
  %54 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i8* %52, i8** %55, align 8
  %56 = load %struct.dm_block*, %struct.dm_block** %7, align 8
  %57 = call i32 @dm_block_location(%struct.dm_block* %56)
  %58 = load i32*, i32** %5, align 8
  store i32 %57, i32* %58, align 4
  %59 = load %struct.dm_btree_info*, %struct.dm_btree_info** %4, align 8
  %60 = load %struct.dm_block*, %struct.dm_block** %7, align 8
  %61 = call i32 @unlock_block(%struct.dm_btree_info* %59, %struct.dm_block* %60)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %17, %15
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @new_block(%struct.dm_btree_info*, %struct.dm_block**) #1

declare dso_local i64 @dm_bm_block_size(i32) #1

declare dso_local i32 @dm_tm_get_bm(i32) #1

declare dso_local i32 @calc_max_entries(i32, i64) #1

declare dso_local %struct.btree_node* @dm_block_data(%struct.dm_block*) #1

declare dso_local i32 @memset(%struct.btree_node*, i32, i64) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @dm_block_location(%struct.dm_block*) #1

declare dso_local i32 @unlock_block(%struct.dm_btree_info*, %struct.dm_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
