; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree-remove.c_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree-remove.c_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_btree_info = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 (i32, i32)* }
%struct.shadow_spine = type { i32 }
%struct.btree_node = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.dm_btree_value_type = type { i32 }

@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_btree_info*, i32, i64*, i64, i32*, i32*)* @remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_one(%struct.dm_btree_info* %0, i32 %1, i64* %2, i64 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.dm_btree_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.shadow_spine, align 4
  %18 = alloca %struct.btree_node*, align 8
  %19 = alloca %struct.dm_btree_value_type, align 4
  %20 = alloca i64, align 8
  store %struct.dm_btree_info* %0, %struct.dm_btree_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %21 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %22 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %25 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %26 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @init_le64_type(i32 %27, %struct.dm_btree_value_type* %19)
  %29 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %30 = call i32 @init_shadow_spine(%struct.shadow_spine* %17, %struct.dm_btree_info* %29)
  store i32 0, i32* %13, align 4
  br label %31

31:                                               ; preds = %53, %6
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %56

35:                                               ; preds = %31
  %36 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i64*, i64** %9, align 8
  %39 = load i32, i32* %13, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @remove_raw(%struct.shadow_spine* %17, %struct.dm_btree_info* %36, %struct.dm_btree_value_type* %19, i32 %37, i64 %42, i32* %15)
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %16, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %140

47:                                               ; preds = %35
  %48 = call i32 @shadow_current(%struct.shadow_spine* %17)
  %49 = call %struct.btree_node* @dm_block_data(i32 %48)
  store %struct.btree_node* %49, %struct.btree_node** %18, align 8
  %50 = load %struct.btree_node*, %struct.btree_node** %18, align 8
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @value64(%struct.btree_node* %50, i32 %51)
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %47
  %54 = load i32, i32* %13, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %13, align 4
  br label %31

56:                                               ; preds = %31
  %57 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %58 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %59 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %58, i32 0, i32 1
  %60 = load i32, i32* %8, align 4
  %61 = load i64*, i64** %9, align 8
  %62 = load i32, i32* %14, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @remove_nearest(%struct.shadow_spine* %17, %struct.dm_btree_info* %57, %struct.TYPE_4__* %59, i32 %60, i64 %65, i32* %15)
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %16, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %56
  br label %140

70:                                               ; preds = %56
  %71 = call i32 @shadow_current(%struct.shadow_spine* %17)
  %72 = call %struct.btree_node* @dm_block_data(i32 %71)
  store %struct.btree_node* %72, %struct.btree_node** %18, align 8
  %73 = load i32, i32* %15, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i32 0, i32* %15, align 4
  br label %76

76:                                               ; preds = %75, %70
  %77 = load i32, i32* %15, align 4
  %78 = load %struct.btree_node*, %struct.btree_node** %18, align 8
  %79 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @le32_to_cpu(i32 %81)
  %83 = icmp sge i32 %77, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %76
  %85 = load i32, i32* @ENODATA, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %16, align 4
  br label %140

87:                                               ; preds = %76
  %88 = load %struct.btree_node*, %struct.btree_node** %18, align 8
  %89 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @le64_to_cpu(i32 %94)
  store i64 %95, i64* %20, align 8
  %96 = load i64, i64* %20, align 8
  %97 = load i64*, i64** %9, align 8
  %98 = load i32, i32* %14, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = icmp sge i64 %96, %101
  br i1 %102, label %103, label %136

103:                                              ; preds = %87
  %104 = load i64, i64* %20, align 8
  %105 = load i64, i64* %10, align 8
  %106 = icmp slt i64 %104, %105
  br i1 %106, label %107, label %136

107:                                              ; preds = %103
  %108 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %109 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32 (i32, i32)*, i32 (i32, i32)** %110, align 8
  %112 = icmp ne i32 (i32, i32)* %111, null
  br i1 %112, label %113, label %126

113:                                              ; preds = %107
  %114 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %115 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i32 (i32, i32)*, i32 (i32, i32)** %116, align 8
  %118 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %119 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.btree_node*, %struct.btree_node** %18, align 8
  %123 = load i32, i32* %15, align 4
  %124 = call i32 @value_ptr(%struct.btree_node* %122, i32 %123)
  %125 = call i32 %117(i32 %121, i32 %124)
  br label %126

126:                                              ; preds = %113, %107
  %127 = load %struct.btree_node*, %struct.btree_node** %18, align 8
  %128 = load i32, i32* %15, align 4
  %129 = call i32 @delete_at(%struct.btree_node* %127, i32 %128)
  %130 = load i64, i64* %20, align 8
  %131 = add i64 %130, 1
  %132 = load i64*, i64** %9, align 8
  %133 = load i32, i32* %14, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  store i64 %131, i64* %135, align 8
  br label %139

136:                                              ; preds = %103, %87
  %137 = load i32, i32* @ENODATA, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %16, align 4
  br label %139

139:                                              ; preds = %136, %126
  br label %140

140:                                              ; preds = %139, %84, %69, %46
  %141 = call i32 @shadow_root(%struct.shadow_spine* %17)
  %142 = load i32*, i32** %11, align 8
  store i32 %141, i32* %142, align 4
  %143 = call i32 @exit_shadow_spine(%struct.shadow_spine* %17)
  %144 = load i32, i32* %16, align 4
  ret i32 %144
}

declare dso_local i32 @init_le64_type(i32, %struct.dm_btree_value_type*) #1

declare dso_local i32 @init_shadow_spine(%struct.shadow_spine*, %struct.dm_btree_info*) #1

declare dso_local i32 @remove_raw(%struct.shadow_spine*, %struct.dm_btree_info*, %struct.dm_btree_value_type*, i32, i64, i32*) #1

declare dso_local %struct.btree_node* @dm_block_data(i32) #1

declare dso_local i32 @shadow_current(%struct.shadow_spine*) #1

declare dso_local i32 @value64(%struct.btree_node*, i32) #1

declare dso_local i32 @remove_nearest(%struct.shadow_spine*, %struct.dm_btree_info*, %struct.TYPE_4__*, i32, i64, i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

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
