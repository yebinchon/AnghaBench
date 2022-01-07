; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree.c_push_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree.c_push_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_btree_cursor = type { i32, i64, i32, %struct.cursor_node* }
%struct.cursor_node = type { i64, i32 }

@DM_BTREE_CURSOR_MAX_DEPTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"couldn't push cursor node, stack depth too high\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_btree_cursor*, i32)* @push_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_node(%struct.dm_btree_cursor* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_btree_cursor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cursor_node*, align 8
  store %struct.dm_btree_cursor* %0, %struct.dm_btree_cursor** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.dm_btree_cursor*, %struct.dm_btree_cursor** %4, align 8
  %9 = getelementptr inbounds %struct.dm_btree_cursor, %struct.dm_btree_cursor* %8, i32 0, i32 3
  %10 = load %struct.cursor_node*, %struct.cursor_node** %9, align 8
  %11 = load %struct.dm_btree_cursor*, %struct.dm_btree_cursor** %4, align 8
  %12 = getelementptr inbounds %struct.dm_btree_cursor, %struct.dm_btree_cursor* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.cursor_node, %struct.cursor_node* %10, i64 %14
  store %struct.cursor_node* %15, %struct.cursor_node** %7, align 8
  %16 = load %struct.dm_btree_cursor*, %struct.dm_btree_cursor** %4, align 8
  %17 = getelementptr inbounds %struct.dm_btree_cursor, %struct.dm_btree_cursor* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @DM_BTREE_CURSOR_MAX_DEPTH, align 4
  %20 = sub nsw i32 %19, 1
  %21 = icmp sge i32 %18, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = call i32 @DMERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %57

26:                                               ; preds = %2
  %27 = load %struct.dm_btree_cursor*, %struct.dm_btree_cursor** %4, align 8
  %28 = getelementptr inbounds %struct.dm_btree_cursor, %struct.dm_btree_cursor* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.cursor_node*, %struct.cursor_node** %7, align 8
  %32 = getelementptr inbounds %struct.cursor_node, %struct.cursor_node* %31, i32 0, i32 1
  %33 = call i32 @bn_read_lock(i32 %29, i32 %30, i32* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %57

38:                                               ; preds = %26
  %39 = load %struct.cursor_node*, %struct.cursor_node** %7, align 8
  %40 = getelementptr inbounds %struct.cursor_node, %struct.cursor_node* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load %struct.dm_btree_cursor*, %struct.dm_btree_cursor** %4, align 8
  %42 = getelementptr inbounds %struct.dm_btree_cursor, %struct.dm_btree_cursor* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = load %struct.dm_btree_cursor*, %struct.dm_btree_cursor** %4, align 8
  %46 = getelementptr inbounds %struct.dm_btree_cursor, %struct.dm_btree_cursor* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %38
  %50 = load %struct.dm_btree_cursor*, %struct.dm_btree_cursor** %4, align 8
  %51 = call i32 @leaf_node(%struct.dm_btree_cursor* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %49, %38
  %54 = load %struct.dm_btree_cursor*, %struct.dm_btree_cursor** %4, align 8
  %55 = call i32 @prefetch_values(%struct.dm_btree_cursor* %54)
  br label %56

56:                                               ; preds = %53, %49
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %36, %22
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i32 @bn_read_lock(i32, i32, i32*) #1

declare dso_local i32 @leaf_node(%struct.dm_btree_cursor*) #1

declare dso_local i32 @prefetch_values(%struct.dm_btree_cursor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
