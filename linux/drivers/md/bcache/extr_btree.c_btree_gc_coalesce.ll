; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_btree_gc_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_btree_gc_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree = type { %struct.TYPE_7__*, %struct.gc_merge_info, i32, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.gc_merge_info = type { i32, %struct.btree* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.bset* }
%struct.bset = type { i32, %struct.gc_merge_info* }
%struct.btree_op = type { i32 }
%struct.gc_stat = type { i32 }
%struct.keylist = type { i32 }
%struct.closure = type { i32 }
%struct.bkey = type { i32, %struct.btree* }

@GC_MERGE_NODES = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ZERO_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btree*, %struct.btree_op*, %struct.gc_stat*, %struct.gc_merge_info*)* @btree_gc_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btree_gc_coalesce(%struct.btree* %0, %struct.btree_op* %1, %struct.gc_stat* %2, %struct.gc_merge_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btree*, align 8
  %7 = alloca %struct.btree_op*, align 8
  %8 = alloca %struct.gc_stat*, align 8
  %9 = alloca %struct.gc_merge_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.keylist, align 4
  %17 = alloca %struct.closure, align 4
  %18 = alloca %struct.bkey*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.bset*, align 8
  %21 = alloca %struct.bset*, align 8
  %22 = alloca %struct.bkey*, align 8
  %23 = alloca %struct.bkey*, align 8
  store %struct.btree* %0, %struct.btree** %6, align 8
  store %struct.btree_op* %1, %struct.btree_op** %7, align 8
  store %struct.gc_stat* %2, %struct.gc_stat** %8, align 8
  store %struct.gc_merge_info* %3, %struct.gc_merge_info** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %24 = load i32, i32* @GC_MERGE_NODES, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %14, align 8
  %27 = alloca %struct.btree*, i64 %25, align 16
  store i64 %25, i64* %15, align 8
  %28 = call i32 @bch_keylist_init(%struct.keylist* %16)
  %29 = load %struct.btree*, %struct.btree** %6, align 8
  %30 = call i64 @btree_check_reserve(%struct.btree* %29, i32* null)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %518

33:                                               ; preds = %4
  %34 = mul nuw i64 8, %25
  %35 = trunc i64 %34 to i32
  %36 = call i32 @memset(%struct.btree** %27, i32 0, i32 %35)
  %37 = call i32 @closure_init_stack(%struct.closure* %17)
  br label %38

38:                                               ; preds = %54, %33
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @GC_MERGE_NODES, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = load %struct.gc_merge_info*, %struct.gc_merge_info** %9, align 8
  %44 = load i32, i32* %11, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %43, i64 %45
  %47 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %46, i32 0, i32 1
  %48 = load %struct.btree*, %struct.btree** %47, align 8
  %49 = call i64 @IS_ERR_OR_NULL(%struct.btree* %48)
  %50 = icmp ne i64 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %42, %38
  %53 = phi i1 [ false, %38 ], [ %51, %42 ]
  br i1 %53, label %54, label %64

54:                                               ; preds = %52
  %55 = load %struct.gc_merge_info*, %struct.gc_merge_info** %9, align 8
  %56 = load i32, i32* %11, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %11, align 4
  %58 = zext i32 %56 to i64
  %59 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %55, i64 %58
  %60 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %12, align 4
  %63 = add i32 %62, %61
  store i32 %63, i32* %12, align 4
  br label %38

64:                                               ; preds = %52
  %65 = load %struct.btree*, %struct.btree** %6, align 8
  %66 = getelementptr inbounds %struct.btree, %struct.btree* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = call i32 @btree_default_blocks(%struct.TYPE_7__* %67)
  %69 = mul nsw i32 %68, 2
  %70 = sdiv i32 %69, 3
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ult i32 %71, 2
  br i1 %72, label %92, label %73

73:                                               ; preds = %64
  %74 = load %struct.btree*, %struct.btree** %6, align 8
  %75 = getelementptr inbounds %struct.btree, %struct.btree* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load %struct.bset*, %struct.bset** %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = load %struct.btree*, %struct.btree** %6, align 8
  %83 = getelementptr inbounds %struct.btree, %struct.btree* %82, i32 0, i32 0
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = call i32 @block_bytes(%struct.TYPE_7__* %84)
  %86 = call i32 @__set_blocks(%struct.bset* %80, i32 %81, i32 %85)
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %11, align 4
  %89 = sub i32 %88, 1
  %90 = mul i32 %87, %89
  %91 = icmp ugt i32 %86, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %73, %64
  store i32 0, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %518

93:                                               ; preds = %73
  store i32 0, i32* %10, align 4
  br label %94

94:                                               ; preds = %117, %93
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp ult i32 %95, %96
  br i1 %97, label %98, label %120

98:                                               ; preds = %94
  %99 = load %struct.gc_merge_info*, %struct.gc_merge_info** %9, align 8
  %100 = load i32, i32* %10, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %99, i64 %101
  %103 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %102, i32 0, i32 1
  %104 = load %struct.btree*, %struct.btree** %103, align 8
  %105 = call %struct.btree* @btree_node_alloc_replacement(%struct.btree* %104, i32* null)
  %106 = load i32, i32* %10, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.btree*, %struct.btree** %27, i64 %107
  store %struct.btree* %105, %struct.btree** %108, align 8
  %109 = load i32, i32* %10, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.btree*, %struct.btree** %27, i64 %110
  %112 = load %struct.btree*, %struct.btree** %111, align 8
  %113 = call i64 @IS_ERR_OR_NULL(%struct.btree* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %98
  br label %471

116:                                              ; preds = %98
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %10, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %10, align 4
  br label %94

120:                                              ; preds = %94
  %121 = load %struct.btree*, %struct.btree** %6, align 8
  %122 = call i64 @btree_check_reserve(%struct.btree* %121, i32* null)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  br label %471

125:                                              ; preds = %120
  store i32 0, i32* %10, align 4
  br label %126

126:                                              ; preds = %137, %125
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp ult i32 %127, %128
  br i1 %129, label %130, label %140

130:                                              ; preds = %126
  %131 = load i32, i32* %10, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.btree*, %struct.btree** %27, i64 %132
  %134 = load %struct.btree*, %struct.btree** %133, align 8
  %135 = getelementptr inbounds %struct.btree, %struct.btree* %134, i32 0, i32 2
  %136 = call i32 @mutex_lock(i32* %135)
  br label %137

137:                                              ; preds = %130
  %138 = load i32, i32* %10, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %10, align 4
  br label %126

140:                                              ; preds = %126
  %141 = load i32, i32* %11, align 4
  %142 = sub i32 %141, 1
  store i32 %142, i32* %10, align 4
  br label %143

143:                                              ; preds = %340, %140
  %144 = load i32, i32* %10, align 4
  %145 = icmp ugt i32 %144, 0
  br i1 %145, label %146, label %343

146:                                              ; preds = %143
  %147 = load i32, i32* %10, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.btree*, %struct.btree** %27, i64 %148
  %150 = load %struct.btree*, %struct.btree** %149, align 8
  %151 = call %struct.bset* @btree_bset_first(%struct.btree* %150)
  store %struct.bset* %151, %struct.bset** %20, align 8
  %152 = load i32, i32* %10, align 4
  %153 = sub i32 %152, 1
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.btree*, %struct.btree** %27, i64 %154
  %156 = load %struct.btree*, %struct.btree** %155, align 8
  %157 = call %struct.bset* @btree_bset_first(%struct.btree* %156)
  store %struct.bset* %157, %struct.bset** %21, align 8
  store %struct.bkey* null, %struct.bkey** %23, align 8
  store i32 0, i32* %12, align 4
  %158 = load i32, i32* %10, align 4
  %159 = icmp ugt i32 %158, 1
  br i1 %159, label %160, label %203

160:                                              ; preds = %146
  %161 = load %struct.bset*, %struct.bset** %21, align 8
  %162 = getelementptr inbounds %struct.bset, %struct.bset* %161, i32 0, i32 1
  %163 = load %struct.gc_merge_info*, %struct.gc_merge_info** %162, align 8
  %164 = bitcast %struct.gc_merge_info* %163 to %struct.bkey*
  store %struct.bkey* %164, %struct.bkey** %22, align 8
  br label %165

165:                                              ; preds = %197, %160
  %166 = load %struct.bkey*, %struct.bkey** %22, align 8
  %167 = load %struct.bset*, %struct.bset** %21, align 8
  %168 = call %struct.gc_merge_info* @bset_bkey_last(%struct.bset* %167)
  %169 = bitcast %struct.gc_merge_info* %168 to %struct.bkey*
  %170 = icmp ult %struct.bkey* %166, %169
  br i1 %170, label %171, label %202

171:                                              ; preds = %165
  %172 = load %struct.bset*, %struct.bset** %20, align 8
  %173 = load %struct.bset*, %struct.bset** %20, align 8
  %174 = getelementptr inbounds %struct.bset, %struct.bset* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* %12, align 4
  %177 = add i32 %175, %176
  %178 = load %struct.bkey*, %struct.bkey** %22, align 8
  %179 = bitcast %struct.bkey* %178 to %struct.gc_merge_info*
  %180 = call i32 @bkey_u64s(%struct.gc_merge_info* %179)
  %181 = add i32 %177, %180
  %182 = load %struct.btree*, %struct.btree** %6, align 8
  %183 = getelementptr inbounds %struct.btree, %struct.btree* %182, i32 0, i32 0
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %183, align 8
  %185 = call i32 @block_bytes(%struct.TYPE_7__* %184)
  %186 = call i32 @__set_blocks(%struct.bset* %172, i32 %181, i32 %185)
  %187 = load i32, i32* %13, align 4
  %188 = icmp ugt i32 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %171
  br label %202

190:                                              ; preds = %171
  %191 = load %struct.bkey*, %struct.bkey** %22, align 8
  store %struct.bkey* %191, %struct.bkey** %23, align 8
  %192 = load %struct.bkey*, %struct.bkey** %22, align 8
  %193 = bitcast %struct.bkey* %192 to %struct.gc_merge_info*
  %194 = call i32 @bkey_u64s(%struct.gc_merge_info* %193)
  %195 = load i32, i32* %12, align 4
  %196 = add i32 %195, %194
  store i32 %196, i32* %12, align 4
  br label %197

197:                                              ; preds = %190
  %198 = load %struct.bkey*, %struct.bkey** %22, align 8
  %199 = bitcast %struct.bkey* %198 to %struct.gc_merge_info*
  %200 = call %struct.gc_merge_info* @bkey_next(%struct.gc_merge_info* %199)
  %201 = bitcast %struct.gc_merge_info* %200 to %struct.bkey*
  store %struct.bkey* %201, %struct.bkey** %22, align 8
  br label %165

202:                                              ; preds = %189, %165
  br label %233

203:                                              ; preds = %146
  %204 = load %struct.bset*, %struct.bset** %20, align 8
  %205 = load %struct.bset*, %struct.bset** %20, align 8
  %206 = getelementptr inbounds %struct.bset, %struct.bset* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.bset*, %struct.bset** %21, align 8
  %209 = getelementptr inbounds %struct.bset, %struct.bset* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = add i32 %207, %210
  %212 = load %struct.btree*, %struct.btree** %6, align 8
  %213 = getelementptr inbounds %struct.btree, %struct.btree* %212, i32 0, i32 0
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %213, align 8
  %215 = call i32 @block_bytes(%struct.TYPE_7__* %214)
  %216 = call i32 @__set_blocks(%struct.bset* %204, i32 %211, i32 %215)
  %217 = load i32, i32* %10, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds %struct.btree*, %struct.btree** %27, i64 %218
  %220 = load %struct.btree*, %struct.btree** %219, align 8
  %221 = call i32 @btree_blocks(%struct.btree* %220)
  %222 = icmp ugt i32 %216, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %203
  br label %471

224:                                              ; preds = %203
  %225 = load %struct.bset*, %struct.bset** %21, align 8
  %226 = getelementptr inbounds %struct.bset, %struct.bset* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  store i32 %227, i32* %12, align 4
  %228 = load %struct.gc_merge_info*, %struct.gc_merge_info** %9, align 8
  %229 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %228, i32 0, i32 1
  %230 = load %struct.btree*, %struct.btree** %229, align 8
  %231 = getelementptr inbounds %struct.btree, %struct.btree* %230, i32 0, i32 1
  %232 = bitcast %struct.gc_merge_info* %231 to %struct.bkey*
  store %struct.bkey* %232, %struct.bkey** %23, align 8
  br label %233

233:                                              ; preds = %224, %202
  %234 = load %struct.bset*, %struct.bset** %20, align 8
  %235 = load %struct.bset*, %struct.bset** %20, align 8
  %236 = getelementptr inbounds %struct.bset, %struct.bset* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* %12, align 4
  %239 = add i32 %237, %238
  %240 = load %struct.btree*, %struct.btree** %6, align 8
  %241 = getelementptr inbounds %struct.btree, %struct.btree* %240, i32 0, i32 0
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %241, align 8
  %243 = call i32 @block_bytes(%struct.TYPE_7__* %242)
  %244 = call i32 @__set_blocks(%struct.bset* %234, i32 %239, i32 %243)
  %245 = load i32, i32* %10, align 4
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds %struct.btree*, %struct.btree** %27, i64 %246
  %248 = load %struct.btree*, %struct.btree** %247, align 8
  %249 = call i32 @btree_blocks(%struct.btree* %248)
  %250 = icmp ugt i32 %244, %249
  %251 = zext i1 %250 to i32
  %252 = call i32 @BUG_ON(i32 %251)
  %253 = load %struct.bkey*, %struct.bkey** %23, align 8
  %254 = icmp ne %struct.bkey* %253, null
  br i1 %254, label %255, label %264

255:                                              ; preds = %233
  %256 = load i32, i32* %10, align 4
  %257 = zext i32 %256 to i64
  %258 = getelementptr inbounds %struct.btree*, %struct.btree** %27, i64 %257
  %259 = load %struct.btree*, %struct.btree** %258, align 8
  %260 = getelementptr inbounds %struct.btree, %struct.btree* %259, i32 0, i32 1
  %261 = load %struct.bkey*, %struct.bkey** %23, align 8
  %262 = bitcast %struct.bkey* %261 to %struct.gc_merge_info*
  %263 = call i32 @bkey_copy_key(%struct.gc_merge_info* %260, %struct.gc_merge_info* %262)
  br label %264

264:                                              ; preds = %255, %233
  %265 = load %struct.bset*, %struct.bset** %20, align 8
  %266 = call %struct.gc_merge_info* @bset_bkey_last(%struct.bset* %265)
  %267 = load %struct.bset*, %struct.bset** %21, align 8
  %268 = getelementptr inbounds %struct.bset, %struct.bset* %267, i32 0, i32 1
  %269 = load %struct.gc_merge_info*, %struct.gc_merge_info** %268, align 8
  %270 = load %struct.bset*, %struct.bset** %21, align 8
  %271 = load i32, i32* %12, align 4
  %272 = call %struct.gc_merge_info* @bset_bkey_idx(%struct.bset* %270, i32 %271)
  %273 = bitcast %struct.gc_merge_info* %272 to i8*
  %274 = load %struct.bset*, %struct.bset** %21, align 8
  %275 = getelementptr inbounds %struct.bset, %struct.bset* %274, i32 0, i32 1
  %276 = load %struct.gc_merge_info*, %struct.gc_merge_info** %275, align 8
  %277 = bitcast %struct.gc_merge_info* %276 to i8*
  %278 = ptrtoint i8* %273 to i64
  %279 = ptrtoint i8* %277 to i64
  %280 = sub i64 %278, %279
  %281 = trunc i64 %280 to i32
  %282 = call i32 @memcpy(%struct.gc_merge_info* %266, %struct.gc_merge_info* %269, i32 %281)
  %283 = load i32, i32* %12, align 4
  %284 = load %struct.bset*, %struct.bset** %20, align 8
  %285 = getelementptr inbounds %struct.bset, %struct.bset* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = add i32 %286, %283
  store i32 %287, i32* %285, align 8
  %288 = load %struct.bset*, %struct.bset** %20, align 8
  %289 = getelementptr inbounds %struct.bset, %struct.bset* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.gc_merge_info*, %struct.gc_merge_info** %9, align 8
  %292 = load i32, i32* %10, align 4
  %293 = zext i32 %292 to i64
  %294 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %291, i64 %293
  %295 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %294, i32 0, i32 0
  store i32 %290, i32* %295, align 8
  %296 = load %struct.bset*, %struct.bset** %21, align 8
  %297 = getelementptr inbounds %struct.bset, %struct.bset* %296, i32 0, i32 1
  %298 = load %struct.gc_merge_info*, %struct.gc_merge_info** %297, align 8
  %299 = load %struct.bset*, %struct.bset** %21, align 8
  %300 = load i32, i32* %12, align 4
  %301 = call %struct.gc_merge_info* @bset_bkey_idx(%struct.bset* %299, i32 %300)
  %302 = load %struct.bset*, %struct.bset** %21, align 8
  %303 = call %struct.gc_merge_info* @bset_bkey_last(%struct.bset* %302)
  %304 = bitcast %struct.gc_merge_info* %303 to i8*
  %305 = load %struct.bset*, %struct.bset** %21, align 8
  %306 = load i32, i32* %12, align 4
  %307 = call %struct.gc_merge_info* @bset_bkey_idx(%struct.bset* %305, i32 %306)
  %308 = bitcast %struct.gc_merge_info* %307 to i8*
  %309 = ptrtoint i8* %304 to i64
  %310 = ptrtoint i8* %308 to i64
  %311 = sub i64 %309, %310
  %312 = trunc i64 %311 to i32
  %313 = call i32 @memmove(%struct.gc_merge_info* %298, %struct.gc_merge_info* %301, i32 %312)
  %314 = load i32, i32* %12, align 4
  %315 = load %struct.bset*, %struct.bset** %21, align 8
  %316 = getelementptr inbounds %struct.bset, %struct.bset* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = sub i32 %317, %314
  store i32 %318, i32* %316, align 8
  %319 = load i32, i32* %10, align 4
  %320 = zext i32 %319 to i64
  %321 = getelementptr inbounds %struct.btree*, %struct.btree** %27, i64 %320
  %322 = load %struct.btree*, %struct.btree** %321, align 8
  %323 = getelementptr inbounds %struct.btree, %struct.btree* %322, i32 0, i32 1
  %324 = call i32 @bkey_u64s(%struct.gc_merge_info* %323)
  %325 = call i64 @__bch_keylist_realloc(%struct.keylist* %16, i32 %324)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %264
  br label %471

328:                                              ; preds = %264
  %329 = load i32, i32* %10, align 4
  %330 = zext i32 %329 to i64
  %331 = getelementptr inbounds %struct.btree*, %struct.btree** %27, i64 %330
  %332 = load %struct.btree*, %struct.btree** %331, align 8
  %333 = call i32 @bch_btree_node_write(%struct.btree* %332, %struct.closure* %17)
  %334 = load i32, i32* %10, align 4
  %335 = zext i32 %334 to i64
  %336 = getelementptr inbounds %struct.btree*, %struct.btree** %27, i64 %335
  %337 = load %struct.btree*, %struct.btree** %336, align 8
  %338 = getelementptr inbounds %struct.btree, %struct.btree* %337, i32 0, i32 1
  %339 = call i32 @bch_keylist_add(%struct.keylist* %16, %struct.gc_merge_info* %338)
  br label %340

340:                                              ; preds = %328
  %341 = load i32, i32* %10, align 4
  %342 = add i32 %341, -1
  store i32 %342, i32* %10, align 4
  br label %143

343:                                              ; preds = %143
  store i32 0, i32* %10, align 4
  br label %344

344:                                              ; preds = %355, %343
  %345 = load i32, i32* %10, align 4
  %346 = load i32, i32* %11, align 4
  %347 = icmp ult i32 %345, %346
  br i1 %347, label %348, label %358

348:                                              ; preds = %344
  %349 = load i32, i32* %10, align 4
  %350 = zext i32 %349 to i64
  %351 = getelementptr inbounds %struct.btree*, %struct.btree** %27, i64 %350
  %352 = load %struct.btree*, %struct.btree** %351, align 8
  %353 = getelementptr inbounds %struct.btree, %struct.btree* %352, i32 0, i32 2
  %354 = call i32 @mutex_unlock(i32* %353)
  br label %355

355:                                              ; preds = %348
  %356 = load i32, i32* %10, align 4
  %357 = add i32 %356, 1
  store i32 %357, i32* %10, align 4
  br label %344

358:                                              ; preds = %344
  %359 = call i32 @closure_sync(%struct.closure* %17)
  %360 = getelementptr inbounds %struct.btree*, %struct.btree** %27, i64 0
  %361 = load %struct.btree*, %struct.btree** %360, align 16
  %362 = call %struct.bset* @btree_bset_first(%struct.btree* %361)
  %363 = getelementptr inbounds %struct.bset, %struct.bset* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = call i32 @BUG_ON(i32 %364)
  %366 = getelementptr inbounds %struct.btree*, %struct.btree** %27, i64 0
  %367 = load %struct.btree*, %struct.btree** %366, align 16
  %368 = call i32 @btree_node_free(%struct.btree* %367)
  %369 = getelementptr inbounds %struct.btree*, %struct.btree** %27, i64 0
  %370 = load %struct.btree*, %struct.btree** %369, align 16
  %371 = call i32 @rw_unlock(i32 1, %struct.btree* %370)
  %372 = getelementptr inbounds %struct.btree*, %struct.btree** %27, i64 0
  store %struct.btree* null, %struct.btree** %372, align 16
  store i32 0, i32* %10, align 4
  br label %373

373:                                              ; preds = %400, %358
  %374 = load i32, i32* %10, align 4
  %375 = load i32, i32* %11, align 4
  %376 = icmp ult i32 %374, %375
  br i1 %376, label %377, label %403

377:                                              ; preds = %373
  %378 = load %struct.gc_merge_info*, %struct.gc_merge_info** %9, align 8
  %379 = load i32, i32* %10, align 4
  %380 = zext i32 %379 to i64
  %381 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %378, i64 %380
  %382 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %381, i32 0, i32 1
  %383 = load %struct.btree*, %struct.btree** %382, align 8
  %384 = getelementptr inbounds %struct.btree, %struct.btree* %383, i32 0, i32 1
  %385 = call i32 @bkey_u64s(%struct.gc_merge_info* %384)
  %386 = call i64 @__bch_keylist_realloc(%struct.keylist* %16, i32 %385)
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %389

388:                                              ; preds = %377
  br label %471

389:                                              ; preds = %377
  %390 = load %struct.gc_merge_info*, %struct.gc_merge_info** %9, align 8
  %391 = load i32, i32* %10, align 4
  %392 = zext i32 %391 to i64
  %393 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %390, i64 %392
  %394 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %393, i32 0, i32 1
  %395 = load %struct.btree*, %struct.btree** %394, align 8
  %396 = getelementptr inbounds %struct.keylist, %struct.keylist* %16, i32 0, i32 0
  %397 = load i32, i32* %396, align 4
  %398 = call i32 @make_btree_freeing_key(%struct.btree* %395, i32 %397)
  %399 = call i32 @bch_keylist_push(%struct.keylist* %16)
  br label %400

400:                                              ; preds = %389
  %401 = load i32, i32* %10, align 4
  %402 = add i32 %401, 1
  store i32 %402, i32* %10, align 4
  br label %373

403:                                              ; preds = %373
  %404 = load %struct.btree*, %struct.btree** %6, align 8
  %405 = load %struct.btree_op*, %struct.btree_op** %7, align 8
  %406 = call i32 @bch_btree_insert_node(%struct.btree* %404, %struct.btree_op* %405, %struct.keylist* %16, i32* null, i32* null)
  %407 = call i32 @bch_keylist_empty(%struct.keylist* %16)
  %408 = icmp ne i32 %407, 0
  %409 = xor i1 %408, true
  %410 = zext i1 %409 to i32
  %411 = call i32 @BUG_ON(i32 %410)
  store i32 0, i32* %10, align 4
  br label %412

412:                                              ; preds = %440, %403
  %413 = load i32, i32* %10, align 4
  %414 = load i32, i32* %11, align 4
  %415 = icmp ult i32 %413, %414
  br i1 %415, label %416, label %443

416:                                              ; preds = %412
  %417 = load %struct.gc_merge_info*, %struct.gc_merge_info** %9, align 8
  %418 = load i32, i32* %10, align 4
  %419 = zext i32 %418 to i64
  %420 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %417, i64 %419
  %421 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %420, i32 0, i32 1
  %422 = load %struct.btree*, %struct.btree** %421, align 8
  %423 = call i32 @btree_node_free(%struct.btree* %422)
  %424 = load %struct.gc_merge_info*, %struct.gc_merge_info** %9, align 8
  %425 = load i32, i32* %10, align 4
  %426 = zext i32 %425 to i64
  %427 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %424, i64 %426
  %428 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %427, i32 0, i32 1
  %429 = load %struct.btree*, %struct.btree** %428, align 8
  %430 = call i32 @rw_unlock(i32 1, %struct.btree* %429)
  %431 = load i32, i32* %10, align 4
  %432 = zext i32 %431 to i64
  %433 = getelementptr inbounds %struct.btree*, %struct.btree** %27, i64 %432
  %434 = load %struct.btree*, %struct.btree** %433, align 8
  %435 = load %struct.gc_merge_info*, %struct.gc_merge_info** %9, align 8
  %436 = load i32, i32* %10, align 4
  %437 = zext i32 %436 to i64
  %438 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %435, i64 %437
  %439 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %438, i32 0, i32 1
  store %struct.btree* %434, %struct.btree** %439, align 8
  br label %440

440:                                              ; preds = %416
  %441 = load i32, i32* %10, align 4
  %442 = add i32 %441, 1
  store i32 %442, i32* %10, align 4
  br label %412

443:                                              ; preds = %412
  %444 = load %struct.gc_merge_info*, %struct.gc_merge_info** %9, align 8
  %445 = load %struct.gc_merge_info*, %struct.gc_merge_info** %9, align 8
  %446 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %445, i64 1
  %447 = load i32, i32* %11, align 4
  %448 = sub i32 %447, 1
  %449 = zext i32 %448 to i64
  %450 = mul i64 16, %449
  %451 = trunc i64 %450 to i32
  %452 = call i32 @memmove(%struct.gc_merge_info* %444, %struct.gc_merge_info* %446, i32 %451)
  %453 = load i32, i32* @EINTR, align 4
  %454 = sub nsw i32 0, %453
  %455 = call %struct.btree* @ERR_PTR(i32 %454)
  %456 = load %struct.gc_merge_info*, %struct.gc_merge_info** %9, align 8
  %457 = load i32, i32* %11, align 4
  %458 = sub i32 %457, 1
  %459 = zext i32 %458 to i64
  %460 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %456, i64 %459
  %461 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %460, i32 0, i32 1
  store %struct.btree* %455, %struct.btree** %461, align 8
  %462 = load i32, i32* %11, align 4
  %463 = call i32 @trace_bcache_btree_gc_coalesce(i32 %462)
  %464 = load %struct.gc_stat*, %struct.gc_stat** %8, align 8
  %465 = getelementptr inbounds %struct.gc_stat, %struct.gc_stat* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 4
  %467 = add nsw i32 %466, -1
  store i32 %467, i32* %465, align 4
  %468 = call i32 @bch_keylist_free(%struct.keylist* %16)
  %469 = load i32, i32* @EINTR, align 4
  %470 = sub nsw i32 0, %469
  store i32 %470, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %518

471:                                              ; preds = %388, %327, %223, %124, %115
  %472 = call i32 @closure_sync(%struct.closure* %17)
  br label %473

473:                                              ; preds = %488, %471
  %474 = call %struct.gc_merge_info* @bch_keylist_pop(%struct.keylist* %16)
  %475 = bitcast %struct.gc_merge_info* %474 to %struct.bkey*
  store %struct.bkey* %475, %struct.bkey** %18, align 8
  %476 = icmp ne %struct.bkey* %475, null
  br i1 %476, label %477, label %489

477:                                              ; preds = %473
  %478 = load %struct.bkey*, %struct.bkey** %18, align 8
  %479 = bitcast %struct.bkey* %478 to %struct.gc_merge_info*
  %480 = call i32 @bkey_cmp(%struct.gc_merge_info* %479, i32* @ZERO_KEY)
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %488, label %482

482:                                              ; preds = %477
  %483 = load %struct.btree*, %struct.btree** %6, align 8
  %484 = getelementptr inbounds %struct.btree, %struct.btree* %483, i32 0, i32 0
  %485 = load %struct.TYPE_7__*, %struct.TYPE_7__** %484, align 8
  %486 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %485, i32 0, i32 0
  %487 = call i32 @atomic_dec(i32* %486)
  br label %488

488:                                              ; preds = %482, %477
  br label %473

489:                                              ; preds = %473
  %490 = call i32 @bch_keylist_free(%struct.keylist* %16)
  store i32 0, i32* %10, align 4
  br label %491

491:                                              ; preds = %514, %489
  %492 = load i32, i32* %10, align 4
  %493 = load i32, i32* %11, align 4
  %494 = icmp ult i32 %492, %493
  br i1 %494, label %495, label %517

495:                                              ; preds = %491
  %496 = load i32, i32* %10, align 4
  %497 = zext i32 %496 to i64
  %498 = getelementptr inbounds %struct.btree*, %struct.btree** %27, i64 %497
  %499 = load %struct.btree*, %struct.btree** %498, align 8
  %500 = call i64 @IS_ERR_OR_NULL(%struct.btree* %499)
  %501 = icmp ne i64 %500, 0
  br i1 %501, label %513, label %502

502:                                              ; preds = %495
  %503 = load i32, i32* %10, align 4
  %504 = zext i32 %503 to i64
  %505 = getelementptr inbounds %struct.btree*, %struct.btree** %27, i64 %504
  %506 = load %struct.btree*, %struct.btree** %505, align 8
  %507 = call i32 @btree_node_free(%struct.btree* %506)
  %508 = load i32, i32* %10, align 4
  %509 = zext i32 %508 to i64
  %510 = getelementptr inbounds %struct.btree*, %struct.btree** %27, i64 %509
  %511 = load %struct.btree*, %struct.btree** %510, align 8
  %512 = call i32 @rw_unlock(i32 1, %struct.btree* %511)
  br label %513

513:                                              ; preds = %502, %495
  br label %514

514:                                              ; preds = %513
  %515 = load i32, i32* %10, align 4
  %516 = add i32 %515, 1
  store i32 %516, i32* %10, align 4
  br label %491

517:                                              ; preds = %491
  store i32 0, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %518

518:                                              ; preds = %517, %443, %92, %32
  %519 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %519)
  %520 = load i32, i32* %5, align 4
  ret i32 %520
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bch_keylist_init(%struct.keylist*) #2

declare dso_local i64 @btree_check_reserve(%struct.btree*, i32*) #2

declare dso_local i32 @memset(%struct.btree**, i32, i32) #2

declare dso_local i32 @closure_init_stack(%struct.closure*) #2

declare dso_local i64 @IS_ERR_OR_NULL(%struct.btree*) #2

declare dso_local i32 @btree_default_blocks(%struct.TYPE_7__*) #2

declare dso_local i32 @__set_blocks(%struct.bset*, i32, i32) #2

declare dso_local i32 @block_bytes(%struct.TYPE_7__*) #2

declare dso_local %struct.btree* @btree_node_alloc_replacement(%struct.btree*, i32*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local %struct.bset* @btree_bset_first(%struct.btree*) #2

declare dso_local %struct.gc_merge_info* @bset_bkey_last(%struct.bset*) #2

declare dso_local i32 @bkey_u64s(%struct.gc_merge_info*) #2

declare dso_local %struct.gc_merge_info* @bkey_next(%struct.gc_merge_info*) #2

declare dso_local i32 @btree_blocks(%struct.btree*) #2

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @bkey_copy_key(%struct.gc_merge_info*, %struct.gc_merge_info*) #2

declare dso_local i32 @memcpy(%struct.gc_merge_info*, %struct.gc_merge_info*, i32) #2

declare dso_local %struct.gc_merge_info* @bset_bkey_idx(%struct.bset*, i32) #2

declare dso_local i32 @memmove(%struct.gc_merge_info*, %struct.gc_merge_info*, i32) #2

declare dso_local i64 @__bch_keylist_realloc(%struct.keylist*, i32) #2

declare dso_local i32 @bch_btree_node_write(%struct.btree*, %struct.closure*) #2

declare dso_local i32 @bch_keylist_add(%struct.keylist*, %struct.gc_merge_info*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @closure_sync(%struct.closure*) #2

declare dso_local i32 @btree_node_free(%struct.btree*) #2

declare dso_local i32 @rw_unlock(i32, %struct.btree*) #2

declare dso_local i32 @make_btree_freeing_key(%struct.btree*, i32) #2

declare dso_local i32 @bch_keylist_push(%struct.keylist*) #2

declare dso_local i32 @bch_btree_insert_node(%struct.btree*, %struct.btree_op*, %struct.keylist*, i32*, i32*) #2

declare dso_local i32 @bch_keylist_empty(%struct.keylist*) #2

declare dso_local %struct.btree* @ERR_PTR(i32) #2

declare dso_local i32 @trace_bcache_btree_gc_coalesce(i32) #2

declare dso_local i32 @bch_keylist_free(%struct.keylist*) #2

declare dso_local %struct.gc_merge_info* @bch_keylist_pop(%struct.keylist*) #2

declare dso_local i32 @bkey_cmp(%struct.gc_merge_info*, i32*) #2

declare dso_local i32 @atomic_dec(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
