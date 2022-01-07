; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree-remove.c_remove_nearest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree-remove.c_remove_nearest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shadow_spine = type { i32 }
%struct.dm_btree_info = type { i32 }
%struct.dm_btree_value_type = type { i32 }
%struct.btree_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@LEAF_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shadow_spine*, %struct.dm_btree_info*, %struct.dm_btree_value_type*, i32, i32, i32*)* @remove_nearest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_nearest(%struct.shadow_spine* %0, %struct.dm_btree_info* %1, %struct.dm_btree_value_type* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.shadow_spine*, align 8
  %9 = alloca %struct.dm_btree_info*, align 8
  %10 = alloca %struct.dm_btree_value_type*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.btree_node*, align 8
  %17 = alloca i32, align 4
  store %struct.shadow_spine* %0, %struct.shadow_spine** %8, align 8
  store %struct.dm_btree_info* %1, %struct.dm_btree_info** %9, align 8
  store %struct.dm_btree_value_type* %2, %struct.dm_btree_value_type** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %18 = load i32*, i32** %13, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %14, align 4
  br label %20

20:                                               ; preds = %86, %6
  %21 = load %struct.shadow_spine*, %struct.shadow_spine** %8, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %10, align 8
  %24 = call i32 @shadow_step(%struct.shadow_spine* %21, i32 %22, %struct.dm_btree_value_type* %23)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %93

28:                                               ; preds = %20
  %29 = load %struct.shadow_spine*, %struct.shadow_spine** %8, align 8
  %30 = call i64 @shadow_has_parent(%struct.shadow_spine* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load %struct.shadow_spine*, %struct.shadow_spine** %8, align 8
  %34 = call i32 @shadow_current(%struct.shadow_spine* %33)
  %35 = call i32 @dm_block_location(i32 %34)
  %36 = call i32 @cpu_to_le64(i32 %35)
  store i32 %36, i32* %17, align 4
  %37 = load %struct.shadow_spine*, %struct.shadow_spine** %8, align 8
  %38 = call i32 @shadow_parent(%struct.shadow_spine* %37)
  %39 = call %struct.btree_node* @dm_block_data(i32 %38)
  %40 = load i32, i32* %14, align 4
  %41 = call i32 @value_ptr(%struct.btree_node* %39, i32 %40)
  %42 = call i32 @memcpy(i32 %41, i32* %17, i32 4)
  br label %43

43:                                               ; preds = %32, %28
  %44 = load %struct.shadow_spine*, %struct.shadow_spine** %8, align 8
  %45 = call i32 @shadow_current(%struct.shadow_spine* %44)
  %46 = call %struct.btree_node* @dm_block_data(i32 %45)
  store %struct.btree_node* %46, %struct.btree_node** %16, align 8
  %47 = load %struct.btree_node*, %struct.btree_node** %16, align 8
  %48 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le32_to_cpu(i32 %50)
  %52 = load i32, i32* @LEAF_NODE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %43
  %56 = load %struct.btree_node*, %struct.btree_node** %16, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @lower_bound(%struct.btree_node* %56, i32 %57)
  %59 = load i32*, i32** %13, align 8
  store i32 %58, i32* %59, align 4
  store i32 0, i32* %7, align 4
  br label %95

60:                                               ; preds = %43
  %61 = load %struct.shadow_spine*, %struct.shadow_spine** %8, align 8
  %62 = load %struct.dm_btree_info*, %struct.dm_btree_info** %9, align 8
  %63 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %10, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @rebalance_children(%struct.shadow_spine* %61, %struct.dm_btree_info* %62, %struct.dm_btree_value_type* %63, i32 %64)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %93

69:                                               ; preds = %60
  %70 = load %struct.shadow_spine*, %struct.shadow_spine** %8, align 8
  %71 = call i32 @shadow_current(%struct.shadow_spine* %70)
  %72 = call %struct.btree_node* @dm_block_data(i32 %71)
  store %struct.btree_node* %72, %struct.btree_node** %16, align 8
  %73 = load %struct.btree_node*, %struct.btree_node** %16, align 8
  %74 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @le32_to_cpu(i32 %76)
  %78 = load i32, i32* @LEAF_NODE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %69
  %82 = load %struct.btree_node*, %struct.btree_node** %16, align 8
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @lower_bound(%struct.btree_node* %82, i32 %83)
  %85 = load i32*, i32** %13, align 8
  store i32 %84, i32* %85, align 4
  store i32 0, i32* %7, align 4
  br label %95

86:                                               ; preds = %69
  %87 = load %struct.btree_node*, %struct.btree_node** %16, align 8
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @lower_bound(%struct.btree_node* %87, i32 %88)
  store i32 %89, i32* %14, align 4
  %90 = load %struct.btree_node*, %struct.btree_node** %16, align 8
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @value64(%struct.btree_node* %90, i32 %91)
  store i32 %92, i32* %11, align 4
  br label %20

93:                                               ; preds = %68, %27
  %94 = load i32, i32* %15, align 4
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %93, %81, %55
  %96 = load i32, i32* %7, align 4
  ret i32 %96
}

declare dso_local i32 @shadow_step(%struct.shadow_spine*, i32, %struct.dm_btree_value_type*) #1

declare dso_local i64 @shadow_has_parent(%struct.shadow_spine*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @dm_block_location(i32) #1

declare dso_local i32 @shadow_current(%struct.shadow_spine*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @value_ptr(%struct.btree_node*, i32) #1

declare dso_local %struct.btree_node* @dm_block_data(i32) #1

declare dso_local i32 @shadow_parent(%struct.shadow_spine*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @lower_bound(%struct.btree_node*, i32) #1

declare dso_local i32 @rebalance_children(%struct.shadow_spine*, %struct.dm_btree_info*, %struct.dm_btree_value_type*, i32) #1

declare dso_local i32 @value64(%struct.btree_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
