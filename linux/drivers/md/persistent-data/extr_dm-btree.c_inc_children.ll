; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree.c_inc_children.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree.c_inc_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_transaction_manager = type { i32 }
%struct.btree_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dm_btree_value_type = type { i32, i32 (i32, i32)* }

@INTERNAL_NODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inc_children(%struct.dm_transaction_manager* %0, %struct.btree_node* %1, %struct.dm_btree_value_type* %2) #0 {
  %4 = alloca %struct.dm_transaction_manager*, align 8
  %5 = alloca %struct.btree_node*, align 8
  %6 = alloca %struct.dm_btree_value_type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dm_transaction_manager* %0, %struct.dm_transaction_manager** %4, align 8
  store %struct.btree_node* %1, %struct.btree_node** %5, align 8
  store %struct.dm_btree_value_type* %2, %struct.dm_btree_value_type** %6, align 8
  %9 = load %struct.btree_node*, %struct.btree_node** %5, align 8
  %10 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @le32_to_cpu(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.btree_node*, %struct.btree_node** %5, align 8
  %15 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le32_to_cpu(i32 %17)
  %19 = load i32, i32* @INTERNAL_NODE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %33, %22
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %4, align 8
  %29 = load %struct.btree_node*, %struct.btree_node** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @value64(%struct.btree_node* %29, i32 %30)
  %32 = call i32 @dm_tm_inc(%struct.dm_transaction_manager* %28, i32 %31)
  br label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %23

36:                                               ; preds = %23
  br label %63

37:                                               ; preds = %3
  %38 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %6, align 8
  %39 = getelementptr inbounds %struct.dm_btree_value_type, %struct.dm_btree_value_type* %38, i32 0, i32 1
  %40 = load i32 (i32, i32)*, i32 (i32, i32)** %39, align 8
  %41 = icmp ne i32 (i32, i32)* %40, null
  br i1 %41, label %42, label %62

42:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %58, %42
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %43
  %48 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %6, align 8
  %49 = getelementptr inbounds %struct.dm_btree_value_type, %struct.dm_btree_value_type* %48, i32 0, i32 1
  %50 = load i32 (i32, i32)*, i32 (i32, i32)** %49, align 8
  %51 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %6, align 8
  %52 = getelementptr inbounds %struct.dm_btree_value_type, %struct.dm_btree_value_type* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.btree_node*, %struct.btree_node** %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @value_ptr(%struct.btree_node* %54, i32 %55)
  %57 = call i32 %50(i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %47
  %59 = load i32, i32* %7, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %43

61:                                               ; preds = %43
  br label %62

62:                                               ; preds = %61, %37
  br label %63

63:                                               ; preds = %62, %36
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dm_tm_inc(%struct.dm_transaction_manager*, i32) #1

declare dso_local i32 @value64(%struct.btree_node*, i32) #1

declare dso_local i32 @value_ptr(%struct.btree_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
