; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree.c_btree_split_sibling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree.c_btree_split_sibling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shadow_spine = type { %struct.dm_block**, %struct.TYPE_7__* }
%struct.dm_block = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.btree_node = type { i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i32, i32, i8* }

@INTERNAL_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shadow_spine*, i32, i64)* @btree_split_sibling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btree_split_sibling(%struct.shadow_spine* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.shadow_spine*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dm_block*, align 8
  %13 = alloca %struct.dm_block*, align 8
  %14 = alloca %struct.dm_block*, align 8
  %15 = alloca %struct.btree_node*, align 8
  %16 = alloca %struct.btree_node*, align 8
  %17 = alloca %struct.btree_node*, align 8
  %18 = alloca i32, align 4
  store %struct.shadow_spine* %0, %struct.shadow_spine** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %19 = load %struct.shadow_spine*, %struct.shadow_spine** %5, align 8
  %20 = call %struct.dm_block* @shadow_current(%struct.shadow_spine* %19)
  store %struct.dm_block* %20, %struct.dm_block** %12, align 8
  %21 = load %struct.shadow_spine*, %struct.shadow_spine** %5, align 8
  %22 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %21, i32 0, i32 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = call i32 @new_block(%struct.TYPE_7__* %23, %struct.dm_block** %13)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %187

29:                                               ; preds = %3
  %30 = load %struct.dm_block*, %struct.dm_block** %12, align 8
  %31 = call %struct.btree_node* @dm_block_data(%struct.dm_block* %30)
  store %struct.btree_node* %31, %struct.btree_node** %15, align 8
  %32 = load %struct.dm_block*, %struct.dm_block** %13, align 8
  %33 = call %struct.btree_node* @dm_block_data(%struct.dm_block* %32)
  store %struct.btree_node* %33, %struct.btree_node** %16, align 8
  %34 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %35 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 3
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @le32_to_cpu(i8* %37)
  %39 = sdiv i32 %38, 2
  store i32 %39, i32* %10, align 4
  %40 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %41 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @le32_to_cpu(i8* %43)
  %45 = load i32, i32* %10, align 4
  %46 = sub i32 %44, %45
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i8* @cpu_to_le32(i32 %47)
  %49 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %50 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  store i8* %48, i8** %51, align 8
  %52 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %53 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.btree_node*, %struct.btree_node** %16, align 8
  %57 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i8* %55, i8** %58, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i8* @cpu_to_le32(i32 %59)
  %61 = load %struct.btree_node*, %struct.btree_node** %16, align 8
  %62 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 3
  store i8* %60, i8** %63, align 8
  %64 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %65 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.btree_node*, %struct.btree_node** %16, align 8
  %69 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  store i32 %67, i32* %70, align 4
  %71 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %72 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.btree_node*, %struct.btree_node** %16, align 8
  %76 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 8
  %78 = load %struct.btree_node*, %struct.btree_node** %16, align 8
  %79 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %82 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %11, align 4
  %88 = zext i32 %87 to i64
  %89 = mul i64 %88, 4
  %90 = call i32 @memcpy(i32* %80, i32* %86, i64 %89)
  %91 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %92 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @le32_to_cpu(i8* %94)
  %96 = load i32, i32* @INTERNAL_NODE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %29
  br label %108

100:                                              ; preds = %29
  %101 = load %struct.shadow_spine*, %struct.shadow_spine** %5, align 8
  %102 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %101, i32 0, i32 1
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  br label %108

108:                                              ; preds = %100, %99
  %109 = phi i64 [ 8, %99 ], [ %107, %100 ]
  store i64 %109, i64* %9, align 8
  %110 = load %struct.btree_node*, %struct.btree_node** %16, align 8
  %111 = call i32* @value_ptr(%struct.btree_node* %110, i32 0)
  %112 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %113 = load i32, i32* %10, align 4
  %114 = call i32* @value_ptr(%struct.btree_node* %112, i32 %113)
  %115 = load i64, i64* %9, align 8
  %116 = load i32, i32* %11, align 4
  %117 = zext i32 %116 to i64
  %118 = mul i64 %115, %117
  %119 = call i32 @memcpy(i32* %111, i32* %114, i64 %118)
  %120 = load %struct.shadow_spine*, %struct.shadow_spine** %5, align 8
  %121 = call %struct.dm_block* @shadow_parent(%struct.shadow_spine* %120)
  store %struct.dm_block* %121, %struct.dm_block** %14, align 8
  %122 = load %struct.dm_block*, %struct.dm_block** %14, align 8
  %123 = call %struct.btree_node* @dm_block_data(%struct.dm_block* %122)
  store %struct.btree_node* %123, %struct.btree_node** %17, align 8
  %124 = load %struct.dm_block*, %struct.dm_block** %12, align 8
  %125 = call i32 @dm_block_location(%struct.dm_block* %124)
  %126 = call i32 @cpu_to_le64(i32 %125)
  store i32 %126, i32* %18, align 4
  %127 = call i32 @__dm_bless_for_disk(i32* %18)
  %128 = load %struct.btree_node*, %struct.btree_node** %17, align 8
  %129 = load i32, i32* %6, align 4
  %130 = call i32* @value_ptr(%struct.btree_node* %128, i32 %129)
  %131 = call i32 @memcpy_disk(i32* %130, i32* %18, i32 4)
  %132 = load %struct.dm_block*, %struct.dm_block** %13, align 8
  %133 = call i32 @dm_block_location(%struct.dm_block* %132)
  %134 = call i32 @cpu_to_le64(i32 %133)
  store i32 %134, i32* %18, align 4
  %135 = call i32 @__dm_bless_for_disk(i32* %18)
  %136 = load %struct.btree_node*, %struct.btree_node** %17, align 8
  %137 = load i32, i32* %6, align 4
  %138 = add i32 %137, 1
  %139 = load %struct.btree_node*, %struct.btree_node** %16, align 8
  %140 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = call i64 @le64_to_cpu(i32 %143)
  %145 = call i32 @insert_at(i32 4, %struct.btree_node* %136, i32 %138, i64 %144, i32* %18)
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %108
  %149 = load %struct.shadow_spine*, %struct.shadow_spine** %5, align 8
  %150 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %149, i32 0, i32 1
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = load %struct.dm_block*, %struct.dm_block** %13, align 8
  %153 = call i32 @unlock_block(%struct.TYPE_7__* %151, %struct.dm_block* %152)
  %154 = load i32, i32* %8, align 4
  store i32 %154, i32* %4, align 4
  br label %187

155:                                              ; preds = %108
  %156 = load i64, i64* %7, align 8
  %157 = load %struct.btree_node*, %struct.btree_node** %16, align 8
  %158 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  %161 = load i32, i32* %160, align 4
  %162 = call i64 @le64_to_cpu(i32 %161)
  %163 = icmp slt i64 %156, %162
  br i1 %163, label %164, label %175

164:                                              ; preds = %155
  %165 = load %struct.shadow_spine*, %struct.shadow_spine** %5, align 8
  %166 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %165, i32 0, i32 1
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %166, align 8
  %168 = load %struct.dm_block*, %struct.dm_block** %13, align 8
  %169 = call i32 @unlock_block(%struct.TYPE_7__* %167, %struct.dm_block* %168)
  %170 = load %struct.dm_block*, %struct.dm_block** %12, align 8
  %171 = load %struct.shadow_spine*, %struct.shadow_spine** %5, align 8
  %172 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %171, i32 0, i32 0
  %173 = load %struct.dm_block**, %struct.dm_block*** %172, align 8
  %174 = getelementptr inbounds %struct.dm_block*, %struct.dm_block** %173, i64 1
  store %struct.dm_block* %170, %struct.dm_block** %174, align 8
  br label %186

175:                                              ; preds = %155
  %176 = load %struct.shadow_spine*, %struct.shadow_spine** %5, align 8
  %177 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %176, i32 0, i32 1
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %177, align 8
  %179 = load %struct.dm_block*, %struct.dm_block** %12, align 8
  %180 = call i32 @unlock_block(%struct.TYPE_7__* %178, %struct.dm_block* %179)
  %181 = load %struct.dm_block*, %struct.dm_block** %13, align 8
  %182 = load %struct.shadow_spine*, %struct.shadow_spine** %5, align 8
  %183 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %182, i32 0, i32 0
  %184 = load %struct.dm_block**, %struct.dm_block*** %183, align 8
  %185 = getelementptr inbounds %struct.dm_block*, %struct.dm_block** %184, i64 1
  store %struct.dm_block* %181, %struct.dm_block** %185, align 8
  br label %186

186:                                              ; preds = %175, %164
  store i32 0, i32* %4, align 4
  br label %187

187:                                              ; preds = %186, %148, %27
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local %struct.dm_block* @shadow_current(%struct.shadow_spine*) #1

declare dso_local i32 @new_block(%struct.TYPE_7__*, %struct.dm_block**) #1

declare dso_local %struct.btree_node* @dm_block_data(%struct.dm_block*) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32* @value_ptr(%struct.btree_node*, i32) #1

declare dso_local %struct.dm_block* @shadow_parent(%struct.shadow_spine*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @dm_block_location(%struct.dm_block*) #1

declare dso_local i32 @__dm_bless_for_disk(i32*) #1

declare dso_local i32 @memcpy_disk(i32*, i32*, i32) #1

declare dso_local i32 @insert_at(i32, %struct.btree_node*, i32, i64, i32*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @unlock_block(%struct.TYPE_7__*, %struct.dm_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
