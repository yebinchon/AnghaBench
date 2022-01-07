; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_btree_split.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_btree_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree = type { i64, i32, %struct.TYPE_9__*, i32*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.btree_op = type { i32 }
%struct.keylist = type { i32 }
%struct.bkey = type { i32 }
%struct.closure = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@EINTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"insufficient reserve for split\0A\00", align 1
@MAX_KEY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"bcache: btree split failed (level %u)\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btree*, %struct.btree_op*, %struct.keylist*, %struct.bkey*)* @btree_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btree_split(%struct.btree* %0, %struct.btree_op* %1, %struct.keylist* %2, %struct.bkey* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btree*, align 8
  %7 = alloca %struct.btree_op*, align 8
  %8 = alloca %struct.keylist*, align 8
  %9 = alloca %struct.bkey*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.btree*, align 8
  %12 = alloca %struct.btree*, align 8
  %13 = alloca %struct.btree*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.closure, align 4
  %16 = alloca %struct.keylist, align 4
  %17 = alloca i32, align 4
  store %struct.btree* %0, %struct.btree** %6, align 8
  store %struct.btree_op* %1, %struct.btree_op** %7, align 8
  store %struct.keylist* %2, %struct.keylist** %8, align 8
  store %struct.bkey* %3, %struct.bkey** %9, align 8
  store %struct.btree* null, %struct.btree** %12, align 8
  store %struct.btree* null, %struct.btree** %13, align 8
  %18 = call i32 (...) @local_clock()
  store i32 %18, i32* %14, align 4
  %19 = call i32 @closure_init_stack(%struct.closure* %15)
  %20 = call i32 @bch_keylist_init(%struct.keylist* %16)
  %21 = load %struct.btree*, %struct.btree** %6, align 8
  %22 = load %struct.btree_op*, %struct.btree_op** %7, align 8
  %23 = call i64 @btree_check_reserve(%struct.btree* %21, %struct.btree_op* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %4
  %26 = load %struct.btree*, %struct.btree** %6, align 8
  %27 = getelementptr inbounds %struct.btree, %struct.btree* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @EINTR, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %327

33:                                               ; preds = %25
  %34 = call i32 (i32, i8*, ...) @WARN(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33
  br label %36

36:                                               ; preds = %35, %4
  %37 = load %struct.btree*, %struct.btree** %6, align 8
  %38 = load %struct.btree_op*, %struct.btree_op** %7, align 8
  %39 = call %struct.btree* @btree_node_alloc_replacement(%struct.btree* %37, %struct.btree_op* %38)
  store %struct.btree* %39, %struct.btree** %11, align 8
  %40 = load %struct.btree*, %struct.btree** %11, align 8
  %41 = call i64 @IS_ERR(%struct.btree* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %299

44:                                               ; preds = %36
  %45 = load %struct.btree*, %struct.btree** %11, align 8
  %46 = call %struct.TYPE_8__* @btree_bset_first(%struct.btree* %45)
  %47 = load %struct.btree*, %struct.btree** %11, align 8
  %48 = getelementptr inbounds %struct.btree, %struct.btree* %47, i32 0, i32 2
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = call i32 @block_bytes(%struct.TYPE_9__* %49)
  %51 = call i32 @set_blocks(%struct.TYPE_8__* %46, i32 %50)
  %52 = load %struct.btree*, %struct.btree** %6, align 8
  %53 = call i32 @btree_blocks(%struct.btree* %52)
  %54 = mul nsw i32 %53, 4
  %55 = sdiv i32 %54, 5
  %56 = icmp sgt i32 %51, %55
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %193

60:                                               ; preds = %44
  store i32 0, i32* %17, align 4
  %61 = load %struct.btree*, %struct.btree** %6, align 8
  %62 = load %struct.btree*, %struct.btree** %11, align 8
  %63 = call %struct.TYPE_8__* @btree_bset_first(%struct.btree* %62)
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @trace_bcache_btree_node_split(%struct.btree* %61, i32 %65)
  %67 = load %struct.btree*, %struct.btree** %6, align 8
  %68 = getelementptr inbounds %struct.btree, %struct.btree* %67, i32 0, i32 2
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = load %struct.btree_op*, %struct.btree_op** %7, align 8
  %71 = load %struct.btree*, %struct.btree** %6, align 8
  %72 = getelementptr inbounds %struct.btree, %struct.btree* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.btree*, %struct.btree** %6, align 8
  %75 = getelementptr inbounds %struct.btree, %struct.btree* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = call %struct.btree* @bch_btree_node_alloc(%struct.TYPE_9__* %69, %struct.btree_op* %70, i64 %73, i32* %76)
  store %struct.btree* %77, %struct.btree** %12, align 8
  %78 = load %struct.btree*, %struct.btree** %12, align 8
  %79 = call i64 @IS_ERR(%struct.btree* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %60
  br label %288

82:                                               ; preds = %60
  %83 = load %struct.btree*, %struct.btree** %6, align 8
  %84 = getelementptr inbounds %struct.btree, %struct.btree* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %102, label %87

87:                                               ; preds = %82
  %88 = load %struct.btree*, %struct.btree** %6, align 8
  %89 = getelementptr inbounds %struct.btree, %struct.btree* %88, i32 0, i32 2
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = load %struct.btree_op*, %struct.btree_op** %7, align 8
  %92 = load %struct.btree*, %struct.btree** %6, align 8
  %93 = getelementptr inbounds %struct.btree, %struct.btree* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 1
  %96 = call %struct.btree* @bch_btree_node_alloc(%struct.TYPE_9__* %90, %struct.btree_op* %91, i64 %95, i32* null)
  store %struct.btree* %96, %struct.btree** %13, align 8
  %97 = load %struct.btree*, %struct.btree** %13, align 8
  %98 = call i64 @IS_ERR(%struct.btree* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %87
  br label %277

101:                                              ; preds = %87
  br label %102

102:                                              ; preds = %101, %82
  %103 = load %struct.btree*, %struct.btree** %11, align 8
  %104 = getelementptr inbounds %struct.btree, %struct.btree* %103, i32 0, i32 4
  %105 = call i32 @mutex_lock(i32* %104)
  %106 = load %struct.btree*, %struct.btree** %12, align 8
  %107 = getelementptr inbounds %struct.btree, %struct.btree* %106, i32 0, i32 4
  %108 = call i32 @mutex_lock(i32* %107)
  %109 = load %struct.btree*, %struct.btree** %11, align 8
  %110 = load %struct.btree_op*, %struct.btree_op** %7, align 8
  %111 = load %struct.keylist*, %struct.keylist** %8, align 8
  %112 = load %struct.bkey*, %struct.bkey** %9, align 8
  %113 = call i32 @bch_btree_insert_keys(%struct.btree* %109, %struct.btree_op* %110, %struct.keylist* %111, %struct.bkey* %112)
  br label %114

114:                                              ; preds = %123, %102
  %115 = load i32, i32* %17, align 4
  %116 = load %struct.btree*, %struct.btree** %11, align 8
  %117 = call %struct.TYPE_8__* @btree_bset_first(%struct.btree* %116)
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = mul nsw i32 %119, 3
  %121 = sdiv i32 %120, 5
  %122 = icmp ult i32 %115, %121
  br i1 %122, label %123, label %133

123:                                              ; preds = %114
  %124 = load %struct.btree*, %struct.btree** %11, align 8
  %125 = call %struct.TYPE_8__* @btree_bset_first(%struct.btree* %124)
  %126 = load i32, i32* %17, align 4
  %127 = call i32* @bset_bkey_idx(%struct.TYPE_8__* %125, i32 %126)
  %128 = call i64 @bkey_u64s(i32* %127)
  %129 = load i32, i32* %17, align 4
  %130 = zext i32 %129 to i64
  %131 = add nsw i64 %130, %128
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %17, align 4
  br label %114

133:                                              ; preds = %114
  %134 = load %struct.btree*, %struct.btree** %11, align 8
  %135 = getelementptr inbounds %struct.btree, %struct.btree* %134, i32 0, i32 1
  %136 = load %struct.btree*, %struct.btree** %11, align 8
  %137 = call %struct.TYPE_8__* @btree_bset_first(%struct.btree* %136)
  %138 = load i32, i32* %17, align 4
  %139 = call i32* @bset_bkey_idx(%struct.TYPE_8__* %137, i32 %138)
  %140 = call i32 @bkey_copy_key(i32* %135, i32* %139)
  %141 = load %struct.btree*, %struct.btree** %11, align 8
  %142 = call %struct.TYPE_8__* @btree_bset_first(%struct.btree* %141)
  %143 = load i32, i32* %17, align 4
  %144 = call i32* @bset_bkey_idx(%struct.TYPE_8__* %142, i32 %143)
  %145 = call i64 @bkey_u64s(i32* %144)
  %146 = load i32, i32* %17, align 4
  %147 = zext i32 %146 to i64
  %148 = add nsw i64 %147, %145
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %17, align 4
  %150 = load %struct.btree*, %struct.btree** %11, align 8
  %151 = call %struct.TYPE_8__* @btree_bset_first(%struct.btree* %150)
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %17, align 4
  %155 = sub i32 %153, %154
  %156 = load %struct.btree*, %struct.btree** %12, align 8
  %157 = call %struct.TYPE_8__* @btree_bset_first(%struct.btree* %156)
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  store i32 %155, i32* %158, align 4
  %159 = load i32, i32* %17, align 4
  %160 = load %struct.btree*, %struct.btree** %11, align 8
  %161 = call %struct.TYPE_8__* @btree_bset_first(%struct.btree* %160)
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  store i32 %159, i32* %162, align 4
  %163 = load %struct.btree*, %struct.btree** %12, align 8
  %164 = call %struct.TYPE_8__* @btree_bset_first(%struct.btree* %163)
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.btree*, %struct.btree** %11, align 8
  %168 = call %struct.TYPE_8__* @btree_bset_first(%struct.btree* %167)
  %169 = call i32 @bset_bkey_last(%struct.TYPE_8__* %168)
  %170 = load %struct.btree*, %struct.btree** %12, align 8
  %171 = call %struct.TYPE_8__* @btree_bset_first(%struct.btree* %170)
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = mul i64 %174, 4
  %176 = trunc i64 %175 to i32
  %177 = call i32 @memcpy(i32 %166, i32 %169, i32 %176)
  %178 = load %struct.btree*, %struct.btree** %12, align 8
  %179 = getelementptr inbounds %struct.btree, %struct.btree* %178, i32 0, i32 1
  %180 = load %struct.btree*, %struct.btree** %6, align 8
  %181 = getelementptr inbounds %struct.btree, %struct.btree* %180, i32 0, i32 1
  %182 = call i32 @bkey_copy_key(i32* %179, i32* %181)
  %183 = load %struct.btree*, %struct.btree** %12, align 8
  %184 = getelementptr inbounds %struct.btree, %struct.btree* %183, i32 0, i32 1
  %185 = call i32 @bch_keylist_add(%struct.keylist* %16, i32* %184)
  %186 = load %struct.btree*, %struct.btree** %12, align 8
  %187 = call i32 @bch_btree_node_write(%struct.btree* %186, %struct.closure* %15)
  %188 = load %struct.btree*, %struct.btree** %12, align 8
  %189 = getelementptr inbounds %struct.btree, %struct.btree* %188, i32 0, i32 4
  %190 = call i32 @mutex_unlock(i32* %189)
  %191 = load %struct.btree*, %struct.btree** %12, align 8
  %192 = call i32 @rw_unlock(i32 1, %struct.btree* %191)
  br label %208

193:                                              ; preds = %44
  %194 = load %struct.btree*, %struct.btree** %6, align 8
  %195 = load %struct.btree*, %struct.btree** %11, align 8
  %196 = call %struct.TYPE_8__* @btree_bset_first(%struct.btree* %195)
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @trace_bcache_btree_node_compact(%struct.btree* %194, i32 %198)
  %200 = load %struct.btree*, %struct.btree** %11, align 8
  %201 = getelementptr inbounds %struct.btree, %struct.btree* %200, i32 0, i32 4
  %202 = call i32 @mutex_lock(i32* %201)
  %203 = load %struct.btree*, %struct.btree** %11, align 8
  %204 = load %struct.btree_op*, %struct.btree_op** %7, align 8
  %205 = load %struct.keylist*, %struct.keylist** %8, align 8
  %206 = load %struct.bkey*, %struct.bkey** %9, align 8
  %207 = call i32 @bch_btree_insert_keys(%struct.btree* %203, %struct.btree_op* %204, %struct.keylist* %205, %struct.bkey* %206)
  br label %208

208:                                              ; preds = %193, %133
  %209 = load %struct.btree*, %struct.btree** %11, align 8
  %210 = getelementptr inbounds %struct.btree, %struct.btree* %209, i32 0, i32 1
  %211 = call i32 @bch_keylist_add(%struct.keylist* %16, i32* %210)
  %212 = load %struct.btree*, %struct.btree** %11, align 8
  %213 = call i32 @bch_btree_node_write(%struct.btree* %212, %struct.closure* %15)
  %214 = load %struct.btree*, %struct.btree** %11, align 8
  %215 = getelementptr inbounds %struct.btree, %struct.btree* %214, i32 0, i32 4
  %216 = call i32 @mutex_unlock(i32* %215)
  %217 = load %struct.btree*, %struct.btree** %13, align 8
  %218 = icmp ne %struct.btree* %217, null
  br i1 %218, label %219, label %239

219:                                              ; preds = %208
  %220 = load %struct.btree*, %struct.btree** %13, align 8
  %221 = getelementptr inbounds %struct.btree, %struct.btree* %220, i32 0, i32 4
  %222 = call i32 @mutex_lock(i32* %221)
  %223 = load %struct.btree*, %struct.btree** %13, align 8
  %224 = getelementptr inbounds %struct.btree, %struct.btree* %223, i32 0, i32 1
  %225 = call i32 @bkey_copy_key(i32* %224, i32* @MAX_KEY)
  %226 = load %struct.btree*, %struct.btree** %13, align 8
  %227 = load %struct.btree_op*, %struct.btree_op** %7, align 8
  %228 = call i32 @bch_btree_insert_keys(%struct.btree* %226, %struct.btree_op* %227, %struct.keylist* %16, %struct.bkey* null)
  %229 = load %struct.btree*, %struct.btree** %13, align 8
  %230 = call i32 @bch_btree_node_write(%struct.btree* %229, %struct.closure* %15)
  %231 = load %struct.btree*, %struct.btree** %13, align 8
  %232 = getelementptr inbounds %struct.btree, %struct.btree* %231, i32 0, i32 4
  %233 = call i32 @mutex_unlock(i32* %232)
  %234 = call i32 @closure_sync(%struct.closure* %15)
  %235 = load %struct.btree*, %struct.btree** %13, align 8
  %236 = call i32 @bch_btree_set_root(%struct.btree* %235)
  %237 = load %struct.btree*, %struct.btree** %13, align 8
  %238 = call i32 @rw_unlock(i32 1, %struct.btree* %237)
  br label %266

239:                                              ; preds = %208
  %240 = load %struct.btree*, %struct.btree** %6, align 8
  %241 = getelementptr inbounds %struct.btree, %struct.btree* %240, i32 0, i32 3
  %242 = load i32*, i32** %241, align 8
  %243 = icmp ne i32* %242, null
  br i1 %243, label %248, label %244

244:                                              ; preds = %239
  %245 = call i32 @closure_sync(%struct.closure* %15)
  %246 = load %struct.btree*, %struct.btree** %11, align 8
  %247 = call i32 @bch_btree_set_root(%struct.btree* %246)
  br label %265

248:                                              ; preds = %239
  %249 = call i32 @closure_sync(%struct.closure* %15)
  %250 = load %struct.btree*, %struct.btree** %6, align 8
  %251 = getelementptr inbounds %struct.keylist, %struct.keylist* %16, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @make_btree_freeing_key(%struct.btree* %250, i32 %252)
  %254 = call i32 @bch_keylist_push(%struct.keylist* %16)
  %255 = load %struct.btree*, %struct.btree** %6, align 8
  %256 = getelementptr inbounds %struct.btree, %struct.btree* %255, i32 0, i32 3
  %257 = load i32*, i32** %256, align 8
  %258 = load %struct.btree_op*, %struct.btree_op** %7, align 8
  %259 = call i32 @bch_btree_insert_node(i32* %257, %struct.btree_op* %258, %struct.keylist* %16, i32* null, i32* null)
  %260 = call i32 @bch_keylist_empty(%struct.keylist* %16)
  %261 = icmp ne i32 %260, 0
  %262 = xor i1 %261, true
  %263 = zext i1 %262 to i32
  %264 = call i32 @BUG_ON(i32 %263)
  br label %265

265:                                              ; preds = %248, %244
  br label %266

266:                                              ; preds = %265, %219
  %267 = load %struct.btree*, %struct.btree** %6, align 8
  %268 = call i32 @btree_node_free(%struct.btree* %267)
  %269 = load %struct.btree*, %struct.btree** %11, align 8
  %270 = call i32 @rw_unlock(i32 1, %struct.btree* %269)
  %271 = load %struct.btree*, %struct.btree** %6, align 8
  %272 = getelementptr inbounds %struct.btree, %struct.btree* %271, i32 0, i32 2
  %273 = load %struct.TYPE_9__*, %struct.TYPE_9__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 0
  %275 = load i32, i32* %14, align 4
  %276 = call i32 @bch_time_stats_update(i32* %274, i32 %275)
  store i32 0, i32* %5, align 4
  br label %327

277:                                              ; preds = %100
  %278 = load %struct.btree*, %struct.btree** %6, align 8
  %279 = getelementptr inbounds %struct.btree, %struct.btree* %278, i32 0, i32 2
  %280 = load %struct.TYPE_9__*, %struct.TYPE_9__** %279, align 8
  %281 = load %struct.btree*, %struct.btree** %12, align 8
  %282 = getelementptr inbounds %struct.btree, %struct.btree* %281, i32 0, i32 1
  %283 = call i32 @bkey_put(%struct.TYPE_9__* %280, i32* %282)
  %284 = load %struct.btree*, %struct.btree** %12, align 8
  %285 = call i32 @btree_node_free(%struct.btree* %284)
  %286 = load %struct.btree*, %struct.btree** %12, align 8
  %287 = call i32 @rw_unlock(i32 1, %struct.btree* %286)
  br label %288

288:                                              ; preds = %277, %81
  %289 = load %struct.btree*, %struct.btree** %6, align 8
  %290 = getelementptr inbounds %struct.btree, %struct.btree* %289, i32 0, i32 2
  %291 = load %struct.TYPE_9__*, %struct.TYPE_9__** %290, align 8
  %292 = load %struct.btree*, %struct.btree** %11, align 8
  %293 = getelementptr inbounds %struct.btree, %struct.btree* %292, i32 0, i32 1
  %294 = call i32 @bkey_put(%struct.TYPE_9__* %291, i32* %293)
  %295 = load %struct.btree*, %struct.btree** %11, align 8
  %296 = call i32 @btree_node_free(%struct.btree* %295)
  %297 = load %struct.btree*, %struct.btree** %11, align 8
  %298 = call i32 @rw_unlock(i32 1, %struct.btree* %297)
  br label %299

299:                                              ; preds = %288, %43
  %300 = load %struct.btree*, %struct.btree** %6, align 8
  %301 = getelementptr inbounds %struct.btree, %struct.btree* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = call i32 (i32, i8*, ...) @WARN(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %302)
  %304 = load %struct.btree*, %struct.btree** %13, align 8
  %305 = load i32, i32* @EAGAIN, align 4
  %306 = sub nsw i32 0, %305
  %307 = call %struct.btree* @ERR_PTR(i32 %306)
  %308 = icmp eq %struct.btree* %304, %307
  br i1 %308, label %321, label %309

309:                                              ; preds = %299
  %310 = load %struct.btree*, %struct.btree** %12, align 8
  %311 = load i32, i32* @EAGAIN, align 4
  %312 = sub nsw i32 0, %311
  %313 = call %struct.btree* @ERR_PTR(i32 %312)
  %314 = icmp eq %struct.btree* %310, %313
  br i1 %314, label %321, label %315

315:                                              ; preds = %309
  %316 = load %struct.btree*, %struct.btree** %11, align 8
  %317 = load i32, i32* @EAGAIN, align 4
  %318 = sub nsw i32 0, %317
  %319 = call %struct.btree* @ERR_PTR(i32 %318)
  %320 = icmp eq %struct.btree* %316, %319
  br i1 %320, label %321, label %324

321:                                              ; preds = %315, %309, %299
  %322 = load i32, i32* @EAGAIN, align 4
  %323 = sub nsw i32 0, %322
  store i32 %323, i32* %5, align 4
  br label %327

324:                                              ; preds = %315
  %325 = load i32, i32* @ENOMEM, align 4
  %326 = sub nsw i32 0, %325
  store i32 %326, i32* %5, align 4
  br label %327

327:                                              ; preds = %324, %321, %266, %30
  %328 = load i32, i32* %5, align 4
  ret i32 %328
}

declare dso_local i32 @local_clock(...) #1

declare dso_local i32 @closure_init_stack(%struct.closure*) #1

declare dso_local i32 @bch_keylist_init(%struct.keylist*) #1

declare dso_local i64 @btree_check_reserve(%struct.btree*, %struct.btree_op*) #1

declare dso_local i32 @WARN(i32, i8*, ...) #1

declare dso_local %struct.btree* @btree_node_alloc_replacement(%struct.btree*, %struct.btree_op*) #1

declare dso_local i64 @IS_ERR(%struct.btree*) #1

declare dso_local i32 @set_blocks(%struct.TYPE_8__*, i32) #1

declare dso_local %struct.TYPE_8__* @btree_bset_first(%struct.btree*) #1

declare dso_local i32 @block_bytes(%struct.TYPE_9__*) #1

declare dso_local i32 @btree_blocks(%struct.btree*) #1

declare dso_local i32 @trace_bcache_btree_node_split(%struct.btree*, i32) #1

declare dso_local %struct.btree* @bch_btree_node_alloc(%struct.TYPE_9__*, %struct.btree_op*, i64, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bch_btree_insert_keys(%struct.btree*, %struct.btree_op*, %struct.keylist*, %struct.bkey*) #1

declare dso_local i64 @bkey_u64s(i32*) #1

declare dso_local i32* @bset_bkey_idx(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @bkey_copy_key(i32*, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @bset_bkey_last(%struct.TYPE_8__*) #1

declare dso_local i32 @bch_keylist_add(%struct.keylist*, i32*) #1

declare dso_local i32 @bch_btree_node_write(%struct.btree*, %struct.closure*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @rw_unlock(i32, %struct.btree*) #1

declare dso_local i32 @trace_bcache_btree_node_compact(%struct.btree*, i32) #1

declare dso_local i32 @closure_sync(%struct.closure*) #1

declare dso_local i32 @bch_btree_set_root(%struct.btree*) #1

declare dso_local i32 @make_btree_freeing_key(%struct.btree*, i32) #1

declare dso_local i32 @bch_keylist_push(%struct.keylist*) #1

declare dso_local i32 @bch_btree_insert_node(i32*, %struct.btree_op*, %struct.keylist*, i32*, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @bch_keylist_empty(%struct.keylist*) #1

declare dso_local i32 @btree_node_free(%struct.btree*) #1

declare dso_local i32 @bch_time_stats_update(i32*, i32) #1

declare dso_local i32 @bkey_put(%struct.TYPE_9__*, i32*) #1

declare dso_local %struct.btree* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
