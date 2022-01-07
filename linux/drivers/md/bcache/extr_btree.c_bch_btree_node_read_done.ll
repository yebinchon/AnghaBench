; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_bch_btree_node_read_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_bch_btree_node_read_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree = type { i64, i32, %struct.TYPE_12__*, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64, %struct.bset* }
%struct.bset = type { i64, i32, i64, i32, i32, i32 }
%struct.btree_iter = type { i32, %struct.TYPE_10__*, i64 }

@.str = private unnamed_addr constant [17 x i8] c"bad btree header\00", align 1
@GFP_NOIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"unsupported bset version\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"bad magic\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"bad checksum\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"empty set\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"corrupted btree\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"short btree key\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"%s at bucket %zu, block %u, %u keys\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bch_btree_node_read_done(%struct.btree* %0) #0 {
  %2 = alloca %struct.btree*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bset*, align 8
  %5 = alloca %struct.btree_iter*, align 8
  store %struct.btree* %0, %struct.btree** %2, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %6 = load %struct.btree*, %struct.btree** %2, align 8
  %7 = call %struct.bset* @btree_bset_first(%struct.btree* %6)
  store %struct.bset* %7, %struct.bset** %4, align 8
  %8 = load %struct.btree*, %struct.btree** %2, align 8
  %9 = getelementptr inbounds %struct.btree, %struct.btree* %8, i32 0, i32 2
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_NOIO, align 4
  %13 = call %struct.btree_iter* @mempool_alloc(i32* %11, i32 %12)
  store %struct.btree_iter* %13, %struct.btree_iter** %5, align 8
  %14 = load %struct.btree*, %struct.btree** %2, align 8
  %15 = getelementptr inbounds %struct.btree, %struct.btree* %14, i32 0, i32 2
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.btree*, %struct.btree** %2, align 8
  %21 = getelementptr inbounds %struct.btree, %struct.btree* %20, i32 0, i32 2
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sdiv i32 %19, %25
  %27 = load %struct.btree_iter*, %struct.btree_iter** %5, align 8
  %28 = getelementptr inbounds %struct.btree_iter, %struct.btree_iter* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.btree_iter*, %struct.btree_iter** %5, align 8
  %30 = getelementptr inbounds %struct.btree_iter, %struct.btree_iter* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.bset*, %struct.bset** %4, align 8
  %32 = getelementptr inbounds %struct.bset, %struct.bset* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %1
  br label %252

36:                                               ; preds = %1
  br label %37

37:                                               ; preds = %149, %36
  %38 = load %struct.btree*, %struct.btree** %2, align 8
  %39 = getelementptr inbounds %struct.btree, %struct.btree* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.btree*, %struct.btree** %2, align 8
  %42 = call i64 @btree_blocks(%struct.btree* %41)
  %43 = icmp slt i64 %40, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %37
  %45 = load %struct.bset*, %struct.bset** %4, align 8
  %46 = getelementptr inbounds %struct.bset, %struct.bset* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.btree*, %struct.btree** %2, align 8
  %49 = getelementptr inbounds %struct.btree, %struct.btree* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 2
  %54 = load %struct.bset*, %struct.bset** %53, align 8
  %55 = getelementptr inbounds %struct.bset, %struct.bset* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %47, %56
  br label %58

58:                                               ; preds = %44, %37
  %59 = phi i1 [ false, %37 ], [ %57, %44 ]
  br i1 %59, label %60, label %152

60:                                               ; preds = %58
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  %61 = load %struct.bset*, %struct.bset** %4, align 8
  %62 = getelementptr inbounds %struct.bset, %struct.bset* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp sgt i32 %63, 128
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %252

66:                                               ; preds = %60
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %67 = load %struct.btree*, %struct.btree** %2, align 8
  %68 = getelementptr inbounds %struct.btree, %struct.btree* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.bset*, %struct.bset** %4, align 8
  %71 = load %struct.btree*, %struct.btree** %2, align 8
  %72 = getelementptr inbounds %struct.btree, %struct.btree* %71, i32 0, i32 2
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = call i32 @block_bytes(%struct.TYPE_12__* %73)
  %75 = call i64 @set_blocks(%struct.bset* %70, i32 %74)
  %76 = add nsw i64 %69, %75
  %77 = load %struct.btree*, %struct.btree** %2, align 8
  %78 = call i64 @btree_blocks(%struct.btree* %77)
  %79 = icmp sgt i64 %76, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %66
  br label %252

81:                                               ; preds = %66
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  %82 = load %struct.bset*, %struct.bset** %4, align 8
  %83 = getelementptr inbounds %struct.bset, %struct.bset* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.btree*, %struct.btree** %2, align 8
  %86 = getelementptr inbounds %struct.btree, %struct.btree* %85, i32 0, i32 2
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = call i64 @bset_magic(%struct.TYPE_11__* %88)
  %90 = icmp ne i64 %84, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  br label %252

92:                                               ; preds = %81
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  %93 = load %struct.bset*, %struct.bset** %4, align 8
  %94 = getelementptr inbounds %struct.bset, %struct.bset* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  switch i32 %95, label %115 [
    i32 0, label %96
    i32 128, label %105
  ]

96:                                               ; preds = %92
  %97 = load %struct.bset*, %struct.bset** %4, align 8
  %98 = getelementptr inbounds %struct.bset, %struct.bset* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.bset*, %struct.bset** %4, align 8
  %101 = call i32 @csum_set(%struct.bset* %100)
  %102 = icmp ne i32 %99, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  br label %252

104:                                              ; preds = %96
  br label %115

105:                                              ; preds = %92
  %106 = load %struct.bset*, %struct.bset** %4, align 8
  %107 = getelementptr inbounds %struct.bset, %struct.bset* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.btree*, %struct.btree** %2, align 8
  %110 = load %struct.bset*, %struct.bset** %4, align 8
  %111 = call i32 @btree_csum_set(%struct.btree* %109, %struct.bset* %110)
  %112 = icmp ne i32 %108, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  br label %252

114:                                              ; preds = %105
  br label %115

115:                                              ; preds = %92, %114, %104
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  %116 = load %struct.bset*, %struct.bset** %4, align 8
  %117 = load %struct.btree*, %struct.btree** %2, align 8
  %118 = getelementptr inbounds %struct.btree, %struct.btree* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i64 0
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 2
  %123 = load %struct.bset*, %struct.bset** %122, align 8
  %124 = icmp ne %struct.bset* %116, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %115
  %126 = load %struct.bset*, %struct.bset** %4, align 8
  %127 = getelementptr inbounds %struct.bset, %struct.bset* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %125
  br label %252

131:                                              ; preds = %125, %115
  %132 = load %struct.btree_iter*, %struct.btree_iter** %5, align 8
  %133 = load %struct.bset*, %struct.bset** %4, align 8
  %134 = getelementptr inbounds %struct.bset, %struct.bset* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.bset*, %struct.bset** %4, align 8
  %137 = call i32 @bset_bkey_last(%struct.bset* %136)
  %138 = call i32 @bch_btree_iter_push(%struct.btree_iter* %132, i32 %135, i32 %137)
  %139 = load %struct.bset*, %struct.bset** %4, align 8
  %140 = load %struct.btree*, %struct.btree** %2, align 8
  %141 = getelementptr inbounds %struct.btree, %struct.btree* %140, i32 0, i32 2
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %141, align 8
  %143 = call i32 @block_bytes(%struct.TYPE_12__* %142)
  %144 = call i64 @set_blocks(%struct.bset* %139, i32 %143)
  %145 = load %struct.btree*, %struct.btree** %2, align 8
  %146 = getelementptr inbounds %struct.btree, %struct.btree* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %147, %144
  store i64 %148, i64* %146, align 8
  br label %149

149:                                              ; preds = %131
  %150 = load %struct.btree*, %struct.btree** %2, align 8
  %151 = call %struct.bset* @write_block(%struct.btree* %150)
  store %struct.bset* %151, %struct.bset** %4, align 8
  br label %37

152:                                              ; preds = %58
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  %153 = load %struct.btree*, %struct.btree** %2, align 8
  %154 = call %struct.bset* @write_block(%struct.btree* %153)
  store %struct.bset* %154, %struct.bset** %4, align 8
  br label %155

155:                                              ; preds = %180, %152
  %156 = load %struct.btree*, %struct.btree** %2, align 8
  %157 = getelementptr inbounds %struct.btree, %struct.btree* %156, i32 0, i32 3
  %158 = load %struct.bset*, %struct.bset** %4, align 8
  %159 = call i64 @bset_sector_offset(%struct.TYPE_10__* %157, %struct.bset* %158)
  %160 = load %struct.btree*, %struct.btree** %2, align 8
  %161 = getelementptr inbounds %struct.btree, %struct.btree* %160, i32 0, i32 1
  %162 = call i64 @KEY_SIZE(i32* %161)
  %163 = icmp slt i64 %159, %162
  br i1 %163, label %164, label %190

164:                                              ; preds = %155
  %165 = load %struct.bset*, %struct.bset** %4, align 8
  %166 = getelementptr inbounds %struct.bset, %struct.bset* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.btree*, %struct.btree** %2, align 8
  %169 = getelementptr inbounds %struct.btree, %struct.btree* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i64 0
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 2
  %174 = load %struct.bset*, %struct.bset** %173, align 8
  %175 = getelementptr inbounds %struct.bset, %struct.bset* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp eq i64 %167, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %164
  br label %252

179:                                              ; preds = %164
  br label %180

180:                                              ; preds = %179
  %181 = load %struct.bset*, %struct.bset** %4, align 8
  %182 = bitcast %struct.bset* %181 to i8*
  %183 = load %struct.btree*, %struct.btree** %2, align 8
  %184 = getelementptr inbounds %struct.btree, %struct.btree* %183, i32 0, i32 2
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %184, align 8
  %186 = call i32 @block_bytes(%struct.TYPE_12__* %185)
  %187 = sext i32 %186 to i64
  %188 = getelementptr i8, i8* %182, i64 %187
  %189 = bitcast i8* %188 to %struct.bset*
  store %struct.bset* %189, %struct.bset** %4, align 8
  br label %155

190:                                              ; preds = %155
  %191 = load %struct.btree*, %struct.btree** %2, align 8
  %192 = getelementptr inbounds %struct.btree, %struct.btree* %191, i32 0, i32 3
  %193 = load %struct.btree_iter*, %struct.btree_iter** %5, align 8
  %194 = load %struct.btree*, %struct.btree** %2, align 8
  %195 = getelementptr inbounds %struct.btree, %struct.btree* %194, i32 0, i32 2
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 2
  %198 = call i32 @bch_btree_sort_and_fix_extents(%struct.TYPE_10__* %192, %struct.btree_iter* %193, i32* %197)
  %199 = load %struct.btree*, %struct.btree** %2, align 8
  %200 = getelementptr inbounds %struct.btree, %struct.btree* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i64 0
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 2
  %205 = load %struct.bset*, %struct.bset** %204, align 8
  store %struct.bset* %205, %struct.bset** %4, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  %206 = load %struct.btree*, %struct.btree** %2, align 8
  %207 = getelementptr inbounds %struct.btree, %struct.btree* %206, i32 0, i32 3
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i64 0
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %226

214:                                              ; preds = %190
  %215 = load %struct.btree*, %struct.btree** %2, align 8
  %216 = getelementptr inbounds %struct.btree, %struct.btree* %215, i32 0, i32 1
  %217 = load %struct.btree*, %struct.btree** %2, align 8
  %218 = getelementptr inbounds %struct.btree, %struct.btree* %217, i32 0, i32 3
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i64 0
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 0
  %223 = call i64 @bkey_cmp(i32* %216, i32* %222)
  %224 = icmp slt i64 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %214
  br label %252

226:                                              ; preds = %214, %190
  %227 = load %struct.btree*, %struct.btree** %2, align 8
  %228 = getelementptr inbounds %struct.btree, %struct.btree* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.btree*, %struct.btree** %2, align 8
  %231 = call i64 @btree_blocks(%struct.btree* %230)
  %232 = icmp slt i64 %229, %231
  br i1 %232, label %233, label %244

233:                                              ; preds = %226
  %234 = load %struct.btree*, %struct.btree** %2, align 8
  %235 = getelementptr inbounds %struct.btree, %struct.btree* %234, i32 0, i32 3
  %236 = load %struct.btree*, %struct.btree** %2, align 8
  %237 = call %struct.bset* @write_block(%struct.btree* %236)
  %238 = load %struct.btree*, %struct.btree** %2, align 8
  %239 = getelementptr inbounds %struct.btree, %struct.btree* %238, i32 0, i32 2
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 1
  %242 = call i64 @bset_magic(%struct.TYPE_11__* %241)
  %243 = call i32 @bch_bset_init_next(%struct.TYPE_10__* %235, %struct.bset* %237, i64 %242)
  br label %244

244:                                              ; preds = %233, %226
  br label %245

245:                                              ; preds = %252, %244
  %246 = load %struct.btree_iter*, %struct.btree_iter** %5, align 8
  %247 = load %struct.btree*, %struct.btree** %2, align 8
  %248 = getelementptr inbounds %struct.btree, %struct.btree* %247, i32 0, i32 2
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 0
  %251 = call i32 @mempool_free(%struct.btree_iter* %246, i32* %250)
  ret void

252:                                              ; preds = %225, %178, %130, %113, %103, %91, %80, %65, %35
  %253 = load %struct.btree*, %struct.btree** %2, align 8
  %254 = call i32 @set_btree_node_io_error(%struct.btree* %253)
  %255 = load %struct.btree*, %struct.btree** %2, align 8
  %256 = getelementptr inbounds %struct.btree, %struct.btree* %255, i32 0, i32 2
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %256, align 8
  %258 = load i8*, i8** %3, align 8
  %259 = load %struct.btree*, %struct.btree** %2, align 8
  %260 = getelementptr inbounds %struct.btree, %struct.btree* %259, i32 0, i32 2
  %261 = load %struct.TYPE_12__*, %struct.TYPE_12__** %260, align 8
  %262 = load %struct.btree*, %struct.btree** %2, align 8
  %263 = getelementptr inbounds %struct.btree, %struct.btree* %262, i32 0, i32 1
  %264 = call i32 @PTR_BUCKET_NR(%struct.TYPE_12__* %261, i32* %263, i32 0)
  %265 = load %struct.btree*, %struct.btree** %2, align 8
  %266 = load %struct.bset*, %struct.bset** %4, align 8
  %267 = call i32 @bset_block_offset(%struct.btree* %265, %struct.bset* %266)
  %268 = load %struct.bset*, %struct.bset** %4, align 8
  %269 = getelementptr inbounds %struct.bset, %struct.bset* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @bch_cache_set_error(%struct.TYPE_12__* %257, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i8* %258, i32 %264, i32 %267, i32 %270)
  br label %245
}

declare dso_local %struct.bset* @btree_bset_first(%struct.btree*) #1

declare dso_local %struct.btree_iter* @mempool_alloc(i32*, i32) #1

declare dso_local i64 @btree_blocks(%struct.btree*) #1

declare dso_local i64 @set_blocks(%struct.bset*, i32) #1

declare dso_local i32 @block_bytes(%struct.TYPE_12__*) #1

declare dso_local i64 @bset_magic(%struct.TYPE_11__*) #1

declare dso_local i32 @csum_set(%struct.bset*) #1

declare dso_local i32 @btree_csum_set(%struct.btree*, %struct.bset*) #1

declare dso_local i32 @bch_btree_iter_push(%struct.btree_iter*, i32, i32) #1

declare dso_local i32 @bset_bkey_last(%struct.bset*) #1

declare dso_local %struct.bset* @write_block(%struct.btree*) #1

declare dso_local i64 @bset_sector_offset(%struct.TYPE_10__*, %struct.bset*) #1

declare dso_local i64 @KEY_SIZE(i32*) #1

declare dso_local i32 @bch_btree_sort_and_fix_extents(%struct.TYPE_10__*, %struct.btree_iter*, i32*) #1

declare dso_local i64 @bkey_cmp(i32*, i32*) #1

declare dso_local i32 @bch_bset_init_next(%struct.TYPE_10__*, %struct.bset*, i64) #1

declare dso_local i32 @mempool_free(%struct.btree_iter*, i32*) #1

declare dso_local i32 @set_btree_node_io_error(%struct.btree*) #1

declare dso_local i32 @bch_cache_set_error(%struct.TYPE_12__*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @PTR_BUCKET_NR(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @bset_block_offset(%struct.btree*, %struct.bset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
