; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree.c_dm_btree_cursor_begin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree.c_dm_btree_cursor_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_btree_info = type { i32 }
%struct.dm_btree_cursor = type { i32, i64, i32, %struct.dm_btree_info* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_btree_cursor_begin(%struct.dm_btree_info* %0, i32 %1, i32 %2, %struct.dm_btree_cursor* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_btree_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dm_btree_cursor*, align 8
  %10 = alloca i32, align 4
  store %struct.dm_btree_info* %0, %struct.dm_btree_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.dm_btree_cursor* %3, %struct.dm_btree_cursor** %9, align 8
  %11 = load %struct.dm_btree_info*, %struct.dm_btree_info** %6, align 8
  %12 = load %struct.dm_btree_cursor*, %struct.dm_btree_cursor** %9, align 8
  %13 = getelementptr inbounds %struct.dm_btree_cursor, %struct.dm_btree_cursor* %12, i32 0, i32 3
  store %struct.dm_btree_info* %11, %struct.dm_btree_info** %13, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.dm_btree_cursor*, %struct.dm_btree_cursor** %9, align 8
  %16 = getelementptr inbounds %struct.dm_btree_cursor, %struct.dm_btree_cursor* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = load %struct.dm_btree_cursor*, %struct.dm_btree_cursor** %9, align 8
  %18 = getelementptr inbounds %struct.dm_btree_cursor, %struct.dm_btree_cursor* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.dm_btree_cursor*, %struct.dm_btree_cursor** %9, align 8
  %21 = getelementptr inbounds %struct.dm_btree_cursor, %struct.dm_btree_cursor* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.dm_btree_cursor*, %struct.dm_btree_cursor** %9, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @push_node(%struct.dm_btree_cursor* %22, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %5, align 4
  br label %32

29:                                               ; preds = %4
  %30 = load %struct.dm_btree_cursor*, %struct.dm_btree_cursor** %9, align 8
  %31 = call i32 @find_leaf(%struct.dm_btree_cursor* %30)
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %29, %27
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @push_node(%struct.dm_btree_cursor*, i32) #1

declare dso_local i32 @find_leaf(%struct.dm_btree_cursor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
