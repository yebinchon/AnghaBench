; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_btree_gc_recurse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_btree_gc_recurse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree = type { i32, %struct.TYPE_3__*, i32, i64, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.btree_op = type { i32 }
%struct.closure = type { i32 }
%struct.gc_stat = type { i64, i64 }
%struct.bkey = type { i32 }
%struct.btree_iter = type { i32 }
%struct.gc_merge_info = type { %struct.btree*, i32 }

@GC_MERGE_NODES = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@bch_ptr_bad = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btree*, %struct.btree_op*, %struct.closure*, %struct.gc_stat*)* @btree_gc_recurse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btree_gc_recurse(%struct.btree* %0, %struct.btree_op* %1, %struct.closure* %2, %struct.gc_stat* %3) #0 {
  %5 = alloca %struct.btree*, align 8
  %6 = alloca %struct.btree_op*, align 8
  %7 = alloca %struct.closure*, align 8
  %8 = alloca %struct.gc_stat*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bkey*, align 8
  %12 = alloca %struct.btree_iter, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.gc_merge_info*, align 8
  %16 = alloca %struct.gc_merge_info*, align 8
  store %struct.btree* %0, %struct.btree** %5, align 8
  store %struct.btree_op* %1, %struct.btree_op** %6, align 8
  store %struct.closure* %2, %struct.closure** %7, align 8
  store %struct.gc_stat* %3, %struct.gc_stat** %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load i32, i32* @GC_MERGE_NODES, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %13, align 8
  %20 = alloca %struct.gc_merge_info, i64 %18, align 16
  store i64 %18, i64* %14, align 8
  %21 = call i32 @ARRAY_SIZE(%struct.gc_merge_info* %20)
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %20, i64 %22
  %24 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %23, i64 -1
  store %struct.gc_merge_info* %24, %struct.gc_merge_info** %16, align 8
  %25 = load %struct.btree*, %struct.btree** %5, align 8
  %26 = getelementptr inbounds %struct.btree, %struct.btree* %25, i32 0, i32 4
  %27 = load %struct.btree*, %struct.btree** %5, align 8
  %28 = getelementptr inbounds %struct.btree, %struct.btree* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = call i32 @bch_btree_iter_init(i32* %26, %struct.btree_iter* %12, i32* %30)
  store %struct.gc_merge_info* %20, %struct.gc_merge_info** %15, align 8
  br label %32

32:                                               ; preds = %44, %4
  %33 = load %struct.gc_merge_info*, %struct.gc_merge_info** %15, align 8
  %34 = call i32 @ARRAY_SIZE(%struct.gc_merge_info* %20)
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %20, i64 %35
  %37 = icmp ult %struct.gc_merge_info* %33, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load i32, i32* @EINTR, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.btree* @ERR_PTR(i32 %40)
  %42 = load %struct.gc_merge_info*, %struct.gc_merge_info** %15, align 8
  %43 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %42, i32 0, i32 0
  store %struct.btree* %41, %struct.btree** %43, align 8
  br label %44

44:                                               ; preds = %38
  %45 = load %struct.gc_merge_info*, %struct.gc_merge_info** %15, align 8
  %46 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %45, i32 1
  store %struct.gc_merge_info* %46, %struct.gc_merge_info** %15, align 8
  br label %32

47:                                               ; preds = %32
  br label %48

48:                                               ; preds = %218, %47
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.btree*, %struct.btree** %5, align 8
  %51 = getelementptr inbounds %struct.btree, %struct.btree* %50, i32 0, i32 4
  %52 = load i32, i32* @bch_ptr_bad, align 4
  %53 = call %struct.bkey* @bch_btree_iter_next_filter(%struct.btree_iter* %12, i32* %51, i32 %52)
  store %struct.bkey* %53, %struct.bkey** %11, align 8
  %54 = load %struct.bkey*, %struct.bkey** %11, align 8
  %55 = icmp ne %struct.bkey* %54, null
  br i1 %55, label %56, label %90

56:                                               ; preds = %49
  %57 = load %struct.btree*, %struct.btree** %5, align 8
  %58 = getelementptr inbounds %struct.btree, %struct.btree* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load %struct.btree_op*, %struct.btree_op** %6, align 8
  %61 = load %struct.bkey*, %struct.bkey** %11, align 8
  %62 = load %struct.btree*, %struct.btree** %5, align 8
  %63 = getelementptr inbounds %struct.btree, %struct.btree* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %64, 1
  %66 = load %struct.btree*, %struct.btree** %5, align 8
  %67 = call %struct.btree* @bch_btree_node_get(%struct.TYPE_3__* %59, %struct.btree_op* %60, %struct.bkey* %61, i64 %65, i32 1, %struct.btree* %66)
  %68 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %20, i32 0, i32 0
  store %struct.btree* %67, %struct.btree** %68, align 16
  %69 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %20, i32 0, i32 0
  %70 = load %struct.btree*, %struct.btree** %69, align 16
  %71 = call i64 @IS_ERR(%struct.btree* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %56
  %74 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %20, i32 0, i32 0
  %75 = load %struct.btree*, %struct.btree** %74, align 16
  %76 = call i32 @PTR_ERR(%struct.btree* %75)
  store i32 %76, i32* %9, align 4
  br label %219

77:                                               ; preds = %56
  %78 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %20, i32 0, i32 0
  %79 = load %struct.btree*, %struct.btree** %78, align 16
  %80 = call i32 @btree_gc_count_keys(%struct.btree* %79)
  %81 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %20, i32 0, i32 1
  store i32 %80, i32* %81, align 8
  %82 = load %struct.btree*, %struct.btree** %5, align 8
  %83 = load %struct.btree_op*, %struct.btree_op** %6, align 8
  %84 = load %struct.gc_stat*, %struct.gc_stat** %8, align 8
  %85 = call i32 @btree_gc_coalesce(%struct.btree* %82, %struct.btree_op* %83, %struct.gc_stat* %84, %struct.gc_merge_info* %20)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %77
  br label %219

89:                                               ; preds = %77
  br label %90

90:                                               ; preds = %89, %49
  %91 = load %struct.gc_merge_info*, %struct.gc_merge_info** %16, align 8
  %92 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %91, i32 0, i32 0
  %93 = load %struct.btree*, %struct.btree** %92, align 8
  %94 = icmp ne %struct.btree* %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %90
  br label %219

96:                                               ; preds = %90
  %97 = load %struct.gc_merge_info*, %struct.gc_merge_info** %16, align 8
  %98 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %97, i32 0, i32 0
  %99 = load %struct.btree*, %struct.btree** %98, align 8
  %100 = call i64 @IS_ERR(%struct.btree* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %176, label %102

102:                                              ; preds = %96
  %103 = load %struct.gc_merge_info*, %struct.gc_merge_info** %16, align 8
  %104 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %103, i32 0, i32 0
  %105 = load %struct.btree*, %struct.btree** %104, align 8
  %106 = load %struct.gc_stat*, %struct.gc_stat** %8, align 8
  %107 = call i32 @btree_gc_mark_node(%struct.btree* %105, %struct.gc_stat* %106)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %102
  %111 = load %struct.btree*, %struct.btree** %5, align 8
  %112 = load %struct.btree_op*, %struct.btree_op** %6, align 8
  %113 = load %struct.gc_merge_info*, %struct.gc_merge_info** %16, align 8
  %114 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %113, i32 0, i32 0
  %115 = load %struct.btree*, %struct.btree** %114, align 8
  %116 = call i32 @btree_gc_rewrite_node(%struct.btree* %111, %struct.btree_op* %112, %struct.btree* %115)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %110
  br label %219

120:                                              ; preds = %110
  br label %121

121:                                              ; preds = %120, %102
  %122 = load %struct.gc_merge_info*, %struct.gc_merge_info** %16, align 8
  %123 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %122, i32 0, i32 0
  %124 = load %struct.btree*, %struct.btree** %123, align 8
  %125 = getelementptr inbounds %struct.btree, %struct.btree* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %121
  %129 = load %struct.gc_merge_info*, %struct.gc_merge_info** %16, align 8
  %130 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %129, i32 0, i32 0
  %131 = load %struct.btree*, %struct.btree** %130, align 8
  %132 = load %struct.btree_op*, %struct.btree_op** %6, align 8
  %133 = load %struct.closure*, %struct.closure** %7, align 8
  %134 = load %struct.gc_stat*, %struct.gc_stat** %8, align 8
  %135 = call i32 @btree_gc_recurse(%struct.btree* %131, %struct.btree_op* %132, %struct.closure* %133, %struct.gc_stat* %134)
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %128
  br label %219

139:                                              ; preds = %128
  br label %140

140:                                              ; preds = %139, %121
  %141 = load %struct.btree*, %struct.btree** %5, align 8
  %142 = getelementptr inbounds %struct.btree, %struct.btree* %141, i32 0, i32 1
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 1
  %145 = load %struct.gc_merge_info*, %struct.gc_merge_info** %16, align 8
  %146 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %145, i32 0, i32 0
  %147 = load %struct.btree*, %struct.btree** %146, align 8
  %148 = getelementptr inbounds %struct.btree, %struct.btree* %147, i32 0, i32 2
  %149 = call i32 @bkey_copy_key(i32* %144, i32* %148)
  %150 = load %struct.gc_merge_info*, %struct.gc_merge_info** %16, align 8
  %151 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %150, i32 0, i32 0
  %152 = load %struct.btree*, %struct.btree** %151, align 8
  %153 = getelementptr inbounds %struct.btree, %struct.btree* %152, i32 0, i32 0
  %154 = call i32 @mutex_lock(i32* %153)
  %155 = load %struct.gc_merge_info*, %struct.gc_merge_info** %16, align 8
  %156 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %155, i32 0, i32 0
  %157 = load %struct.btree*, %struct.btree** %156, align 8
  %158 = call i64 @btree_node_dirty(%struct.btree* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %140
  %161 = load %struct.gc_merge_info*, %struct.gc_merge_info** %16, align 8
  %162 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %161, i32 0, i32 0
  %163 = load %struct.btree*, %struct.btree** %162, align 8
  %164 = load %struct.closure*, %struct.closure** %7, align 8
  %165 = call i32 @bch_btree_node_write(%struct.btree* %163, %struct.closure* %164)
  br label %166

166:                                              ; preds = %160, %140
  %167 = load %struct.gc_merge_info*, %struct.gc_merge_info** %16, align 8
  %168 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %167, i32 0, i32 0
  %169 = load %struct.btree*, %struct.btree** %168, align 8
  %170 = getelementptr inbounds %struct.btree, %struct.btree* %169, i32 0, i32 0
  %171 = call i32 @mutex_unlock(i32* %170)
  %172 = load %struct.gc_merge_info*, %struct.gc_merge_info** %16, align 8
  %173 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %172, i32 0, i32 0
  %174 = load %struct.btree*, %struct.btree** %173, align 8
  %175 = call i32 @rw_unlock(i32 1, %struct.btree* %174)
  br label %176

176:                                              ; preds = %166, %96
  %177 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %20, i64 1
  %178 = load i32, i32* @GC_MERGE_NODES, align 4
  %179 = sub nsw i32 %178, 1
  %180 = sext i32 %179 to i64
  %181 = mul i64 16, %180
  %182 = trunc i64 %181 to i32
  %183 = call i32 @memmove(%struct.gc_merge_info* %177, %struct.gc_merge_info* %20, i32 %182)
  %184 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %20, i32 0, i32 0
  store %struct.btree* null, %struct.btree** %184, align 16
  %185 = load %struct.btree*, %struct.btree** %5, align 8
  %186 = getelementptr inbounds %struct.btree, %struct.btree* %185, i32 0, i32 1
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 0
  %189 = call i64 @atomic_read(i32* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %212

191:                                              ; preds = %176
  %192 = load %struct.gc_stat*, %struct.gc_stat** %8, align 8
  %193 = getelementptr inbounds %struct.gc_stat, %struct.gc_stat* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.gc_stat*, %struct.gc_stat** %8, align 8
  %196 = getelementptr inbounds %struct.gc_stat, %struct.gc_stat* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.btree*, %struct.btree** %5, align 8
  %199 = getelementptr inbounds %struct.btree, %struct.btree* %198, i32 0, i32 1
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %199, align 8
  %201 = call i64 @btree_gc_min_nodes(%struct.TYPE_3__* %200)
  %202 = add nsw i64 %197, %201
  %203 = icmp sge i64 %194, %202
  br i1 %203, label %204, label %212

204:                                              ; preds = %191
  %205 = load %struct.gc_stat*, %struct.gc_stat** %8, align 8
  %206 = getelementptr inbounds %struct.gc_stat, %struct.gc_stat* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.gc_stat*, %struct.gc_stat** %8, align 8
  %209 = getelementptr inbounds %struct.gc_stat, %struct.gc_stat* %208, i32 0, i32 1
  store i64 %207, i64* %209, align 8
  %210 = load i32, i32* @EAGAIN, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %9, align 4
  br label %219

212:                                              ; preds = %191, %176
  %213 = call i64 (...) @need_resched()
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %212
  %216 = load i32, i32* @EAGAIN, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %9, align 4
  br label %219

218:                                              ; preds = %212
  br label %48

219:                                              ; preds = %215, %204, %138, %119, %95, %88, %73
  store %struct.gc_merge_info* %20, %struct.gc_merge_info** %15, align 8
  br label %220

220:                                              ; preds = %260, %219
  %221 = load %struct.gc_merge_info*, %struct.gc_merge_info** %15, align 8
  %222 = call i32 @ARRAY_SIZE(%struct.gc_merge_info* %20)
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %20, i64 %223
  %225 = icmp ult %struct.gc_merge_info* %221, %224
  br i1 %225, label %226, label %263

226:                                              ; preds = %220
  %227 = load %struct.gc_merge_info*, %struct.gc_merge_info** %15, align 8
  %228 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %227, i32 0, i32 0
  %229 = load %struct.btree*, %struct.btree** %228, align 8
  %230 = call i32 @IS_ERR_OR_NULL(%struct.btree* %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %259, label %232

232:                                              ; preds = %226
  %233 = load %struct.gc_merge_info*, %struct.gc_merge_info** %15, align 8
  %234 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %233, i32 0, i32 0
  %235 = load %struct.btree*, %struct.btree** %234, align 8
  %236 = getelementptr inbounds %struct.btree, %struct.btree* %235, i32 0, i32 0
  %237 = call i32 @mutex_lock(i32* %236)
  %238 = load %struct.gc_merge_info*, %struct.gc_merge_info** %15, align 8
  %239 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %238, i32 0, i32 0
  %240 = load %struct.btree*, %struct.btree** %239, align 8
  %241 = call i64 @btree_node_dirty(%struct.btree* %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %249

243:                                              ; preds = %232
  %244 = load %struct.gc_merge_info*, %struct.gc_merge_info** %15, align 8
  %245 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %244, i32 0, i32 0
  %246 = load %struct.btree*, %struct.btree** %245, align 8
  %247 = load %struct.closure*, %struct.closure** %7, align 8
  %248 = call i32 @bch_btree_node_write(%struct.btree* %246, %struct.closure* %247)
  br label %249

249:                                              ; preds = %243, %232
  %250 = load %struct.gc_merge_info*, %struct.gc_merge_info** %15, align 8
  %251 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %250, i32 0, i32 0
  %252 = load %struct.btree*, %struct.btree** %251, align 8
  %253 = getelementptr inbounds %struct.btree, %struct.btree* %252, i32 0, i32 0
  %254 = call i32 @mutex_unlock(i32* %253)
  %255 = load %struct.gc_merge_info*, %struct.gc_merge_info** %15, align 8
  %256 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %255, i32 0, i32 0
  %257 = load %struct.btree*, %struct.btree** %256, align 8
  %258 = call i32 @rw_unlock(i32 1, %struct.btree* %257)
  br label %259

259:                                              ; preds = %249, %226
  br label %260

260:                                              ; preds = %259
  %261 = load %struct.gc_merge_info*, %struct.gc_merge_info** %15, align 8
  %262 = getelementptr inbounds %struct.gc_merge_info, %struct.gc_merge_info* %261, i32 1
  store %struct.gc_merge_info* %262, %struct.gc_merge_info** %15, align 8
  br label %220

263:                                              ; preds = %220
  %264 = load i32, i32* %9, align 4
  %265 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %265)
  ret i32 %264
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ARRAY_SIZE(%struct.gc_merge_info*) #2

declare dso_local i32 @bch_btree_iter_init(i32*, %struct.btree_iter*, i32*) #2

declare dso_local %struct.btree* @ERR_PTR(i32) #2

declare dso_local %struct.bkey* @bch_btree_iter_next_filter(%struct.btree_iter*, i32*, i32) #2

declare dso_local %struct.btree* @bch_btree_node_get(%struct.TYPE_3__*, %struct.btree_op*, %struct.bkey*, i64, i32, %struct.btree*) #2

declare dso_local i64 @IS_ERR(%struct.btree*) #2

declare dso_local i32 @PTR_ERR(%struct.btree*) #2

declare dso_local i32 @btree_gc_count_keys(%struct.btree*) #2

declare dso_local i32 @btree_gc_coalesce(%struct.btree*, %struct.btree_op*, %struct.gc_stat*, %struct.gc_merge_info*) #2

declare dso_local i32 @btree_gc_mark_node(%struct.btree*, %struct.gc_stat*) #2

declare dso_local i32 @btree_gc_rewrite_node(%struct.btree*, %struct.btree_op*, %struct.btree*) #2

declare dso_local i32 @bkey_copy_key(i32*, i32*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i64 @btree_node_dirty(%struct.btree*) #2

declare dso_local i32 @bch_btree_node_write(%struct.btree*, %struct.closure*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @rw_unlock(i32, %struct.btree*) #2

declare dso_local i32 @memmove(%struct.gc_merge_info*, %struct.gc_merge_info*, i32) #2

declare dso_local i64 @atomic_read(i32*) #2

declare dso_local i64 @btree_gc_min_nodes(%struct.TYPE_3__*) #2

declare dso_local i64 @need_resched(...) #2

declare dso_local i32 @IS_ERR_OR_NULL(%struct.btree*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
