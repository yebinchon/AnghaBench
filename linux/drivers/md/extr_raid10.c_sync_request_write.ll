; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_sync_request_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_sync_request_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i32, %struct.r10conf* }
%struct.r10conf = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__*, %struct.md_rdev* }
%struct.TYPE_5__ = type { i32 }
%struct.md_rdev = type { i32, i64, i32, i32, i32 }
%struct.r10bio = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.bio*, %struct.bio*, i32 }
%struct.bio = type { i64, %struct.TYPE_6__, i32, %struct.resync_pages*, i32 }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.resync_pages = type { %struct.r10bio*, %struct.page** }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@end_sync_read = common dso_local global i64 0, align 8
@MD_RECOVERY_CHECK = common dso_local global i32 0, align 4
@FailFast = common dso_local global i32 0, align 4
@end_sync_write = common dso_local global i64 0, align 8
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@MD_FAILFAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*, %struct.r10bio*)* @sync_request_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sync_request_write(%struct.mddev* %0, %struct.r10bio* %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.r10bio*, align 8
  %5 = alloca %struct.r10conf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bio*, align 8
  %9 = alloca %struct.bio*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.page**, align 8
  %12 = alloca %struct.page**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.md_rdev*, align 8
  %16 = alloca %struct.resync_pages*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store %struct.r10bio* %1, %struct.r10bio** %4, align 8
  %20 = load %struct.mddev*, %struct.mddev** %3, align 8
  %21 = getelementptr inbounds %struct.mddev, %struct.mddev* %20, i32 0, i32 2
  %22 = load %struct.r10conf*, %struct.r10conf** %21, align 8
  store %struct.r10conf* %22, %struct.r10conf** %5, align 8
  %23 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %24 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %23, i32 0, i32 1
  %25 = call i32 @atomic_set(i32* %24, i32 1)
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %46, %2
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %29 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %26
  %33 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %34 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %33, i32 0, i32 2
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load %struct.bio*, %struct.bio** %39, align 8
  %41 = getelementptr inbounds %struct.bio, %struct.bio* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %32
  br label %49

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %26

49:                                               ; preds = %44, %26
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %52 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %422

56:                                               ; preds = %49
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %7, align 4
  %58 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %59 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %58, i32 0, i32 2
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load %struct.bio*, %struct.bio** %64, align 8
  store %struct.bio* %65, %struct.bio** %9, align 8
  %66 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %67 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = shl i32 %68, 9
  %70 = load %struct.bio*, %struct.bio** %9, align 8
  %71 = getelementptr inbounds %struct.bio, %struct.bio* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  %73 = load %struct.bio*, %struct.bio** %9, align 8
  %74 = getelementptr inbounds %struct.bio, %struct.bio* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  store i64 0, i64* %75, align 8
  %76 = load %struct.bio*, %struct.bio** %9, align 8
  %77 = call %struct.resync_pages* @get_resync_pages(%struct.bio* %76)
  %78 = getelementptr inbounds %struct.resync_pages, %struct.resync_pages* %77, i32 0, i32 1
  %79 = load %struct.page**, %struct.page*** %78, align 8
  store %struct.page** %79, %struct.page*** %12, align 8
  %80 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %81 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @PAGE_SIZE, align 4
  %84 = ashr i32 %83, 9
  %85 = add nsw i32 %82, %84
  %86 = sub nsw i32 %85, 1
  %87 = load i32, i32* @PAGE_SHIFT, align 4
  %88 = sub nsw i32 %87, 9
  %89 = ashr i32 %86, %88
  store i32 %89, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %336, %56
  %91 = load i32, i32* %6, align 4
  %92 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %93 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %339

96:                                               ; preds = %90
  %97 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %98 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %97, i32 0, i32 2
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load %struct.bio*, %struct.bio** %103, align 8
  store %struct.bio* %104, %struct.bio** %8, align 8
  %105 = load %struct.bio*, %struct.bio** %8, align 8
  %106 = getelementptr inbounds %struct.bio, %struct.bio* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @end_sync_read, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %96
  br label %336

111:                                              ; preds = %96
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  br label %336

116:                                              ; preds = %111
  %117 = load %struct.bio*, %struct.bio** %8, align 8
  %118 = call %struct.resync_pages* @get_resync_pages(%struct.bio* %117)
  %119 = getelementptr inbounds %struct.resync_pages, %struct.resync_pages* %118, i32 0, i32 1
  %120 = load %struct.page**, %struct.page*** %119, align 8
  store %struct.page** %120, %struct.page*** %11, align 8
  %121 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %122 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %121, i32 0, i32 2
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  store i32 %128, i32* %14, align 4
  %129 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %130 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %129, i32 0, i32 1
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = load i32, i32* %14, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  %136 = load %struct.md_rdev*, %struct.md_rdev** %135, align 8
  store %struct.md_rdev* %136, %struct.md_rdev** %15, align 8
  %137 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %138 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %137, i32 0, i32 2
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = load %struct.bio*, %struct.bio** %143, align 8
  %145 = getelementptr inbounds %struct.bio, %struct.bio* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %209, label %148

148:                                              ; preds = %116
  %149 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %150 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  store i32 %151, i32* %17, align 4
  store i32 0, i32* %13, align 4
  br label %152

152:                                              ; preds = %187, %148
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* %10, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %190

156:                                              ; preds = %152
  %157 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %157, i32* %18, align 4
  %158 = load i32, i32* %17, align 4
  %159 = load i32, i32* %18, align 4
  %160 = sdiv i32 %159, 512
  %161 = icmp slt i32 %158, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %156
  %163 = load i32, i32* %17, align 4
  %164 = mul nsw i32 %163, 512
  store i32 %164, i32* %18, align 4
  br label %165

165:                                              ; preds = %162, %156
  %166 = load %struct.page**, %struct.page*** %12, align 8
  %167 = load i32, i32* %13, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.page*, %struct.page** %166, i64 %168
  %170 = load %struct.page*, %struct.page** %169, align 8
  %171 = call i32 @page_address(%struct.page* %170)
  %172 = load %struct.page**, %struct.page*** %11, align 8
  %173 = load i32, i32* %13, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.page*, %struct.page** %172, i64 %174
  %176 = load %struct.page*, %struct.page** %175, align 8
  %177 = call i32 @page_address(%struct.page* %176)
  %178 = load i32, i32* %18, align 4
  %179 = call i64 @memcmp(i32 %171, i32 %177, i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %165
  br label %190

182:                                              ; preds = %165
  %183 = load i32, i32* %18, align 4
  %184 = sdiv i32 %183, 512
  %185 = load i32, i32* %17, align 4
  %186 = sub nsw i32 %185, %184
  store i32 %186, i32* %17, align 4
  br label %187

187:                                              ; preds = %182
  %188 = load i32, i32* %13, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %13, align 4
  br label %152

190:                                              ; preds = %181, %152
  %191 = load i32, i32* %13, align 4
  %192 = load i32, i32* %10, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %190
  br label %336

195:                                              ; preds = %190
  %196 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %197 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.mddev*, %struct.mddev** %3, align 8
  %200 = getelementptr inbounds %struct.mddev, %struct.mddev* %199, i32 0, i32 1
  %201 = call i32 @atomic64_add(i32 %198, i32* %200)
  %202 = load i32, i32* @MD_RECOVERY_CHECK, align 4
  %203 = load %struct.mddev*, %struct.mddev** %3, align 8
  %204 = getelementptr inbounds %struct.mddev, %struct.mddev* %203, i32 0, i32 0
  %205 = call i64 @test_bit(i32 %202, i32* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %195
  br label %336

208:                                              ; preds = %195
  br label %222

209:                                              ; preds = %116
  %210 = load i32, i32* @FailFast, align 4
  %211 = load %struct.md_rdev*, %struct.md_rdev** %15, align 8
  %212 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %211, i32 0, i32 2
  %213 = call i64 @test_bit(i32 %210, i32* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %209
  %216 = load %struct.md_rdev*, %struct.md_rdev** %15, align 8
  %217 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.md_rdev*, %struct.md_rdev** %15, align 8
  %220 = call i32 @md_error(i32 %218, %struct.md_rdev* %219)
  br label %336

221:                                              ; preds = %209
  br label %222

222:                                              ; preds = %221, %208
  %223 = load %struct.bio*, %struct.bio** %8, align 8
  %224 = call %struct.resync_pages* @get_resync_pages(%struct.bio* %223)
  store %struct.resync_pages* %224, %struct.resync_pages** %16, align 8
  %225 = load %struct.bio*, %struct.bio** %8, align 8
  %226 = call i32 @bio_reset(%struct.bio* %225)
  %227 = load %struct.bio*, %struct.bio** %8, align 8
  %228 = load %struct.resync_pages*, %struct.resync_pages** %16, align 8
  %229 = load %struct.bio*, %struct.bio** %9, align 8
  %230 = getelementptr inbounds %struct.bio, %struct.bio* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @md_bio_reset_resync_pages(%struct.bio* %227, %struct.resync_pages* %228, i32 %232)
  %234 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %235 = load %struct.resync_pages*, %struct.resync_pages** %16, align 8
  %236 = getelementptr inbounds %struct.resync_pages, %struct.resync_pages* %235, i32 0, i32 0
  store %struct.r10bio* %234, %struct.r10bio** %236, align 8
  %237 = load %struct.resync_pages*, %struct.resync_pages** %16, align 8
  %238 = load %struct.bio*, %struct.bio** %8, align 8
  %239 = getelementptr inbounds %struct.bio, %struct.bio* %238, i32 0, i32 3
  store %struct.resync_pages* %237, %struct.resync_pages** %239, align 8
  %240 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %241 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %240, i32 0, i32 2
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %241, align 8
  %243 = load i32, i32* %6, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.bio*, %struct.bio** %8, align 8
  %249 = getelementptr inbounds %struct.bio, %struct.bio* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 1
  store i32 %247, i32* %250, align 4
  %251 = load i64, i64* @end_sync_write, align 8
  %252 = load %struct.bio*, %struct.bio** %8, align 8
  %253 = getelementptr inbounds %struct.bio, %struct.bio* %252, i32 0, i32 0
  store i64 %251, i64* %253, align 8
  %254 = load %struct.bio*, %struct.bio** %8, align 8
  %255 = load i32, i32* @REQ_OP_WRITE, align 4
  %256 = call i32 @bio_set_op_attrs(%struct.bio* %254, i32 %255, i32 0)
  %257 = load %struct.bio*, %struct.bio** %8, align 8
  %258 = load %struct.bio*, %struct.bio** %9, align 8
  %259 = call i32 @bio_copy_data(%struct.bio* %257, %struct.bio* %258)
  %260 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %261 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %260, i32 0, i32 1
  %262 = load %struct.TYPE_7__*, %struct.TYPE_7__** %261, align 8
  %263 = load i32, i32* %14, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 1
  %267 = load %struct.md_rdev*, %struct.md_rdev** %266, align 8
  %268 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %267, i32 0, i32 3
  %269 = call i32 @atomic_inc(i32* %268)
  %270 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %271 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %270, i32 0, i32 1
  %272 = call i32 @atomic_inc(i32* %271)
  %273 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %274 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %273, i32 0, i32 1
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %274, align 8
  %276 = load i32, i32* %14, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 1
  %280 = load %struct.md_rdev*, %struct.md_rdev** %279, align 8
  %281 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.bio*, %struct.bio** %8, align 8
  %284 = call i32 @bio_sectors(%struct.bio* %283)
  %285 = call i32 @md_sync_acct(i32 %282, i32 %284)
  %286 = load i32, i32* @FailFast, align 4
  %287 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %288 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %287, i32 0, i32 1
  %289 = load %struct.TYPE_7__*, %struct.TYPE_7__** %288, align 8
  %290 = load i32, i32* %14, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i32 0, i32 1
  %294 = load %struct.md_rdev*, %struct.md_rdev** %293, align 8
  %295 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %294, i32 0, i32 2
  %296 = call i64 @test_bit(i32 %286, i32* %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %304

298:                                              ; preds = %222
  %299 = load i32, i32* @MD_FAILFAST, align 4
  %300 = load %struct.bio*, %struct.bio** %8, align 8
  %301 = getelementptr inbounds %struct.bio, %struct.bio* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 8
  %303 = or i32 %302, %299
  store i32 %303, i32* %301, align 8
  br label %304

304:                                              ; preds = %298, %222
  %305 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %306 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %305, i32 0, i32 1
  %307 = load %struct.TYPE_7__*, %struct.TYPE_7__** %306, align 8
  %308 = load i32, i32* %14, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %307, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %310, i32 0, i32 1
  %312 = load %struct.md_rdev*, %struct.md_rdev** %311, align 8
  %313 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %312, i32 0, i32 1
  %314 = load i64, i64* %313, align 8
  %315 = load %struct.bio*, %struct.bio** %8, align 8
  %316 = getelementptr inbounds %struct.bio, %struct.bio* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = sext i32 %318 to i64
  %320 = add nsw i64 %319, %314
  %321 = trunc i64 %320 to i32
  store i32 %321, i32* %317, align 4
  %322 = load %struct.bio*, %struct.bio** %8, align 8
  %323 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %324 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %323, i32 0, i32 1
  %325 = load %struct.TYPE_7__*, %struct.TYPE_7__** %324, align 8
  %326 = load i32, i32* %14, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %325, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %328, i32 0, i32 1
  %330 = load %struct.md_rdev*, %struct.md_rdev** %329, align 8
  %331 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = call i32 @bio_set_dev(%struct.bio* %322, i32 %332)
  %334 = load %struct.bio*, %struct.bio** %8, align 8
  %335 = call i32 @generic_make_request(%struct.bio* %334)
  br label %336

336:                                              ; preds = %304, %215, %207, %194, %115, %110
  %337 = load i32, i32* %6, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %6, align 4
  br label %90

339:                                              ; preds = %90
  store i32 0, i32* %6, align 4
  br label %340

340:                                              ; preds = %418, %339
  %341 = load i32, i32* %6, align 4
  %342 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %343 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = icmp slt i32 %341, %344
  br i1 %345, label %346, label %421

346:                                              ; preds = %340
  %347 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %348 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %347, i32 0, i32 2
  %349 = load %struct.TYPE_8__*, %struct.TYPE_8__** %348, align 8
  %350 = load i32, i32* %6, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %349, i64 %351
  %353 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %352, i32 0, i32 2
  %354 = load %struct.bio*, %struct.bio** %353, align 8
  store %struct.bio* %354, %struct.bio** %8, align 8
  %355 = load %struct.bio*, %struct.bio** %8, align 8
  %356 = icmp ne %struct.bio* %355, null
  br i1 %356, label %357, label %362

357:                                              ; preds = %346
  %358 = load %struct.bio*, %struct.bio** %8, align 8
  %359 = getelementptr inbounds %struct.bio, %struct.bio* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %363, label %362

362:                                              ; preds = %357, %346
  br label %418

363:                                              ; preds = %357
  %364 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %365 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %364, i32 0, i32 2
  %366 = load %struct.TYPE_8__*, %struct.TYPE_8__** %365, align 8
  %367 = load i32, i32* %6, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %366, i64 %368
  %370 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %369, i32 0, i32 1
  %371 = load %struct.bio*, %struct.bio** %370, align 8
  %372 = getelementptr inbounds %struct.bio, %struct.bio* %371, i32 0, i32 0
  %373 = load i64, i64* %372, align 8
  %374 = load i64, i64* @end_sync_write, align 8
  %375 = icmp ne i64 %373, %374
  br i1 %375, label %376, label %391

376:                                              ; preds = %363
  %377 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %378 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %377, i32 0, i32 2
  %379 = load %struct.TYPE_8__*, %struct.TYPE_8__** %378, align 8
  %380 = load i32, i32* %6, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %379, i64 %381
  %383 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %382, i32 0, i32 1
  %384 = load %struct.bio*, %struct.bio** %383, align 8
  %385 = load %struct.bio*, %struct.bio** %9, align 8
  %386 = icmp ne %struct.bio* %384, %385
  br i1 %386, label %387, label %391

387:                                              ; preds = %376
  %388 = load %struct.bio*, %struct.bio** %8, align 8
  %389 = load %struct.bio*, %struct.bio** %9, align 8
  %390 = call i32 @bio_copy_data(%struct.bio* %388, %struct.bio* %389)
  br label %391

391:                                              ; preds = %387, %376, %363
  %392 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %393 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %392, i32 0, i32 2
  %394 = load %struct.TYPE_8__*, %struct.TYPE_8__** %393, align 8
  %395 = load i32, i32* %6, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %394, i64 %396
  %398 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  store i32 %399, i32* %19, align 4
  %400 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %401 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %400, i32 0, i32 1
  %402 = call i32 @atomic_inc(i32* %401)
  %403 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %404 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %403, i32 0, i32 1
  %405 = load %struct.TYPE_7__*, %struct.TYPE_7__** %404, align 8
  %406 = load i32, i32* %19, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %405, i64 %407
  %409 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %408, i32 0, i32 0
  %410 = load %struct.TYPE_5__*, %struct.TYPE_5__** %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 4
  %413 = load %struct.bio*, %struct.bio** %8, align 8
  %414 = call i32 @bio_sectors(%struct.bio* %413)
  %415 = call i32 @md_sync_acct(i32 %412, i32 %414)
  %416 = load %struct.bio*, %struct.bio** %8, align 8
  %417 = call i32 @generic_make_request(%struct.bio* %416)
  br label %418

418:                                              ; preds = %391, %362
  %419 = load i32, i32* %6, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %6, align 4
  br label %340

421:                                              ; preds = %340
  br label %422

422:                                              ; preds = %421, %55
  %423 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %424 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %423, i32 0, i32 1
  %425 = call i64 @atomic_dec_and_test(i32* %424)
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %427, label %435

427:                                              ; preds = %422
  %428 = load %struct.mddev*, %struct.mddev** %3, align 8
  %429 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %430 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 8
  %432 = call i32 @md_done_sync(%struct.mddev* %428, i32 %431, i32 1)
  %433 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %434 = call i32 @put_buf(%struct.r10bio* %433)
  br label %435

435:                                              ; preds = %427, %422
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local %struct.resync_pages* @get_resync_pages(%struct.bio*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @atomic64_add(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @md_error(i32, %struct.md_rdev*) #1

declare dso_local i32 @bio_reset(%struct.bio*) #1

declare dso_local i32 @md_bio_reset_resync_pages(%struct.bio*, %struct.resync_pages*, i32) #1

declare dso_local i32 @bio_set_op_attrs(%struct.bio*, i32, i32) #1

declare dso_local i32 @bio_copy_data(%struct.bio*, %struct.bio*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @md_sync_acct(i32, i32) #1

declare dso_local i32 @bio_sectors(%struct.bio*) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @md_done_sync(%struct.mddev*, i32, i32) #1

declare dso_local i32 @put_buf(%struct.r10bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
