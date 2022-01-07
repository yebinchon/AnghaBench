; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree.c_btree_insert_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree.c_btree_insert_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shadow_spine = type { i32 }
%struct.dm_btree_value_type = type { i32 }
%struct.btree_node = type { i8**, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 }

@LEAF_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shadow_spine*, i32, %struct.dm_btree_value_type*, i64, i32*)* @btree_insert_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btree_insert_raw(%struct.shadow_spine* %0, i32 %1, %struct.dm_btree_value_type* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.shadow_spine*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dm_btree_value_type*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.btree_node*, align 8
  %16 = alloca i8*, align 8
  store %struct.shadow_spine* %0, %struct.shadow_spine** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.dm_btree_value_type* %2, %struct.dm_btree_value_type** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %13, align 4
  store i32 1, i32* %14, align 4
  br label %19

19:                                               ; preds = %107, %5
  %20 = load %struct.shadow_spine*, %struct.shadow_spine** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %9, align 8
  %23 = call i32 @shadow_step(%struct.shadow_spine* %20, i32 %21, %struct.dm_btree_value_type* %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %6, align 4
  br label %131

28:                                               ; preds = %19
  %29 = load %struct.shadow_spine*, %struct.shadow_spine** %7, align 8
  %30 = call i32 @shadow_current(%struct.shadow_spine* %29)
  %31 = call %struct.btree_node* @dm_block_data(i32 %30)
  store %struct.btree_node* %31, %struct.btree_node** %15, align 8
  %32 = load %struct.shadow_spine*, %struct.shadow_spine** %7, align 8
  %33 = call i64 @shadow_has_parent(%struct.shadow_spine* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %28
  %36 = load i32, i32* %13, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  %39 = load %struct.shadow_spine*, %struct.shadow_spine** %7, align 8
  %40 = call i32 @shadow_current(%struct.shadow_spine* %39)
  %41 = call i64 @dm_block_location(i32 %40)
  %42 = call i8* @cpu_to_le64(i64 %41)
  store i8* %42, i8** %16, align 8
  %43 = call i32 @__dm_bless_for_disk(i8** %16)
  %44 = load %struct.shadow_spine*, %struct.shadow_spine** %7, align 8
  %45 = call i32 @shadow_parent(%struct.shadow_spine* %44)
  %46 = call %struct.btree_node* @dm_block_data(i32 %45)
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @value_ptr(%struct.btree_node* %46, i32 %47)
  %49 = call i32 @memcpy_disk(i32 %48, i8** %16, i32 8)
  br label %50

50:                                               ; preds = %38, %35, %28
  %51 = load %struct.shadow_spine*, %struct.shadow_spine** %7, align 8
  %52 = call i32 @shadow_current(%struct.shadow_spine* %51)
  %53 = call %struct.btree_node* @dm_block_data(i32 %52)
  store %struct.btree_node* %53, %struct.btree_node** %15, align 8
  %54 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %55 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %59 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %57, %61
  br i1 %62, label %63, label %81

63:                                               ; preds = %50
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load %struct.shadow_spine*, %struct.shadow_spine** %7, align 8
  %68 = load i64, i64* %10, align 8
  %69 = call i32 @btree_split_beneath(%struct.shadow_spine* %67, i64 %68)
  store i32 %69, i32* %12, align 4
  br label %75

70:                                               ; preds = %63
  %71 = load %struct.shadow_spine*, %struct.shadow_spine** %7, align 8
  %72 = load i32, i32* %13, align 4
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @btree_split_sibling(%struct.shadow_spine* %71, i32 %72, i64 %73)
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %70, %66
  %76 = load i32, i32* %12, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %6, align 4
  br label %131

80:                                               ; preds = %75
  br label %81

81:                                               ; preds = %80, %50
  %82 = load %struct.shadow_spine*, %struct.shadow_spine** %7, align 8
  %83 = call i32 @shadow_current(%struct.shadow_spine* %82)
  %84 = call %struct.btree_node* @dm_block_data(i32 %83)
  store %struct.btree_node* %84, %struct.btree_node** %15, align 8
  %85 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %86 = load i64, i64* %10, align 8
  %87 = call i32 @lower_bound(%struct.btree_node* %85, i64 %86)
  store i32 %87, i32* %13, align 4
  %88 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %89 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @le32_to_cpu(i32 %91)
  %93 = load i32, i32* @LEAF_NODE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %81
  br label %111

97:                                               ; preds = %81
  %98 = load i32, i32* %13, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load i64, i64* %10, align 8
  %102 = call i8* @cpu_to_le64(i64 %101)
  %103 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %104 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %103, i32 0, i32 0
  %105 = load i8**, i8*** %104, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 0
  store i8* %102, i8** %106, align 8
  store i32 0, i32* %13, align 4
  br label %107

107:                                              ; preds = %100, %97
  %108 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %109 = load i32, i32* %13, align 4
  %110 = call i32 @value64(%struct.btree_node* %108, i32 %109)
  store i32 %110, i32* %8, align 4
  store i32 0, i32* %14, align 4
  br label %19

111:                                              ; preds = %96
  %112 = load i32, i32* %13, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %125, label %114

114:                                              ; preds = %111
  %115 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %116 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %115, i32 0, i32 0
  %117 = load i8**, i8*** %116, align 8
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %117, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = call i64 @le64_to_cpu(i8* %121)
  %123 = load i64, i64* %10, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %114, %111
  %126 = load i32, i32* %13, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %13, align 4
  br label %128

128:                                              ; preds = %125, %114
  %129 = load i32, i32* %13, align 4
  %130 = load i32*, i32** %11, align 8
  store i32 %129, i32* %130, align 4
  store i32 0, i32* %6, align 4
  br label %131

131:                                              ; preds = %128, %78, %26
  %132 = load i32, i32* %6, align 4
  ret i32 %132
}

declare dso_local i32 @shadow_step(%struct.shadow_spine*, i32, %struct.dm_btree_value_type*) #1

declare dso_local %struct.btree_node* @dm_block_data(i32) #1

declare dso_local i32 @shadow_current(%struct.shadow_spine*) #1

declare dso_local i64 @shadow_has_parent(%struct.shadow_spine*) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i64 @dm_block_location(i32) #1

declare dso_local i32 @__dm_bless_for_disk(i8**) #1

declare dso_local i32 @memcpy_disk(i32, i8**, i32) #1

declare dso_local i32 @value_ptr(%struct.btree_node*, i32) #1

declare dso_local i32 @shadow_parent(%struct.shadow_spine*) #1

declare dso_local i32 @btree_split_beneath(%struct.shadow_spine*, i64) #1

declare dso_local i32 @btree_split_sibling(%struct.shadow_spine*, i32, i64) #1

declare dso_local i32 @lower_bound(%struct.btree_node*, i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @value64(%struct.btree_node*, i32) #1

declare dso_local i64 @le64_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
