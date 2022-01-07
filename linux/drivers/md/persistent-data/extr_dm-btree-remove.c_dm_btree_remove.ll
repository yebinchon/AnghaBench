; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree-remove.c_dm_btree_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree-remove.c_dm_btree_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_btree_info = type { i32, %struct.dm_btree_value_type, i32 }
%struct.dm_btree_value_type = type { i32, i32 (i32, i32)* }
%struct.shadow_spine = type { i32 }
%struct.btree_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_btree_remove(%struct.dm_btree_info* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.dm_btree_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.shadow_spine, align 4
  %14 = alloca %struct.btree_node*, align 8
  %15 = alloca %struct.dm_btree_value_type, align 8
  store %struct.dm_btree_info* %0, %struct.dm_btree_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load %struct.dm_btree_info*, %struct.dm_btree_info** %5, align 8
  %17 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %20 = load %struct.dm_btree_info*, %struct.dm_btree_info** %5, align 8
  %21 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @init_le64_type(i32 %22, %struct.dm_btree_value_type* %15)
  %24 = load %struct.dm_btree_info*, %struct.dm_btree_info** %5, align 8
  %25 = call i32 @init_shadow_spine(%struct.shadow_spine* %13, %struct.dm_btree_info* %24)
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %100, %4
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.dm_btree_info*, %struct.dm_btree_info** %5, align 8
  %29 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %103

32:                                               ; preds = %26
  %33 = load %struct.dm_btree_info*, %struct.dm_btree_info** %5, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.dm_btree_info*, %struct.dm_btree_info** %5, align 8
  %39 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %38, i32 0, i32 1
  br label %41

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %37
  %42 = phi %struct.dm_btree_value_type* [ %39, %37 ], [ %15, %40 ]
  %43 = load i32, i32* %6, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %9, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @remove_raw(%struct.shadow_spine* %13, %struct.dm_btree_info* %33, %struct.dm_btree_value_type* %42, i32 %43, i32 %48, i32* %11)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  br label %103

53:                                               ; preds = %41
  %54 = call i32 @shadow_current(%struct.shadow_spine* %13)
  %55 = call %struct.btree_node* @dm_block_data(i32 %54)
  store %struct.btree_node* %55, %struct.btree_node** %14, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.btree_node*, %struct.btree_node** %14, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @value64(%struct.btree_node* %60, i32 %61)
  store i32 %62, i32* %6, align 4
  br label %100

63:                                               ; preds = %53
  %64 = load i32, i32* %11, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.btree_node*, %struct.btree_node** %14, align 8
  %69 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @le32_to_cpu(i32 %71)
  %73 = icmp sge i32 %67, %72
  br label %74

74:                                               ; preds = %66, %63
  %75 = phi i1 [ true, %63 ], [ %73, %66 ]
  %76 = zext i1 %75 to i32
  %77 = call i32 @BUG_ON(i32 %76)
  %78 = load %struct.dm_btree_info*, %struct.dm_btree_info** %5, align 8
  %79 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.dm_btree_value_type, %struct.dm_btree_value_type* %79, i32 0, i32 1
  %81 = load i32 (i32, i32)*, i32 (i32, i32)** %80, align 8
  %82 = icmp ne i32 (i32, i32)* %81, null
  br i1 %82, label %83, label %96

83:                                               ; preds = %74
  %84 = load %struct.dm_btree_info*, %struct.dm_btree_info** %5, align 8
  %85 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.dm_btree_value_type, %struct.dm_btree_value_type* %85, i32 0, i32 1
  %87 = load i32 (i32, i32)*, i32 (i32, i32)** %86, align 8
  %88 = load %struct.dm_btree_info*, %struct.dm_btree_info** %5, align 8
  %89 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.dm_btree_value_type, %struct.dm_btree_value_type* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.btree_node*, %struct.btree_node** %14, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @value_ptr(%struct.btree_node* %92, i32 %93)
  %95 = call i32 %87(i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %83, %74
  %97 = load %struct.btree_node*, %struct.btree_node** %14, align 8
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @delete_at(%struct.btree_node* %97, i32 %98)
  br label %100

100:                                              ; preds = %96, %59
  %101 = load i32, i32* %9, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %26

103:                                              ; preds = %52, %26
  %104 = call i32 @shadow_root(%struct.shadow_spine* %13)
  %105 = load i32*, i32** %8, align 8
  store i32 %104, i32* %105, align 4
  %106 = call i32 @exit_shadow_spine(%struct.shadow_spine* %13)
  %107 = load i32, i32* %12, align 4
  ret i32 %107
}

declare dso_local i32 @init_le64_type(i32, %struct.dm_btree_value_type*) #1

declare dso_local i32 @init_shadow_spine(%struct.shadow_spine*, %struct.dm_btree_info*) #1

declare dso_local i32 @remove_raw(%struct.shadow_spine*, %struct.dm_btree_info*, %struct.dm_btree_value_type*, i32, i32, i32*) #1

declare dso_local %struct.btree_node* @dm_block_data(i32) #1

declare dso_local i32 @shadow_current(%struct.shadow_spine*) #1

declare dso_local i32 @value64(%struct.btree_node*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @value_ptr(%struct.btree_node*, i32) #1

declare dso_local i32 @delete_at(%struct.btree_node*, i32) #1

declare dso_local i32 @shadow_root(%struct.shadow_spine*) #1

declare dso_local i32 @exit_shadow_spine(%struct.shadow_spine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
