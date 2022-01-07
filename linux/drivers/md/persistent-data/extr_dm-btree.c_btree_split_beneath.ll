; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree.c_btree_split_beneath.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree.c_btree_split_beneath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shadow_spine = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.dm_block = type { i32 }
%struct.btree_node = type { i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i8* }

@INTERNAL_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shadow_spine*, i32)* @btree_split_beneath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btree_split_beneath(%struct.shadow_spine* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.shadow_spine*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dm_block*, align 8
  %11 = alloca %struct.dm_block*, align 8
  %12 = alloca %struct.dm_block*, align 8
  %13 = alloca %struct.btree_node*, align 8
  %14 = alloca %struct.btree_node*, align 8
  %15 = alloca %struct.btree_node*, align 8
  %16 = alloca i32, align 4
  store %struct.shadow_spine* %0, %struct.shadow_spine** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load %struct.shadow_spine*, %struct.shadow_spine** %4, align 8
  %18 = call %struct.dm_block* @shadow_current(%struct.shadow_spine* %17)
  store %struct.dm_block* %18, %struct.dm_block** %12, align 8
  %19 = load %struct.dm_block*, %struct.dm_block** %12, align 8
  %20 = call %struct.btree_node* @dm_block_data(%struct.dm_block* %19)
  store %struct.btree_node* %20, %struct.btree_node** %13, align 8
  %21 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %22 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 3
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @le32_to_cpu(i8* %24)
  %26 = load i32, i32* @INTERNAL_NODE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %38

30:                                               ; preds = %2
  %31 = load %struct.shadow_spine*, %struct.shadow_spine** %4, align 8
  %32 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  br label %38

38:                                               ; preds = %30, %29
  %39 = phi i64 [ 4, %29 ], [ %37, %30 ]
  store i64 %39, i64* %7, align 8
  %40 = load %struct.shadow_spine*, %struct.shadow_spine** %4, align 8
  %41 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = call i32 @new_block(%struct.TYPE_7__* %42, %struct.dm_block** %10)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %245

48:                                               ; preds = %38
  %49 = load %struct.dm_block*, %struct.dm_block** %10, align 8
  %50 = call %struct.btree_node* @dm_block_data(%struct.dm_block* %49)
  store %struct.btree_node* %50, %struct.btree_node** %14, align 8
  %51 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %52 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @le32_to_cpu(i8* %54)
  %56 = udiv i32 %55, 2
  store i32 %56, i32* %8, align 4
  %57 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %58 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 3
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.btree_node*, %struct.btree_node** %14, align 8
  %62 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  store i8* %60, i8** %63, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i8* @cpu_to_le32(i32 %64)
  %66 = load %struct.btree_node*, %struct.btree_node** %14, align 8
  %67 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  store i8* %65, i8** %68, align 8
  %69 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %70 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.btree_node*, %struct.btree_node** %14, align 8
  %74 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  store i8* %72, i8** %75, align 8
  %76 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %77 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.btree_node*, %struct.btree_node** %14, align 8
  %81 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  store i8* %79, i8** %82, align 8
  %83 = load %struct.btree_node*, %struct.btree_node** %14, align 8
  %84 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %87 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = zext i32 %89 to i64
  %91 = mul i64 %90, 4
  %92 = trunc i64 %91 to i32
  %93 = call i32 @memcpy(i32* %85, i32* %88, i32 %92)
  %94 = load %struct.btree_node*, %struct.btree_node** %14, align 8
  %95 = call i32* @value_ptr(%struct.btree_node* %94, i32 0)
  %96 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %97 = call i32* @value_ptr(%struct.btree_node* %96, i32 0)
  %98 = load i32, i32* %8, align 4
  %99 = zext i32 %98 to i64
  %100 = load i64, i64* %7, align 8
  %101 = mul i64 %99, %100
  %102 = trunc i64 %101 to i32
  %103 = call i32 @memcpy(i32* %95, i32* %97, i32 %102)
  %104 = load %struct.shadow_spine*, %struct.shadow_spine** %4, align 8
  %105 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %104, i32 0, i32 0
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = call i32 @new_block(%struct.TYPE_7__* %106, %struct.dm_block** %11)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %48
  %111 = load %struct.shadow_spine*, %struct.shadow_spine** %4, align 8
  %112 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %111, i32 0, i32 0
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = load %struct.dm_block*, %struct.dm_block** %10, align 8
  %115 = call i32 @unlock_block(%struct.TYPE_7__* %113, %struct.dm_block* %114)
  %116 = load i32, i32* %6, align 4
  store i32 %116, i32* %3, align 4
  br label %245

117:                                              ; preds = %48
  %118 = load %struct.dm_block*, %struct.dm_block** %11, align 8
  %119 = call %struct.btree_node* @dm_block_data(%struct.dm_block* %118)
  store %struct.btree_node* %119, %struct.btree_node** %15, align 8
  %120 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %121 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 2
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @le32_to_cpu(i8* %123)
  %125 = load i32, i32* %8, align 4
  %126 = sub i32 %124, %125
  store i32 %126, i32* %9, align 4
  %127 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %128 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 3
  %130 = load i8*, i8** %129, align 8
  %131 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %132 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 3
  store i8* %130, i8** %133, align 8
  %134 = load i32, i32* %9, align 4
  %135 = call i8* @cpu_to_le32(i32 %134)
  %136 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %137 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 2
  store i8* %135, i8** %138, align 8
  %139 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %140 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %144 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  store i8* %142, i8** %145, align 8
  %146 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %147 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %151 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  store i8* %149, i8** %152, align 8
  %153 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %154 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %157 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %8, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %9, align 4
  %163 = zext i32 %162 to i64
  %164 = mul i64 %163, 4
  %165 = trunc i64 %164 to i32
  %166 = call i32 @memcpy(i32* %155, i32* %161, i32 %165)
  %167 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %168 = call i32* @value_ptr(%struct.btree_node* %167, i32 0)
  %169 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %170 = load i32, i32* %8, align 4
  %171 = call i32* @value_ptr(%struct.btree_node* %169, i32 %170)
  %172 = load i32, i32* %9, align 4
  %173 = zext i32 %172 to i64
  %174 = load i64, i64* %7, align 8
  %175 = mul i64 %173, %174
  %176 = trunc i64 %175 to i32
  %177 = call i32 @memcpy(i32* %168, i32* %171, i32 %176)
  %178 = load i32, i32* @INTERNAL_NODE, align 4
  %179 = call i8* @cpu_to_le32(i32 %178)
  %180 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %181 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 3
  store i8* %179, i8** %182, align 8
  %183 = call i8* @cpu_to_le32(i32 2)
  %184 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %185 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 2
  store i8* %183, i8** %186, align 8
  %187 = load %struct.shadow_spine*, %struct.shadow_spine** %4, align 8
  %188 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %187, i32 0, i32 0
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @dm_tm_get_bm(i32 %191)
  %193 = call i32 @dm_bm_block_size(i32 %192)
  %194 = call i32 @calc_max_entries(i32 4, i32 %193)
  %195 = call i8* @cpu_to_le32(i32 %194)
  %196 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %197 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 1
  store i8* %195, i8** %198, align 8
  %199 = call i8* @cpu_to_le32(i32 4)
  %200 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %201 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  store i8* %199, i8** %202, align 8
  %203 = load %struct.dm_block*, %struct.dm_block** %10, align 8
  %204 = call i32 @dm_block_location(%struct.dm_block* %203)
  %205 = call i32 @cpu_to_le64(i32 %204)
  store i32 %205, i32* %16, align 4
  %206 = call i32 @__dm_bless_for_disk(i32* %16)
  %207 = load %struct.btree_node*, %struct.btree_node** %14, align 8
  %208 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %213 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 0
  store i32 %211, i32* %215, align 4
  %216 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %217 = call i32* @value_ptr(%struct.btree_node* %216, i32 0)
  %218 = call i32 @memcpy_disk(i32* %217, i32* %16, i32 4)
  %219 = load %struct.dm_block*, %struct.dm_block** %11, align 8
  %220 = call i32 @dm_block_location(%struct.dm_block* %219)
  %221 = call i32 @cpu_to_le64(i32 %220)
  store i32 %221, i32* %16, align 4
  %222 = call i32 @__dm_bless_for_disk(i32* %16)
  %223 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %224 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %223, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 0
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %229 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %228, i32 0, i32 0
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 1
  store i32 %227, i32* %231, align 4
  %232 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %233 = call i32* @value_ptr(%struct.btree_node* %232, i32 1)
  %234 = call i32 @memcpy_disk(i32* %233, i32* %16, i32 4)
  %235 = load %struct.shadow_spine*, %struct.shadow_spine** %4, align 8
  %236 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %235, i32 0, i32 0
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %236, align 8
  %238 = load %struct.dm_block*, %struct.dm_block** %10, align 8
  %239 = call i32 @unlock_block(%struct.TYPE_7__* %237, %struct.dm_block* %238)
  %240 = load %struct.shadow_spine*, %struct.shadow_spine** %4, align 8
  %241 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %240, i32 0, i32 0
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %241, align 8
  %243 = load %struct.dm_block*, %struct.dm_block** %11, align 8
  %244 = call i32 @unlock_block(%struct.TYPE_7__* %242, %struct.dm_block* %243)
  store i32 0, i32* %3, align 4
  br label %245

245:                                              ; preds = %117, %110, %46
  %246 = load i32, i32* %3, align 4
  ret i32 %246
}

declare dso_local %struct.dm_block* @shadow_current(%struct.shadow_spine*) #1

declare dso_local %struct.btree_node* @dm_block_data(%struct.dm_block*) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i32 @new_block(%struct.TYPE_7__*, %struct.dm_block**) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32* @value_ptr(%struct.btree_node*, i32) #1

declare dso_local i32 @unlock_block(%struct.TYPE_7__*, %struct.dm_block*) #1

declare dso_local i32 @calc_max_entries(i32, i32) #1

declare dso_local i32 @dm_bm_block_size(i32) #1

declare dso_local i32 @dm_tm_get_bm(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @dm_block_location(%struct.dm_block*) #1

declare dso_local i32 @__dm_bless_for_disk(i32*) #1

declare dso_local i32 @memcpy_disk(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
