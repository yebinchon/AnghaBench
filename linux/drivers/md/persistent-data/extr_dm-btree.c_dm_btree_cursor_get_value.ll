; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree.c_dm_btree_cursor_get_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree.c_dm_btree_cursor_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_btree_cursor = type { i32, %struct.TYPE_6__*, %struct.cursor_node* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.cursor_node = type { i32, i32 }
%struct.btree_node = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@INTERNAL_NODE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_btree_cursor_get_value(%struct.dm_btree_cursor* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_btree_cursor*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cursor_node*, align 8
  %9 = alloca %struct.btree_node*, align 8
  store %struct.dm_btree_cursor* %0, %struct.dm_btree_cursor** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.dm_btree_cursor*, %struct.dm_btree_cursor** %5, align 8
  %11 = getelementptr inbounds %struct.dm_btree_cursor, %struct.dm_btree_cursor* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %61

14:                                               ; preds = %3
  %15 = load %struct.dm_btree_cursor*, %struct.dm_btree_cursor** %5, align 8
  %16 = getelementptr inbounds %struct.dm_btree_cursor, %struct.dm_btree_cursor* %15, i32 0, i32 2
  %17 = load %struct.cursor_node*, %struct.cursor_node** %16, align 8
  %18 = load %struct.dm_btree_cursor*, %struct.dm_btree_cursor** %5, align 8
  %19 = getelementptr inbounds %struct.dm_btree_cursor, %struct.dm_btree_cursor* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.cursor_node, %struct.cursor_node* %17, i64 %21
  %23 = getelementptr inbounds %struct.cursor_node, %struct.cursor_node* %22, i64 -1
  store %struct.cursor_node* %23, %struct.cursor_node** %8, align 8
  %24 = load %struct.cursor_node*, %struct.cursor_node** %8, align 8
  %25 = getelementptr inbounds %struct.cursor_node, %struct.cursor_node* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.btree_node* @dm_block_data(i32 %26)
  store %struct.btree_node* %27, %struct.btree_node** %9, align 8
  %28 = load %struct.btree_node*, %struct.btree_node** %9, align 8
  %29 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le32_to_cpu(i32 %31)
  %33 = load i32, i32* @INTERNAL_NODE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %14
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %64

39:                                               ; preds = %14
  %40 = load %struct.btree_node*, %struct.btree_node** %9, align 8
  %41 = load %struct.cursor_node*, %struct.cursor_node** %8, align 8
  %42 = getelementptr inbounds %struct.cursor_node, %struct.cursor_node* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32* @key_ptr(%struct.btree_node* %40, i32 %43)
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le64_to_cpu(i32 %45)
  %47 = load i32*, i32** %6, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i8*, i8** %7, align 8
  %49 = load %struct.btree_node*, %struct.btree_node** %9, align 8
  %50 = load %struct.cursor_node*, %struct.cursor_node** %8, align 8
  %51 = getelementptr inbounds %struct.cursor_node, %struct.cursor_node* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @value_ptr(%struct.btree_node* %49, i32 %52)
  %54 = load %struct.dm_btree_cursor*, %struct.dm_btree_cursor** %5, align 8
  %55 = getelementptr inbounds %struct.dm_btree_cursor, %struct.dm_btree_cursor* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @memcpy(i8* %48, i32 %53, i32 %59)
  store i32 0, i32* %4, align 4
  br label %64

61:                                               ; preds = %3
  %62 = load i32, i32* @ENODATA, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %61, %39, %36
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.btree_node* @dm_block_data(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32* @key_ptr(%struct.btree_node*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @value_ptr(%struct.btree_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
